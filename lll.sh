#!/bin/bash

# Load images from issue and extract text
# Usage: ./lll.sh [issue-number]

ISSUE_NUMBER=$1
IMAGE_DIR="brews/05-images/issues"
EXTRACT_DIR="brews/05-images/extracts"

if [ -z "$ISSUE_NUMBER" ]; then
    echo "Usage: ./lll.sh [issue-number]"
    exit 1
fi

echo "=== Loading images from issue #$ISSUE_NUMBER ==="

# Create extract directory if it doesn't exist
mkdir -p "$EXTRACT_DIR"

# Get issue content with image URLs
ISSUE_CONTENT=$(gh issue view "$ISSUE_NUMBER" --json body -q .body)

# Extract image URLs from the issue
IMAGE_URLS=$(echo "$ISSUE_CONTENT" | grep -oE 'https://github\.com/user-attachments/assets/[a-zA-Z0-9-]+' | sort -u)

if [ -z "$IMAGE_URLS" ]; then
    echo "No images found in issue #$ISSUE_NUMBER"
    exit 0
fi

# Counter for multiple images
IMAGE_COUNT=0
EXTRACT_FILE="$EXTRACT_DIR/issue-${ISSUE_NUMBER}-extracted.md"

# Start the extract file
echo "# Extracted Text from Issue #$ISSUE_NUMBER" > "$EXTRACT_FILE"
echo "" >> "$EXTRACT_FILE"
echo "Generated: $(date)" >> "$EXTRACT_FILE"
echo "" >> "$EXTRACT_FILE"

# Process each image URL
while IFS= read -r URL; do
    if [ -n "$URL" ]; then
        IMAGE_COUNT=$((IMAGE_COUNT + 1))
        IMAGE_ID=$(echo "$URL" | grep -oE '[a-zA-Z0-9-]+$')
        IMAGE_NAME="issue-${ISSUE_NUMBER}-image-${IMAGE_COUNT}.png"
        IMAGE_PATH="$IMAGE_DIR/$IMAGE_NAME"
        
        echo "Downloading image $IMAGE_COUNT: $IMAGE_ID"
        
        # Download the image
        curl -L -s -o "$IMAGE_PATH" "$URL"
        
        if [ -f "$IMAGE_PATH" ]; then
            echo "✓ Downloaded to: $IMAGE_PATH"
            
            # Add image header to extract file
            echo "---" >> "$EXTRACT_FILE"
            echo "## Image $IMAGE_COUNT: $IMAGE_NAME" >> "$EXTRACT_FILE"
            echo "Source: $URL" >> "$EXTRACT_FILE"
            echo "Local: $IMAGE_PATH" >> "$EXTRACT_FILE"
            echo "" >> "$EXTRACT_FILE"
            echo "### Extracted Text:" >> "$EXTRACT_FILE"
            echo '```' >> "$EXTRACT_FILE"
            echo "[Text extraction would go here - requires OCR tool or manual extraction]" >> "$EXTRACT_FILE"
            echo '```' >> "$EXTRACT_FILE"
            echo "" >> "$EXTRACT_FILE"
        else
            echo "✗ Failed to download image $IMAGE_COUNT"
        fi
    fi
done <<< "$IMAGE_URLS"

echo ""
echo "=== Summary ==="
echo "Downloaded $IMAGE_COUNT image(s) to: $IMAGE_DIR/"
echo "Extract template created at: $EXTRACT_FILE"
echo ""
echo "Next steps:"
echo "1. Open each image in $IMAGE_DIR/ to view content"
echo "2. Use Claude Code to extract text: Read $IMAGE_PATH"
echo "3. Update $EXTRACT_FILE with the extracted text"
# Scripts Directory

This directory contains utility scripts for the brewing project.

## Structure
```
scripts/
├── image-extraction/    # Tools for extracting images from GitHub issues
│   └── qqq.sh          # Quick Query script for images
└── README.md           # This file
```

## Available Scripts

### Image Extraction (`qqq.sh`)

**Purpose**: Quick Query images from GitHub issues and prepare them for text extraction.

**Basic Usage**:
```bash
# Download all images from an issue
./scripts/image-extraction/qqq.sh 18

# Extract text from a specific image
claude "Read brews/05-images/issues/issue-18-image-1.png"
```

**Full Workflow Example**:

1. **Load images from issue**
   ```bash
   ./scripts/image-extraction/qqq.sh 18
   ```

2. **Extract text from each image**
   ```bash
   # For each downloaded image, use Claude to extract text
   claude "Read brews/05-images/issues/issue-18-image-1.png and extract all text"
   ```

3. **Text tracking convention**
   Each extracted text block should include:
   ```markdown
   ---
   ## Image 1: issue-18-image-1.png
   Source: https://github.com/user-attachments/assets/[id]
   Local: brews/05-images/issues/issue-18-image-1.png
   
   ### Extracted Text:
   [actual extracted content here]
   ---
   ```

**Output Structure**:
- Downloaded images: `brews/05-images/issues/issue-[number]-image-[count].png`
- Extract files: `brews/05-images/extracts/issue-[number]-extracted.md`

**Quick Commands Reference**:
```bash
# View all images from an issue
ls brews/05-images/issues/issue-18-*

# View extract file
cat brews/05-images/extracts/issue-18-extracted.md

# Extract text from specific image
claude "Read [image-path] and extract all visible text"
```
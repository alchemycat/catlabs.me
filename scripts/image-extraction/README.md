# Quick Query (qqq) Image Guide

## Basic Usage
```bash
# Download all images from an issue
./qqq.sh 18

# Extract text from a specific image
claude "Read brews/05-images/issues/issue-18-image-1.png"
```

## Full Workflow Example

### 1. Load images from issue
```bash
./qqq.sh 18
```

### 2. Extract text from each image
```bash
# For each downloaded image, use Claude to extract text
claude "Read brews/05-images/issues/issue-18-image-1.png and extract all text"
```

### 3. Text tracking convention
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

## Naming Convention
- Downloaded images: `issue-[number]-image-[count].png`
- Extract files: `issue-[number]-extracted.md`
- All extracts stored in: `brews/05-images/extracts/`

## Quick Commands Reference
```bash
# View all images from an issue
ls brews/05-images/issues/issue-18-*

# View extract file
cat brews/05-images/extracts/issue-18-extracted.md

# Extract text from specific image
claude "Read [image-path] and extract all visible text"
```
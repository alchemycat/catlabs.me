# Claude Instructions - Simple Brewing

## Workflow: Idea → Research → Recipe → Notes

1. User creates issue for idea/research/recipe
2. Use `gh issue develop` to create branch
3. Work in branch, commit changes  
4. Create PR and merge

## Structure
```
brews/
├── research/     # What I learned
├── recipes/      # What I'm making
└── notes/        # How it went
```

## Commands
```bash
# Standard flow
gh issue create --title "[Type]: [Name]"
gh issue develop [number] --name "[type]/[name]"
git add . && git commit -m "[message]"
gh pr create --fill
```

## Guidelines
- Keep it simple
- Focus on brewing, not process
- Research and recipes should link to their originating issues
- Notes can be added directly to main (no issue needed)

## Quality Checks
- Recipes should have: ingredients, process, notes
- Research should have: what learned, sources
- That's it - no mandatory sections or complex validation

---
*Simple brewing for humans*
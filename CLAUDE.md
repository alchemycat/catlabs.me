# Claude Instructions - Simple Brewing

## Workflow: Idea → Research → Recipe → Notes

1. User creates issue for idea/research/recipe
2. Use `gh issue develop` to create branch
3. Work in branch, commit changes  
4. Create PR and merge

## Structure
```
brews/
├── 01-research/    # What I learned
├── 02-recipes/     # What I'm making
├── 03-notes/       # How it went
├── 04-templates/   # Simple templates
├── 05-images/      # Recipe and brew images
└── 99-archive/     # Old stuff
```

## Commands
```bash
# Standard flow
gh issue create --title "[Type]: [Name]"
gh issue develop [number] --name "[type]/[name]"
git add . && git commit -m "[message]"
gh pr create --fill

# Image extraction
./lll.sh [issue-number]  # Download all images from issue
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

## Quick Reference - Short Codes
- `ccc` - Create context issue, export conversation, and compact
- `nnn` - Smart planning: Auto-runs `ccc` if no recent context → Create task issue → Implement
- `lll` - List comprehensive project status
- `rrr` - Create detailed session retrospective with export
- `lll [issue-id]` - Load all images from issue and extract text

## Core Short Codes

### `ccc` - Create Context & Compact
When you see `ccc`:

**Purpose**: Save the current session state and context to forward to another task. The context issue created by `ccc` can be used as input for `nnn`.

**Step 1: Gather Information**
```bash
# Get changed files
git status --porcelain

# Get recent commits
git log --oneline -5
```

**Step 2: Export Conversation**
```
/export context_YYYY-MM-DD_HH-MM_issue-XXX.md
```

**Step 3: Create GitHub Context Issue**
```bash
gh issue create --title "context: Brief description of current work/state" --body "$(cat <<'EOF'
## Session Context

**Date**: YYYY-MM-DD
**Duration**: ~X minutes
**Export**: retrospectives/exports/context_YYYY-MM-DD_HH-MM_issue-XXX.md

## Current Work Summary
[2-3 sentences about what was being worked on]

## Current State
### What's Working
- Feature X is implemented
- Component Y is functional

### What's In Progress
- Task A is 50% complete
- Research on B is ongoing

### What's Blocked
- Issue with Z needs resolution

## Technical Context
### Changed Files
```
[paste git status --porcelain output]
```

### Key Code Changes
- File X: Added Y functionality
- Module Z: Refactored for performance

### Architecture Decisions
- Decision 1: Rationale
- Decision 2: Rationale

## Important Discoveries
- Finding 1
- Learning 2
- Pattern 3

## Next Steps
- [ ] Complete task A
- [ ] Research solution for Z
- [ ] Implement feature B

## Related Issues
- #XXX - Previous context
- #XXX - Related feature
EOF
)"
```

**Step 4: Compact Conversation**
```
/compact
```

### `nnn` - Next Task Planning (Analysis & Planning Only)
When you see `nnn`:

**Purpose**: Create a comprehensive implementation plan based on gathered context. NO CODING - only research, analysis, and planning.

**IMPORTANT**: After `nnn` creates a plan, WAIT for explicit user instruction to implement. Do NOT start coding automatically.

**Step 1: Check for Recent Context**
```bash
# Check if there's a recent context issue (within last 24 hours)
gh issue list --label "context" --limit 5

# Decision logic:
# - If NO recent context issue exists → Perform `ccc` first to capture current state
# - If recent context issue EXISTS → Use that context and proceed to Step 2
```

**Smart Workflow**:
- If no recent `ccc` context: `nnn` automatically does `ccc` → then creates task issue
- If recent `ccc` exists: `nnn` uses existing context → creates task issue directly

**Step 2: Gather All Context**
```bash
# List recent issues to understand context
gh issue list --limit 20

# If specified: nnn #123 - analyze that specific issue/topic
# If just nnn - analyze the most recent context or current work
```

**Step 2: Deep Analysis**
- Read relevant context issues (especially from `ccc`)
- Analyze the codebase using multiple agents if needed
- Research existing patterns and implementations
- Identify all affected components
- Consider edge cases and potential issues

**Step 3: Create Comprehensive Plan Issue**
Create a detailed implementation plan with all necessary context:
```bash
gh issue create --title "plan: Clear description of what needs to be done" --body "$(cat <<'EOF'
## Implementation Plan

**Context From**: #[context-issue-numbers]
**Type**: [feature/fix/refactor/optimization]

## Problem Statement
[Clear description of what needs to be solved/implemented]

## Research Summary
### Current Implementation Analysis
- How it currently works
- What files/components are involved
- Existing patterns in the codebase

### Technical Constraints
- Performance considerations
- Security implications
- Compatibility requirements

### Similar Implementations
- Examples from codebase
- Best practices discovered

## Proposed Solution

### Architecture Overview
[High-level design and approach]

### Implementation Plan
1. **Phase 1: [Name]**
   - Step 1.1: [Specific action]
   - Step 1.2: [Specific action]
   - Files to modify: [list]

2. **Phase 2: [Name]**
   - Step 2.1: [Specific action]
   - Step 2.2: [Specific action]
   - New files needed: [list]

3. **Phase 3: Testing**
   - Unit tests needed
   - Integration tests
   - Manual testing checklist

### Code Structure
```typescript
// Example interfaces/types needed
interface ProposedStructure {
  // ...
}

// Example component structure
ComponentName/
├── index.tsx
├── hooks.ts
└── types.ts
```

### Technical Details
- **Dependencies**: New packages needed
- **API Changes**: Endpoints affected
- **State Management**: How data flows
- **Database**: Schema changes if any

## Risk Analysis
- **Risk 1**: [Description] → Mitigation: [Strategy]
- **Risk 2**: [Description] → Mitigation: [Strategy]

## Alternative Approaches Considered
1. **Approach A**: [Description] - Rejected because [reason]
2. **Approach B**: [Description] - Rejected because [reason]

## Success Criteria
- [ ] Feature implemented according to spec
- [ ] All tests passing
- [ ] No performance regression
- [ ] Documentation updated
- [ ] Code reviewed and approved

## Estimated Effort
- Research: Already completed
- Implementation: ~X hours
- Testing: ~X hours
- Total: ~X hours

## Questions/Blockers
- [ ] Question 1 that needs clarification
- [ ] Potential blocker to resolve

## Next Steps
1. Review and approve this plan
2. Create feature branch
3. Begin implementation following the plan

## References
- Related PR: #XXX
- Similar implementation: [file:line]
- Documentation: [link]
EOF
)"
```

**Step 4: Provide Summary**
After creating the issue, provide a brief summary of:
- What was analyzed
- Key findings
- Issue number created
- Ready for implementation

**Example Flow:**
```
User: ccc
AI: Creates issue #156 (Context: Multicall research completed)

User: nnn
AI: 1. Reads issue #156 and analyzes codebase
    2. Creates issue #157 "plan: Implement multicall for enhanced store data"
    3. Provides summary: "Created comprehensive plan in issue #157. Ready for implementation."
```

**Key Differences**:
- `ccc`: Saves current state/context for future reference
- `nnn`: Creates actionable implementation plan from context (NO CODING)

### `lll` - List Project Status OR Load Issue Images

#### For Project Status
When you see `lll` (without issue number), execute in parallel:
```bash
gh issue list --limit 20
gh issue list --state closed --limit 10
gh pr list --state all --limit 10
gh issue list --label "context"
gh issue list --label "feat"
git status
```

Then provide a visual summary:
```
📊 Project Status Summary
========================
🔧 Open Issues: X total
  - 🏷️ feat: X
  - 🐛 bug: X
  - 📝 context: X

🔄 Recent PRs:
  - ✅ Merged: X
  - 📭 Open: X
  - ❌ Closed: X

📍 Current Focus: [from latest issues]
```

#### For Loading Issue Images: `lll [issue-id]`
When you see `lll 18` or similar:
```bash
./lll.sh [issue-id]
```

This will:
1. Download all images from the specified GitHub issue
2. Save them to `brews/05-images/issues/`
3. Create extract template in `brews/05-images/extracts/`
4. Track image sources for text extraction

### `rrr` - Retrospective
When you see `rrr`:

**Step 1: Export Full Conversation**
```
/export session_YYYY-MM-DD_HH-MM.md
```
- This creates a markdown file of the entire conversation
- The AI will show the exact filename to use (e.g., `session_2025-07-10_07-33.md`)
- Save the downloaded file to: `retrospectives/exports/`

**Step 2: Gather Session Data**
```bash
# Get modified files
git diff --name-only main...HEAD

# Get commit history
git log --oneline main...HEAD

# Get current time for end time (GMT+7)
# UTC time
date -u +"%H:%M UTC"
# Local time (GMT+7)
TZ='Asia/Bangkok' date +"%H:%M GMT+7"
# Session date
date +"%Y-%m-%d"
```

**Step 3: Create Retrospective Document**
```bash
# Get session date and times
SESSION_DATE=$(date +"%Y-%m-%d")
END_TIME_UTC=$(date -u +"%H:%M")
END_TIME_LOCAL=$(TZ='Asia/Bangkok' date +"%H:%M")

# Create directory structure
mkdir -p retrospectives/$(date +%Y/%m)

# Create retrospective file with auto-filled date/time
cat > retrospectives/$(date +%Y/%m)/${SESSION_DATE}_${END_TIME_UTC//:/-}_retrospective.md << EOF
# Session Retrospective

**Session Date**: ${SESSION_DATE}
**Start Time**: [FILL_START_TIME] GMT+7 ([FILL_START_TIME] UTC)
**End Time**: ${END_TIME_LOCAL} GMT+7 (${END_TIME_UTC} UTC)
**Duration**: ~X minutes
**Primary Focus**: Brief description
**Session Type**: [Feature Development | Bug Fix | Research | Refactoring]
**Current Issue**: #XXX
**Last PR**: #XXX
**Export**: retrospectives/exports/session_${SESSION_DATE}_${END_TIME_UTC//:/-}.md

## Session Summary
[2-3 sentence overview of what was accomplished]

## Timeline
- HH:MM - Started session, reviewed issue #XXX
- HH:MM - [Event]
- HH:MM - [Event]
- HH:MM - Completed implementation

## Technical Details

### Files Modified
```
[paste git diff --name-only output]
```

### Key Code Changes
- Component X: Added Y functionality
- Module Z: Refactored for better performance

### Architecture Decisions
- Decision 1: Rationale
- Decision 2: Rationale

## AI Diary
[Detailed narrative of the development process, challenges faced, solutions explored]

## What Went Well
- Success 1
- Success 2
- Success 3

## What Could Improve
- Area 1
- Area 2

## Blockers & Resolutions
- **Blocker**: Description
  **Resolution**: How it was solved

## Honest Feedback
[Frank assessment of the session, tools, process]

## Lessons Learned
- **Pattern**: [Description] - [Why it matters]
- **Mistake**: [What happened] - [How to avoid]
- **Discovery**: [What was learned] - [How to apply]

## Next Steps
- [ ] Immediate task 1
- [ ] Follow-up task 2
- [ ] Future consideration

## Related Resources
- Issue: #XXX
- PR: #XXX
- Export: [session_YYYY-MM-DD_HH-MM.md](../exports/session_YYYY-MM-DD_HH-MM.md)
EOF
```

**Step 4: Update CLAUDE.md**
- Copy any new lessons learned to the Lessons Learned section
- Add any new patterns or anti-patterns discovered
- Update user preferences if any were observed

**Step 5: Link to GitHub**
```bash
# Add retrospective to git
git add retrospectives/
git commit -m "docs: Add session retrospective $(date +%Y-%m-%d)"

# Comment on relevant issue/PR with actual path
RETRO_PATH="retrospectives/$(date +%Y/%m)/$(date +%Y-%m-%d_%H-%M)_retrospective.md"
gh issue comment XXX --body "Session retrospective created: ${RETRO_PATH}"
```

**Time Zone Note**: 
- **PRIMARY TIME ZONE: GMT+7 (Bangkok time)** - Always show GMT+7 time first
- UTC time included for reference only (shown in parentheses)
- File names may use UTC for technical consistency
- In all displays and retrospectives, prioritize GMT+7 for user clarity

## Git Commit Format
```
[type]: [brief description]

- What: [specific changes]
- Why: [motivation]
- Impact: [affected areas]

Closes #[issue-number]
```

## 🔴 Critical Safety Rules

### Command Usage
- **NEVER use `-f` or `--force` flags with any commands**
- Always use safe, non-destructive command options
- If a command requires confirmation, handle it appropriately without forcing

### Git Operations
- Never use `git push --force` or `git push -f`
- Never use `git checkout -f`
- Never use `git clean -f`
- Always use safe git operations that preserve history

### File Operations
- Never use `rm -rf` - use `rm -i` for interactive confirmation
- Always confirm before deleting files
- Use safe file operations that can be reversed

### Package Manager Operations
- Never use `pnpm install --force` or `npm install --force`
- Never use `pnpm update` without specifying packages
- Always review lockfile changes before committing

### Container Operations
- Never use `docker system prune -a` without confirmation
- Never delete volumes without backing up data first
- Always check running containers before removal

### General Safety Guidelines
- Prioritize safety and reversibility in all operations
- Ask for confirmation when performing potentially destructive actions
- Explain the implications of commands before executing them
- Use verbose options to show what commands are doing

---
*Simple brewing for humans*
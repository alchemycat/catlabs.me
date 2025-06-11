# Claude Instructions - catlabs.me Brewing Research

## Core Workflow

**ALWAYS use GitHub Flow:** Issue → Branch → Work → PR → Merge

1. Create issue first (never create files directly)
2. Create branch: `research/issue-XXX-topic`
3. Complete work referencing issue number
4. Create PR linking to issue
5. Merge after validation

## Available Tools

- **File Operations**: Read, Write, Edit, MultiEdit files
- **Search**: Glob (pattern matching), Grep (content search)
- **Git**: Bash commands for all git operations
- **GitHub**: `gh` CLI for issues, PRs, workflow management
- **Project Management**: Task creation and tracking
- **Web Research**: WebFetch, WebSearch for brewing research

## Directory Structure

```
brews/                        # Obsidian vault
├── 000-research-prompts/     # Templates
├── 001-research-outputs/     # Research docs (need Executive Summary + References)
├── 002-recipes/experimental/ # Recipes from research
├── 003-experiments/planned/  # Experiment designs
├── 004-results/             # Data and analysis
└── 006-knowledge-base/      # Quick references
```

## Key Requirements

### Research Documents (001-research-outputs)
- **Must have**: Executive Summary + References sections
- Format: `issue-XXX-[topic].md`
- Link to originating issue

### Recipes (002-recipes)
- **Must reference** research source
- Format: `issue-XXX-[name]-v[X.X].md`
- Include complete specs and rationale

### Experiments (003-experiments)
- **Must have** clear hypothesis from research
- Format: `issue-XXX-[experiment-name].md`
- Define controlled variables

## GitHub Automation

- GitHub Actions validate research structure
- Auto-creates branches for research issues
- Checks for required sections and deliverables
- Use label `research` on issues to trigger automation

## Common Commands

```bash
# Research workflow
gh issue create --title "Research: [Topic]" --label research
git checkout -b research/issue-XXX-topic
# Create research doc with Executive Summary + References
git add . && git commit -m "Complete Issue #XXX research"
gh pr create --title "Research: [Topic]" --body "Closes #XXX"

# Recipe from research  
gh issue create --title "Recipe: [Name]" --body "Based on #XXX"
git checkout -b recipe/issue-XXX-name
# Create recipe referencing research
```

## Quality Standards

- All work must trace back to issues
- Research drives all recipe development  
- Use templates consistently
- Maintain Obsidian vault linking
- Follow file naming conventions

## Error Prevention

**Never**: Create files without issues, skip research phase, ignore quality standards
**Always**: Start with issues, reference sources, use templates, maintain traceability

---

*Research → Recipe → Experiment → Knowledge pipeline*
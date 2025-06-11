# Claude Instructions for catlabs.me Brewing Research System

## Repository Overview

This repository implements a comprehensive brewing research system using GitHub Flow methodology. All brewing research, recipe development, and experimentation follows structured workflows with full traceability.

## Core Principles

1. **Research-Driven**: Every recipe must be backed by thorough research
2. **GitHub Flow**: Use issues and PRs for all brewing work
3. **Traceability**: Link all work to originating issues
4. **Quality Standards**: Follow established templates and criteria
5. **Obsidian Integration**: The `brews/` directory is an Obsidian vault

## Directory Structure

```
catlabs.me/
├── .github/                    # GitHub automation and templates
│   ├── ISSUE_TEMPLATE/        # 5 brewing workflow templates
│   └── workflows/             # GitHub Actions automation
├── brews/                     # Obsidian vault with all brewing content
│   ├── 000-research-prompts/  # Research templates
│   ├── 001-research-outputs/  # Research documents
│   ├── 002-recipes/          # Recipe development
│   ├── 003-experiments/      # Experiment tracking
│   ├── 004-results/          # Data and analysis
│   ├── 005-brewing-logs/     # Brew session logs
│   └── 006-knowledge-base/   # Quick reference guides
├── README.md                  # Repository overview
├── BREWING-WORKFLOW.md        # Detailed workflow guide
└── CLAUDE.md                 # This file
```

## GitHub Flow Workflow

### ALWAYS Follow This Pattern:

1. **Create Issue First** - Never create files directly
2. **Create Branch** - Use naming conventions
3. **Complete Work** - Reference issue in all files
4. **Create PR** - Link to originating issue
5. **Review & Merge** - Maintain quality standards

### Issue Templates Available:

- `🔬 Deep Research Request` - Start all research projects
- `📋 Research Prompt Template` - Guide research execution
- `🍺 Recipe Development` - Create recipes from research
- `🧪 Brewing Experiment` - Design controlled experiments
- `📊 Experiment Results` - Document and analyze results

## Branch Naming Conventions

| Type | Pattern | Example |
|------|---------|---------|
| Research | `research/issue-XXX-topic` | `research/issue-1-pale-malt-comparison` |
| Recipe | `recipe/name-version` | `recipe/smash-pale-ale-v2` |
| Experiment | `experiment/name-date` | `experiment/malt-comparison-2024` |
| Analysis | `analysis/experiment-name` | `analysis/malt-comparison-results` |
| Knowledge | `kb/topic-update` | `kb/pale-malt-selection-update` |

## File Naming Standards

### Research Documents
- Location: `brews/001-research-outputs/[category]/`
- Format: `[topic]-research.md` or `issue-XXX-[topic]-research.md`
- Must reference originating issue

### Recipes
- Location: `brews/002-recipes/[experimental|tested|production]/`
- Format: `issue-XXX-[name]-v[X.X].md`
- Always link to research source

### Experiments
- Location: `brews/003-experiments/planned/`
- Format: `issue-XXX-[experiment-name].md`
- Must link to research and recipes

### Knowledge Base
- Location: `brews/006-knowledge-base/[category]/`
- Format: `[topic]-[subtopic].md`
- Quick reference, not deep research

## Quality Standards

### Research Documents Must Include:
- Executive Summary (3-5 bullet points)
- Research Objectives
- Technical Analysis
- Practical Applications
- Experiment Proposals
- References (minimum 10 sources)
- Issue reference

### Recipes Must Include:
- Issue reference and research source
- Complete specifications and calculations
- Process documentation with rationale
- Quality control checkpoints
- Version control and iteration notes

### Experiments Must Include:
- Clear hypothesis from research
- Controlled variables defined
- Statistical analysis plan
- Data collection protocol
- Success criteria

## Command Examples

### Starting New Research:
```bash
# Create issue first using GitHub web interface or:
gh issue create --title "Research: [Topic]" --body "[Description]"

# Create and checkout research branch
git checkout -b research/issue-XXX-topic-name

# Create research document following template
# Reference issue number in all files

# Commit and push
git add . && git commit -m "Complete Issue #XXX research: [Topic]"
git push origin research/issue-XXX-topic-name

# Create PR
gh pr create --title "Research: [Topic]" --body "Closes #XXX"
```

### Recipe Development:
```bash
# Must have completed research first
# Create recipe development issue
gh issue create --title "Recipe: [Name] from Research" --body "Based on Issue #XXX research"

# Create recipe branch
git checkout -b recipe/issue-XXX-recipe-name

# Create recipe files referencing research
# Commit and create PR
```

### Experiment Workflow:
```bash
# Create experiment issue
gh issue create --title "Experiment: [Name]" --body "Validates research from Issue #XXX"

# Create experiment branch  
git checkout -b experiment/issue-XXX-experiment-name

# Create experiment design
# Execute brewing
# Document results
# Create analysis PR
```

## Common Tasks

### When User Wants to Research a Topic:
1. Help create GitHub issue using research template
2. Create research branch
3. Use appropriate research prompt template
4. Complete comprehensive research document
5. Create experimental recipes and experiments
6. Submit PR linking to issue

### When User Wants to Create a Recipe:
1. Check if research exists - if not, start with research issue
2. Create recipe development issue
3. Create recipe branch
4. Develop recipe based on research findings
5. Include complete documentation and rationale
6. Submit PR for review

### When User Wants to Plan an Experiment:
1. Ensure research and recipes exist
2. Create experiment issue
3. Design controlled experiment
4. Plan data collection
5. Execute and document results
6. Analyze and update knowledge base

## Obsidian Integration

- The `brews/` directory is configured as an Obsidian vault
- Use linking between documents liberally
- Include tags for categorization
- Visual graph view shows research connections
- Templates available in vault

## Automation Features

- GitHub Actions create research branches automatically
- Document structure validation on PRs
- Progress tracking and deliverable checking
- Integration with issue workflows

## Error Prevention

### Never Do This:
- Create files directly without issues
- Skip the research phase for recipes
- Create recipes without research backing
- Ignore quality standards
- Forget to reference source issues

### Always Do This:
- Start with GitHub issues
- Follow branch naming conventions
- Reference issues in all files
- Use templates consistently
- Maintain traceability chain
- Review PRs before merging

## Troubleshooting

### If User Wants to Skip Research:
Explain that research-driven approach ensures quality and learning. Guide them through quick research process.

### If Files Exist Without Issues:
Help create retroactive issues and properly organize existing work into GitHub Flow.

### If Quality Standards Not Met:
Guide through templates and requirements. Use examples from existing work.

## Key Files to Reference

- `BREWING-WORKFLOW.md` - Detailed workflow documentation
- `brews/000-research-prompts/README.md` - Research guidance
- `.github/ISSUE_TEMPLATE/` - All workflow templates
- Example files in each directory for patterns

## Success Metrics

- All recipes traceable to research
- Research quality meets standards
- Experiments properly designed
- Knowledge base continuously updated
- GitHub Flow followed consistently

---

*Always maintain the research → recipe → experiment → knowledge pipeline*
*Quality over speed - thorough research enables better brewing*
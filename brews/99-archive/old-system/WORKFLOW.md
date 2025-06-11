# Brewing Research & Recipe Development Workflow

This repository follows a GitHub Flow pattern for brewing research and recipe development, using issues and pull requests to manage the brewing process from research to final recipe.

## Repository Structure

```
catlabs.me/
├── 002-recipes/               # Final brewing recipes
├── 001-research/             # Deep research documents  
├── 003-brewing-logs/         # Actual brewing session logs
├── 000-templates/            # Templates for consistency
├── 004-brews/               # Obsidian vault for notes
└── .github/             # Issue/PR templates
```

## GitHub Flow for Brewing

### 1. Research Phase (Issues)

**Create Research Issue** using `🍺 Recipe Research` template:
- Identify brewing topic or recipe optimization need
- Define research objectives and scope
- Assign priority and timeline
- Use labels: `research`, `brewing`, `recipe-optimization`

**Research Branch Workflow:**
```bash
git checkout -b 001-research/topic-name
# Create research document in 001-research/
# Document findings and insights
# Create PR to merge research
```

### 2. Recipe Development (Issues → PRs)

**Create New Recipe Issue** using `➕ New Recipe` template:
- Define recipe concept and inspiration
- Set target specifications (ABV, IBU, style)
- Plan ingredient selection
- Use labels: `enhancement`, `new-recipe`, `brewing`

**Recipe Development Workflow:**
```bash
git checkout -b recipe/recipe-name
# Create recipe file using template
# Implement research findings
# Calculate specifications
# Create PR for recipe addition
```

### 3. Brew Planning (Issues)

**Create Brew Day Issue** using `🍻 Brew Day Planning` template:
- Select recipe to brew
- Plan brewing timeline
- Organize ingredients and equipment
- Set up measurement tracking
- Use labels: `brew-day`, `planning`, `brewing`

### 4. Brewing Execution (Branches)

**Brewing Session Workflow:**
```bash
git checkout -b brewing/recipe-batch-id
# Create brewing log from template
# Document actual brewing process
# Record all measurements and observations
# Create PR to add brewing log
```

## Issue Labels

| Label | Purpose | Usage |
|-------|---------|-------|
| `research` | Deep research topics | Background investigation |
| `new-recipe` | Recipe creation | Adding new recipes |
| `recipe-optimization` | Recipe improvements | Refining existing recipes |
| `brew-day` | Brewing sessions | Planning and executing brews |
| `planning` | Organizational tasks | Scheduling and preparation |
| `brewing` | General brewing activity | All brewing-related work |
| `enhancement` | Improvements | General improvements |
| `documentation` | Documentation updates | README, guides, etc. |
| `collaboration` | Multi-person projects | Collaborative brewing projects |

## Branch Naming Conventions

| Type | Pattern | Example |
|------|---------|---------|
| Research | `001-research/topic-name` | `001-research/belgian-yeast-strains` |
| Recipe | `recipe/recipe-name` | `recipe/belgian-golden-strong` |
| Brewing | `brewing/recipe-batch` | `brewing/bgs-001` |
| Documentation | `docs/topic` | `docs/water-chemistry-guide` |
| Feature | `feature/feature-name` | `feature/recipe-calculator` |

## File Naming Conventions

### Recipes
- Format: `r###-recipe-name.md`
- Example: `r001-belgian-golden-strong-ale.md`
- Sequential numbering for tracking

### Research
- Format: `res-###-topic-name.md`  
- Example: `res-001-belgian-yeast-comparison.md`
- Links to related recipes

### Brewing Logs
- Format: `[recipe-id]-batch-###-YYYY-MM-DD.md`
- Example: `r001-batch-001-2024-03-15.md`
- Tracks multiple batches per recipe

## Pull Request Process

### Recipe PRs
1. **Research First**: Ensure adequate research exists
2. **Template Compliance**: Use recipe template
3. **Calculations**: Verify all brewing calculations
4. **Review**: Get review from brewing partners
5. **Integration**: Update recipe index and cross-references

### Research PRs  
1. **Comprehensive**: Address all research objectives
2. **Sources**: Include proper citations and references
3. **Actionable**: Provide clear implementation guidance
4. **Linked**: Connect to related recipe development

### Brewing Log PRs
1. **Complete Data**: Include all measurements and observations
2. **Analysis**: Provide post-brew assessment
3. **Improvements**: Document lessons learned
4. **Updates**: Update recipe file with actual data

## Collaboration Integration

When working on collaborative brewing projects:
- Use `collaboration` label
- Reference collaborators in recipe and research files
- Coordinate via issues for planning
- Document shared brewing sessions
- Track joint recipe development
- Include professional brewing insights when available

## Quality Control

### Recipe Reviews
- [ ] Calculations accurate
- [ ] Style guidelines followed
- [ ] Process steps clear
- [ ] Ingredient specifications complete
- [ ] Cross-references maintained

### Research Reviews  
- [ ] Sources cited properly
- [ ] Conclusions supported by data
- [ ] Implementation guidance clear
- [ ] Related recipes identified
- [ ] Future research noted

### Brewing Log Reviews
- [ ] All measurements recorded
- [ ] Process deviations documented
- [ ] Quality assessment complete
- [ ] Improvement opportunities identified
- [ ] Recipe updates suggested

## Integration with Obsidian

The `004-brews/` directory serves as an Obsidian vault for:
- Quick notes and brainstorming
- Linking concepts across recipes
- Visual recipe development
- Research organization
- Brewing session planning

**Sync Process:**
1. Use Obsidian for rapid note-taking and ideation
2. Formalize research and recipes in main repository
3. Create issues/PRs for structured development
4. Reference Obsidian notes in GitHub discussions

## Automation Opportunities

### GitHub Actions (Future)
- Recipe calculation validation
- Style guideline compliance checking
- Brewing calendar integration
- Automatic cross-reference updates
- Template compliance verification

### Integration Options
- BeerXML export from recipes
- Brewing software data import
- Calendar integration for brew planning
- Inventory management links

---

This workflow ensures that all brewing research is thoroughly documented, recipes are properly developed and tested, and the entire process is trackable through GitHub's issue and PR system while maintaining the collaborative nature of the brewing projects.
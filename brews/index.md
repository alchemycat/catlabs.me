# 🍺 Simple Brewing Index

Welcome to catlabs.me brewing vault. Simple organization for better brewing.

## 📚 Research Categories

### [[001-research-outputs/ingredients/index|🌾 Ingredients Research]]
Deep dives into malts, hops, yeast, and water chemistry
- [[001-research-outputs/ingredients/issue-1-pale-malt-comparison-bb-weyermann|Pale Malt Comparison: Barrett Burston vs Weyermann]]

### [[001-research-outputs/specialty/index|🧪 Specialty & Experimental]]
Pushing the boundaries of brewing science
- [[001-research-outputs/specialty/issue-3-100-percent-carapils-beer-analysis|100% Carapils Beer Analysis]]

### [[001-research-outputs/styles/index|🍻 Beer Styles]]
Traditional and modern beer style research
- *Coming soon*

### [[001-research-outputs/techniques/index|🔧 Brewing Techniques]]
Methods, processes, and technical innovations
- *Coming soon*

### [[001-research-outputs/processes/index|⚙️ Brewing Processes]]
Mashing, fermentation, and production workflows
- *Coming soon*

## 🏷️ Quick Access by Topic

### Malt Studies
- #pale-malt - [[001-research-outputs/ingredients/issue-1-pale-malt-comparison-bb-weyermann|Barrett Burston vs Weyermann]]
- #carapils - [[001-research-outputs/specialty/issue-3-100-percent-carapils-beer-analysis|100% Carapils Analysis]]

### Enzyme Research
- #enzymes - [[001-research-outputs/specialty/issue-3-100-percent-carapils-beer-analysis|External Enzyme Protocols]]

### Recipe Development
- [[002-recipes/index|Recipe Collection]] - SMaSH beers and experimental formulations
  - [[002-recipes/smash/issue-5-barrett-burston-centennial-smash|Barrett Burston Centennial SMaSH]]
  - [[002-recipes/smash/issue-5-weyermann-centennial-smash|Weyermann Centennial SMaSH]]

## 📊 Research Status

### Active Research
```dataview
table status, priority, file.name
from "brews"
where contains(tags, "active-research")
sort priority desc
```

### Recent Additions
```dataview
list
from "brews/001-research-outputs"
sort file.ctime desc
limit 10
```

## 🔗 External Resources

### GitHub Integration
- [Issues Board](https://github.com/alchemycat/catlabs.me/issues) - Submit brewing ideas
- [Pull Requests](https://github.com/alchemycat/catlabs.me/pulls) - Review research submissions

### Research Tools
- [[000-templates/research-prompt|Research Prompt Template]]
- [[000-templates/experiment-design|Experiment Design Template]]

---
*This index is maintained as part of the catlabs.me brewing research program. All research follows systematic GitHub Flow methodology.*

Tags: #index #brewing #research #obsidian
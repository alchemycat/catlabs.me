---
tags: [index, recipes, brewing-recipes]
aliases: ["Recipe Collection", "Brewing Recipes"]
---

# 🍺 Recipe Collection

All brewing recipes developed from research findings.

## Recipe Categories

### [[smash/index|🌾 SMaSH Recipes]]
Single Malt and Single Hop recipes for ingredient evaluation
- [[smash/issue-5-barrett-burston-centennial-smash|Barrett Burston + Centennial]]
- [[smash/issue-5-weyermann-centennial-smash|Weyermann + Centennial]]

### 🧪 Experimental Recipes
Pushing brewing boundaries
- *Coming soon: 100% Carapils variations*

### 🇹🇭 Thai-Inspired Recipes
Local ingredients and flavors
- *Coming soon*

## Recipes by Research

```dataview
table file.name as "Recipe", issue, status
from "brews/002-recipes"
where file.name != "index"
sort created desc
```

## Recipe Development Process

1. **Research Phase** - Deep dive in [[../001-research-outputs/index|Research Outputs]]
2. **Recipe Design** - Based on research findings
3. **Testing** - Brew and evaluate
4. **Refinement** - Iterate based on results

---
[[../index|← Back to Main Index]]
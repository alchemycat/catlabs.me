---
tags: [index, specialty-brewing, experimental, extreme-brewing]
aliases: ["Specialty Research", "Experimental Brewing"]
---

# 🧪 Specialty & Experimental Brewing Index

Research pushing the boundaries of traditional brewing science.

## Extreme Grain Bills

### Single Malt Experiments
- [[issue-3-100-percent-carapils-beer-analysis|100% Carapils Beer Analysis]] - Enzyme requirements and brewing challenges

## Research by Focus Area

### Enzyme Applications
```dataview
list
from #enzymes
where contains(file.path, "research-outputs")
```

### Non-Traditional Ingredients
- Coming soon: Thai ingredient brewing
- Coming soon: Alternative fermentables

## Research by Tag

```dataview
table file.name as "Research", status, created, researcher
from "brews/001-research-outputs/specialty"
where file.name != "index"
sort created desc
```

---
[[../../index|← Back to Main Index]]
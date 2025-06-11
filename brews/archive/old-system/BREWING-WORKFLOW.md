# Deep Brewing Research Workflow

This document describes the comprehensive GitHub Flow-based workflow for deep brewing research, recipe development, and experimentation at catlabs.me.

## Overview

The brewing research workflow follows a systematic approach:

```
Research Request → Deep Research → Recipe Development → Experiments → Results → Knowledge Base
     ↓                ↓                   ↓                 ↓            ↓             ↓
   Issue          Research Doc         Recipe Files     Experiment    Analysis    Learnings
                                                          Design       Report    Documentation
```

## Workflow Stages

### 1. Research Request Phase

**Start here for any brewing investigation**

1. **Create Research Request Issue**
   - Use template: `🔬 Deep Research Request`
   - Define clear objectives and scope
   - Assign appropriate labels
   - Set priority and timeline

2. **Automated Branch Creation**
   - GitHub Action creates `research/issue-XXX-topic` branch
   - Initial research document created in `brews/001-research-outputs/pending/`
   - Issue updated with branch information

3. **Research Planning**
   - Select appropriate prompt template from `brews/000-research-prompts/`
   - Create detailed research plan
   - Identify required resources

### 2. Deep Research Execution

**Systematic investigation using structured prompts**

1. **Literature Review**
   - Academic sources
   - Industry publications
   - Historical documents
   - Community knowledge

2. **Technical Analysis**
   - Scientific principles
   - Chemical/physical processes
   - Quantitative data
   - Qualitative assessments

3. **Practical Applications**
   - Brewing implications
   - Recipe development guidelines
   - Process recommendations
   - Equipment considerations

4. **Documentation**
   - Follow template output format
   - Complete all required sections
   - Include visual aids
   - Cite all sources

**Output Location:** `brews/001-research-outputs/[category]/[topic].md`

### 3. Recipe Development Phase

**Transform research into actionable recipes**

1. **Create Recipe Development Issue**
   - Use template: `🍺 Recipe Development from Research`
   - Link to source research
   - Define target specifications

2. **Recipe Creation Process**
   - Apply research findings
   - Calculate ingredient bills
   - Design process parameters
   - Document rationale

3. **Recipe Stages**
   - **Experimental**: Initial concepts from research
   - **Tested**: Brewed and evaluated
   - **Production**: Refined and consistent

**Output Locations:**
- Experimental: `brews/002-recipes/experimental/`
- Tested: `brews/002-recipes/tested/`
- Production: `brews/002-recipes/production/`

### 4. Experiment Design Phase

**Validate research through controlled experiments**

1. **Create Experiment Issue**
   - Use template: `🧪 Brewing Experiment Design`
   - Link to research and recipes
   - Define hypothesis

2. **Experiment Planning**
   - Identify variables
   - Design controls
   - Plan data collection
   - Set success criteria

3. **Documentation Requirements**
   - Detailed procedures
   - Equipment lists
   - Timeline
   - Risk mitigation

**Output Location:** `brews/003-experiments/planned/[experiment-name].md`

### 5. Experiment Execution

**Conduct experiments and collect data**

1. **Pre-Experiment**
   - Move design to `brews/003-experiments/in-progress/`
   - Prepare materials
   - Calibrate equipment
   - Review procedures

2. **During Experiment**
   - Follow documented procedures
   - Record all observations
   - Collect data systematically
   - Document deviations

3. **Data Collection**
   - Use standardized forms
   - Record immediately
   - Include photos/videos
   - Note environmental conditions

**Data Location:** `brews/004-results/data/[experiment-name]-data.csv`

### 6. Results Analysis Phase

**Analyze data and draw conclusions**

1. **Create Results Issue**
   - Use template: `📊 Experiment Results & Analysis`
   - Link to original experiment
   - Upload raw data

2. **Analysis Process**
   - Statistical analysis
   - Sensory evaluation
   - Compare to hypothesis
   - Validate research predictions

3. **Documentation**
   - Complete analysis report
   - Visual data representations
   - Clear conclusions
   - Actionable recommendations

**Output Locations:**
- Analysis: `brews/004-results/analysis/[experiment-name]-analysis.md`
- Conclusions: `brews/004-results/conclusions/[experiment-name]-conclusions.md`

### 7. Knowledge Integration

**Update knowledge base with learnings**

1. **Knowledge Base Updates**
   - Add to relevant category
   - Cross-reference research
   - Include practical tips
   - Document best practices

2. **Recipe Updates**
   - Incorporate findings
   - Adjust parameters
   - Update documentation
   - Version control

3. **Future Research**
   - Identify gaps
   - Propose follow-ups
   - Create new issues
   - Link relationships

**Knowledge Base:** `brews/006-knowledge-base/[category]/`

## GitHub Flow Integration

### Branch Strategy

| Branch Type | Naming Convention | Purpose |
|-------------|------------------|---------|
| Research | `research/issue-XXX-topic` | Research documentation |
| Recipe | `recipe/name-version` | Recipe development |
| Experiment | `experiment/name-date` | Experiment execution |
| Analysis | `analysis/experiment-name` | Results analysis |
| Knowledge | `kb/topic-update` | Knowledge base updates |

### Pull Request Process

1. **Research PR Requirements**
   - Complete research document
   - All sections addressed
   - Minimum source requirements met
   - Deliverables created

2. **Recipe PR Requirements**
   - Complete recipe documentation
   - Research links included
   - Calculations verified
   - Process documented

3. **Experiment PR Requirements**
   - Design approved via issue
   - Safety considerations addressed
   - Data collection plan included
   - Success criteria defined

4. **Results PR Requirements**
   - All data uploaded
   - Analysis complete
   - Conclusions supported
   - Recommendations actionable

### Automation Features

**GitHub Actions Automations:**
- Research branch creation on issue
- Document structure validation
- Deliverable checking
- Progress tracking
- Summary generation

## File Organization

```
brews/
├── 000-research-prompts/       # Templates for research
│   ├── style-analysis.md
│   ├── ingredient-research.md
│   ├── technique-optimization.md
│   └── README.md
├── 001-research-outputs/       # Research documents
│   ├── styles/
│   ├── ingredients/
│   ├── techniques/
│   ├── processes/
│   └── pending/
├── 002-recipes/               # Recipe development
│   ├── experimental/
│   ├── tested/
│   └── production/
├── 003-experiments/           # Experiment tracking
│   ├── planned/
│   ├── in-progress/
│   └── completed/
├── 004-results/              # Results and analysis
│   ├── data/
│   ├── analysis/
│   └── conclusions/
├── 005-brewing-logs/         # Actual brew sessions
└── 006-knowledge-base/       # Accumulated knowledge
    ├── styles/
    ├── ingredients/
    ├── techniques/
    └── troubleshooting/
```

## Best Practices

### Research Quality
- Use structured prompts consistently
- Document thoroughly as you research
- Include both positive and negative findings
- Cite all sources properly
- Think practically about brewing applications

### Recipe Development
- Base all decisions on research
- Document rationale for choices
- Include scaling considerations
- Plan for iterations
- Consider cost implications

### Experiment Design
- Single variable testing preferred
- Include proper controls
- Plan statistical analysis upfront
- Consider sample size
- Document all procedures

### Data Management
- Use consistent naming conventions
- Record data immediately
- Include metadata
- Back up critical data
- Use standard formats (CSV, Markdown)

### Collaboration
- Tag relevant team members
- Use issue discussions
- Share interim findings
- Request reviews early
- Document decisions

## Quality Standards

### Research Documents
- Minimum 10 authoritative sources
- Complete template sections
- Clear executive summary
- Actionable recommendations
- Proper citations

### Recipes
- Based on research findings
- Complete specifications
- Scaled calculations
- Process documentation
- Version control

### Experiments
- Clear hypothesis
- Controlled variables
- Adequate sample size
- Statistical validity
- Reproducible procedures

### Knowledge Base
- Accurate information
- Practical focus
- Cross-referenced
- Updated regularly
- Accessible writing

## Getting Started

1. **New Research Project**
   ```
   Create Issue → "🔬 Deep Research Request"
   Check out branch → Use prompt template
   Document findings → Create deliverables
   Submit PR → Review and merge
   ```

2. **Recipe from Research**
   ```
   Create Issue → "🍺 Recipe Development"
   Link research → Apply findings
   Calculate recipe → Document process
   Submit PR → Test and iterate
   ```

3. **Validation Experiment**
   ```
   Create Issue → "🧪 Brewing Experiment"
   Design experiment → Review design
   Execute brewing → Collect data
   Analyze results → Update knowledge
   ```

## Continuous Improvement

This workflow is designed to evolve. Submit improvements via PR to this document. Regular reviews ensure the workflow remains effective and efficient.

---

*Last updated: [Date]*
*Version: 1.0*
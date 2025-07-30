# Beer Recipe Template

## Recipe Information

```
Recipe Name/ชื่อ Recipe: _______________
Beer Style/สไตล์เบียร์: _______________
Batch Size/ปริมาณต้ม (L): _______________
Brew Time/เวลาต้ม (hours): _______________
Boiling Water/น้ำต้ม (L): _______________
Sparging Water/น้ำสปาร์จ (L): _______________

OG: 1.___
FG: 1.___
IBU: ___
SRM: ___
```

## Recipe Template

```
Malt/มอลต์:
Pilsner ___kg
Pale Ale ___kg
Munich ___kg
Vienna ___kg
Crystal 40L ___kg
Crystal 60L ___kg
Chocolate ___kg
Black Patent ___kg

Hops/ฮอปส์:
Amarillo ___g @ ___min
Cascade ___g @ ___min
Centennial ___g @ ___min
Citra ___g @ ___min
Columbus ___g @ ___min
Magnum ___g @ ___min
Mosaic ___g @ ___min
Simcoe ___g @ ___min

Yeast/ยีสต์:
US-05
S-04
WLP001
Nottingham
BE-256

Brewing Salt/เกลือต้มเบียร์:
Table Salt ___g
Epsom ___g
CaCl2 ___g
Gypsum ___g
```

### Hop Timing Guide
- 60' - Bittering
- 30' - Flavor/Bittering
- 15' - Flavor
- 10' - Flavor/Aroma
- 5' - Aroma
- 0' - Aroma (Flameout)
- Whirlpool - Aroma (specify temp & time)
- D1 - Dry Hop Day 1
- D3 - Dry Hop Day 3
- D5 - Dry Hop Day 5
- D7 - Dry Hop Day 7

## Mashing Schedule

```
Mashing: ___°C, ___min
```

### Mashing Temperature Options
- 35°C, 20min (Acid rest)
- 45°C, 15min (Ferulic acid rest)
- 50°C, 15min (Protein rest)
- 55°C, 10min (Beta glucan rest)
- 62°C, 30min (Beta amylase)
- 65°C, 60min (Light body, dry)
- 66°C, 60min (Balanced)
- 67°C, 60min (Medium body)
- 68°C, 45min (Full body)
- 70°C, 30min (Very full, sweet)
- 72°C, 20min (Alpha amylase)
- 78°C, 10min (Mash out)

---

## Example Filled Recipe

```
Recipe Name: American IPA
Beer Style: IPA
Batch Size: 20L
Brew Time: 6 hours
Boiling Water: 15L
Sparging Water: 20L

OG: 1.065
FG: 1.012
IBU: 65
SRM: 8

Malt:
Pilsner 4kg
Pale Ale 0.5kg
Munich 0.3kg
Crystal 40L 0.2kg

Hops:
Magnum 15g @ 60min
Cascade 30g @ 15min
Cascade 50g @ Whirlpool 80°C 20min
Citra 100g @ Dry Hop Day 3

Yeast:
US-05

Brewing Salt:
Table Salt 1g
Epsom 2g
CaCl2 3g
Gypsum 5g

Mashing: 66°C, 60min (Balanced)
```

## Another Example - Hoppy Pale Ale

```
Recipe Name: Tropical Pale Ale
Beer Style: American Pale Ale
Batch Size: 20L
Brew Time: 5 hours
Boiling Water: 15L
Sparging Water: 18L

OG: 1.048
FG: 1.010
IBU: 40
SRM: 6

Malt:
Pilsner 3.5kg
Pale Ale 0.5kg
Munich 0.3kg
Crystal 40L 0.2kg

Hops:
Magnum 10g @ 60min
Amarillo 30g @ 5min
Centennial 30g @ 0min
Citra 30g @ Whirlpool 80°C 20min
Columbus 30g @ Dry Hop Day 7

Yeast:
S-04

Brewing Salt:
Table Salt 1g
Epsom 2g
CaCl2 3g
Gypsum 5g

Mashing: 65°C, 60min (Light body, dry)
```

---

## AI Assistant Instructions

When helping users with this template:

1. **Multi-Select System**: Users build recipes by selecting from categorized options
2. **Validate Combinations**: Ensure ingredient combinations make sense for the beer style
3. **Calculate Estimates**: Help estimate OG, FG, IBU, and SRM based on ingredients
4. **Suggest Adjustments**: Recommend changes to achieve target measurements
5. **Explain Choices**: Educate users on why certain ingredients or processes are recommended

### Key Guidelines:
- For bittering hops, use high alpha acid varieties (Magnum, Columbus) at 60 minutes
- For flavor hops, add between 15-30 minutes
- For aroma hops, add at 5 minutes or less, whirlpool, or dry hop
- Match mash temperature to desired body: 65°C (dry), 67°C (balanced), 68-70°C (full)
- Adjust water chemistry based on beer style (more sulfate for hoppy, more chloride for malty)

*Template based on Maeon Beer Lab interface*
# CatLabs Brewing 🍺

Simple repo for my brewing recipes and notes.

## Structure

- `recipes/` - My tested recipes
- `notes/` - Brew day notes and observations  
- `images/` - Recipe photos and brew day pics

## Adding a Recipe

Just create a markdown file:

```bash
# Create new recipe
vim recipes/my-awesome-ipa.md

# Commit and push
git add .
git commit -m "Add IPA recipe"
git push
```

## Brew Notes

Quick notes after brewing:

```bash
# Create brew day notes
echo "OG: 1.050, tastes great!" >> notes/$(date +%Y-%m-%d).md
git add . && git commit -m "Brew day notes" && git push
```

## Sharing & Discussion

Want to discuss a recipe or share results? [Create an issue](https://github.com/alchemycat/catlabs.me/issues/new) with your photos and notes!

---

*Simple brewing for humans*
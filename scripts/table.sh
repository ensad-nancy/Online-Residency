#!/bin/bash

YEAR=$(date +%G)
TABLE="| Semaine | Titre | Auteur |\n|---|---|---|\n"
FOUND=0

for WEEK_DIR in $(ls -d "$YEAR"/*/ 2>/dev/null | sort -t/ -k1 -n); do
  WEEK=$(basename "$WEEK_DIR")
  DIR="$YEAR/$WEEK"
  if [ -f "$DIR/index.html" ] && [ ! -f "$DIR/.gitkeep" ]; then
    TITLE=$(jq -r '.title // "—"' "$DIR/meta.json" 2>/dev/null)
    AUTHOR=$(jq -r '.author // "—"' "$DIR/meta.json" 2>/dev/null)
    TABLE="${TABLE}| $WEEK | $TITLE | $AUTHOR |\n"
    FOUND=1
  fi
done

if [ "$FOUND" -eq 0 ]; then
  TABLE="_Aucune semaine réservée pour le moment en $YEAR._\n"
fi

echo -e "$TABLE"
#!/bin/bash
# usage : bash week_gen.sh <année>

YEAR=$1

if [ -z "$YEAR" ]; then
  echo "Usage: $0 <année>"
  exit 1
fi

NB_WEEKS=$(date -j -f "%Y-%m-%d" "$YEAR-12-28" +%V)

for i in $(seq 1 $NB_WEEKS); do
  DIR="$YEAR/$i"
  mkdir -p "$DIR"
  touch "$DIR/.gitkeep"
  cat > "$DIR/meta.json" << EOF
{
  "title": "",
  "author": "",
  "week": $i
}
EOF
done

echo "Créé $NB_WEEKS dossiers dans $YEAR/"
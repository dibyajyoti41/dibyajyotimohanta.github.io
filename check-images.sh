#!/usr/bin/env bash
# Quick check: do all 22 expected images exist in assets/images/?
cd "$(dirname "$0")" || exit 1
needed=(
  profile.jpg
  journey.jpg
  odm-schematic.jpg
  t4-kymograph.jpg
  cag-condensate.jpg
  cag-dynamics.jpg
  velocity-flow.jpg
  sequence-flow.jpg
  confinement.jpg
  migration.jpg
  adsorption.jpg
  segregation.jpg
  valley-of-flowers-1.jpg
  valley-of-flowers-2.jpg
  hemkund-1.jpg
  hemkund-2.jpg
  sandakphu-1.jpg
  sandakphu-2.jpg
  brahmatal-1.jpg
  brahmatal-2.jpg
  kanchenjunga-1.jpg
  kanchenjunga-2.jpg
)
missing=0
for f in "${needed[@]}"; do
  if [[ -f "assets/images/$f" ]]; then
    echo "  OK   assets/images/$f"
  else
    echo "  MISS assets/images/$f"
    missing=$((missing+1))
  fi
done
echo
if [[ $missing -eq 0 ]]; then
  echo "All ${#needed[@]} images present. Safe to commit & push."
else
  echo "$missing missing — rename / copy them in before pushing."
fi

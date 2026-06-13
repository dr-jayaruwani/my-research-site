#!/bin/bash
git checkout main
quarto render
git checkout gh-pages
cp -r _site/* .
git add .
git commit -m "Quick update"
git push origin gh-pages
git checkout main
echo "Done! Site updated in 2 minutes."

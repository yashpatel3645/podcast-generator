#!/bash

echo "=================="

git config --global user.name "${GITHIUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /urs/bin/feed.py

git add -A && git commit -m "Update Feed"s
git push --set-upstream origin main

echo "=================="
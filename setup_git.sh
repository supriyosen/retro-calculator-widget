#!/bin/bash

# 1. Rename current branch to 'main' (fixes the "refspec" error)
git branch -m main

# 2. Add ALL changed files (icons, readme, etc.)
git add .

# 3. Commit changes
git commit -m "Add app icon and sync files"

# 4. Push to specifically 'main' branch
git push -u origin main

echo "-----------------------------"
echo "If you see the message above, it worked!"

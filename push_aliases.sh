read -p "Enter branch name: " branch_name
read -p "Enter commit message: " commit_msg

cp ~/.aliases ~/dev/Shell/aliases

cd ~/dev/Shell

git pull
git add aliases

git checkout -b "$branch_name"

git commit -m "$commit_msg"

git push origin

git checkout main

git reset --hard
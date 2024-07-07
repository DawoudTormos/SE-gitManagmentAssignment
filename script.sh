 cd "/c/Users/Dawoud Tormos/Desktop/charbel git assignbment/Project"

# Fetch changes in the main project
git fetch

echo -e "\nAutomatically updating only submodules to their latest commits. Then commiting and pushing this change.\n\n"

# Loop through each submodule and check for updates
git submodule foreach 'git fetch && git status && git pull origin $(git rev-parse --abbrev-ref HEAD) && echo -e "\n---------------\n"'

# Stage changes in submodules only
git submodule foreach 'git add .'

# Commit submodule updates in the main project
git commit -m "Automatically updating submodules to their latest commits."

# Push changes to GiytHub
git push

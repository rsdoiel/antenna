$WORKING_BRANCH = (git branch | Select-String '\* ').Line.Split(' ')[1]

if ($WORKING_BRANCH -eq "gh-pages") {
    git commit -am "publishing to gh-pages branch"
    git push origin gh-pages
} else {
    Write-Host "You're in $WORKING_BRANCH branch"
    Write-Host "You need to pull in changes to the gh-pages branch to publish"

    # Committing and pushing to the current working branch
    Write-Host "Committing and pushing to $WORKING_BRANCH"
    git commit -am "committing to $WORKING_BRANCH"
    git push origin "$WORKING_BRANCH"

    # Switching to the gh-pages branch
    Write-Host "Changing branches from $WORKING_BRANCH to gh-pages"
    git checkout gh-pages

    # Merging changes from origin/gh-pages
    Write-Host "Merging changes from origin gh-pages"
    git pull origin gh-pages
    git commit -am "merging origin gh-pages"

    # Pulling changes from the working branch
    Write-Host "Pulling changes from $WORKING_BRANCH into gh-pages"
    git pull origin "$WORKING_BRANCH"

    # Merging changes from the working branch
    Write-Host "Merging changes from $WORKING_BRANCH"
    git commit -am "merging $WORKING_BRANCH with gh-pages"

    # Pushing changes to gh-pages
    Write-Host "Pushing changes up and publishing"
    git push origin gh-pages

    # Switching back to the working branch
    Write-Host "Changing back to your working branch $WORKING_BRANCH"
    git checkout "$WORKING_BRANCH"
}

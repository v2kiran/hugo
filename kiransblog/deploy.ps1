# Build the project.
hugo -t soho

# Go To Public folder
Push-Location public

# Add changes to git.
git add .

# Commit changes.
$msg = "rebuilding site $(Get-Date)"
Write-Host $msg -ForegroundColor Green
git commit -m $msg

# Push source and build repos.
git push origin main

# come back to the original folder
Pop-Location

#and back out and commit and push source repo
git add -A
git commit -m $msg
git push origin main
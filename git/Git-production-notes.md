## Typical Git workflow 

- Pull latest changes from main/ clone repo

- create your own feature branch to work on 

- commit and push changes to branch

- Open pull request to review and merge 

- Sync regularly using git pull --rebase or merge 


## Collabaration practices

- Branches to isolate your work

- Push to remote and open pull request

- Assign reviewers to checkout your code 

- resolve conflict yourself before merging

- Clear commit message/ add for ease of use and efficiency

- One commit per logical change 

- Run linters before commit to prevent broken code entering the repo/ Hook into CI pipelines


# "Trunk Based Development "

- All devs commit to main or short branches

- Heavy CI/testing 


## Common Mistakes

- Pull before pushing

- Force pushing to shared branches

- Committing secrets (.env, API keys,)

- Merging without review

- Not using .gitignore properly (junk files, secrets committed)
set /p msg="Enter commit message: "
git add -A
git commit -a -m "%msg%"
git push -u origin --all
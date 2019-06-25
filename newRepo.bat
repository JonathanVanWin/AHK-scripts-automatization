set /p repo_name="Enter Repository name: "
set /p isPrivate="Private? (false/true): "
set /p descrip="Description of repository: "
set repo_name=%repo_name: =-%
curl --data "{\"name\":\"%repo_name%\", \"auto_init\":true, \"has_wiki\":true, \"private\":%isPrivate%, \"description\":\"%descrip%\"}" -X POST -H "Authorization: token 8f0cf94817e9de9c63975998878232638337618f" https://api.github.com/user/repos
git init
git remote add origin https://github.com/JonathanVanWin/%repo_name%.git
git pull origin master --allow-unrelated-histories
git add .
git commit -a -m "Initial Commit to %repo_name%"
git push -u origin --all
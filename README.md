# SET UP INSTRUCTIONS
This short tutorial introduce the steps to help you accomplish following tasks:
* Create a GitHub account
* Setup Git as version control system of RStudio
* Configure local Git environment with developer information

## For RStudio
1. First ensure that you have Git installed on your system. Otherwise go to:
 http://git-scm.com/downloads and install it
2. In RStudio go to "Tools"
3. Select "Global Options"
4. Click Git/SVN
5. Click "Enable version control interface for RStudio projects"
6. If necessary, enter the path for your Git executable where provided.
7. If necessary, create your RSA key for SSH.

## For GitHub
8. Register at https://github.com/ if you didn't do it yet.
9. At github.com go to "View profile and more"
10. From "Personal settings" list select "SSH and GPG keys"
11. Choose "New SSH key"
12. Paste your public key from **step 7.** and press "Add SSH key"

## For RStudio
13. In RStudio create "New Project" from "Version Control"
14. Set "Repository URL" to https://github.com/JacekPardyak/Sota
15. Select "Tools" >> "Shell..."
16. Type:
```
git config --global user.email "your_email@example.com"
git config remote.origin.url git@github.com:JacekPardyak/Sota.git
```
## Additional information
- If you are not willing to wait until your push request is accepted please give your GitHub username/email address to become a contributor
- There 3, fundamental functionalities which you will use in RStudio:
  + **Pull**, to get recent code from GitHub
  + **Push**, to share your code with others, and
  + **Commit**, to register your changes before **Push**

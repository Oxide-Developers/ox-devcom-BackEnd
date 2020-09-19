# Oxide Developers Community Back-End

This repository is for the team Back-end.

# Technologies

- Django
- Django Rest Framework
- Postgres
- Nginx
- Docker

# Contribution

Every developer is welcome to contribute to this awesome project, all you need to do is to just send us an email at support@oxide-digital.com by providing your github email or username in order for us to send you an invitation and the reason that motivate you to contribute to this project.

# Git

Branches for teams

- Release and Master branches off limits but public.
- Development public, public to all.
- YourName_developement branches local and private.

Rules for branch usage

- No code leaves YourName_development branche unless finished and stable.
- Alldevelopers should only merge to development branch.
- Do NOT merge conflicts into any public branch.
- Only authorized people can merge to release or master

Cloning the repository

- git clone https://github.com/oxidetech/ox-devcom-BackEnd.git
- git branch YourName_developement
- git checkout YourName_development

Make your changes in your then:

- git add .
- git commit -m "message"

Commit procedure (origin pull/merge/push)

Before merging changes to public development:

- git checkout development
- git pull origin development (- Should be no conflicts.)
- git checkout YourName_development
- git merge development (- Fix conflicts)
- git checkout development
- git merge YourName_development
- git push origin development

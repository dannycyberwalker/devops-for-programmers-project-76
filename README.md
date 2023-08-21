### Hexlet tests and linter status:
[![Actions Status](https://github.com/dannycyberwalker/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/dannycyberwalker/devops-for-programmers-project-76/actions)

[Site](https://dannycw.xyz)

### Requirements:
- ansible
- make

### Deploy
1. Install dependencies:
```
make setup
```
2. Set up your environment in .env file.
3. Set up your secrets in ansible vault:
```
make vault dbpass=<your db password> ddkey=<your datadog api key>
```
4. Put password which you entered in .vaultpassword 
5. Install docker if you need:
```
make setup-docker
```
6. Configure and deploy to servers:
```
make deploy
``` 
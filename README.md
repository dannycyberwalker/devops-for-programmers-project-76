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
3. Add ansible vault secret for db password:
```
make vault pass=<your password>
```
4. Put password which you entered in .vaultpassword 
5. Configure and deploy to servers:
```
make servers
``` 
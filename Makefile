setup:
	cp .env.example .env
	ansible-galaxy install -r requirements.yml

servers:
	ansible-playbook playbook.yml -i inventory.ini -vv	
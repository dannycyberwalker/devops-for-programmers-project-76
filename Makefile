setup:
	cp .env.example .env
	ansible-galaxy install -r requirements.yml

servers:
	ansible-playbook playbook.yml -i inventory.ini -vv --vault-password-file .vaultpassword

vault:
	echo "DB_PASSWORD: $(dbpass)" > group_vars/webservers/vault.yml
	echo "DATADOG_KEY: $(ddkey)" >> group_vars/webservers/vault.yml
	ansible-vault encrypt group_vars/webservers/vault.yml
	echo "you vault password" > .vaultpassword
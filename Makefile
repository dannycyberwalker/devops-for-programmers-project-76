setup:
	ansible-galaxy install -r requirements.yml

setup-docker:
	ansible-playbook docker.yml -i inventory.ini -vv --vault-password-file .vaultpassword

deploy:
	ansible-playbook playbook.yml -i inventory.ini -vv --vault-password-file .vaultpassword

vault:
	echo "DB_PASSWORD: $(dbpass)" > group_vars/webservers/vault.yml
	echo "DATADOG_KEY: $(ddkey)" >> group_vars/webservers/vault.yml
	ansible-vault encrypt group_vars/webservers/vault.yml
	echo "you vault password" > .vaultpassword

drop-known-hosts:
	rm ~/.ssh/known_hosts
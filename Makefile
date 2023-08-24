setup:
	ansible-galaxy install -r requirements.yml

setup-docker:
	ansible-playbook docker.yml -i inventory.ini -vv --vault-password-file .vaultpassword

deploy:
	ansible-playbook playbook.yml -i inventory.ini -vv --vault-password-file .vaultpassword

deploy-redmine:
	ansible-playbook playbook.yml -i inventory.ini -vv --tags "redmine"  --vault-password-file .vaultpassword

deploy-datadog:
	ansible-playbook playbook.yml -i inventory.ini -vv --tags "datadog"  --vault-password-file .vaultpassword

vault:
	echo "secret_db_password: $(dbpass)" > group_vars/webservers/vault.yml
	echo "secret_datadog_key: $(ddkey)" >> group_vars/webservers/vault.yml
	ansible-vault encrypt group_vars/webservers/vault.yml
	echo "your vault password" > .vaultpassword

drop-known-hosts:
	rm ~/.ssh/known_hosts
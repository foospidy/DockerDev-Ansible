build:
	docker build -t ansible-dev .

run:
	docker run -i -v $$HOME/tmp/Ansible/:/Ansible/ -t ansible-dev /bin/bash

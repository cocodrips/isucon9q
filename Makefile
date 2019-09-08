dep:
	ansible-playbook -v ansible/dep.yml

deploy:
	ansible-playbook -v ansible/deploy.yml

clean:
	ansible-playbook ansible/clean.yml

summary:
	ansible-playbook ansible/summary.yml

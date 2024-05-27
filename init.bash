vagrant up

# cd playbook/ssl && bash init.sh && cd ../..

cd playbook && ansible-playbook -i hosts.ini ssl.local.yml && cd ..
cd playbook && ansible-playbook -i hosts.ini main.yml && cd ..
# ansible-playbook -i hosts.ini playbook/rs.yml
# ansible-playbook -i hosts.ini playbook/backup.yml

# laravel php artisan
alias pa='php artisan'

# docker start stack php mysql
alias upstack='cd ~/projetos/devilbox/ && docker-compose up -d httpd mysql && ./shell.sh'
alias downstack='cd ~/projetos/devilbox/ && docker-compose down'

# custom ls dir
alias ll='ls -lrt'

# update on one command
alias update='sudo apt update && sudo apt upgrade'

# clear
alias c='clear'

# directory
alias .='cd ../'
alias ..='cd ../../'
alias …='cd ../../../'

# portas em uso
alias ports='netstat -tulpn'

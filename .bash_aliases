# docker start stack php mysql
alias upstack='cd ~/projetos/devilbox/ && docker-compose up -d httpd mysql && ./shell.sh'
alias downstack='cd ~/projetos/devilbox/ && docker-compose down'

# docker postgres
alias updb='cd ~/projetos/postgres && docker-compose up -d'
alias downdb='cd ~/projetos/postgres && docker-compose down'

# custom ls dir
alias l='ls -lrt'

# update on one command
alias update='sudo apt update && sudo apt upgrade'

# clear
alias c='clear'

# portas em uso
alias ports='netstat -tulpn'

### python

alias py='python3'
alias dad='django-admin'
alias pym='python3 manage.py'

# cria venv passando nome da venv
go_env(){ 
  if [ -z "$1" ]; then 
    echo "Por favor, forneça o nome da venv.";
  else 
    python -m venv "$1" && source "$1/bin/activate";
  fi 
};

# instala django
go_django(){
  # verifica se tem parametro
  if [ -z "$1" ]; then 
    pip install django; 
  else 
    # se tem parametro, instala versao passada
    pip install django==$1; 
  fi 
}

# cria projeto django na pasta atual
go_project() { 
  if [ -z "$1" ]; then 
    echo "Por favor, forneça o nome do projeto.";
  else 
    # Se o segundo argumento for fornecido, cria o projeto nesse diretório
    if [ -z "$2" ]; then
      # Se não houver o diretório, cria o projeto na pasta atual
      django-admin startproject $1 .
    else
      # Cria o projeto no diretório especificado
      django-admin startproject $1 $2
    fi
  fi
}

# roda django server
go_server() {
    # verifica se o número da porta foi passado como argumento
    if [ -z "$1" ]; then
        # se não for passado, roda com a porta padrão
        python manage.py runserver
    else
        # se for passado, usa a porta fornecida
        python manage.py runserver "$1"
    fi
}

# cria uma nova app django
new_app() {
    # verifica se o nome da nova app foi passada
    if [ -z "$1" ]; then
        # se não for passado, roda com a porta padrão
        echo "Forneça o nome do app.";
    else
        # se for passado, usa a porta fornecida
        django-admin startapp "$1"
    fi
}

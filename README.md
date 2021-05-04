# Automation API Ruby

**Configuração de ambiente**
- Instalar o Ruby 2.7.3, link: https://rubyinstaller.org/downloads/ ;
- Instalar a gem bundler: `gem install bundler`
- Realizar o comando `bundle install`  dentro da pasta do projeto para instalção das gems necessarias;


**Executar o projeto**
- Arquivo cucumber.yml
  default: -p bdd -p html_report -c

    - ambiente: hmg
      hmg --> `Para executar o testes no ambiente de produção, "homolog" para executar no ambiente de homologação.`

    - html_report: `--format progress --format html --out=reports/html/features_report.html`
      "--out=`reports/html/features_report.html" caminho onde será salvo o relatório`
      
    - comando de execução do projeto: `cucumber -p hmg -t @api_users`
    

- Arquivo url.yml para configuração de ambiente      
  Url: https://gorest.co.in/
  `Url que será utilizada para executar os teste(s) no ambiente de homologação ou Produção`

**Features do Projeto**
- users.feature
    - `Realizar busca por nome e id do usuario por params`




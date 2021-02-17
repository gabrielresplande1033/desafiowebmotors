# Objetivo
Esse projeto tem como principal objetivo a avaliação do processo seletivo da webmotors para a vaga de Analista de Qualidade de Software.

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)
- [Cucumber](https://cucumber.io/)
- [Capybara](https://www.rubydoc.info/github/jnicklas/capybara)
- [HTTParty](https://www.rubydoc.info/github/jnunemaker/httparty/HTTParty/ClassMethods)
- [Chromedriver](https://chromedriver.chromium.org/downloads)

# Funcionalidades
- Automação de testes dos Endpoints de Marca, Modelo, Versão e Veículos da API da Web Motors.
- Automação de testes de Interface para a página de resultado de busca da Web Motors, e também para a listagem de estoque de uma loja específica.

# Como executar os testes da API
Para executar os testes da API deve-se possuir instalado o **Ruby**, **Bundle**, clonar o projeto e executar os seguintes comandos dentro da pasta "api/"
- *bundle install*
- *cucumber -t @webmotors_tests* (Para executar todos os testes de endpoint)

# ChromeDriver
- Para rodar os testes de interface, é necessário possuir o ChromeDriver.
- Verifique a versão do chrome [aqui](https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
- Baixe a versão do ChromeDriver compatível com o seu navegador [aqui](https://chromedriver.storage.googleapis.com/index.html)
- Por fim, mova o ChromeDriver para o diretório correto:
- *sudo mv chromedriver /usr/local/bin* 

# Como executar os testes de Interface

Para executar os testes de Interface deve-se possuir instalado o **Ruby**, **Bundle**, **ChromeDriver**, clonar o projeto e executar os seguintes comandos dentro da pasta "frontend/"
- *bundle install*
- *cucumber -t @resultado_de_busca_test* (para executar os testes referente a página de resultado de busca da Web Motors)
- *cucumber -t @estoque_loja_test* (para executar os testes referente a listagem do estoque de uma loja específica)
- *cucumber* (Para executar todos os testes de Interface do projeto)


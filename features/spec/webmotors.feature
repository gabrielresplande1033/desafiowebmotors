#language: pt

@webmotors_tests
Funcionalidade: Realizar buscas na api webmotors
Como usuário do sistema
Eu quero realizar requisições na api
A fim de realizar buscas referente a informações de carros

    @marca_test
    Cenário: Retornar marcas cadastradas
        Quando eu realizar uma requisição no endpoint de marcas
        Então valido o status code 200
        E valido o contrato da api para "marcas"

    @modelo_test
    Cenário: Retornar modelos cadastrados
        Dado que eu possua um id de uma marca cadastrada
        Quando eu realizar uma requisição no endpoint de modelos buscando essa marca
        Então valido o status code 200
        E valido que no retorno consta apenas modelos referente a minha busca
        E valido o contrato da api para "modelos"
    
    @modelo_nao_existente
    Cenário: Retornar modelo de marca não cadastrada
        Dado que eu possua um id "12345" de uma marca não cadastrada
        Quando eu realizar uma requisição no endpoint de modelos buscando essa marca
        Então valido o status code 200
        E valido que o retorno está vazio

    @versao_test
    Cenário: Retornar versões cadastradas
        Dado que eu possua um id de modelo cadastrado
        Quando eu realizar uma requisição no endpoint de versões buscando por esse modelo
        Então valido o status code 200
        E valido que no retorno consta apenas versões referente a minha busca
        E valido o contrato da api para "versoes"

    @versao_nao_existente
    Cenário: Retornar versões cadastradas
        Dado que eu possua um id "12345" de um modelo não cadastrado
        Quando eu realizar uma requisição no endpoint de versões buscando por esse modelo
        Então valido o status code 200
        E valido que o retorno está vazio

    @veiculos_test
    Cenário: Retornar veiculos por página
        Quando eu realizar uma requisição no endpoint de veiculos buscando pela pagina "1"
        Então valido o status code 200
        E valido o contrato da api para "veiculos"    

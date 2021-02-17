#language: pt

@estoque_loja_test
Funcionalidade: Efetuar buscas no estoque de loja da webmotors

    COMO usuario do webmotors
    EU QUERO realizar buscas no estoque de loja
    Para encontrar o melhor carro para adquirir

    Contexto: Estar na pagina de estoque de uma loja
        Dado que estou na página de estoque de uma loja

    @buscar_carro_por_marca_estoque_loja
    Esquema do Cenário: Buscar carro por marca
        Quando eu selecionar a marca <marca>
        Então valido que o retorno possui o que busquei

        Exemplos:
        | marca        |
        | "honda"      |
        | "fiat"       |
        | "chevrolet"  |
        | "ford"       |
        | "hyundai"    |
        | "renault"    |
        | "toyota"     |
        | "volkswagen" |

    @buscar_carro_por_marca_e_modelo_estoque_loja
    Esquema do Cenário: Buscar carro por marca e modelo
        Quando eu selecionar a marca <marca>
        E inserir o modelo <modelo>
        Então valido que o retorno possui o que busquei

        Exemplos:
        | marca       | modelo    |
        | "honda"     | "city"    |
        | "fiat"      | "toro"    |
        | "chevrolet" | "onix"    |
        | "renault"   | "sandero" |
        | "toyota"    | "corolla" |
    
    @buscar_carro_por_marca_modelo_e_versao_estoque_loja
    Esquema do Cenário: Buscar carro por marca, modelo e versão
        Quando eu selecionar a marca <marca>
        E inserir o modelo <modelo>
        E a versão <versao>
        Então valido que o retorno possui o que busquei
        E valido que o retorno da busca coincide com a versão inserida

        Exemplos:
        | marca       | modelo    | versao                               |
        | "honda"     | "city"    | "1.5 EXL 16V FLEX 4P AUTOMÁTICO"     |
        | "fiat"      | "toro"    | "1.8 16V EVO FLEX FREEDOM AT6"       |
        | "chevrolet" | "onix"    | "1.0 TURBO FLEX PLUS LTZ AUTOMÁTICO" |
        | "renault"   | "sandero" | "2.0 16V HI-FLEX RS MANUAL"          |
        | "toyota"    | "corolla" | "2.0 XEI 16V FLEX 4P AUTOMÁTICO"     |
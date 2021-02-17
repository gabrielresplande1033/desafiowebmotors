#language: pt

@teste_resultado_de_busca
Funcionalidade: Efetuar buscas de carros na webmotors

    COMO usuario do webmotors
    EU QUERO realizar buscas no site
    Para encontrar o melhor carro para adquirir

    Contexto: Estar na pagina de resultado de busca
        Dado que estou na página de resultado de busca da webmotors

    @buscar_carro_por_marca_resultado_busca
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

    @buscar_carro_por_marca_e_modelo_resultado_busca
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
    
    @buscar_carro_por_marca_modelo_e_versao_resultado_busca
    Esquema do Cenário: Buscar carro por marca, modelo e versão
        Quando eu selecionar a marca <marca>
        E inserir o modelo <modelo>
        E a versão <versao>
        Então valido que o retorno possui o que busquei
        E valido que o retorno da busca coincide com a versão inserida

        Exemplos:
        | marca       | modelo    | versao                               |
        | "honda"     | "city"    | "1.5 DX 16V FLEX 4P AUTOMÁTICO"      |
        | "fiat"      | "toro"    | "2.0 16V TURBO DIESEL RANCH 4WD AT9" |
        | "chevrolet" | "onix"    | "1.0 TURBO FLEX AUTOMÁTICO"          |
        | "renault"   | "sandero" | "1.0 12V SCE FLEX ZEN MANUAL"        |
        | "toyota"    | "corolla" | "1.8 GLI 16V FLEX 4P MANUAL"         |

    
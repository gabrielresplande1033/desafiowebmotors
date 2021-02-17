Dado('que estou na página de resultado de busca da webmotors') do
    @resultado_de_busca.go
end

Quando('eu selecionar a marca {string}') do |marca|
    @informacao_busca = marca.upcase
    @resultado_de_busca.selecionar_marca(marca)
end

Quando('inserir o modelo {string}') do |modelo|
    @resultado_de_busca.selecionar_modelo(modelo)
    @informacao_busca += " #{modelo.upcase}"
end

Então('valido que o retorno possui o que busquei') do
    infos = @resultado_de_busca.retornar_texto_marca_modelo
    
    infos.each do |info|
        expect(info.text).to have_text(@informacao_busca)
    end
end

Quando('a versão {string}') do |versao|
    @versao = versao.upcase
    @resultado_de_busca.selecionar_versao(versao)
end

Então('valido que o retorno da busca coincide com a versão inserida') do
    infos = @resultado_de_busca.retornar_texto_versao

    infos.each do |info|
        expect(info.text).to have_text(@versao)
    end
end
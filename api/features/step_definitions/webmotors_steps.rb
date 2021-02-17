Dado('o endpoint de {string}') do |endpoint|
    @endpoint = endpoint
end

Quando('eu realizar uma requisição no endpoint de marcas') do
    @response = @webmotors.get_marcas
end

Então('valido o status code {int}') do |statuscode|
    expect(@response.code).to eql(statuscode)
end

Então('valido o contrato da api para {string}') do |name|
    expect(@response.body).to match_json_schema(name + "_schema")
end

Dado('que eu possua um id de uma marca cadastrada') do
    step 'eu realizar uma requisição no endpoint de marcas'
    @marca_id = @response.first["ID"]
end

Quando('eu realizar uma requisição no endpoint de modelos buscando essa marca') do
    @response = @webmotors.get_modelos(@marca_id)
end

Então('valido que no retorno consta apenas modelos referente a minha busca') do
    modelos = @response.parsed_response

    modelos.each do |modelo|
        expect(modelo['MakeID']).to eql(@marca_id)
    end
end

Dado('que eu possua um id {string} de uma marca não cadastrada') do |marca_id|
    @marca_id = marca_id
end

Então('valido que o retorno está vazio') do
    expect(@response.body).to eql('[]')
end

Dado('que eu possua um id de modelo cadastrado') do
    step 'que eu possua um id de uma marca cadastrada'
    step 'eu realizar uma requisição no endpoint de modelos buscando essa marca'
    @modelo_id = @response.first["ID"]
end

Quando('eu realizar uma requisição no endpoint de versões buscando por esse modelo') do
    @response = @webmotors.get_versoes(@modelo_id)
end

Então('valido que no retorno consta apenas versões referente a minha busca') do
    versoes = @response.parsed_response

    versoes.each do |versao|
        expect(versao['ModelID']).to eql(@marca_id)
    end
end

Dado('que eu possua um id {string} de um modelo não cadastrado') do |modelo_id|
    @modelo_id = modelo_id
end

Quando('eu realizar uma requisição no endpoint de veiculos buscando pela pagina {string}') do |pagina|
    @response = @webmotors.get_veiculos(pagina)
end
class EstoqueDeLoja
    include Capybara::DSL

    def go
        visit 'https://www.webmotors.com.br/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concession%C3%A1ria%7Cloja'
    end

end
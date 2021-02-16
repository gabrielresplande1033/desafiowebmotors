class WebMotorsService
    include HTTParty
    base_uri "http://desafioonline.webmotors.com.br/api/OnlineChallenge"

    def get_marcas
        self.class.get("/Make")
    end

    def get_modelos(marca_id)
        self.class.get("/Model?MakeID=#{marca_id}")
    end

    def get_versoes(modelo_id)
        self.class.get("/Version?ModelID=#{modelo_id}")
    end

    def get_veiculos(pagina)
        self.class.get("/Vehicles?Page=#{pagina}")
    end

end
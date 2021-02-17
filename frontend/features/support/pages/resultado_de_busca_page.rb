class ResultadoDeBusca
    include Capybara::DSL

    def go
        visit 'https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque'
    end

    def selecionar_marca(marca)
        sleep 3
        scroll_to(page.find("#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(3) > div.Filters__container__group__title", visible: true))
        find("a[title='#{marca}']").click
    end

    def retornar_texto_marca_modelo
        return all("h2[class='sc-gGBfsJ iDkBLv']")
    end

    def retornar_texto_versao
        return all("h3[class='sc-jnlKLf elFQLq']")
    end

    def selecionar_modelo(modelo)
        sleep 2
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(3) > div.Filters__make-block > div:nth-child(2) > div.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right').click
        find("input[class=' Form__field__noerror']").set modelo
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(5) > a').click

    end

    def selecionar_versao(versao)
        sleep 2
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(3) > div.Filters__make-block > div:nth-child(2) > div.Filters__line.Filters__line--icon.Filters__line--icon.Filters__line--icon--right.Filters__line--gray').click
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(3) > div > input').set versao
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(4) > a').click
    end


end
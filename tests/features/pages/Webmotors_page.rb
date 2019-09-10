class WebmotorsHomePage < SitePrism::Page
    set_url 'https://www.webmotors.com.br/'
    element :busca, '.SearchBar--input'
    element :botaoBusca, :xpath, "(//*[@class='search-bar-result-name'])[1]"
   
    

def clicaPesquisa
    botaoBusca.click
end

end



class PaginaResultado < SitePrism::Page
      
    set_url 'https://www.webmotors.com.br/carros/estoque?idcmpint=t1:c17:m07:webmotors:busca::verofertas&estadocidade=estoque'
    element :resultado, :xpath, "(//*[@class='FilterResult__container__list__item'])[2]"
    element :botaoVersao, :xpath, "(//*[@class='Filters__line Filters__line--icon Filters__line--icon Filters__line--icon--right Filters__line--gray'])[1]"
    element :versaoCarro, :xpath, "(//*[@class='Filters__line Filters__line__result'])[1]"
    
    def clicaVersao
        botaoVersao.click
    end

    def selecionaVersao        
        versaoCarro.click
    end
end



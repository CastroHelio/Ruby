Given("que estou no site da Webmotors") do 
    @home = WebmotorsHomePage.new
    @pageResultado = PaginaResultado.new
    @home.load
     
end  
  
When("eu realizo uma busca por marca") do |table|
    sleep(5)
    @marca = table.rows_hash['marca']
    @home.busca.send_keys(@marca) 
    @home.clicaPesquisa
        
end
   
   Then("o sistema me exibe resultados de marca") do
    @pageResultado.resultado.has_text?(@marca)
end

  
  When("eu realizo uma busca por modelo") do |table|
    @modelo = table.rows_hash['modelo']
    @home.busca.send_keys(@modelo)
    @home.clicaPesquisa
    
  end
  
  Then("o sistema me exibe resultados de modelo") do
    @pageResultado.resultado.assert_text(text, @modelo)
  end

  When("eu realizo uma busca por versao") do |table|
    @modelo = table.rows_hash['modelo']
    @home.busca.send_keys(@modelo)
    @home.clicaPesquisa
    sleep(3)
    @pageResultado.clicaVersao    
    @versao = table.rows_hash['versao']
    @pageResultado.selecionaVersao
     
    end
  
  Then("o sistema me exibe resultados de versao") do
    @pageResultado.resultado.has_text?(@pageResultado.versaoCarro.text)
  end
  
  
   


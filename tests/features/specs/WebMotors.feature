@testeWebmotors
Feature: Validação de busca

Eu quero realizar buscas no site da Webmotors
Background: 
Given que estou no site da Webmotors

@marcas
Scenario: Busca por marcas
When eu realizo uma busca por marca
|marca| HONDA |
Then o sistema me exibe resultados de marca

@modelo
Scenario: Busca por modelos
When eu realizo uma busca por modelo
|modelo|HONDA CITY|
Then o sistema me exibe resultados de modelo

@versao
Scenario: Busca por versão
When eu realizo uma busca por versao
|modelo|HONDA CITY|
Then o sistema me exibe resultados de versao


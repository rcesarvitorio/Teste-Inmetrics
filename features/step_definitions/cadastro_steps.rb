Dado('que o usuário esteja na tela de cadastro.') do
  @cadastro_page.ir_para_pagina_de_cadastro
end
  
Quando('preencher os dados do usuário.') do
  @cadastro_page.cadastrar_usuario(@login, @senha, @confirmarsenha)
end
  
Então('retorna para tela de {string}.') do |tela|
  expect(@cadastro_page.tela_login).to eql tela
end
  
Quando('preencher {string}, {string} e {string}') do |login, senha, confirmarsenha|
  @cadastro_page.cadastrar_usuario(login, senha, confirmarsenha)
end
  
Então('receberá o alerta.') do
expect(@alertas_view.alerta_campo_obrigatorio).to be_truthy
end
  
Quando('esse login já está cadastrado.') do
  @cadastro_page.ir_para_pagina_de_cadastro    
  @cadastro_page.cadastrar_usuario(@login, @senha, @confirmarsenha)
end
  
Então('retorna a mensagem {string}') do |mensagem|
  expect(@cadastro_page.alerta_de_erro(mensagem)).to eql mensagem
end
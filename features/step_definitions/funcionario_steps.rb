Dado('que o usuário esteja logado') do
@login_page.ir_para_pagina_de_login    
@login_page.logar_usuario('testeteste', '11223344')   
  end
  
  Quando('cadastrar um funcionário') do
  @funcionario_page.adicionar_funcionario
  end
  
  Então('verá a mensagem {string}.') do |mensagem|
  expect(alerta_view.alerta).to eql mensagem
  end
  
  Quando('editar um funcionário') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('deletar um funcionário') do
    pending # Write code here that turns the phrase above into concrete actions
  end
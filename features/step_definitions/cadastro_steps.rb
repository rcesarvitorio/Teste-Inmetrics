Dado('que o usuário esteja na tela de cadastro.') do
    @cadastro_page.ir_para_pagina_de_cadastro
  end
  
  Quando('preencher os dados do usuário.') do
    @cadastro_page.cadastrar_usuario(@login, @senha, @confirmarsenha)
  end
  
  Então('retorna para tela de login.') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencher {string}, {string} e {string}') do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('receberá o alerta.') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('esse login já está cadastrado.') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('retorna a mensagem {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
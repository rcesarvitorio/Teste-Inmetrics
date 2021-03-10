Dado('que o usuário esteja na tela de login.') do
  @login_page.ir_para_pagina_de_login
  end
  
  Quando('colocar {string} e {string}.') do |login, senha|
  @login_page.logar_usuario(login, senha)
  end
  
  Então('o usuário estará logado e irá para página de funcionários.') do
  expect(@funcionario_page.usuario_logado).to be_truthy
  end
  
  Então('verá a mensagem {string}') do |mensagem|
  expect(@alerta_view.alerta(mensagem)).to eql mensagem
  end
  
  Então('verá o alerta de campo obrigatório') do
  expect(@alerta_view.alerta_campo_obrigatorio).to be_truthy
  end
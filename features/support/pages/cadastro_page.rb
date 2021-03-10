require 'pry'
class CadastroPage 
    include Capybara::DSL      
 
    def ir_para_pagina_de_cadastro
         visit '/signup/'
    end
 
    def cadastrar_usuario(login, senha, confirmarsenha)        
        find('input[name=username]').set login
        find('input[name=pass]').set senha
        find('input[name=confirmpass').set confirmarsenha          
        click_button 'Cadastrar'
        sleep 1
    end
 


    def tela_login
        find('.login100-form-title').text        
    end
end

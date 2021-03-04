


class LoginPage
    include Capybara::DSL

    def ir_para_pagina_de_login
        visit '/login'
    end

    def logar_usuario(login, senha)
        find('input[name=username]').set login
        find('input[name=pass]').set senha               
        click_button 'Entre'
    end

end
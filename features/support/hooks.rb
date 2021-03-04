require 'faker'

Before do 
    @alertas_view = Alertas.new 
    @cadastro_page = CadastroPage.new
    @funcionario_page = FuncionarioPage.new
    @login_page = LoginPage.new
    
    gerar_dados

end
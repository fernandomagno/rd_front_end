  Dado('que preciso acessar site Orange HRM') do
    @cadastro_page = CadastroPage.new
    @cadastro_page.load
  end

  Quando('eu preencho os dados de login e senha') do
    @cadastro_page.preencher_login()
  end

  Dado('que preciso acessar site Orangee HRM') do
    @cadastro_page = CadastroPage.new
    @cadastro_page.load
  end
  
  Quando('eu preencho o login e logout na conta') do
    @cadastro_page.preencher_login()
    @cadastro_page.efetuar_login_logout()
  end

  Então('devo exibir o texto Time at Work') do
    expect(@cadastro_page).to have_content 'Time at Work'
  end
  
  Então('devo visualizar o texto OrangeHRM OS 57') do 
    expect(@cadastro_page).to have_content 'OrangeHRM OS 5.7'

  end

   

    
    

    
  
  

  Dado('que preciso acessar site Orange HRM') do
    @login = RdPage.new
    @login.load
  end

  Quando('eu preencho os dados de login e senha') do
    @login.preencher_login()
  end

  Dado('que preciso acessar site Orangee HRM') do
    @logout = RdPage.new
    @logout.load
  end
  
  Quando('eu preencho o login e logout na conta') do
    @logout.preencher_login()
    @logout.efetuar_login_logout()
  end

  Então('devo exibir o texto Time at Work') do
    expect(@login).to have_content 'Time at Work'
  end
  
  Então('devo visualizar o texto OrangeHRM OS 57') do 
    expect(@logout).to have_content 'OrangeHRM OS 5.7'

  end

   

    
    

    
  
  

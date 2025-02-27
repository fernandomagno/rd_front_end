  Dado('que preciso acessar site Orange HRM') do
    visit 'https://opensource-demo.orangehrmlive.com'
  end

  Quando('eu preencho os dados de login e senha') do
    find('input[name="username"]').click 
    find('input[name="username"]').set 'Admin' 
    find('input[name="password"]').click 
    find('input[name="password"]').set 'admin123'
    click_button 'Login'
    expect(page).to have_content 'Time at Work'
  end
    
    Quando('eu preencho o login e logout na conta') do
      find('input[name="username"]').click 
      find('input[name="username"]').set 'Admin' 
      find('input[name="password"]').click 
      find('input[name="password"]').set 'admin123'
      click_button 'Login'
      expect(page).to have_content 'Time at Work'
      find(:xpath, "//span[@class='oxd-userdropdown-tab']/i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']").click
      find(:xpath, "//ul[@class='oxd-dropdown-menu']/li[4]/a[@class='oxd-userdropdown-link']").click    
    end

    Então('devo visualizar o texto {string}') do |mensagem|
      expect(page).to have_content mensagem
    end
   

    
    

    
  
  

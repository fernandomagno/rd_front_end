class RdPage < SitePrism::Page
    set_url '/'
  
    def preencher_login
        find('input[name="username"]').click 
        find('input[name="username"]').set 'Admin' 
        find('input[name="password"]').click 
        find('input[name="password"]').set 'admin123'
        click_button 'Login'
    end

    def efetuar_login_logout
        find(:xpath, "//span[@class='oxd-userdropdown-tab']/i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']").click
        find(:xpath, "//ul[@class='oxd-dropdown-menu']/li[4]/a[@class='oxd-userdropdown-link']").click    
    end 
  end
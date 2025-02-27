#language: pt

Funcionalidade: RD  
    
  @login_rd
Cenario: Efetuar o login no site da ORANGE HRM
  Dado que preciso acessar site Orange HRM
  Quando eu preencho os dados de login e senha
  Então devo exibir o texto Time at Work
  
  @logout_rd
Cenario: Efetuar o logout no site da ORANGE HRM
  Dado que preciso acessar site Orangee HRM
  Quando eu preencho o login e logout na conta
  Então devo visualizar o texto OrangeHRM OS 57


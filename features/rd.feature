#language: pt

Funcionalidade: RD

Cenario: Efetuar o login no site da ORANGE HRM

  Dado que preciso acessar site Orange HRM
  Quando eu preencho os dados de login e senha
  Então devo visualizar o texto "Time at Work"

 Cenario: Efetuar o logout no site da ORANGE HRM

  Dado que preciso acessar site Orange HRM
  Quando eu preencho o login e logout na conta
  Então devo visualizar o texto "OrangeHRM OS 5.7"


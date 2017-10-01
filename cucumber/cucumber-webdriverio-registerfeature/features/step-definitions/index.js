//Complete siguiendo las instrucciones del taller
var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {

  Given('I go to losestudiantes home screen', () => {
    browser.url('/');
    if(browser.isVisible('button=Cerrar')) {
      browser.click('button=Cerrar');
    }
  });

  When('I open the login screen', () => {
    browser.waitForVisible('button=Ingresar', 5000);
    browser.click('button=Ingresar');
  });

  When(/^I fill with (.*), (.*), (.*), (.*) and (.*)$/ , (name, lastname, email, password, accept) => {

    var cajaSignUp = browser.element('.cajaSignUp');

    var nombre = cajaSignUp.element('input[name="nombre"]');
    nombre.click();
    nombre.keys(name);

    var apellido = cajaSignUp.element('input[name="apellido"]');
    apellido.click();
    apellido.keys(lastname);

    var correo = cajaSignUp.element('input[name="correo"]');
    correo.click();
    correo.keys(email);

    var clave = cajaSignUp.element('input[name="password"]');
    clave.click();
    clave.keys(password);

    var acepta = cajaSignUp.element('input[name="acepta"]');
    if(accept == 'true'){
      acepta.click();
    }

  });

  When('I try to register', () => {
    var cajaSignUp = browser.element('.cajaSignUp');
    cajaSignUp.element('button=Registrarse').click()
  });

  Then('I expect to see {string}', error => {
    browser.waitForVisible('.sweet-alert', 5000);
    var alertText = browser.element('.sweet-alert').getText();
    expect(alertText).to.include(error);
  });

  Then('I expect to see the error {string}', error => {
    var cajaSignUp = browser.element('.cajaSignUp');
    cajaSignUp.waitForVisible('.aviso.alert.alert-danger', 5000);
    var alertText = cajaSignUp.element('.aviso.alert.alert-danger').getText();
    expect(alertText).to.include(error);
  });

});

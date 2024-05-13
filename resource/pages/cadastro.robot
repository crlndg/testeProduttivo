*** Settings ***
Library    SeleniumLibrary
Resource    ../variaveis/variaveis.resource

*** Variables ***
${URL}    https://www.produttivo.com.br/cadastro/
${Browser}    chrome

#Elementos da pagina
${input_e-mail_profissional}        //input[@name='user[email]']
${input_primeiro_nome}              //input[@name='user[profile_attributes][firstname]']
${input_segundo_nome}               //input[@name='user[profile_attributes][lastname]']
${input_empresa}                    //input[@name='user[profile_attributes][company]']
${input_ddd}                        //input[@placeholder='DDD']
${input_numero}                     //input[@placeholder='9 9999-9999']
${input_senha}                      //input[@name='user[password]']
${botao_iniciarTeste}               //button[contains(.,'Iniciar teste')]


*** Keywords ***
Dado que eu abra o site
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

E preencha o cadastro
    Wait Until Page Contains    Comece a usar grátis
    Input Text    ${input_e-mail_profissional}    ${e-mail_profissional}
    Input Text    ${input_primeiro_nome}    ${primeiro_nome}    text
    Input Text    ${input_segundo_nome}    ${segundo_nome}
    Input Text    ${input_empresa}    ${empresa}
    Input Text    ${input_ddd}    ${input_ddd}
    Input Text    ${input_numero}    ${numero}
    Input Text    ${input_senha}    ${input_senha}

Então o botão Iniciar Teste deve estar habilitado
    Wait Until Element Is Enabled    ${botao_iniciarTeste}

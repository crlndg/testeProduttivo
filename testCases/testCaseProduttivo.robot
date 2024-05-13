*** Settings ***
Library
Variables    ../resource/pages/cadastro.robot
Resource     ../resource/variaveis/variaveis.resource
Resource     ../resource/setup/setup.robot
Resource    ../resource/pages/cadastro.robot


*** Test Cases ***
CT10 - Verificar se ao preencher todos os dados corretamente o botão "Iniciar teste" é habilitado
    Dado que eu abra o site
    E preencha o cadastro
    Então o botão Iniciar Teste deve estar habilitado


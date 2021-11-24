*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${base_url}    https://vaccine-haven.herokuapp.com
${citizen_id}    9621054597136
${name}    Narawish
${surname}    Sangsiriwut
${birth_date}    10/15/2000
${occupation}    student
${phone_number}    0886407639
${address}    Nakhon Pathom

*** Test Cases ***
Register Citizen
    open browser    ${base_url}    ${browser}
    click element    id:register__link
    input text    id:citizen_id    ${citizen_id}
    input text    id:name    ${name}
    input text    id:surname    ${surname}
    input text    id:birth_date    ${birth_date}
    input text    id:occupation    ${occupation}
    input text    id:phone_number    ${phone_number}
    input text    id:address    ${address}
    click button    id:register__btn
    close browser

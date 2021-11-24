*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${base_url}    https://vaccine-haven.herokuapp.com
${citizen_id}    9621054597136
${site_name}    OGYHSite
${vaccine_name}    Astra

*** Test Cases ***
NavigationTest
    open browser    ${base_url}    ${browser}
    page should contain link    /registration
    element attribute value should be    id:register__link    href    ${base_url}/registration
    click element    id:register__link
    go to    ${base_url}
    page should contain link    /reservation
    element attribute value should be    id:reserve__link    href    ${base_url}/reservation
    click element    id:reserve__link
    go to    ${base_url}
    page should contain link    /info
    element attribute value should be    id:check_info__link    href    ${base_url}/info
    click element    id:check_info__link


ReservationTest
    go to    ${base_url}
    click element    id:reserve__link
    input text    id:citizen_id    ${citizen_id}
    select from list by value    id:site_name    ${site_name}
    select from list by value    id:vaccine_name    ${vaccine_name}
    click button    id:reserve__btn
    wait until location is not    ${base_url}/reservation    10
    reload page
    click element    id:check_info__link
    input text    id:citizen_id    ${citizen_id}
    click button    id:info__btn
    wait until location is    ${base_url}/info/${citizen_id}
    element text should be    id:reserve_vaccine_value    ${vaccine_name}
    element text should be    id:reserve_site_value    ${site_name}

CancellationTest
    go to    ${base_url}
    click element    id:check_info__link
    input text    id:citizen_id    ${citizen_id}
    click button    id:info__btn
    wait until location is    ${base_url}/info/${citizen_id}
    click button    id:cancel__btn
    go to    ${base_url}/info
    input text    id:citizen_id    ${citizen_id}
    click button    id:info__btn
    wait until location is    ${base_url}/info/${citizen_id}
    element text should not be    id:reserve_vaccine_value    ${vaccine_name}
    element text should not be    id:reserve_site_value    ${site_name}
    close browser


*** Settings ***
Library    SeleniumLibrary

Documentation    1. Navigation
 ...     Steps:
 ...     i) Navigate through all the headers available on the Co-operative Bank of Kenya
 ...     homepage.


*** Variables ***
${HOME_HEADER_ID}     //a[@aria-current='page']
${PERSONAL_BANKING}    //a[@href='https://www.co-opbank.co.ke/personal-banking/'][normalize-space()='Personal Banking']
${BUSINESS_BANKING}   //a[@href='https://www.co-opbank.co.ke/business-banking/'][normalize-space()='Business Banking']
${COOPARATIVES_INSTITUTIONAL_BANKING}    //a[@href='https://www.co-opbank.co.ke/corporate-institutional-banking/']
${COPARATIVES}    //a[@href='https://www.co-opbank.co.ke/co-operatives/']
${GROUPS}    //a[@href='https://www.co-opbank.co.ke/groups/']
${INVESTING}    //a[@href='https://www.co-opbank.co.ke/investing/']
${MONEY_TRANSFER}     //a[@href='https://www.co-opbank.co.ke/money-transfer/']
${INVESTOR_REL}    //a[@href='https://www.co-opbank.co.ke/investor-relations/']
${TREASURY_PRODUCTS}     //a[normalize-space()='Treasury Products']
${COOP-URL}    https://www.co-opbank.co.ke/


*** Keywords ***

open browser-s
    [Documentation]    this methods will wait for element to be visible on the page and then click on the header
    ...  This are modular elements which will be called when excuting the actual test case
     open browser    https://www.co-opbank.co.ke    chrome
     maximize browser window

verify and click Header home
     wait until page contains element    ${HOME_HEADER_ID}
     click element    ${HOME_HEADER_ID}

verify and click Header personal banking
     wait until page contains element    ${PERSONAL_BANKING}
     click element   ${PERSONAL_BANKING}

verify and click Header Business
     wait until page contains element    ${BUSINESS_BANKING}
     click element    ${BUSINESS_BANKING}

verify and click Header cooperate and Instutional banking
     wait until page contains element    ${COOPARATIVES_INSTITUTIONAL_BANKING}
     click element    ${COOPARATIVES_INSTITUTIONAL_BANKING}

verify and click Header Groups
     wait until page contains element    ${GROUPS}
     click element    ${GROUPS}

verify and click Header coperatives
     wait until page contains element    ${COPARATIVES}
     click element     ${COPARATIVES}

verify and click Header Investing
     wait until page contains element     ${INVESTING}
     click element    ${INVESTING}

verify and click Header Money Transfer
     wait until page contains element    ${MONEY_TRANSFER}
     click element    ${MONEY_TRANSFER}

verify and click Header Money Investor relationship
     wait until page contains element    ${INVESTOR_REL}
     click element    ${INVESTOR_REL}

verify and click Header Money Tresury Products
     wait until page contains element   ${TREASURY_PRODUCTS}
     click element    ${TREASURY_PRODUCTS}

close Browser-
    close browser

*** Settings ***
Library    SeleniumLibrary

Documentation    2. Form Submission    Test Senario-2
...    Steps:
...    i) Navigates to personal-banking menu on the home page
...    ii) Click the Cards Sub-menu
...    iii) scroll down to the bottom of the Cards page.
...    iv) Click Tell Me More button on Platinum Card
...    v) Identify the form requesting user information and fill in all the necessary information
...    in the form fields.
...    vi) Check the CAPTCHA

*** Variables ***
${PERSONAL_BANKING}
${CARDS}    //a[@href='https://www.co-opbank.co.ke/personal-banking/cards/']
${PLATINUM_CARD}    //p[normalize-space()='Platinum Card']
${TELL_ME_MORE}    //a[@href='https://www.co-opbank.co.ke/card/platinum-card/']
${NAME_FIELD}    //input[@id='input_1_1']
${PHONE_NUMBER}    //input[@id='input_1_2']
${TOWN}    //input[@id='input_1_4']
${EMAIL}    //input[@id='input_1_3']
${TEXT_FIELD}     //textarea[@id='input_1_5']
${CAPTURE}     div[class='recaptcha-checkbox-checkmark']


*** Keywords ***
Navigate to Pesornal banking Menu
     wait until page contains element    ${PERSONAL_BANKING}
     click element   ${PERSONAL_BANKING}

Navigate to Cards sub menu
     wait until page contains element    ${CARDS}
     click element   ${CARDS}

Navigate to platnum sub menu
     wait until page contains element    ${PLATINUM_CARD}
     click element   ${PLATINUM_CARD}

Click on tell me more
    wait until page contains element    ${TELL_ME_MORE}
    click element  ${TELL_ME_MORE}


input text in the name field
    input text    ${NAME_FIELD}    John


input text in the phone field
    input text    ${PHONE_NUMBER}   0302371899


input text in the town field
    input text   ${TOWN}     Kiambu


input text in the text field
    input text    ${TEXT_FIELD}   Tell me moore


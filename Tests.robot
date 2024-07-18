*** Settings ***
Library    SeleniumLibrary

Resource    /Users/jkuira-eng/Documents/Coop-demo/headers/headers.robot
Resource    /Users/jkuira-eng/Documents/Coop-demo/headers/form.robot


*** Variables ***

*** Test Cases ***
TC-01- Navigate through all the headers available on the Co-operative Bank of Kenya homepage.
  [Documentation]   This test case will naviage to all headers of the page by clicking one at a time.
  ...    verify that a page has opened can be added
    [Tags]    TC-1
    open browser-s
    verify and click Header home
    verify and click Header personal banking
    verify and click Header Business
    verify and click Header cooperate and Instutional banking
    verify and click Header Groups
    verify and click Header coperatives
    verify and click Header Investing
    verify and click Header Money Transfer
    verify and click Header Money Investor relationship
    verify and click Header Money Tresury Products
    close Browser-


TC-02- Naviagate to platnum cartd and fill out the form to and click capture.
  [Documentation]     Naviagate to platnum cartd and fill out the form to and click capture.

   [Tags]    TC-2

   open browser-s
   Navigate to Pesornal banking Menu
   Navigate to Cards sub menu
   Navigate to platnum sub menu
   Click on tell me more
   input text in the name field
   input text in the phone field
   input text in the town field
   input text in the text field
   close Browser-






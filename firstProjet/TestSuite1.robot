*** Settings ***
Library     SeleniumLibrary    



*** Test Cases ***
myfirstTest
    Log    hello world..
    
myfirstSeleniumTest
    Open Browser    https://google.com   chrome
    Set Browser Implicit Wait    5
    Input Text     name=q                 automatisation de test 
    Sleep    2    
    Click Button    name=btnK
    sleep  2   
   
    Close Browser
    Log   test completd      
    
SimpleTestLogin
    [Tags]       smoke
    Open Browser    https://opensource-demo.orangehrmlive.com/     chrome
    
    Set Browser Implicit Wait    5
    Input Text        id=txtUsername              Admin
    Sleep    1    
    Input Password    id=txtPassword         admin123 
    Sleep    1    
    Click Button      id=btnLogin
    Click Element     id=welcome 
    Sleep    3    
    Click Element     link=Logout       
    Close Browser
    Log    test completed    
    
    
      
    
 
        
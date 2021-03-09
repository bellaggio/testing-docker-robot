***Keywords***

## Login
Given I am at the login page
    Go To       http://training-wheels-protocol.herokuapp.com/login

When I fill in my credentials
    Input Text      id:userId       stark
    Input Text      id:passId       jarvis!

    Click Element       xpath://button[@type="submit" and i=" Login"]
    
Then I should see the success flash message 
    [Arguments]     ${flash_message}
    Wait Until Element Contains         xpath://div[@id="flash" and @class="flash success"]     ${flash_message}
    Sleep       3
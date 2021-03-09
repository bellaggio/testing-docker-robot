***Settings***
Documentation       Tests for the Login feature

Resource            ../resources/base.robot

Suite Setup         Start Session
Suite Teardown      Finish Session

***Test Cases***
Successful login
    Given I am at the login page
    When I fill in my credentials
    Then I should see the success flash message
    ...     Olá, Tony Stark. Você acessou a área logada!

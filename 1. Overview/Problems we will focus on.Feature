Feature: Problems we will focus on

Scenario: Bringing an existing system under test
Given you have a system in  production 
And releases often introduce new defects
Then adding tests will help you discover errors

Scenario: Making tests that are tollerant to change
Given you have a system that is being refacored
And there is a concern for new bugs
Then putting an anti corruption layer between tests 
And application will allow for the application to change while
maintianging the tests

Scenario: Providing accessible automated testing
Given you have subject matter experts but no developers to create
automated tests
Then creating a DSL that is easy to access and work with will
allow your domain experts to write and maintain automated tests


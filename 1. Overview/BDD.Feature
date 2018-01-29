Feature: What is BDD ( Behavior Driven Development )
Behavior-driven development (BDD) is a software development methodology 
in which an application is specified and designed by describing how its 
behavior should appear to an outside observer.

Examples from http://docs.behat.org

Scenario: Wilson posts to his own blog
  Given I am logged in as Wilson
  When I try to post to "Expensive Therapy"
  Then I should see "Your article was published."

Scenario: Wilson fails to post to somebody else's blog
  Given I am logged in as Wilson
  When I try to post to "Greg's anti-tax rants"
  Then I should see "Hey! That's not your blog!"

Scenario: Greg posts to a client's blog
  Given I am logged in as Greg
  When I try to post to "Expensive Therapy"
  Then I should see "Your article was published."
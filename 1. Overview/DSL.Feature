Feature: What is a DSL
A domain-specific language (DSL) is a computer language specialized to 
a particular application domain. This is in contrast to a 
general-purpose language (GPL), which is broadly applicable across 
domains. 

Background:
  Given the new User 'U1'
  And the new User 'U2'
  And the new blog
  | var | Owner | Managers |
  |  B1 |    U1 |          |
  |  B2 |    U2 |          |
  |  B3 |    U2 |    [U1]  |
  Given logged in as 'U1'

Scenario: Posts to own blog
  When try to post to 'B1'
  Then the message is "Your article was published."

Scenario: Post to somebody else's blog
  When try to post to 'B2'
  Then the message is "Hey! That's not your blog!"

Scenario: Posts to a client's blog
  When try to post to 'B3'
  Then I should see "Your article was published."
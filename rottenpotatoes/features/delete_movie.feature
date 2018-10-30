Feature: delete movies by title

  As a movie buff
  So that I can delete movies that I don't like
  I want to delete a movie and not have it stay in the database

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: delete an existing movie
  Given I am on the RottenPotatoes home page
  When  I go to the details page for "THX-1138"
  And   I press "Delete"
  When  I go to the RottenPotatoes home page
  Then  I should not see "THX-1138"
  
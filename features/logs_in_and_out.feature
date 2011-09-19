@javascript @no-ci
Feature: oauth
  Exchanging oauth credentials

  Background:
    Given Diaspora has been killed
    And Diaspora is running
    And I go to the home page

  Scenario: Login/Authorize using Diaspora ID
    When I fill in "diaspora_id" with "bob@localhost:3000"
    And  I press "connect"

    Then I should be on "/users/sign_in" on Diaspora
    And  I fill in "Username" with "bob"
    And  I fill in "Password" with "evankorth"
    And  I press "Sign in"

    Then I should see "SampleApp"
    And  I should see "SampleApp wants to post back to your Diaspora account."
    When I press "Authorize"

    Then I should see "success"



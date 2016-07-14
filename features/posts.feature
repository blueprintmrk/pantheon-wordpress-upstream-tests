Feature: Manage WordPress posts

  Background:
    Given I am on "wp-login.php"
    And I fill in "log" with "pantheon"
    And I fill in "pwd" with "pantheon"
    And I press "wp-submit"
    Then print current URL
    And I should be on "/wp-admin/"

  Scenario: Create and publish a blog post
    When I go to "/wp-admin/post-new.php"
    And I fill in "post_title" with "Awesome Post"
    And I fill in "post_name" with "awesome-post"
    And I press "publish"
    Then print current URL
    And I should see "Post published."

    When I go to "/awesome-post/"
    Then print current URL
    And I should see "Awesome Post"

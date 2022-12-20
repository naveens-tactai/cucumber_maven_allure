Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  Scenario: Sunday isn't Friday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  Scenario: Sunday isn't Monday
    Given today is Sunday
    When I ask whether it's Friday yet
    When I ask whether it's Feb yet
    Then I should be told "Yes"

  Scenario Outline: Sunday isn't Tuesday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "<hello>"
    Examples:
      |hello  |
      |nothing|
      |yes guy|

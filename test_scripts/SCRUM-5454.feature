@AboutUs @ContentVerification @UI
Feature: About Us Page - Healthcare Innovation and Team Presentation

  As a potential investor or user,
  I want to easily find information about the company's mission and team,
  So that I can understand the foundation and leadership behind the organization.

  # --- Scenario 1: Basic Navigation and Page Structure Verification ---
  @Navigation @Smoke
  Scenario: Successful Navigation to the About Us Page
    Given I am on the company's Homepage
    When I click the "About Us" link in the primary navigation menu
    Then the URL should match the expected "/about-us" path
    And the HTTP response status code should be 200 (OK)
    And the main page heading should be displayed as "About Us" or "Our Story"

  # --- Scenario 2: Verification of Healthcare Innovation Content ---
  @Content @Innovation
  Scenario: Presence and Structure of the Healthcare Innovation Section
    Given I am viewing the "About Us" page
    Then I should see a dedicated section titled "Our Commitment to Healthcare Innovation"
    And this section should contain descriptive text detailing the company's mission and vision
    And a subsection outlining the company's core values should be present
    And all text content should be professionally proofread (verified against source copy)

  # --- Scenario 3: Verification of the Team and Leadership Section ---
  @Content @Team @Leadership
  Scenario: Display and Detail of the Leadership Team Profiles
    Given I am viewing the "About Us" page
    Then I should see a dedicated section titled "Meet Our Leadership Team"
    And the leadership section should display at least the five core executive profiles
    
    # Check details for a typical profile
    When I examine a standard team member profile card
    Then the card should clearly display the member's full name
    And the card should clearly display the member's professional title
    And the card should display a clear, current professional photograph

  # --- Scenario 4: Profile Accessibility and Links ---
  @Links @Interaction
  Scenario Outline: Ensuring Team Profiles are Interactive or Detailed
    Given I am viewing the "Meet Our Leadership Team" section on the "About Us" page
    When I hover over the profile card for "<Team_Member_Name>"
    Then I should see the profile card highlight or display a hover state
    And when I click on the profile card
    Then the page should either navigate to a detailed biography page or display a modal with the member's bio
    
    Examples:
      | Team_Member_Name |
      | CEO Name         |
      | CTO Name         |
      | CMO Name         |

  # --- Scenario 5: Accessibility and Responsiveness Check ---
  @Accessibility @Responsiveness
  Scenario: About Us Page Renders Correctly Across Devices
    Given I am viewing the "About Us" page on a standard desktop resolution
    When I change the viewport to a common mobile resolution (e.g., 375px width)
    Then the layout should be responsive and elements should stack appropriately
    And the text size should remain legible without horizontal scrolling
    And all images in the Team section should scale down without cropping critical elements (like faces)
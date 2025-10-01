This Gherkin test script focuses on validating the presence and prominence of the key theme ("Compassionate, Patient-Centered Care") within the main elements of the Healthcare Services Home Page, while also ensuring basic functionality and accessibility.

---

## Gherkin Test Script

**Feature:** Healthcare Services Home Page - Messaging and Core Functionality

**As a website visitor,**
**I want the Healthcare Services Home Page to clearly display the core messaging and key navigation links,**
**So that I can quickly understand the organization's focus and find the information I need.**

---

### Scenario 1: Verification of Primary Compassionate Care Messaging

**Goal:** Ensure the key phrase "Compassionate, Patient-Centered Care" is immediately visible and prominently displayed in the main hero section of the page.

| Step Type | Description |
| :--- | :--- |
| **Given** | A user is navigating to the Healthcare Services Home Page |
| **When** | The page successfully loads in a desktop browser |
| **Then** | The page status code should be 200 (OK) |
| **And** | The primary Hero section is visible above the fold |
| **And** | The main banner text should contain the phrase "Compassionate, Patient-Centered Care" |
| **And** | The headline or sub-headline should reference "Patient-Centered" services |
| **And** | The hero image or background image should visually depict care or interaction (not administrative offices) |

---

### Scenario 2: Essential Calls to Action (CTAs)

**Goal:** Verify that clear and actionable steps are provided to the user, reinforcing the availability of services.

| Step Type | Description |
| :--- | :--- |
| **Given** | The user is viewing the Healthcare Services Home Page |
| **When** | The page elements are fully rendered |
| **Then** | A prominent Call to Action button labeled "Schedule an Appointment" or "Find a Doctor" should be visible |
| **And** | The primary CTA link should direct the user to the appropriate scheduling or provider directory page |
| **And** | A secondary CTA for "Patient Portal Login" should be easily locatable in the header or footer |

---

### Scenario Outline: Required Navigation Links Accessibility

**Goal:** Ensure that all critical navigational links expected on a service homepage are present and functional.

| Step Type | Description |
| :--- | :--- |
| **Given** | The user is viewing the Healthcare Services Home Page |
| **When** | The navigation bar is fully displayed |
| **Then** | The following link text should be present in the main navigation menu |
| **And** | Clicking on the `<Link Text>` should navigate to the `<Expected URL Path>` |

| Examples |
| :--- |
| **Link Text** | **Expected URL Path** |
| Services | /services |
| Our Doctors / Providers | /doctors |
| Locations | /locations |
| About Us | /about |
| Contact Us | /contact |

---

### Scenario 3: Responsive Display and Accessibility

**Goal:** Ensure the message and site structure maintain integrity and accessibility standards across devices.

| Step Type | Description |
| :--- | :--- |
| **Given** | The Healthcare Services Home Page is loaded |
| **When** | The browser width is resized to a standard mobile width (e.g., 375px) |
| **Then** | The primary hero message "Compassionate, Patient-Centered Care" remains legible and is not truncated |
| **And** | The main navigation menu collapses into a functioning hamburger icon |
| **And** | All informational images on the page should have descriptive `alt` text attributes |
| **And** | The page should adhere to minimum WCAG 2.1 contrast ratios for all primary text elements |

---

### Scenario 4: Content Focus Section

**Goal:** Verify that sections below the fold elaborate on the core value proposition of "Patient-Centered Care."

| Step Type | Description |
| :--- | :--- |
| **Given** | The user scrolls down the Healthcare Services Home Page |
| **When** | The user reaches the 'Why Choose Us' or 'Our Mission' section |
| **Then** | A dedicated content block should specifically mention patient safety, trust, or individualized care |
| **And** | This content block should contain a visual element (icon or image) related to human connection or personalized service |
Feature: Reader Registration

		To register an application the reader goes to the registration form, which consists only of email, password, password confirmation fields, and a button. After registration, the reader is automatically logged in and ready to work with the application.

		Scenario: Reader registers successfully via registration form
			Given I am a guest
			When I fill in the registration form with valid data
			Then I should be registered in the application
			#And I should be logged in

			Scenario: Reader tries to register with invalid data
				Given I am a guest
				When I fill in the registration form with invalid data
				Then I should see the registration form again
				And I should not be registered in the app
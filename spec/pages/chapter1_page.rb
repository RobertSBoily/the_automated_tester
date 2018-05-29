class Chapter1Page

	EXPECTED_URL = "http://book.theautomatedtester.co.uk/chapter1"

	# ID selectors
	RADIO_BUTTON = { id: "radiobutton" }
	SELENIUM_DROPDOWN = { id: "selecttype" }

	attr_reader :driver


	def initialize(driver)
		@driver = driver
		if driver.current_url != EXPECTED_URL
			raise WrongPageError.new(driver, EXPECTED_URL)
		end
	end

	def click_radio_button
		radio = @driver.find_element(RADIO_BUTTON)
		radio.click()
		self
	end

	# Could maybe simplify these a bit my using an instance variable for menu.
	def dropdown=(value)
		# Public: Must select value by its text value, e.g. "Selenium IDE"
		menu = driver.find_element(SELENIUM_DROPDOWN)
		menu.select_by(:value, value)
	end

	def dropdown
		# Public: Returns the current value set in the dropdown.
		menu = driver.find_element(SELENIUM_DROPDOWN)
		menu.selected_options
	end

	def get_dropdown_options
		# Public: Returns the text of all available values in the dropdown.
		menu = driver.find_element(SELENIUM_DROPDOWN)
		options = menu.find_elements(:tag_name => "option")
		texts = []
		options.each do |option|
			texts.append(option.text)
		end
		texts
	end




end

class Chapter1Page

	EXPECTED_URL = "http://book.theautomatedtester.co.uk/chapter1"

	# ID selectors
	RADIO_BUTTON = { id: "radiobutton" }
	SELENIUM_DROPDOWN = { id: "selecttype" }

	# Name selectors
	CHECKBOX = { name: "selected(1234)" }

	# Link text selectors
	HOMEPAGE = { link_text: "Home Page" }

	attr_reader :driver


	def initialize(driver)
		@driver = driver
		if driver.current_url != EXPECTED_URL
			raise WrongPageError.new(driver, EXPECTED_URL)
		end
	end

	def click_checkbox
		cb = driver.find_element(CHECKBOX)
		cb.click
		self
	end

	def click_home_page
		link = driver.find_element(HOMEPAGE)
		link.click
		IndexPage.new(@driver)
	end

	def click_radio_button
		radio = @driver.find_element(RADIO_BUTTON)
		radio.click()
		self
	end

	# Could maybe simplify these a bit my using an instance variable for menu.
	# These 3 functions are similar to attr_accessor, but we want additional behaviours (e.g. setter changes the page).
	def dropdown=(value)
		# Public: Must select value by its text value, e.g. "Selenium IDE"
		menu = driver.find_element(SELENIUM_DROPDOWN)
		menu.select_by(:value, value)
		self
	end

	def dropdown
		# Public: Returns the current value set in the dropdown.
		menu = driver.find_element(SELENIUM_DROPDOWN)
		menu.selected_options
		self
	end

	def get_dropdown_options
		# Public: Returns the text of all available values in the dropdown.
		# Does NOT return a page object - should I fix this? IE return [page object, texts] ?
		menu = driver.find_element(SELENIUM_DROPDOWN)
		options = menu.find_elements(:tag_name => "option")
		texts = []
		options.each do |option|
			texts.append(option.text)
		end
		texts
	end






end

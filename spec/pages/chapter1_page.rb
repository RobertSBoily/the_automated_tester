class Chapter1Page

	EXPECTED_URL = "http://book.theautomatedtester.co.uk/chapter1"

	# ID selectors
	RADIO_BUTTON = { id: "radiobutton" }

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




end

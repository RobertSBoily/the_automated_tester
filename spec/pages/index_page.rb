class IndexPage

	EXPECTED_URL = "http://book.theautomatedtester.co.uk/"

	# ID selectors
	TEXT_INPUT = { id: "q" }

	# Text selectors
	CHAPTER_1 = { link_text: "Chapter1" }
	CHAPTER_2 = { link_text: "Chapter2" }
	CHAPTER_3 = { link_text: "Chapter3" }
	CHAPTER_4 = { link_text: "Chapter4" }
	CHAPTER_8 = { link_text: "Chapter8" } # Not a typo.

	attr_reader :driver

	def initialize(driver)
		@driver = driver
		if driver.current_url != EXPECTED_URL
			raise WrongPageError.new(driver, EXPECTED_URL)
		end
	end

# These should return page objects of the types they link to.
	def click_chapter_1
		link = @driver.find_element(CHAPTER_1)
		link.click
	end

	def click_chapter_2
		link = @driver.find_element(CHAPTER_2)
		link.click
	end

	def click_chapter_3
		link = @driver.find_element(CHAPTER_3)
		link.click()
	end

	def click_chapter_4
		link = @driver.find_element(CHAPTER_4)
		link.click()
	end

	def click_chapter_8
		link = @driver.find_element(CHAPTER_8)
		link.click()
	end

	def type_text_input(string)
		field = @driver.find_element(TEXT_INPUT)
		field.send_keys(string)
	end


end
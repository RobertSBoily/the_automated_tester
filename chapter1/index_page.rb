class IndexPage

	# Text selectors
	CHAPTER_1 = { link_text: "Chapter1" }
	CHAPTER_2 = "Chapter2"
	CHAPTER_3 = "Chapter3"
	CHAPTER_4 = "Chapter4"
	CHAPTER_8 = "Chapter8"

	attr_reader :driver

	def initialize(driver)
		@driver = driver
	end

	def click_chapter_1
		link = @driver.find_element(CHAPTER_1)
		link.click()
	end


end
require "selenium-webdriver"
require "rspec"

class WrongPageError < StandardError
	def initialize(driver, expected_url)
		super("Current page is #{driver.current_url},/n expected #{expected_url}")
	
end
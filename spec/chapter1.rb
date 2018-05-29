# require_relative "spec/helper.rb"
require_relative "pages/index_page.rb"

index_url = "http://book.theautomatedtester.co.uk/"
chapter_1_url = "http://book.theautomatedtester.co.uk/chapter1"

describe "Index page" do
	describe "links to" do
		it "chapter 1 successfully" do
			@driver = get_driver(index_url)
			index_page = IndexPage.new(@driver)
			index_page.click_chapter_1
			# Confirm we are now on the Chapter 1 page
			expect(@driver.current_url).to eq (chapter_1_url)
			@driver.quit
		end
	end
end
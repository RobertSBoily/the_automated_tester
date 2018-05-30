require_relative "pages/index_page.rb"
require_relative "pages/chapter1_page.rb"

index_url = "http://book.theautomatedtester.co.uk/"
chapter_1_url = "http://book.theautomatedtester.co.uk/chapter1"

describe "Index page" do
	describe "links to" do
		it "chapter 1 successfully" do
			@driver = get_driver(index_url)
			index_page = IndexPage.new(@driver)
			chapter1_page = index_page.click_chapter_1

			chapter1_page.click_radio_button
			index_page = chapter1_page.click_home_page

			sleep(5)
			shutdown(@driver)
		end
	end
end
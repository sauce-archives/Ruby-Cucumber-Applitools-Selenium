Given 'I am on the Sauce Labs homepage' do
  @browser.get 'http://www.saucelabs.com/'
end

Then /the title of the page should be/ do |text|
  expect(@browser.title).to be == text
end

And 'I click on the free trial button' do
  page = HomePage.new @browser
  page.freeTrialButton.click
end

And 'I conduct a visual test' do
	@eyes.test(app_name: 'Applitools', test_name: 'Sauce Labs Home Page',
        viewport_size: {width: 1008, height: 615}, driver: @browser) do |driver|
    # Visual validation point #1
    @eyes.check_window('Main Page')
	end
end
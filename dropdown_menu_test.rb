require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Checks drop down menu button' do
  it 'Clicks dropdown button and clicks autocomplete' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'
    
    dropdown_menu = driver.find_element(id: 'dropdownMenuButton')
    dropdown_menu.click
    
    autocomplete_item = driver.find_element(id: 'autocomplete')
    autocomplete_item.click
    driver.quit
  end
end
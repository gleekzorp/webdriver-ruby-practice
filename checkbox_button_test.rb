require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Tests check boxes' do
  it 'Clicks check boxes' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/checkbox'
    
    checkbox_button_1 = driver.find_element(id: 'checkbox-1')
    checkbox_button_1.click
    
    checkbox_button_2 = driver.find_element(id: 'checkbox-2')
    checkbox_button_2.click
    
    checkbox_button_3 = driver.find_element(id: 'checkbox-3')
    checkbox_button_3.click
    driver.quit
  end
end

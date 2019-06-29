require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Checks input field and button' do
  it 'Fills in input and clicks button' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/keypress'
    
    name = driver.find_element(id: 'name')
    name.send_keys('Daniel Floyd')
    
    button = driver.find_element(id: 'button')
    button.click
    driver.quit
  end
end
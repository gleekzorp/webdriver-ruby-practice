require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Auto Complete an address form' do
  it 'Fills in the fields' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/autocomplete'
    
    autocomplete = driver.find_element(id: 'autocomplete')
    autocomplete.send_keys('1555 Park Blvd, Palo Alto, CA, USA')
    
    #Implicit
    driver.manage.timeouts.implicit_wait = 5
    
    #Explicit
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(class: 'pac-item').displayed? }
    
    autocomplete_result = driver.find_element(class: 'pac-item')
    autocomplete_result.click
    driver.quit
  end
end
require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Check date field form' do
  it 'Fills in the date field' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/datepicker'
  
    datefield = driver.find_element(id: 'datepicker')
    datefield.send_keys('03/04/2022')
    datefield.send_keys :return
    driver.quit
  end
end

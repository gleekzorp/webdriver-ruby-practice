require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Scroll to see form' do
  it "Scrolls to form and fills in the inputs" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/scroll'
    
    name = driver.find_element(id: 'name')
    driver.action.move_to(name).send_keys('Daniel Floyd')
    
    date = driver.find_element(id: 'date')
    date.send_keys('01/01/2021')
    driver.quit
  end
end
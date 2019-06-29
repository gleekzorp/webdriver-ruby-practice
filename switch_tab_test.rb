require 'selenium-webdriver'
require 'rspec'
require 'chromedriver-helper'

describe 'Checks open new tab and alert buttons' do
  it 'Clicks new tab button and swaps back to click alert button then closes alert window' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/switch-window'
    
    new_tab_button = driver.find_element(id: 'new-tab-button')
    new_tab_button.click
    
    driver.switch_to.window(driver.window_handles[1])
    driver.switch_to.window(driver.window_handles[0])
    
    alert_button = driver.find_element(id: 'alert-button')
    alert_button.click
    driver.switch_to.alert.accept
    driver.quit
  end
end

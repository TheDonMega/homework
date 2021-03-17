defmodule HomeworkTestStatusCodes do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()
  
  #Starting Test for Status Codes Page
  test "verify status codes" do

    #navigating to status codes page
    navigate_to "https://the-internet.herokuapp.com/status_codes"

    #Find element for status 200 and click on element
    element = find_element(:xpath, ~s|//*[@id="content"]/div/ul/li[1]/a|)
    element |> click()
   
    #Verify that the URL changed and went to correct page and take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/200"
    rescue
      error ->
        take_screenshot("screenshots/homeworkteststatuscodes_200.png")
        raise error
    end
    
    #navigate back to main page
    navigate_back()

    #Find element for status 301 and click on element
    element = find_element(:xpath, ~s|//*[@id="content"]/div/ul/li[2]/a|)
    element |> click()
   
    #Verify that the URL changed and went to correct page and take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/301"
    rescue
      error ->
        take_screenshot("screenshots/omeworkteststatuscodes_301.png")
        raise error
    end
    
    #navigate back to main page
    navigate_back()

    #Find element for status 404 and click on element
    element = find_element(:xpath, ~s|//*[@id="content"]/div/ul/li[3]/a|)
    element |> click()
   
    #Verify that the URL changed and went to correct page and take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/404"
    rescue
      error ->
        take_screenshot("screenshots/omeworkteststatuscodes_404.png")
        raise error
    end

    #navigate back to main page
    navigate_back()

    #Find element for status 500 and click on element
    element = find_element(:xpath, ~s|//*[@id="content"]/div/ul/li[4]/a|)
    element |> click()
   
    #Verify that the URL changed and went to correct page and take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/500"
    rescue
      error ->
        take_screenshot("screenshots/omeworkteststatuscodes_500.png")
        raise error
    end

    #navigate back to main page
    navigate_back()

    #Verify that the URL is back to main page take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/"
    rescue
      error ->
        take_screenshot("screenshots/homeworkteststatuscodes.png")
        raise error
    end


  end
end

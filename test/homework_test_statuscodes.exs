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

    #Find element and click on element
    element = find_element(:xpath, ~s|//*[@id="content"]/div/ul/li[1]/a|)
    element |> click()
   
    #Verify that the URL changed and went to correct page and take screenshot upon failure
    try do
      assert current_url() == "https://the-internet.herokuapp.com/status_codes/200"
    rescue
      error ->
        take_screenshot("screenshots/homeworktestredirectfailure.png")
        raise error
    end    
  end
end

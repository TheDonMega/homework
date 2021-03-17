defmodule HomeworkTestDropDown do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()
  
  #Starting Test for Drop Down Page
  test "verify drop down" do

    #navigating to drop down page
    navigate_to "https://the-internet.herokuapp.com/dropdown"

    #Verify no selection of dropdown list and take screenshot if there is a selection already there
    element = find_element(:xpath, ~s|//*[@id="dropdown"]/option[1]|)
    element |> click()
    try do
      assert selected?(element) == true
    rescue
      error ->
        take_screenshot("screenshots/homeworktestcheckboxesfailure_noselection.png")
        raise error
    end    
   
    #Click Option 1 and verify it is now selected, if not take screenshot
    element = find_element(:xpath, ~s|//*[@id="dropdown"]/option[2]|)
    element |> click()
    try do
      assert selected?(element) == true
    rescue
      error ->
        take_screenshot("screenshots/homeworktestcheckboxesfailure_option1.png")
        raise error
    end  

    #Click Option 2 and verify it is now selected, if not take screenshot
    element = find_element(:xpath, ~s|//*[@id="dropdown"]/option[3]|)
    element |> click()
    try do
      assert selected?(element) == true
    rescue
      error ->
        take_screenshot("screenshots/homeworktestcheckboxesfailure_option2.png")
        raise error
    end  

  end
end






defmodule HomeworkTestCheckBoxes do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()
  
  #Starting Test for Checkbox Page
  test "verify checkboxes" do

    #navigating to checbox page
    navigate_to "https://the-internet.herokuapp.com/checkboxes"

    #Verify Checkbox 2 is preselected upon loading page and take screenshot if not selected
    element = find_element(:xpath, ~s|//*[@id="checkboxes"]/input[2]|)
    try do
      assert selected?(element) == true
    rescue
      error ->
        take_screenshot("screenshots/homeworktestcheckboxesfailure_preselected.png")
        raise error
    end    
   
   #Click Checkbox 2 and verify it is now unselected and take screenshot if still selected
    element |> click()
    try do
      assert selected?(element) == false
    rescue
      error ->
        take_screenshot("screenshots/homeworktestcheckboxesfailure_selected.png")
        raise error
    end    

  end
end

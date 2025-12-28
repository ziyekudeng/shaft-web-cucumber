package customCucumberSteps;

import com.shaft.driver.SHAFT;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefinitions {
    private SHAFT.GUI.WebDriver driver;
    private SHAFT.TestData.JSON testData;

    @Given("I Open the target browser")
    public void i_open_the_target_browser() {
        driver = new SHAFT.GUI.WebDriver();
    }

    @Then("I Close the current window")
    public void i_close_the_current_window() {
        if (driver != null) {
            driver.quit();
        }
    }
    
    @When("I Type {string} into the element found by {string}: {string} with Chinese support")
    public void i_type_with_chinese_support(String text, String locatorType, String locatorValue) {
        driver.element().type(locatorType, locatorValue, text);
    }
}
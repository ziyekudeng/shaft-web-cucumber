package customCucumberSteps;

import com.shaft.driver.SHAFT;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

public class StepDefinitions {
    private SHAFT.GUI.WebDriver driver;
    private SHAFT.TestData.JSON testData;

    @Given("I open the target browser")
    public void i_open_the_target_browser() {
        driver = new SHAFT.GUI.WebDriver();
        testData = new SHAFT.TestData.JSON("simpleJSON.json");
    }

    @When("I navigate to {string}")
    public void i_navigate_to(String url) {
        driver.browser().navigateToURL(url);
    }

    @When("I search for {string}")
    public void i_search_for(String query) {
        By searchBox = By.name("q");
        driver.element().type(searchBox, query + Keys.ENTER);
    }

    @Then("I should see the page title contains {string}")
    public void i_should_see_the_page_title_contains(String expectedTitle) {
        driver.assertThat().browser().title().contains(expectedTitle).perform();
    }

    @Then("I close the browser")
    public void i_close_the_browser() {
        driver.quit();
    }
}
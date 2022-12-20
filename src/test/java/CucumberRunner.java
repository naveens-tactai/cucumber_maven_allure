import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features = "src/test/resources/features",
        glue = "stepdefinition",
        plugin = {"io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
        "json:target/cucumber-report.json"}
)

public class CucumberRunner extends AbstractTestNGCucumberTests {

}
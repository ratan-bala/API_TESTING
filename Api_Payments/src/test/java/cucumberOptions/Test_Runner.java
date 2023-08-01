package cucumberOptions;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/java/feature"},glue ={"StepDefinition"},
        plugin = {"pretty","html:target/reports/report.html","json:target/reports/report.json"})
public class Test_Runner {

}

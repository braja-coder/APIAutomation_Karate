package com.apiautomation.run;





import org.junit.runner.RunWith;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

import cucumber.api.CucumberOptions;


@RunWith(Karate.class)
@KarateOptions(features="classpath:FeatureFiles/json.feature")
public class TestRunner {

}

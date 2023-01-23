package com.apiautomation.run;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner;


public class TestRunner {

	@Test
    void testTags() {
        Runner.path("classpath:com/apiautomation/features").tags("~@apiautomation").parallel(5);
    }
}

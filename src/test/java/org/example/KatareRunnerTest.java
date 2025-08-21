package org.example;
import com.intuit.karate.junit5.Karate;



public class KatareRunnerTest {
    @Karate.Test
    Karate testALl() {
        return Karate.run("src/test/resources/features/miTest.feature");

    }
}

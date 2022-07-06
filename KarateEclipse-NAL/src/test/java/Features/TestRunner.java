package Features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate getAPITestGet() {
		return Karate.run("getapi").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate getAPITestPost() {
		return Karate.run("postapi").relativeTo(getClass());
	}

}

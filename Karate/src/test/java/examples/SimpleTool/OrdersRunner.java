package examples.SimpleTool;
import com.intuit.karate.junit5.Karate;

public class OrdersRunner {

    @Karate.Test
    Karate testOrders() { return Karate.run("TheDogApi").relativeTo(getClass());


    }
}

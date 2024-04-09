package TheDogApi.images;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import com.intuit.karate.junit5.Karate;

public class imagesRunner {

    @Karate.Test
    Karate testOrders() { return Karate.run("getSingleIMG").relativeTo(getClass());
}
}



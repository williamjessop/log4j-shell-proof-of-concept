import java.io.*;
import java.net.*;
import java.util.concurrent.TimeUnit;

public class Exploit {

    public Exploit() throws Exception {
        try {
            File myFile = new File("/tmp/filename.txt");
            myFile.createNewFile();

            TimeUnit.SECONDS.sleep(8);

            myFile.delete();

        } catch (IOException e) {}

    }
}

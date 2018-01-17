import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Get_timestamp_for_useWith_No_Spaces
{
    public static void main(String[] args)
    {
		DateFormat dateFormat = new SimpleDateFormat("MMM-d-yyyy h:mm a");
		Date date = new Date();
		String documentGenerationTimestamp = dateFormat.format(date);
		documentGenerationTimestamp = documentGenerationTimestamp.replaceAll("\\s","_");
		documentGenerationTimestamp = documentGenerationTimestamp.replaceAll(":","_");
		System.out.println(documentGenerationTimestamp);
    }
}
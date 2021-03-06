package sorting;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class SortingStringDate
{
    public static void main(String[] args) {
        List<StringDateModel> models = new ArrayList<>();

        StringDateModel model1 = new StringDateModel();
        model1.setName("Lingga");
        model1.setDate("2019-09-09 09:09:09");

        StringDateModel model2 = new StringDateModel();
        model2.setName("Aska");
        model2.setDate("2017-07-07 19:07:07");

        StringDateModel model3 = new StringDateModel();
        model3.setName("Edo");
        model3.setDate("2018-08-08 08:08:08");

        StringDateModel model4 = new StringDateModel();
        model4.setName("Reno");
        model4.setDate("2019-09-09 10:10:10");

        StringDateModel model5 = new StringDateModel();
        model5.setName("Tejo");
        model5.setDate("2017-07-07 20:07:08");

        StringDateModel model6 = new StringDateModel();
        model6.setName("Tejo");
        model6.setDate("-");

        models.add(model1);
        models.add(model2);
        models.add(model3);
        models.add(model4);
        models.add(model5);
        models.add(model6);

        System.out.println("Ori: " + models.toString());

        models.sort((model11, model21) -> {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

            try
            {
                if (format.parse(model11.getDate()).after(format.parse(model21.getDate())))
                {
                    return -1;
                }
                else if (format.parse(model11.getDate()).before(format.parse(model21.getDate())))
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
            catch (ParseException e)
            {
                return -1;
//                e.printStackTrace();
            }
        });

//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        models.sort(Comparator.comparing(model -> {
//            try
//            {
//                return format.parse(model.getDate());
//            }
//            catch (ParseException e)
//            {
//                e.printStackTrace();
//            }
//            return null;
//        }));

//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        models.sort(Comparator.comparing(model -> LocalDateTime.parse(model.getDate(), formatter)));
        System.out.println("Result1: " + models.toString());

//        Comparator.comparing((List<String> l) -> LocalDate.parse(l.get(3), formatter)).reversed();
//        System.out.println("Result2: " + models.toString());
    }
}
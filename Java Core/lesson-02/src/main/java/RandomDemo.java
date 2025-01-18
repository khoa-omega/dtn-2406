import java.time.LocalDate;
import java.util.Random;

public class RandomDemo {
    public static void main(String[] args) {
        Random random = new Random();

        int a = random.nextInt();
        System.out.println("a = " + a);

        // [0, 100) 0 <= b < 100
        int b = random.nextInt(100);
        System.out.println("b = " + b);

        // [min, max]
        int min = 100;
        int max = 999;
        int c = min + random.nextInt(max - min + 1);
        System.out.println("c = " + c);

        // random date
        LocalDate minDate = LocalDate.of(2000, 1, 1);
        LocalDate maxDate = LocalDate.of(2025, 12, 31);
        int minDay = (int) minDate.toEpochDay();
        int maxDay = (int) maxDate.toEpochDay();
        int randomDay = minDay + random.nextInt(maxDay - minDay + 1);
        LocalDate randomDate = LocalDate.ofEpochDay(randomDay);
        System.out.println("randomDate = " + randomDate);
    }
}

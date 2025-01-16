import java.time.LocalDate;

public class DataTypeDemo {
    public static void main(String[] args) {
        // Kiểu số nguyên
        // byte, short, int, long
        // Giá trị mặc định: 0
        int age = 18;
        System.out.println("age = " + age);

        // Kiểu số thực
        // float, double
        // Giá trị mặc định: 0.0
        float money = 123.456f;
        System.out.println("money = " + money);

        // Kiểu boolean
        // Giá trị mặc định: false
        boolean isLoading = true;
        System.out.println("isLoading = " + isLoading);

        // Kiểu char
        // Giá trị mặc định: \u0000
        char c = 'T';
        System.out.println("c = " + c);

        // Kiểu String
        String s = "Nguyễn Văn Khoa";
        System.out.println("s = " + s);

        // Kiểu thời gian
        // LocalDate, LocalTime, LocalDateTime
        LocalDate today = LocalDate.now();
        System.out.println("today = " + today);
        LocalDate date = LocalDate.of(2005, 9, 16);
        System.out.println("date = " + date);

        // Kiểu enum
        Gender gender = Gender.FEMALE;
        System.out.println("gender = " + gender);

        // Kiểu array
        int[] numbers = {2, 4, 6, 8};
        String[] fruits = new String[]{"Cam", "Táo", "Ổi"};
        // Chỉ số bắt đầu từ 0
        System.out.println("numbers[0] = " + numbers[0]);
        int lastIndex = numbers.length - 1;
        System.out.println("numbers[" + lastIndex + "] = " + numbers[lastIndex]);
        System.out.println("numbers.length = " + numbers.length);
    }
}

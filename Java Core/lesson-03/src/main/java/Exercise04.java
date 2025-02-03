import java.util.Scanner;

public class Exercise04 {
    void question01() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập vào một xâu kí tự:");
        String s = scanner.nextLine();
        String[] words = s.split(" ");
        int count = 0;
        for (String word : words) {
            if (!word.isEmpty()) {
                count++;
            }
        }
        System.out.println("Số từ: " + count);
    }

    void question03() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập vào tên của bạn:");
        String name = scanner.nextLine();
        String first = name.substring(0, 1).toUpperCase();
        String last = name.substring(1).toLowerCase();
        String newName = first + last;
        System.out.println(newName);
    }
}

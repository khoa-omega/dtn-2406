import java.util.Scanner;

public class ScannerDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập vào tuổi:");
        int age = scanner.nextInt();
        System.out.println("Tuổi của bạn là: " + age);

        scanner.nextLine();
        System.out.println("Nhập vào họ và tên:");
        String fullName = scanner.nextLine();
        System.out.println("Tên của bạn là: " + fullName);
    }
}

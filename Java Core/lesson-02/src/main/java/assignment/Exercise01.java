package assignment;

public class Exercise01 {
    void question01() {
        Account account = new Account();
        if (account.department == null) {
            System.out.println("Nhân viên này chưa có phòng ban");
        } else {
            System.out.println("Phòng ban của nhân viên này là ...");
        }
    }
}

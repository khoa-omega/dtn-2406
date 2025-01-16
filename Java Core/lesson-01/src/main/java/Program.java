import java.time.LocalDate;

public class Program {
    public static void main(String[] args) {
        Department department = new Department();
        department.id = 1;
        department.name = "Bảo vệ";
        department.showInfo();

        Department department2 = new Department();
        department2.id = 2;
        department2.name = "Giám đốc";
        department2.showInfo();

        Position position = new Position();
        position.id = 1;
        position.name = PositionName.DEV;
        System.out.println("position.name = " + position.name);

        Account account = new Account();
        account.id = 1;
        account.email = "khoa.nv@gmail.com";
        account.username = "khoa.nv";
        account.fullName = "Nguyễn Văn Khoa";
        account.department = department;
        account.position = position;
        account.createDate = LocalDate.now();
        System.out.println("account.department.name = " + account.department.name);
    }
}

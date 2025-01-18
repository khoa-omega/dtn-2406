public class SwitchCaseDemo {
    public static void main(String[] args) {
        int month = 12;

        switch (month) {
            case 2:
                System.out.println("28 hoặc 29 ngày");
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                System.out.println("30 ngày");
                break;
            default:
                System.out.println("31 ngày");
                break;
        }
    }
}

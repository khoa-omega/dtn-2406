public class BreakDemo {
    public static void main(String[] args) {
        // Kết thúc vòng lặp ngay lập tức
        for (int i = 0; i < 10; i++) {
            if (i == 5) {
                break;
            }
            System.out.println(i);
        }
    }
}

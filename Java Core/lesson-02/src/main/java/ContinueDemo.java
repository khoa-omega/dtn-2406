public class ContinueDemo {
    public static void main(String[] args) {
        // Next phần tử tiếp theo ngay lập tức
        for (int i = 0; i < 10; i++) {
            if (i == 5) continue;
            System.out.println(i);
        }
    }
}

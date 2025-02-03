public class UnboxingDemo {
    public static void main(String[] args) {
        Integer a = 100;

        // Thủ công
        int b = a.intValue();

        // Auto unboxing
        int c = a;

        // Chuyển String thành int
        int d = Integer.parseInt("123456");
    }
}

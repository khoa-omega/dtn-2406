public class BoxingDemo {
    public static void main(String[] args) {
        int a = 100;

        // Thủ công
        Integer b = Integer.valueOf(a);

        // Auto boxing
        Integer c = a;

        // Chuyển String thành Integer
        Integer d = Integer.valueOf("123456");
    }
}

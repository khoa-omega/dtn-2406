public class DataTypeCastingDemo {
    public static void main(String[] args) {
        // Widening
        // byte -> short -> int -> long -> float -> double
        int a = 100;
        System.out.println("a = " + a);
        long b = (long) a;
        System.out.println("b = " + b);

        // Narrowing
        // double -> float -> long -> int -> short -> byte
        long c = 8000000000L;
        System.out.println("c = " + c);
        int d = (int) c;
        System.out.println("d = " + d);

        // -128 -> 127
        byte e = (byte) 128;
        System.out.println("e = " + e);

        // áp dụng
        int x = 1;
        int y = 2;
        System.out.println(x / y);
        System.out.println((float) (x / y));
        System.out.println((float) x / y);
        System.out.println(x / (float) y);
        System.out.println((float) x / (float) y);
    }
}

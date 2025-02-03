public class StringDemo {
    public static void main(String[] args) {
        // Primitive
        String s1 = "Java Core";
        String s2 = "Java Core";

        // Non primitive
        String s3 = new String("Java Core");
        String s4 = new String("Java Core");

        // ==: So sánh địa chỉ
        System.out.println(s1 == s2);
        System.out.println(s2 == s3);
        System.out.println(s3 == s4);

        // equals: So sánh nội dung
        System.out.println(s1.equals(s2));
        System.out.println(s2.equals(s3));
        System.out.println(s3.equals(s4));
    }
}

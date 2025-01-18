public class OutputDemo {
    public static void main(String[] args) {
        // Escape character
        // \", \', \\, \n, \t

        // System.out.println();
        System.out.println("\"Java\"");

        // System.out.print();
        System.out.print("Java\n");
        System.out.print("Java\n");
        System.out.print("Java\n");

        // System.out.printf();
        // %d: Số nguyên
        // %f: Số thực
        // %s: String
        // %b: boolean
        // %c: char
        // %n: Xuống dòng
        String name = "Khoa";
        int age = 25;
        System.out.printf("Tôi tên là %s, tuổi %d%n", name, age);

        // %,d: Gom nhóm 3 số
        System.out.printf("Tiền: %,d%n", 987654321);

        // %.2f: Làm tròn 2 chữ số
        System.out.printf("Điểm: %,.2f%n", 123456.789);

        // %10s: Chiếm 10 space, căn lề phải
        System.out.printf("Học phần: %10s%n", "Java");

        // %-10s: Chiếm 10 space, căn lề trái
        System.out.printf("Học phần: %-10s%n", "Java");

        // VD: In ra định dạng bảng
        System.out.println("+------+--------------------+");
        System.out.printf("| %-4s | %-18s |%n", "ID", "NAME");
        System.out.println("+------+--------------------+");
        System.out.printf("| %-4s | %-18s |%n", "1", "Nguyễn Văn Khoa");
        System.out.println("+------+--------------------+");
        System.out.printf("| %-4s | %-18s |%n", "2", "Lê Thu Hà");
        System.out.println("+------+--------------------+");
    }
}

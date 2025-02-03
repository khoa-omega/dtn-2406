public class ObjectMethodDemo {
    public static void main(String[] args) {
        // toString()
        Student student = new Student();
        student.id = 1;
        student.name = "Long";
        System.out.println(student);

        // equals
        Student student2 = new Student();
        student2.id = 1;
        student2.name = "Khoa";
        System.out.println(student.equals(student2));
    }
}

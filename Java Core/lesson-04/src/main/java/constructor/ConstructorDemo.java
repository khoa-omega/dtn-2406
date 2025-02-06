package constructor;

public class ConstructorDemo {
    public static void main(String[] args) {
        // Hàm khởi tạo
        // 1. Tên giống với tên class
        // 2. Không có kiểu trả về
        // Mặc định: Construcor 0 tham số
        Dog dog = new Dog("ABC");
        System.out.println(dog);
    }
}

package inheritance;

public class InheritanceDemo {
    public static void main(String[] args) {
        // Tính kế thừa
        // Mục đích: Tái sử dụng code
        // Đơn kế thừa
        // this: Tham chiếu đến class đó
        // super: Tham chiếu đến class cha
        Dog dog = new Dog("ABC", 3);
        dog.eat();
        System.out.println("dog.name = " + dog.name);
    }
}

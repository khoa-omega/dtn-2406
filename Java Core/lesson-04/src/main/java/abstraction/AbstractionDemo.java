package abstraction;

public class AbstractionDemo {
    public static void main(String[] args) {
        // Tính trừu tượng
        // abstract class: Không thể khởi tạo đối tượng
        // Animal animal = new Animal();

        // abstract method: Không có thân hàm
        Dog dog = new Dog();
        dog.makeSound();
    }
}

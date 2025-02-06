package accessmodifier;

import constructor.Dog;

public class AccessModifierDemo {
    public static void main(String[] args) {
        // Phạm vi truy cập
        // Dùng cho: class, method, property
        // public: Có thể truy cập từ mọi nơi
        Cat cat = new Cat();
        System.out.println("cat.name = " + cat.name);
        Dog dog = new Dog("A");

        // protected: Có thể truy cập trong cùng package hoặc class con
        // default: Có thể truy cập trong cùng package
        // System.out.println("dog.name = " + dog.name);

        // private: Chỉ truy cập trong class đó
        // System.out.println("cat.age = " + cat.age);
    }
}

package constructor;

public class Dog {
    protected String name;
    int age;

    public Dog(String name) {
        this.name = name;
        this.age = 0;
    }

    Dog(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public String toString() {
        return "inheritance.Dog{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}

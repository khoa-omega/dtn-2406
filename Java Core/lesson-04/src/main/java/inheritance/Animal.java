package inheritance;

public class Animal {
    protected String name;

    public Animal(String name) {
        this.name = name;
    }

    public void eat() {
        System.out.println("Animal is eating");
    }

    public int max(int a, int b) {
        return a >= b ? a : b;
    }
}

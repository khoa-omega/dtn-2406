package inheritance;

public class BabyDog extends Dog {
    public BabyDog(String name, int age) {
        super(name, age);
    }

    public void abc() {
        int max = super.max(1, 2);
        System.out.println("max = " + max);
    }
}

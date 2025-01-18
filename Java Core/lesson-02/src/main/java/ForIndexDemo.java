public class ForIndexDemo {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i += 2) {
            System.out.println(i);
        }

        int[] numbers = {1, 3, 5, 7, 9};
        for (int i = 0; i < numbers.length; i++) {
            System.out.println(numbers[i]);
        }
    }
}

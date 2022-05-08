public class pi {
    public static void main(String[] args) {

        int n = 10000000;
        int mc = 0;

        for (int i = 0; i < n; i++) {
            double x = Math.random();
            double y = Math.random();

            if (x * x + y * y <= 1) {
                mc++;
            }

        }

        double pi = (double)4*mc/n;

        System.out.println("pi="+pi);
        
    }
}

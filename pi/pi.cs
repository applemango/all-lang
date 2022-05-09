using System;

public class Program {
    public static void Main(string[] args) {
        
        int n = 10000000;
        int mc = 0;

        var rand = new Random();

        for (int i = 0; i < n; i++) {

            double x = rand.NextDouble();
            double y = rand.NextDouble();

            if (x * x + y * y <= 1) {
                mc++;
            }

        }

        Console.WriteLine("Pi = {0:0.#####}", 4.0 * mc / n);

    }
}
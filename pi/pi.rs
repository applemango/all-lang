//[Cargo.toml]
//  [dependencies]
//     add => rand = "0.6"

fn main() {
    use rand::Rng;

    let n = 10000000;
    let mut mc = 0;

    let mut rng = rand::thread_rng();

    for _i in 0..n {
        let x: f64 = rng.gen();
        let y: f64 = rng.gen();

        if x*x + y*y <= 1.0 {
            mc += 1;
        }

    }

    let pi = 4.0 * mc as f64 / n as f64;

    println!("pi = {}", pi);
}
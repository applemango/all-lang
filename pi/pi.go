package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {

	rand.Seed(time.Now().UnixNano())

	var (
		n  = 10000000
		mc = 0
	)

	for i := 0; i < n; i++ {

		var (
			x = rand.Float64()
			y = rand.Float64()
		)

		if x*x+y*y < 1 {
			mc += 1.0
		}

	}

	fmt.Println(4 * float64(mc) / float64(n))
}

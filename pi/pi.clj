(def n 30000000)
(def mc 0)

(doseq [i (range n)]

    (def x (rand))
    (def y (rand))

    (when (< (+ (* x x) (* y y)) 1)
        (def mc (+ mc 1))
    )

)

(def pi (/ (* 4 mc) n))

(println pi)
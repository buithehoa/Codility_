package solution

// you can also use imports, for example:
// import "fmt"
// import "os"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(A []int) int {
    // write your code in Go 1.4
    n := len(A)
    counters := make([]bool, n)

    notPerm := 0
    perm := 1

    for _, value := range A {
        if value > n {
            return notPerm
        }
        if counters[value - 1] {
            return notPerm
        }

        counters[value - 1] = true
    }

    return perm
}

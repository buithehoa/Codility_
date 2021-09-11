package solution

// you can also use imports, for example:
// import "fmt"
// import "os"
import "sort"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(A []int) int {
    // write your code in Go 1.4
    sort.Ints(A)
    n := len(A) + 1

    if (n == 1) {
        return 1
    }
    for value := 1; value <= n; value++ {
        if value > len(A) || A[value - 1] != value  {
            return value
        }
    }

    return 0
}

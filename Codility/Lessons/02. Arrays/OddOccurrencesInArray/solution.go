package solution

// you can also use imports, for example:
// import "fmt"
// import "os"
import "sort"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(A []int) int {
    // write your code in Go 1.4
    unpaired := 0
    sort.Ints(A)

    i := 0
    for unpaired == 0 || i < len(A) {
        if i == len(A) - 1 {
            unpaired = A[i]
            i += 1
        } else if A[i] == A[i + 1] {
            i += 2
        } else {
            unpaired = A[i]
            i += 1
        }
    }

    return unpaired
}

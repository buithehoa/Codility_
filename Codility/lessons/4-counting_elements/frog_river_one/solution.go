package solution

// you can also use imports, for example:
// import "fmt"
// import "os"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(X int, A []int) int {
    // write your code in Go 1.4
    path := make([]int, X + 1)
    leafCount := 0

    for i, position := range A {
        if path[position] == 0 {
            path[position] = 1
            leafCount += 1
        }

        if leafCount == X {
            return i
        }
    }

    return -1
}

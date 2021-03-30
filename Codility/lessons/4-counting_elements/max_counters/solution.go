package solution

// you can also use imports, for example:
// import "fmt"
// import "os"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(N int, A []int) []int {
    // write your code in Go 1.4
    counters := make([]int, N)
    maxCount := 0
    nextMaxCount := 0
    maxOperation := N + 1

    for _, value := range A {
        count := 0

        if value >= 1 && value <= N {
            if counters[value - 1] <= maxCount {
                count = maxCount + 1
            } else {
                count = counters[value - 1] + 1
            }
            counters[value - 1] = count
            if (nextMaxCount < count) {
                nextMaxCount = count
            }
        } else if value == maxOperation {
            maxCount = nextMaxCount
        }
    }

    for i, value := range counters {
        if value < maxCount {
            counters[i] = maxCount
        }
    }

    return counters
}

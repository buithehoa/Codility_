package solution

// you can also use imports, for example:
// import "fmt"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(A []int, K int) []int {
    // write your code in Go 1.4
    if len(A) == 0 {
        return A
    }

    if K >= len(A) {
        K = K % len(A)
    }

    var rotated = make([]int, len(A))
    for index, x := range A {
        new_index := index + K

        if new_index > (len(A) - 1) {
            new_index = new_index - len(A)
        }

        rotated[new_index] = x
    }

    return rotated
}

package solution

// you can also use imports, for example:
// import "fmt"
// import "os"

// you can write to stdout for debugging purposes, e.g.
// fmt.Println("this is a debug message")

func Solution(A []int) int {
    // write your code in Go 1.4
    var tmp int

    head := A[0]
    tail := sum(A[1:len(A)])
    min := Abs(head - tail)

    for p := 2; p < len(A); p++ {
        head = Head(A, p, head)
        tail = Tail(A, p, tail)
        tmp = Abs(head - tail)

        if tmp < min {
            min = tmp
        }
        if min == 0 {
            break
        }
    }

    return min;
}

func Abs(value int) int {
    if value < 0 {
        value = - value
    }
    return value
}

func Head(A []int, p int, head int) int {
    return head + A[p - 1]
}

func Tail(A []int, p int, tail int) int {
    return tail - A[p - 1]
}

func sum(A []int) int {
    sum := 0
    for _, value := range A {
        sum += value
    }

    return sum;
}

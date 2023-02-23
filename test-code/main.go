package main

import "fmt"

func main() {
	test(2, 4, 6)
}

func test(nums ...int) {
	fmt.Println(nums)
}

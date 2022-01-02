package main

import (
	"fmt"
)

func main() {
	var input = 101
	for input < 500 {
		fmt.Println("Enter Year> ")
		fmt.Scanln(&input)
	}

	if (input%100 == 0) && (input%400 == 0) {
		fmt.Println(input, " is a century and leap year.")
	} else if input%100 == 0 {
		fmt.Println(input, " is a century year.")
	} else if (input % 4) == 0 {
		fmt.Println(input, " is a leap year.")
	}
}

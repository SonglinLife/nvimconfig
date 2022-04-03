package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var t = "100"
	var g = []int{}
	g = append(g, 100)
	i, err := strconv.Atoi(t)
	fmt.Println(i, err)
	strings.Compare("a", "b")

}

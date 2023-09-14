package main

// Build using: go build -buildmode=c-shared -o greeter.so ./src/...

// #include <stdio.h>
// #include <stdlib.h>
import "C"
import "fmt"

//export Greet
func Greet(name *C.char) *C.char {
	return C.CString(fmt.Sprintf("Hello, %s!\n", C.GoString(name)))
}

func main() {}

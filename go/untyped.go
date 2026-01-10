package main

func untyped() {
	var x int = "not an int" // type error: cannot use string as int
	_ = x
}

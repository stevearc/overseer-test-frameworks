package gotest_test

import "testing"

func TestSucceed(t *testing.T) {
	// Nothing to do
}

func TestSkip(t *testing.T) {
	t.Skipf("Skip test")
}

func TestFail(t *testing.T) {
	t.Errorf("This is a failure")
}

func TestPanic(t *testing.T) {
	t.Log("This is some output")
	panic("Crash")
}

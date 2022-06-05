import sys
import time
import unittest


class TestGroup(unittest.TestCase):
    def test_succeed(self):
        time.sleep(0.2)

    def test_skip(self):
        time.sleep(0.2)
        self.skipTest("Skip this test")

    def test_fail(self):
        time.sleep(0.2)
        self.assertTrue(False)

    def test_error(self):
        time.sleep(0.2)
        self.foo.bar

    def test_fail_with_output(self):
        print("This is some output")
        sys.stderr.write("This is some stderr output\n")
        time.sleep(0.2)
        self.assertTrue(False)

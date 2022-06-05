import sys
import unittest


class TestGroup(unittest.TestCase):
    def test_succeed(self):
        pass

    def test_skip(self):
        self.skipTest("Skip this test")

    def test_fail(self):
        self.assertTrue(False)

    def test_error(self):
        self.foo.bar

    def test_fail_with_output(self):
        print("This is some output")
        sys.stderr.write("This is some stderr output\n")
        self.assertTrue(False)

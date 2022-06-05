local function foo()
  this('will fail')
end

local function bar()
  foo()
end

describe("Busted", function()
  describe("should run tests", function()
    it("should succeed test", function()
      assert.truthy("Yup.")
    end)

    it("should fail test", function()
      assert.truthy(false)
    end)

    it("should show output", function()
      print("This is some output")
      assert.are.same({ a = 1, b= 2, c = 3, d = 4}, { a = 1, b = 4, c = 3, d = 4})
    end)

    it("should skip test", function()
      pending("This is pending")
      assert.truthy(false)
    end)

    it("should show failure stacktrace", function()
      bar()
    end)
  end)
end)


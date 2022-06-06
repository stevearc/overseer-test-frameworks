async function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

function bar() {
  baz();
}

function foo() {
  bar();
}

describe("more jest tests", () => {
  describe("that are nested", () => {
    test("should show test output", async () => {
      console.log("This is some output");
      console.error("This is err output");
      await sleep(200);
      expect(1).toBe(3);
    });
  });
  describe("other nested", () => {
    test("should error", async () => {
      await sleep(200);
      foo();
    });
  });
  test("should fail", async () => {
    await sleep(200);
    expect(1).toBe(3);
  });
});

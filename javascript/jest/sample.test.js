async function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

describe("jest tests", () => {
  test("should succeed", async () => {
    await sleep(200);
  });

  test.skip("should skip", async () => {
    await sleep(200);
  });
});

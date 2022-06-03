const Minting = artifacts.require("./Minting.sol");

contract("Minting", accounts => {
  it("...should store the value 89.", async () => {
    const MintingInstance = await Minting.deployed();

    // Set value of 89
    await MintingInstance.set(89, { from: accounts[0] });

    // Get stored value
    const storedData = await MintingInstance.get.call();

    assert.equal(storedData, 89, "The value 89 was not stored.");
  });
});

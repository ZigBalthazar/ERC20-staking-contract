const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");

describe("staking contract test", function () {
  async function deployStakingContract() {
    const _staking = await ethers.getContractFactory("staking");
    const staking = await _staking.deploy("0x06450dEe7FD2Fb8E39061434BAbCFC05599a6Fb8");

    return { staking };
  }

  describe("Deployment", function () {
    it("Should set the right token adddress", async function () {
      const { staking } = await loadFixture(deployStakingContract);

      expect(await staking.stakingToken()).to.equal("0x06450dEe7FD2Fb8E39061434BAbCFC05599a6Fb8");
    });
  });
});

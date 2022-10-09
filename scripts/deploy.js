
const hre = require("hardhat");
const tokenAddress =""
async function main() {

  const _staking = await hre.ethers.getContractFactory("staking");
  const staking = await _staking.deploy(tokenAddress);

  await staking.deployed();

  console.log(`Done, address => ${staking.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

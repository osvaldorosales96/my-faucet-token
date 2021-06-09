const MyFaucetToken = artifacts.require("./MyFaucetToken.sol");
const MyFaucetWallet = artifacts.require("./MyFaucetWallet.sol");

module.exports = async function (deployer, _network, addresses) {
  await deployer.deploy(MyFaucetToken);
  const token = await MyFaucetToken.deployed();
  await deployer.deploy(MyFaucetWallet, token.address);
  const wallet = await MyFaucetWallet.deployed();
  token.approve(wallet.address, 10000);
};

const RentableMonkey = artifacts.require("RentableMonkey");

module.exports = function (deployer) {
  deployer.deploy(RentableMonkey);
};

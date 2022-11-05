const Demo_Contract = artifacts.require("Test");

module.exports = function(deployer) {
    deployer.deploy(Demo_Contract,"Essalam elikom");
  };
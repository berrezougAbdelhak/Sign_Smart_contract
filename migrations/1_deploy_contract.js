// const Demo_Contract = artifacts.require("Test");

// module.exports = function(deployer) {
//     deployer.deploy(Demo_Contract,[ [1,2] ]);
//   };

const Certificat = artifacts.require("Certificat");

const _nftContract = '0xB10de82629A87b4C09b2e72383D776b6c0E33450';
const _percentage = 10;
const _contract_Content =
  "I'm 0x5727C274aCde58e63fc5297EC3De21553B66d9B1 holder of nft with the address 0x5727C274aCde58e63fc5297EC3De21553B66d9B1 I authorize RNFT with the address 0x5727C274aCde58e63fc5297EC3De21553B66d9B1 to make physical reproductions";
const _signature =
  "0xb9e611a31984014ffcb374981fa24df86b06cf1342b9227140ba80b03b65519d14d87ddc9d2ea4a8efc0ac173944966e93d2bb04e953b9eafc3cafa22e0923e51c";
const _support = "Canvas";
const _uri = "https://ipfs.io/ipfs/QmQwr7JD7EtXMmYFHMaGVcetSHk8hVNSii1wiU9SbW5pS7/1.json";
const _tokens = [ [1,"0xF3804e57b82bEAA7E14ef76E557B4BA3bb8F91E9",0] ];

module.exports = function (deployer) {
  deployer.deploy(Certificat,_nftContract,_percentage,_contract_Content,_signature,_support,_uri,_tokens);
};

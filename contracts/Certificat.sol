// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Certificat is Ownable {
    address public artist;
    address public nftContract;
    address public rnft=0x7B6C79d93Fbc4c4e9c777E6313C406C6e5b99EaA;
    uint8 public percentage;
    string public contractContent ;
        
    string public signature ;
        
    string public support;
    string public uri;
    int256 maxReproduction=10000;
    using Counters for Counters.Counter;
    Counters.Counter numberOfReproductions;
    struct tokenDetails {
        uint256 id;
        address owner;
    }

    mapping (uint=>tokenDetails) public tokens;

    constructor(
        address _nftContract,
        uint8  _percentage,
        string memory _contract_Content,
        string memory _signature,
        string memory _support,
        string memory _uri,
        tokenDetails[] memory _tokens
    ) {
        _transferOwnership(rnft);
        artist = msg.sender;
        nftContract = _nftContract;
        percentage = _percentage;
        contractContent = _contract_Content;
        signature = _signature;
        support = _support;
        uri = _uri;
        for(uint i = 0; i<_tokens.length; i++){
        tokens[_tokens[i].id]=_tokens[i];
    }

    modifier _requireMaxReproductionsNotReached {
        require(numberOfReproductions<=maxReproduction,"Max number of reproductions reached, you cannot ask for another one for now")
        _;
    }
    

    
    
    }


}

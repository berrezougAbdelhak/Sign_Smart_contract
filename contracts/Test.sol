pragma solidity ^0.8.0;

  contract Test {

     struct   tokenDetails {
        uint id;
        int maxReproduction;
        
    }

    mapping(uint=>tokenDetails) public  tokens ;
    constructor ( tokenDetails[] memory _data) {
    //   tkn=_token;
    for(uint i = 0; i<_data.length; i++){
        tokens[_data[i].id]=_data[i];
    }

    }


}
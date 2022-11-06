// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Test is AccessControl{
    bytes32 public constant USER_ROLE = keccak256("USER");
    address private manager;
    address[] public players;
    string public message;

    constructor (string memory initialMessage)  {
        manager=msg.sender;
        message=initialMessage;    
        _setupRole(DEFAULT_ADMIN_ROLE, manager);
        _setRoleAdmin(USER_ROLE, DEFAULT_ADMIN_ROLE);
    }

    modifier onlyAdmin(){
        require(isAdmin(msg.sender));
        _;
    }

    modifier onlyUser() {

        require(isUser(msg.sender));
        _;
    }

    function isAdmin(address account) public view returns(bool) {
        return hasRole(DEFAULT_ADMIN_ROLE, account);
    }

    function isUser(address account) public view returns(bool) {
    return hasRole(USER_ROLE, account);
    }


    function getManager() public view returns(address) {
        return manager;

    }

    function setMessage(string memory newMsg) public  onlyAdmin {
        message=newMsg;

    }

    function addPlayer(address  newPlayer) public onlyAdmin {
        players.push(newPlayer);
    } 
    
}

// pragma solidity ^0.4.17;
// import "@openzeppelin/contracts/access/AccessControl.sol";

// contract Test {
//     address private manager;
//     address[] public players;
//     string public message;
//     function Test(string initialMessage) public {
//         manager=msg.sender;
//         message=initialMessage;    
//     }

//     function getManager() public view returns(address) {
//         return manager;

//     }

//     function setMessage(string newMsg) public {
//         message=newMsg;

//     } 
    
// }
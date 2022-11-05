pragma solidity ^0.4.17;

contract Test {
    address private manager;
    address[] public players;
    string public message;
    function Test(string initialMessage) public {
        manager=msg.sender;
        message=initialMessage;    
    }

    function getManager() public view returns(address) {
        return manager;

    }

    function setMessage(string newMsg) public {
        message=newMsg;

    } 
    
}
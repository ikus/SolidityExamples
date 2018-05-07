pragma solidity^0.4.22;

contract inbox{
    string public message;
    
    constructor(string initMessage) public {
        message=initMessage;
    }
    
    function setMesssage(string newMessage) public {
        message= newMessage;
    }
}
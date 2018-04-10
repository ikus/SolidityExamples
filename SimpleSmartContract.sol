pragma solidity ^0.4.0;


contract SimpleStorage{
    uint storeData;
    
    function set(uint x) public{
        storeData =x;
    }
    
    fucntion get() public constant returns (uint){
        return storeData;    
    }
}
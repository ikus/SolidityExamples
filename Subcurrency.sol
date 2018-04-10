pragma solidity ^0.4.21;

contract Coin{
	address public minter;
	mapping(address => uint) public balances;

	event Sent(address from ,address to,uint amount);

	function Coin() public{
		minter = msg.sender;
	}

	function mint(address receiver,uint amount) public{
		if(msg.sender!=minter)return;
		balances[msg.sender] -= amount;
		balances[msg.receiver] +=amount;
		emit Sent(msg.sender,receiver,amount);
	}
}
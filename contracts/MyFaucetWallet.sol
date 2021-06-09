pragma solidity ^0.7.3;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MyFaucetWallet {
    IERC20 public token;
    address public admin;

    constructor(address _token) {
        admin = msg.sender;
        token = IERC20(_token);
    }

    function deposit(uint amount) external {
        require(msg.sender == admin, 'only admin');
        token.transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint amount) external {
        require(msg.sender == admin, 'only admin');
        token.transfer(msg.sender, amount);
    }
}
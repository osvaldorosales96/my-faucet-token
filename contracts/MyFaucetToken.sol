pragma solidity ^0.7.3;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract MyFaucetToken is ERC20 {
    constructor() ERC20('My Faucet Token', 'MFT') {}

    function faucet(address to, uint amount) external {
        _mint(to, amount);
    }
}


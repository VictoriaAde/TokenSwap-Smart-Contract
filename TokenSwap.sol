// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenSwap is Ownable {
    IERC20 public token1;
    IERC20 public token2;

    event TokensSwapped(address indexed sender, uint256 amount1, uint256 amount2);

    constructor(address _token1, address _token2, address _owner) Ownable(_owner) {
        token1 = IERC20(_token1);
        token2 = IERC20(_token2);
    }

    function swapTokens(uint256 amount1, uint256 amount2) external onlyOwner {
        require(token1.balanceOf(address(this)) >= amount1, "Insufficient balance of Token1");
        require(token2.balanceOf(address(this)) >= amount2, "Insufficient balance of Token2");
        require(amount1 == amount2, "Amounts must be the same");

        // Transfer tokens from the sender to the contract
        token1.transferFrom(msg.sender, address(this), amount1);
        token2.transferFrom(msg.sender, address(this), amount2);

        // Transfer swapped tokens back to the sender
        token1.transfer(msg.sender, amount2);
        token2.transfer(msg.sender, amount1);

        emit TokensSwapped(msg.sender, amount1, amount2);
    }

    function getContractBalance() external view returns (uint256 balance1, uint256 balance2) {
        balance1 = token1.balanceOf(address(this));
        balance2 = token2.balanceOf(address(this));
    }
}

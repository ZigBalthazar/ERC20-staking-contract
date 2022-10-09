//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

    import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract staking{
    IERC20 public stakingToken;
    constructor(address tokenAddress){
        stakingToken = IERC20(tokenAddress);
    }

    function stake(uint256 tokenAmount) external {
        
    }
}
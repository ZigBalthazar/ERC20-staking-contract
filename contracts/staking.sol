//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

    import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
    import "@openzeppelin/contracts/utils/Context.sol";


contract staking is Context{
    IERC20 public stakingToken;
    mapping(address => uint256) public balances;
    uint256 public totalSupply;

    constructor(address tokenAddress){
        stakingToken = IERC20(tokenAddress);
    }

    function stake(uint256 tokenAmount) external {
       require(stakingToken.transferFrom(_msgSender(),address(this),tokenAmount));

        balances[_msgSender()] += tokenAmount;
        totalSupply += tokenAmount;
    }

    
}
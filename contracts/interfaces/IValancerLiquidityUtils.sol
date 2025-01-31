// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IValancerLiquidityUtils {
    
    
    function checkTokenLiquidity(address token)
        external
        view
        returns(bool);
        
    function getPriceMultiplierOverTime()
        external
        view
        returns (uint);
    
    
    function getLiquidity(address pairContract, address tokenL, address tokenR)
        external
        view
        returns (uint, uint, address, address);
    
    function getTokenPrice(address token)
        external
        view
        returns (uint);
        
    function getValancerBuyAmount(uint balanceV, uint tokenBalanceWithPrice)
        external
        pure
        returns (uint);
}

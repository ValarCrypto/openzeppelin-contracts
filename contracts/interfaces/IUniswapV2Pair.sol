// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IUniswapV2Pair {
    
    function sync()
        external;
        
    function getReserves()
        external
        view
        returns (uint, uint, uint32);
        
    function token0()
        external
        view
        returns (address);
        
    function token1()
        external
        view
        returns (address);
        
    function mint(address to) 
        external
        returns (uint);
}

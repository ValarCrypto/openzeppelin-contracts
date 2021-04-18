// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IValancerLiquidityFactory {
    
    function listPairContracts(uint offset, uint limit)
        external
        view
        returns(address[] memory);
        
    function getLiquidityContractByPos(uint pos)
        external
        view
        returns(address);
        
    function getPairContractByPos(uint pos)
        external
        view
        returns(address);
}

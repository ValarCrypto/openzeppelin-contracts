// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


struct PairInfo {
    address pairContract;
    address tokenR;
}

interface IValancerLiquidity {
    function pairInfo()
        external
        view
        returns (PairInfo memory);
}

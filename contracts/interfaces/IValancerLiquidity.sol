// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IValancerLiquidity {
    function pairContract()
        external
        view
        returns (address);
}

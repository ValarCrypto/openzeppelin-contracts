// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../../../access/IAccessControlEnumerable.sol";
import "../../../access/IAccessControl.sol";

/**
 * @dev {ERC20} token, including:
 *
 *  - ability for holders to burn (destroy) their tokens
 *  - a minter role that allows for token minting (creation)
 *  - a pauser role that allows to stop all token transfers
 *
 * This contract uses {AccessControl} to lock permissioned functions using the
 * different roles - head to its documentation for details.
 *
 * The account that deploys the contract will be granted the minter and pauser
 * roles, as well as the default admin role, which will let it grant both minter
 * and pauser roles to other accounts.
 */
interface IValancerToken is IERC20, IAccessControlEnumerable, IAccessControl {

    function getMainAndPegTokens()
        external
        view
        returns(address, address);
        
    function updateMainAndPegTokens(address _mainToken, address _pegToken)
        external;       

    function updateValancerContracts(address[] memory _valancerContracts)
        external;
    
    function getValancerContractAtPos(uint pos)
        external
        view
        returns (address);
    
    function getValancerContractsCount()
        external
        view
        returns(uint);
        
        


    /**
     * @dev Creates `amount` new tokens for `to`.
     *
     * See {ERC20-_mint}.
     *
     * Requirements:
     *
     * - the caller must have the `MINTER_ROLE`.
     */
    function mint(address to, uint256 amount) external;

    /**
     * @dev Burns `amount` new tokens for `to`.
     *
     * See {ERC20-_burn}.
     *
     * Requirements:
     *
     * - the caller must have the `BURNER_ROLE`.
     */
    function burn(address to, uint256 amount) external;
}

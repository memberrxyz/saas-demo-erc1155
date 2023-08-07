// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

contract MemberrSaasDemoToken is 
    ERC1155,
    ERC1155Supply,
    Ownable,
    AccessControl
{
    //bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant URI_SETTER_ROLE = keccak256("URI_SETTER_ROLE");
    string private _contractUri;

    constructor(
        string memory contractUri,
        string memory tokenUri
    ) ERC1155(tokenUri) {
        _setContractURI(contractUri);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(URI_SETTER_ROLE, msg.sender);
        //_grantRole(MINTER_ROLE, msg.sender);
    }

    function contractURI() public view returns (string memory) {
        return _contractUri;
    }

    function setContractURI(
        string memory newContractUri
    )
        public
        onlyRole(URI_SETTER_ROLE)
    {
        _setContractURI(newContractUri);
    }

    function _setContractURI(
        string memory newContractUri
    ) 
        internal 
        virtual 
    {
        _contractUri = newContractUri;
    }

    function setTokenURI(
        string memory newuri
    )
        public
        onlyRole(URI_SETTER_ROLE)
    {
        _setURI(newuri);
    }

    function mint(
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
    )
        public
    {
        _mint(to, id, amount, data);
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    )
        public
    {
        _mintBatch(to, ids, amounts, data);
    }



    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    )
        internal
        override(ERC1155, ERC1155Supply)
    {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }

    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        override(ERC1155, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

}
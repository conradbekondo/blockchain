// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.24;

// import '@openzeppelin/contracts/utils/Counters.sol';
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol';

contract RealEstate is ERC721URIStorage {
    uint256 private idGenerator;

    constructor() ERC721('Real Estate', 'Real') {}

    function mint() public returns (uint256) {
        idGenerator++;

        uint256 newItemId = idGenerator;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI(newItemId));

        return newItemId;
    }

    function totalSupply() public view returns (uint256) {
        return idGenerator;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./ERC4907.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract RentableMonkey is ERC4907 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC4907("RentableMonkey", "RM") {}

    function mint(string memory _tokenURI) public {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, _tokenURI);
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }
}

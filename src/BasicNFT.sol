// SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import "@openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokencounter;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Dogie", "DOG") {
        s_tokencounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokencounter] = tokenUri;
        _safeMint(msg.sender, s_tokencounter);
        s_tokencounter++;
    }

    function tokenURI(uint256 tokenID) public view override returns (string memory) {
        return s_tokenIdToUri[tokenID];
    }
}

pragma solidity ^0.8.0;

contract MyNFT {
    // Smart contract code here
}
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint public tokenCount;

    constructor() ERC721("MyNFT", "MNFT") {}

    function mint() external {
        tokenCount++;
        _safeMint(msg.sender, tokenCount);
    }
}

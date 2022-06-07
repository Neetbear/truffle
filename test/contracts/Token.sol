// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/security/Pausable.sol";
import "openzeppelin-solidity/contracts/access/Ownable.sol";

contract BrownieToken is ERC20, ERC20Burnable, Pausable, Ownable {
    constructor() ERC20("BrownieToken", "BTK") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
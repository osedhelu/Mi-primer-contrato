// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
import "./ERC20.sol";
import "./extencion/ERC20Burnable.sol";
import "./extencion/Ownable.sol";
import "./extencion/Pausable.sol";

contract osedhelu is ERC20, ERC20Burnable, Pausable, Ownable {
    constructor() ERC20("osedhelu", "osd") {
        _mint(msg.sender, 1000000 * 10**decimals());
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

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, amount);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../ERC20.sol";
import "./Context.sol";

/**
 * @dev Extensión de {ERC20} que permite a los poseedores de tokens destruir los suyos
 * tokens y aquellos para los que tienen una asignación, de una manera que puede ser
 * reconocido fuera de la cadena (a través del análisis de eventos).
 */
abstract contract ERC20Burnable is Context, ERC20 {
  
/**
* @dev Destruye los tokens de "cantidad" de la persona que llama.
*
* Consulte {ERC20-_burn}.
*/
    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

/**
     * @dev Destruye los tokens de "cantidad" de la "cuenta", deduciéndolos de los de la persona que llama.
     * prestación.
     *
     * Consulte {ERC20-_burn} y {ERC20-allowance}.
     *
     * Requisitos:
     *
     * - la persona que llama debe tener una asignación para los tokens de las `` cuentas '' de al menos
     * `monto`.
     */
    function burnFrom(address account, uint256 amount) public virtual {
        uint256 currentAllowance = allowance(account, _msgSender());
        require(currentAllowance >= amount, "ERC20: burn amount exceeds allowance");
        _approve(account, _msgSender(), currentAllowance - amount);
        _burn(account, amount);
    }
}
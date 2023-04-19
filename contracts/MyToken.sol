// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    // Se debe cambiar "mytoken" por el nombre que se le quiera otorgar al token
    // Se cambia el MTK por una abreviatura del nombre del token
    constructor() ERC20("MasteryCertificado", "MCBNB") {
         // Se debe agregar 18 ceros a la cantidad de tokens deseados por la unidad minima 
        // del eth, es decir wei. (se hara en base a 1000)
        _mint(msg.sender, 1000000000000000000000);
    }
}

// La wallet usada para desplegar el contrato es la dueña de las llaves privadas del contrato
// En el modo deploy, al desplegar el contrato y mostrar las opciones
// Las de casilla azul son publicas y las de casilla amarilla privadas.
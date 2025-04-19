//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract Example{

    function logplace() public view placeextension{
        console.log("Middle");
    }

    modifier placeextension{
        console.log("Upper");
        _;
        console.log("Lower");
    }
}
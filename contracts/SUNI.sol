// contracts/SUNI.sol

// Copyright 2024 UniSynth and affiliates. All rights reserved.
// SPDX-License-Identifier: UNLICENCED

pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/*
UniSynth is a decentralized synthetic exchange that enables the 
trading of synthetic digital assets. 

SUNI is the cryptocurrency the UniSynth protocol will use as
a governace token. In the future the UniSynth protocol shall be
governed by SUNI holders in proportion to how much SUNI they own. 

The tokenomics of this token are yet to be announced & subject to
change.

email: admin@UniSynth.org
url: www.UniSynth.org
twitter: @unicorn-synth

*/
contract SUNI is ERC20, Ownable {
    
    constructor()
        Ownable(msg.sender) 
        ERC20("SyntheticUniSwapToken", "SUNI") {
    }

    // only the owner can mint.
    function mint(address account, uint256 value) external onlyOwner {
        _mint(account, value);
    }

    // only the owner can burn.
    function burn(address account, uint256 value) external onlyOwner {
        _burn(account, value);
    }
}

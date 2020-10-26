// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../DigitalaxGenesisNFT.sol";

contract DigitalaxGenesisNFTMock is DigitalaxGenesisNFT {
    uint256 public nowOverride;

    constructor(
        DigitalaxAccessControls _accessControls,
        address payable _fundsMultisig,
        uint256 _genesisStart,
        uint256 _genesisEnd,
        string memory _tokenURI
    )
    DigitalaxGenesisNFT(_accessControls, _fundsMultisig, _genesisStart, _genesisEnd, _tokenURI)
    public {}

    function setNowOverride(uint256 _now) external {
        nowOverride = _now;
    }

    function _getNow() internal override view returns (uint256) {
        return nowOverride;
    }
}

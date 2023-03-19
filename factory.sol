//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

import "./sbt.sol";


contract Factory{
    mapping (string => address) private _plugs;

    function createPlug(string memory institution, string memory doc_name, address own) external {
        ObjectCertificates soulbound = new ObjectCertificates(institution, doc_name, own);
        _plugs[institution] = address(soulbound);
    }
    
    function GetPlug(string memory authority_name) public view returns(address) {
        return _plugs[authority_name];
    }
 
}
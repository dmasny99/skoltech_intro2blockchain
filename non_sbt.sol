// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract ObjectCertificates is ERC721URIStorage  {
    // Creating instance for identifiying coin creator
    address master;
    
    // Creating hash-map for our objects
    mapping(address => string) public person_to_object;
    mapping(address => bool) public certificate_object;
    
    // Creating counter object
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor(string memory institution, string memory document_name, address own) ERC721(institution,  document_name) {
        master = own;
    }



    function claimCertificate(string memory tokenURI) public returns (uint256) {
        require(certificate_object[msg.sender], "Sertificate is not issued");

        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        person_to_object[msg.sender] = tokenURI;
        certificate_object[msg.sender] = false;

        return newItemId;
    }
    
    function checkCertOfPerson(address person) external view returns (string memory) {
        return person_to_object[person];
    }

    // Creating modifier to identify coin-creator
    modifier onlyMaster() {
        require(msg.sender == master);
        _;
    }


    function issueCertificate(address to) onlyMaster external {
        certificate_object[to] = true;
    }
}



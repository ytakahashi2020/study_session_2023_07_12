// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    function store(uint256 num) public virtual {}
    function retrieve() public view virtual returns (uint256) {}
}

contract StorageCaller {
    address private storageContract;

    constructor(address _storageContractAddress) {
        storageContract = _storageContractAddress;
    }

    function callStore(uint256 num) public {
        Storage(storageContract).store(num);
    }

    function callRetrieve() public view returns (uint256) {
        return Storage(storageContract).retrieve();
    }
}
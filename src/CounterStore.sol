// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library CounterStore {
    /// @dev ERC-7201-style namespaced storage slot.
    bytes32 internal constant STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256("counter.storage")) - 1)) &
            ~bytes32(uint256(0xff));

    struct Storage {
        uint256 number;
    }

    function getStorage() internal pure returns (Storage storage $) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }
}

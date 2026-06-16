// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

// libraries
import {CounterStore} from "./CounterStore.sol";

contract Counter {
    using CounterStore for CounterStore.Storage;

    function number() external view returns (uint256) {
        return CounterStore.getStorage().number;
    }

    function setNumber(uint256 newNumber) external {
        CounterStore.getStorage().number = newNumber;
    }

    function increment() external {
        CounterStore.getStorage().number++;
    }
}

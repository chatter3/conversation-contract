// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {Inbox} from "../contracts/Inbox.sol";

contract InboxTest is Test {
    Inbox public inbox;
    event MessageSent(bytes32 recipient, string message);

    function setUp() public {
        inbox = new Inbox();
    }

    function testSendMessage() public {
        vm.expectEmit(true, true, false, true);
        emit MessageSent(0, "hi");
        inbox.sendMessage(0, "hi");
    }
}

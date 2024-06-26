// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test, console } from "forge-std/Test.sol";
import { Calendar } from "../src/Calendar.sol";

contract CalendarTest is Test {
  Calendar calendar;
  address owner;
  address user1;
  address user2;

  string title1Event = "event 1";
  string coverImage = "test1";

  function setUp() public {
    calendar = new Calendar();
    owner = vm.addr(1);
    user1 = vm.addr(2);
    user2 = vm.addr(3);
  }

  function test_Create_Event_Store_Title() public {
    calendar.createEventStore(title1Event, coverImage);
    Calendar.EventTitle[] memory events = calendar.getEventTitle();
    console.log("tesrt", events[0].title);
  }
}
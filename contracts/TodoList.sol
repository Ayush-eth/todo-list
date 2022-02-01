// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping (uint => Task ) public tasks;

    event Taskcreated(
        uint id,
        string content,
        bool completed
    );

    constructor() public{
        createTask("Build 1st Blockchain Project");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount,_content,false);
        emit Taskcreated(taskCount, _content, false);
    }
} 
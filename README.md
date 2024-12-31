# Hack Runtime Error: Null Passed to Function Expecting Int

This repository demonstrates a subtle runtime error in Hack that can occur when a nullable type (`?int`) is passed to a function expecting a non-nullable type (`int`).  The Hack type checker doesn't always fully propagate null possibilities, leading to unexpected runtime exceptions.

The `bug.hack` file contains the problematic code.  The `bugSolution.hack` file shows a corrected version that handles null values gracefully.

This example highlights the importance of careful null handling in Hack, especially when dealing with functions and nullable types.
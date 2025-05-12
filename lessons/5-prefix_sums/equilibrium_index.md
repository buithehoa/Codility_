# Equilibrium Index Problem

## Problem Statement:

An equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at higher indexes.

Given an array of integers, find all equilibrium indices in the array.

For example, in the array A = [-7, 1, 5, 2, -4, 3, 0]:
- At index 3 (value 2): Sum of elements at lower indexes = -7 + 1 + 5 = -1, and sum of elements at higher indexes = -4 + 3 + 0 = -1.
- At index 6 (value 0): Sum of elements at lower indexes = -7 + 1 + 5 + 2 + -4 + 3 = 0, and sum of elements at higher indexes = 0 (as there are no elements to the right).

Your task is to write a function that returns all equilibrium indices in the given array.

## Input:
- An array of integers. The array may contain both positive and negative integers.
- The size of the array can range from 1 to 10^5.

## Output:
- A list of all equilibrium indices, sorted in ascending order.
- If no equilibrium index exists, return an empty list.

Note: For this problem, an equilibrium index can also occur if there are no elements on one side (i.e., at the first or last position of the array).


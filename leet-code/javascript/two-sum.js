/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
  const hash = { [nums[0]]: 0 };

  for (let i = 1; i < nums.length; i++) {
      if (hash[target - nums[i]] !== undefined) {
          return [hash[target - nums[i]], i];
      }

      hash[nums[i]] = i;
  }
};

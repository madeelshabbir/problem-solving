/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {
  let hash = {};
  let max = 0;
  let cur = -1;

  for (let i =  0 ; i < s.length; i++) {
      if (hash[s[i]] >= cur) {
          cur = hash[s[i]];
      }

      max = Math.max(max, i - cur);
      hash[s[i]] = i;
  }

  return max;
};

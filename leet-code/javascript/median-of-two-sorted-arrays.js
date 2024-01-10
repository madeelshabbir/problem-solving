/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findMedianSortedArrays = function(nums1, nums2) {
  const length = nums1.length + nums2.length;
  const single = Boolean(length % 2);
  const mid = Math.floor(length / 2);
  let j = 0;
  let k = 0;
  let last = 0;

  for (let i = 0; i <= mid; i++) {
      if (j >= nums1.length) {
          if (i === mid) return single ? nums2[k] : (last + nums2[k]) / 2;
          last = nums2[k++];
      } else if (k >= nums2.length) {
          if (i === mid) return single ? nums1[j] : (last + nums1[j]) / 2;
          last = nums1[j++];
      } else if (nums1[j] > nums2[k]) {
          if (i === mid) return single ? nums2[k] : (last + nums2[k]) / 2;
          last = nums2[k++];
      } else {
          if (i === mid) return single ? nums1[j] : (last + nums1[j]) / 2;
          last = nums1[j++];
      }
  }
};

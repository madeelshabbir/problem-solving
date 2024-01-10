/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
  let carry = 0;
  let nodeA = l1;
  let nodeB = l2;
  let result, prev;

  while ((nodeA && nodeB) || carry) {
      const sum = carry + (nodeA ? nodeA.val : 0) + (nodeB ? nodeB.val : 0);
      carry = Math.floor(sum / 10);

      if (!prev) {
          result = new ListNode(sum % 10, null);
          prev = result;
      } else {
          prev.next = new ListNode(sum % 10, null);
          prev = prev.next;
      }

      if (nodeA) nodeA = nodeA.next;
      if (nodeB) nodeB = nodeB.next;
  }

  if (nodeA) {
      prev.next = nodeA;
  } else if (nodeB) {
      prev.next = nodeB;
  }

  return result;
};

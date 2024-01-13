/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} n
 * @return {ListNode}
 */

const printIndex = (node, n) => {
  if (!node) return 0;

  const length = printIndex(node.next, n) + 1;

  if (length === n + 1) node.next = node.next.next;

  return length;
}

var removeNthFromEnd = function(head, n) {
  if (!head.next) return null;

  const length = printIndex(head, n);

  if (length === n) return head.next;

  return head;
};

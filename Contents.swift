import UIKit

//Linked list (THE BASICS)
class Node {
  var value: Int
  var next: Node?
  init(_ value: Int) {
    self.value = value
  }
}

func printNodeValues(node: Node?) {
  var node = node
  while let currentNode = node {
    print(currentNode.value)
    node = currentNode.next // moving to the next node using the `next` pointer
  }
}

func reverseList(_ node: Node?) -> Node? {
  var node = node
  var previousNode: Node?
  var nextNode: Node?
  while let currentNode = node {
    nextNode = currentNode.next
    currentNode.next = previousNode
    previousNode = currentNode
    node = nextNode
  }
  return previousNode
}

printNodeValues(node: reverseList(node1))

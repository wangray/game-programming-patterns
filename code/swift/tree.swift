public class TreeNode {
 public var val: Int
 public var left: TreeNode?
 public var right: TreeNode?
 public init() { self.val = 0; self.left = nil; self.right = nil; }
 public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
     self.val = val
     self.left = left
     self.right = right
 }
}

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()

        visit(result: &result, node: root);

        return result;
    }

    func visit(result: inout [Int], node: TreeNode?) {
        if let node = node {
            result.append(node.val)

            visit(result: &result, node: node.left)
            visit(result: &result, node: node.right)
        }
    }
}

func main() {
    let s = Solution()
    let root: TreeNode? = TreeNode(5)
    let res = s.preorderTraversal(root)
    print("res, \(res)")
}

main()
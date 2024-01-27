class Solution(object):
    def searchRange(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        out = []
        if target in nums:
            for i, num in enumerate(nums):
                if target == num:
                    out.append(i)
                    break
            for i, num in enumerate(nums[::-1], -len(nums)+1):
                if target == num:
                    out.append(-i)
                    return out
        else:
            return [-1, -1]
            
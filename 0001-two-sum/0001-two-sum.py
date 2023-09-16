class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        d = {}
        for i, j in enumerate(nums):
            temp = target - j
            if temp in d:
                return [d[temp], i]
            else:
                d[j] = i
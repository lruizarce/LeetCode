class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        seen = {}
        
        for i in range(len(nums)):
            remainder = target - nums[i]
            if remainder in seen:
                return [seen[remainder], i]
            else:
                seen[nums[i]] = i
        return None
    
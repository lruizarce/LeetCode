class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        # first find the smallest value and keep track of the index
        
        l = 0
        r = 1
        maxP = 0
        
        while r < len(prices):
            if prices[l] < prices[r]:
                currP = prices[r] - prices[l]
                maxP = max(currP, maxP)
            else:
                l = r
            r +=1
        return maxP
                
            
            
            
            
class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        l,r = 0, len(s) -1 # start the left pointer at idx 0 and right pointer at the end 
        while l < r: # while they don't overlap
            while l < r and not self.isAlphaNum(s[l]): # if it is not an alpha numeric number
                l +=1 
            while r > l and not self.isAlphaNum(s[r]): # if it is not an alpha numeric number
                r -=1 
            if s[l].lower() != s[r].lower():
                return False
            l, r = l +1, r-1
        return True

    def isAlphaNum(self, c):
            return (ord("A") <= ord(c) <= ord("Z") or
                    ord("a") <= ord(c) <= ord("z") or
                    ord('0') <= ord(c) <= ord("9"))
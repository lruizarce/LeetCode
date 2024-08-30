class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        sCount = {}
        tCount = {}
        
        for char in range(len(s)):
            sCount[s[char]] = 1 +  sCount.get(s[char],0)
            tCount[t[char]] = 1 + tCount.get(t[char],0)
        return sCount == tCount
        
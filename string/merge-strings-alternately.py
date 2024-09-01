class Solution(object):
    def mergeAlternately(self, word1, word2):
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """ 
        result = []
        w1Idx, w2Idx = 0, 0
        
        # Iterate over both strings while there are characters in both
        while w1Idx < len(word1) and w2Idx < len(word2):
            result.append(word1[w1Idx])
            result.append(word2[w2Idx])
            w1Idx += 1
            w2Idx += 1
        
        # Append the remaining part of the longer string
        result.append(word1[w1Idx:])
        result.append(word2[w2Idx:])
        
        # Join the list into a final string
        return ''.join(result)
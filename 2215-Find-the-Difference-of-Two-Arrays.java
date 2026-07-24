import java.util.*;

class Solution {
    public List<List<Integer>> findDifference(int[] nums1, int[] nums2) {

        List<Integer> l1 = new ArrayList<>();
        List<Integer> l2 = new ArrayList<>();

        boolean there1;
        boolean there2;

        // Elements in nums1 but not in nums2
        for (int i = 0; i < nums1.length; i++) {
            there1 = false;

            for (int j = 0; j < nums2.length; j++) {
                if (nums1[i] == nums2[j]) {
                    there1 = true;
                    break;
                }
            }

            if (!there1) {
                l1.add(nums1[i]);
            }
        }

        // Elements in nums2 but not in nums1
        for (int i = 0; i < nums2.length; i++) {
            there2 = false;

            for (int j = 0; j < nums1.length; j++) {
                if (nums2[i] == nums1[j]) {
                    there2 = true;
                    break;
                }
            }

            if (!there2) {
                l2.add(nums2[i]);
            }
        }

        // Remove duplicates
        Set<Integer> set1 = new HashSet<>(l1);
        Set<Integer> set2 = new HashSet<>(l2);

        // Convert back to lists
        l1 = new ArrayList<>(set1);
        l2 = new ArrayList<>(set2);

        // Create answer
        List<List<Integer>> ans = new ArrayList<>();
        ans.add(l1);
        ans.add(l2);

        return ans;
    }
}
class Solution {
    public void moveZeroes(int[] nums) {
        ArrayList<Integer> arr = new ArrayList<>();
        int zeroCount = 0;

        for (int x : nums) {
            if (x != 0)
                arr.add(x);
            else
                zeroCount++;
        }

        while (zeroCount > 0) {
            arr.add(0);
            zeroCount--;
        }

        for (int i = 0; i < nums.length; i++) {
            nums[i] = arr.get(i);
        }
    }
}
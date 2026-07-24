class Solution {
    public boolean uniqueOccurrences(int[] arr) {
        HashMap<Integer, Integer> occ = new HashMap<>();
       
  for (int x : arr) {
    occ.put(x, occ.getOrDefault(x, 0) + 1);
}
        
for (Map.Entry<Integer, Integer> entry1 : occ.entrySet()) {
    for (Map.Entry<Integer, Integer> entry2 : occ.entrySet()) {

        if (!entry1.getKey().equals(entry2.getKey()) &&
            entry1.getValue().equals(entry2.getValue())) {

            return false; 
        }
    }
}

return true;
    }
}
class Solution {
    public String reverseVowels(String s) {

        int i = 0, j = s.length() - 1;
        char[] arr = s.toCharArray();

        while (i < j) {

            while (i < j &&
                  Character.toLowerCase(arr[i]) != 'a' &&
                  Character.toLowerCase(arr[i]) != 'e' &&
                  Character.toLowerCase(arr[i]) != 'i' &&
                  Character.toLowerCase(arr[i]) != 'o' &&
                  Character.toLowerCase(arr[i]) != 'u') {
                i++;
            }

            while (i < j &&
                  Character.toLowerCase(arr[j]) != 'a' &&
                  Character.toLowerCase(arr[j]) != 'e' &&
                  Character.toLowerCase(arr[j]) != 'i' &&
                  Character.toLowerCase(arr[j]) != 'o' &&
                  Character.toLowerCase(arr[j]) != 'u') {
                j--;
            }

            char temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;

            i++;
            j--;
        }

        return new String(arr);
    }
}
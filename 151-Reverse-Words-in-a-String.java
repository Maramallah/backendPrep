class Solution {
    public String reverseWords(String s) {

        StringBuilder x = new StringBuilder();
        s = s.trim();

        int end = s.length();

        for (int i = s.length() - 1; i >= 0; i--) {

            if (s.charAt(i) == ' ') {

                
                if (i == end - 1) {
                    continue;
                }

                x.append(s.substring(i + 1, end));
                x.append(" ");

                
                while (i >= 0 && s.charAt(i) == ' ') {
                    i--;
                }

                end = i + 1;
            }
        }

        x.append(s.substring(0, end));

        return x.toString();
    }
}
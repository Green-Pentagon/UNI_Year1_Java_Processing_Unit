public class Ex4PowerTable {
    public static void main(String[] args){
        int LENGTH = 12;
        int[][] contents = new int[3][LENGTH];

        for (int row = 0; row< LENGTH;row++){
            for ( int column = 0; column< 3;column++){
                contents[column][row] = (int)Math.pow((row+1), column+1);//works out value of row+1 ^ column+1
                //OPTIONAL: pad output text
                System.out.print(contents[column][row] + " | ");
            }
            System.out.println();
        }
    }
}

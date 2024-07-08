public class PatternGenerator {
    char patternChar = '@';

    public void printPattern(int rows){
        printPattern(rows , 1);
    }
    public void printPattern(int rows , int cols){
        for (int c_row = 0 ;c_row<rows;c_row++){
            for (int c_col = 0; c_col < cols; c_col++){
                System.out.print(patternChar);
            }
            System.out.println();
        }
    }
    public void printPattern(int rows, char patternChar){
        this.patternChar = patternChar;
        printPattern(rows);
    }
    public void printPattern(int rows , int cols , char patternChar){
        this.patternChar = patternChar;
        printPattern(rows , cols);
    }
}

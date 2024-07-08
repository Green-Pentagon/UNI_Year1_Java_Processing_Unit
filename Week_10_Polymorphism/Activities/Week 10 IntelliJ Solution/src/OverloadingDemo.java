public class OverloadingDemo {



    public static void main(String[] args) {
        PatternGenerator printer = new PatternGenerator();
        printer.printPattern(4);
        printer.printPattern(5,5);
        printer.printPattern(2,15,'!');
        printer.printPattern(3,'#');
    }


}

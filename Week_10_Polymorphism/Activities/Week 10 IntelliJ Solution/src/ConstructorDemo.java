public class ConstructorDemo {
    public static void main(String[] args) {
        Movie movie1 = new Movie("Avatar: World of Water",2022);
        Movie movie2 = new Movie("The Blues Brothers 2000", 2000, 120);
        Movie movie3 = new Movie("The Incredibles", 2004,180, 8.8);
        System.out.print(movie1 + "\n\n" + movie2 + "\n\n" + movie3);
    }
}

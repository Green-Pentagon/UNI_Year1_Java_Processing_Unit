public class Movie {
    private String name;
    private int yearReleased;

    private int lengthMinutes;

    private double imdbRating;
    //======================================
    public Movie(String name){
        this.name = name;
    }
    public  Movie(String name, int yearReleased){
        this(name);
        this.yearReleased = yearReleased;
    }
    public Movie(String name, int yearReleased, int lengthMinutes){
        this(name,lengthMinutes);
        this.lengthMinutes = lengthMinutes;
    }
    public Movie(String name, int yearReleased, int lengthMinutes, double imdbRating){
        this(name, yearReleased,lengthMinutes);
        this.imdbRating = imdbRating;
    }
    //======================================
    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (name.length() > 0 && name.length() <= 100){this.name = name;}
    }

    public int getLengthMinutes() {
        return lengthMinutes;
    }

    public void setLengthMinutes(int lengthMinutes) {
        if(lengthMinutes>=0 && lengthMinutes<=240){this.lengthMinutes = lengthMinutes;}
    }

    public int getYearReleased() {
        return yearReleased;
    }

    public void setYearReleased(int yearReleased) {
        if(yearReleased >= 1900 && yearReleased <= 2024){this.yearReleased = yearReleased;}
    }

    public double getImdbRating() {
        return imdbRating;
    }

    public void setImdbRating(double imdbRating) {
        if(imdbRating>=0.0 && imdbRating <=10.0){this.imdbRating = imdbRating;}
    }
    //--------------------------------------
    @Override
    public String toString(){
        return ("---" + name + "---\nLength: "+lengthMinutes +" mins\nYear Released: "+ yearReleased + "\nIMDB Rating: "+imdbRating);
    }
    //--------------------------------------
}

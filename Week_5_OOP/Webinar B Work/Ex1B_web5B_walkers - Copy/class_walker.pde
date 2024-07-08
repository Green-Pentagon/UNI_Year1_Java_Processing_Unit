class Walker{
  private int x;
  private int y;
  private int size[] = {100,100};                     //the width & height respectvely
  private int frames = 4;                             //number of frames in the animation, minus
  private int current_frame = 0;                      //current frame the walker is set to display
  private PImage[] sequence;                          //indexing starts at 0.
  private String[] seq_name = {"walk",".gif"};        //seq_name includes {name (without number) , file extension} //<>//
  
  //NOTES:
  //there are 4 frames in the provided animation for the exercise
  
  //=======================================================
  public Walker(int x, int y){
    sequence = new PImage[frames];
    this.x = x;
    this.y = y;
    LoadAnimSequence();
    imageMode(CENTER);
  }
  
  //FIND OUT WHY THIS METHOD DOES NOT WORK IN JAVA (WORKS WITH VB)
  
  //public Walker(int x, int y, int w, int h){
  //  size[0] = w;
  //  size[1] = h;
  //  Walker(x,y);
  //}
  
  
  
  //-------------------------------------------------------
  public int GetFrameAmount(){return frames;}
  public int GetCurrentFrame(){return current_frame;}
  //-------------------------------------------------------
  private void LoadAnimSequence(){
    String filename;
    for (int i = 0; i<frames;i++){
      filename = seq_name[0] + str(i + 1) + seq_name[1] ; //<>//
      sequence[i] = loadImage(filename); //<>//
      sequence[i].resize(size[0],size[1]);
    }
  }  
  
  ////REMOVE THIS LATER
  //private void Resize(int w, int h){
  //  //Yes, I know this isn't as efficient as setting the size in the constructor
  //  for (int i = 0; i<frames;i++){
  //    sequence[i].resize(w,h);
  //    size[0] = w;
  //    size[1] = h;
  //  }
  //}
  
  //-------------------------------------------------------
  public void DrawWalkerFrame(){
    //Renders a single frame of the walker and increments the current_frame variable
    Render(current_frame);
    NextFrame();
  }
  private void NextFrame(){
    if (current_frame >= (frames-1)){
      current_frame = 0;
    }else{
      current_frame += 1;
    }
  }
  private void Render(int frame){
    image(sequence[frame] , x , y);
  }
  //=======================================================
}

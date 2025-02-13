import java.util.Scanner;

public class jvsquare {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);

    System.out.print("Height: ");
    int height = scan.nextInt();

    System.out.print("Width: ");
    int width = scan.nextInt();

    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        System.out.print("#");
      }
      System.out.println();
    }

    scan.close();
  }
}
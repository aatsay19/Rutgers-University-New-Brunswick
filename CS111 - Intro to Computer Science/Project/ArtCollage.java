/*************************************************************************
 *  Compilation:  javac ArtCollage.java
 *  Execution:    java ArtCollage
 *
 *  @author: Aatif Sayed
 *           E-mail: as3259@scarletmail.rutgers.edu
 *
 *************************************************************************/

import java.awt.Color;

public class ArtCollage {

    // The orginal picture
    private Picture original;

    // The collage picture
    private Picture collage;

    // The collage Picture consists of collageDimension X collageDimension tiles
    private int collageDimension;

    // A tile consists of tileDimension X tileDimension pixels
    private int tileDimension;
    
    /*
     * One-argument Constructor
     * 1. set default values of collageDimension to 4 and tileDimension to 100
     * 2. initializes original with the filename image
     * 3. initializes collage as a Picture of tileDimension*collageDimension x tileDimension*collageDimension, 
     *    where each pixel is black (see all constructors for the Picture class).
     * 4. update collage to be a scaled version of original (see scaling filter on Week 9 slides)
     *
     * @param filename the image filename
     */
    public ArtCollage (String filename) {
        collageDimension = 4;
        tileDimension = 100;

        original = new Picture(filename);

        int rowOrColumnArea = tileDimension * collageDimension;
        collage = new Picture(rowOrColumnArea, rowOrColumnArea);
        for (int i = 0; i < rowOrColumnArea; i++) {
            for (int j = 0; j < rowOrColumnArea; j++) {
                int a = i * original.width() / rowOrColumnArea;
                int b = j * original.height() / rowOrColumnArea;
                Color pixelColor = original.get(a, b);
                collage.set(i, j, pixelColor);
            }
        }
    }

    /*
     * Three-arguments Constructor
     * 1. set default values of collageDimension to cd and tileDimension to td
     * 2. initializes original with the filename image
     * 3. initializes collage as a Picture of tileDimension*collageDimension x tileDimension*collageDimension, 
     *    where each pixel is black (see all constructors for the Picture class).
     * 4. update collage to be a scaled version of original (see scaling filter on Week 9 slides)
     *
     * @param filename the image filename
     */
    public ArtCollage (String filename, int td, int cd) {
        collageDimension = cd;
        tileDimension = td;

        original = new Picture(filename);

        int rowOrColumnArea = tileDimension * collageDimension;
        collage = new Picture(rowOrColumnArea, rowOrColumnArea);
        for (int i = 0; i < rowOrColumnArea; i++) {
            for (int j = 0; j < rowOrColumnArea; j++) {
                int a = i * original.width() / rowOrColumnArea;
                int b = j * original.height() / rowOrColumnArea;
                Color pixelColor = original.get(a, b);
                collage.set(i, j, pixelColor);
            }
        }
    }

    /*
     * Returns the collageDimension instance variable
     *
     * @return collageDimension
     */
    public int getCollageDimension() {
        return this.collageDimension;
    }

    /*
     * Returns the tileDimension instance variable
     *
     * @return tileDimension
     */
    public int getTileDimension() {
        return this.tileDimension;
    }

    /*
     * Returns original instance variable
     *
     * @return original
     */
    public Picture getOriginalPicture() {
        return this.original;
    }

    /*
     * Returns collage instance variable
     *
     * @return collage
     */
    public Picture getCollagePicture() {
        return this.collage;
    }
    
    /*
     * Display the original image
     * Assumes that original has been initialized
     */
    public void showOriginalPicture() {
        this.original.show();
    }

    /*
     * Display the collage image
     * Assumes that collage has been initialized
     */
    public void showCollagePicture() {
        this.collage.show();
    }

    /*
     * Replaces the tile at collageCol,collageRow with the image from filename
     * Tile (0,0) is the upper leftmost tile
     *
     * @param filename image to replace tile
     * @param collageCol tile column
     * @param collageRow tile row
     */
    public void replaceTile (String filename,  int collageCol, int collageRow) {
        int cd = collageCol * tileDimension;
        int rd = collageRow * tileDimension;
        Picture replacementPicture = new Picture(filename);
        Picture scaledReplacement = new Picture (tileDimension, tileDimension);
        for (int i = 0; i < tileDimension; i++) {
            for (int j = 0; j < tileDimension; j++) {
                int a = i * replacementPicture.width() / tileDimension;
                int b = j * replacementPicture.height() / tileDimension;
                Color pixelColor = replacementPicture.get(a, b);
                scaledReplacement.set(i, j, pixelColor);
            }
        }

        for (int i = 0; i < tileDimension; i++) {
            for (int j = 0; j < tileDimension; j++) {
                Color pixelColor = scaledReplacement.get(i, j);
                collage.set(i + cd, j + rd, pixelColor);
            }
        }
    }
    
    /*
     * Makes a collage of tiles from original Picture
     * original will have collageDimension x collageDimension tiles, each tile
     * has tileDimension X tileDimension pixels
     */
    public void makeCollage () {
        Picture singleTile = new Picture(tileDimension, tileDimension);
        for (int i = 0; i < tileDimension; i++) {
            for (int j = 0; j < tileDimension; j++) {
                int a = i * original.width() / tileDimension;
                int b = j * original.height() / tileDimension;
                Color pixelColor = original.get(a, b);
                singleTile.set(i, j, pixelColor);
            }
        }

        for (int i = 0; i < collage.height(); i++) {
            for (int j = 0; j < collage.width(); j++) {
                int a = i % tileDimension;
                int b = j % tileDimension;
                Color pixelColor = singleTile.get(a, b);
                collage.set(i, j, pixelColor);
            }
        }
    }

    /*
     * Colorizes the tile at (collageCol, collageRow) with component 
     * (see Week 9 slides, the code for color separation is at the 
     *  book's website)
     *
     * @param component is either red, blue or green
     * @param collageCol tile column
     * @param collageRow tile row
     */
    public void colorizeTile (String component,  int collageCol, int collageRow) {
        int cd = collageCol * tileDimension;
        int rd = collageRow * tileDimension;
        for (int i = cd; i < tileDimension + cd; i++) {
            for (int j = rd; j < tileDimension + rd; j++) {
                Color pixelColor = collage.get(i, j);
                int red = pixelColor.getRed();
                int green = pixelColor.getGreen();
                int blue = pixelColor.getBlue();
                Color color;
                if (component.compareTo("red") == 0) {
                    color = new Color(red, 0, 0);
                }
                else if (component.compareTo("green") == 0) {
                    color = new Color(0, green, 0);
                }
                else {
                    color = new Color(0, 0, blue);
                }
                collage.set(i, j, color);
            }
        }
    }

    /*
     * Greyscale tile at (collageCol, collageRow)
     * (see Week 9 slides, the code for luminance is at the book's website)
     *
     * @param collageCol tile column
     * @param collageRow tile row
     */

    public void greyscaleTile (int collageCol, int collageRow) {
        int cd = collageCol * tileDimension;
        int rd = collageRow * tileDimension;
        for (int i = cd; i < tileDimension + cd; i++) {
            for (int j = rd; j < tileDimension + rd; j++) {
                Color pixelColor = collage.get(i, j);
                Color greyscale = Luminance.toGray(pixelColor);
                collage.set(i, j, greyscale);
            }
        }
    }


    // Test client 
    public static void main (String[] args) {
        // ArtCollage art = new ArtCollage(args[0]);
        // art.showCollagePicture();

        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels.
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // art.showCollagePicture();

        // // Creates a default collage of 4x4 tiles. Each default tile dimension is 100x100 pixels.
        // ArtCollage art = new ArtCollage(args[0]);
        // art.makeCollage();
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // // Colorize tile at col 2, row 2 to only show the red component
        // art.colorizeTile("red",2,2);
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // // Colorize tile at col 2, row 1 to only show the blue component
        // art.colorizeTile("blue",2,1);
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // // Colorize tile at col 0, row 0 to only show the green component
        // art.colorizeTile("green",0,0);
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // // Converts the tile at col 1, row 0 from color to greyscale
        // art.greyscaleTile(1, 0);
        // art.showCollagePicture();

        // // Creates a collage of 3x3 tiles. Each tile dimension is 200x200 pixels
        // ArtCollage art = new ArtCollage(args[0], 200, 3);
        // art.makeCollage();
        // // Replace tile at col 1, row 1 with args[1] image
        // art.replaceTile(args[1],1,1);
        // art.showCollagePicture();

        // ArtCollage art = new ArtCollage(args[0], 200, 2);
        // art.makeCollage();
        // // Replace 3 tiles 
        // art.replaceTile(args[1],0,1);
        // art.replaceTile(args[2],1,0);
        // art.replaceTile(args[3],1,1);
        // art.colorizeTile("green",0,0);
        // art.showCollagePicture();
    }
}

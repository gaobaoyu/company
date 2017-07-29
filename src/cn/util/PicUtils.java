package cn.util;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class PicUtils {
	private String srcFile;
	private String descFile;
	private int width;
	private int height;
	private Image img;
	
	public PicUtils(String fileName) throws Exception{
		File _file = new File(fileName);
		this.srcFile = fileName;
		int index = this.srcFile.lastIndexOf(".");
		String ext = this.srcFile.substring(index);
		this.descFile = this.srcFile.substring(0, index)+"_s"+ext;
		img = javax.imageio.ImageIO.read(_file);
		width = img.getWidth(null);
		height = img.getHeight(null);
	}
	
	public void resize(int w,int h) throws IOException{
		BufferedImage _image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		_image.getGraphics().drawImage(img, w, h, null);
		FileOutputStream out = new FileOutputStream(descFile);
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
		encoder.encode(_image);
		out.close();
	}
	
	public void resize(double t) throws IOException{
		int w = (int) (width*t);
		int h = (int) (height*t);
		resize(w,h);
	}
	
	public void resizeByWidgh(int w) throws IOException{
		int h = (int) (height*w/width);
		resize(w,h);
	}
	
	public void resizeByHeight(int h) throws IOException{
		int w  = (int) (width*h/height);
		resize(w,h);
	}
	
	public void resizeFix(int w,int h) throws IOException{
		if(width/height>w/h){
			resizeByWidgh(w);
		}else{
			resizeByHeight(h);
		}
	}

	public void setDescFile(String fileName) throws Exception{
		if(!fileName.endsWith(".jpg")){
			throw new Exception("Dest File Must end with \".jpg\".");
		}
		descFile = fileName;
	}
	
	public String getDescFile() {
		return descFile;
	}

	
	public int getSrcWidth() {
		return width;
	}
	
	public int getSrcHeight() {
		return height;
	}
	
}

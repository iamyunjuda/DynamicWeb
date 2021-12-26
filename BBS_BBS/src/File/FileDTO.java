package File;

public class FileDTO {
	String fileName;
	String fileRealNae;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealNae() {
		return fileRealNae;
	}
	public void setFileRealNae(String fileRealNae) {
		this.fileRealNae = fileRealNae;
	}
	public FileDTO(String fileName, String fileRealNae) {
		super();
		this.fileName = fileName;
		this.fileRealNae = fileRealNae;
	}
	
	 
}

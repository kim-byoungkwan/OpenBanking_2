package kr.ac.kopo.board.reply.vo;

public class BoardReplyVO {
	
	private int boardNo;
	private int reNo;
	private String reWriter;
	private String reContent;
	private String reWriteDate;
	
	@Override
	public String toString() {
		return "BoardReplyVO [boardNo=" + boardNo + ", reNo=" + reNo + ", reWriter=" + reWriter + ", reContent="
				+ reContent + ", reWriteDate=" + reWriteDate + "]";
	}

	public BoardReplyVO() {
		super();
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getReNo() {
		return reNo;
	}
	public void setReNo(int reNo) {
		this.reNo = reNo;
	}
	public String getReWriter() {
		return reWriter;
	}
	public void setReWriter(String reWriter) {
		this.reWriter = reWriter;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public String getReWriteDate() {
		return reWriteDate;
	}
	public void setReWriteDate(String reWriteDate) {
		this.reWriteDate = reWriteDate;
	}
		

	

	

}

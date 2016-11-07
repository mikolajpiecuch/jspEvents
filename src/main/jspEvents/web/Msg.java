package web;

public class Msg {
	private String message = "";
	private EnCommType commType;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public EnCommType getCommType() {
		return commType;
	}
	public void setCommType(EnCommType commType) {
		this.commType = commType;
	}
}

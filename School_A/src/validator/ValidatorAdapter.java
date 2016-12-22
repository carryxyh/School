package validator;

public abstract class ValidatorAdapter {

	private String message = "default validator error message!";

	private String errorCode = "DEFAULT_VALIDATOR";

	public boolean validate(Object o) {
		return true;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
}

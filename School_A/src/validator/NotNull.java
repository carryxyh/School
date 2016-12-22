package validator;

public class NotNull extends ValidatorAdapter {

	@Override
	public boolean validate(Object o) {
		setErrorCode("null parameter");
		setMessage("参数为空");
		return o != null;
	}
}

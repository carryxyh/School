package annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import validator.ValidatorAdapter;

@Target(value = { ElementType.PARAMETER })
@Retention(value = RetentionPolicy.RUNTIME)
public @interface Checker {
	
	public Class<? extends ValidatorAdapter> adapter() default ValidatorAdapter.class;
	
	/**
     * 需要验证的参数名字，不设置按check所在的索引匹配参数
     * @return
     */
    public String name() default "";

    /**
     * 错误编码
     * @return
     */
    public String errorCode() default "";

    /**
     * 错误内容
     * @return
     */
    public String message() default "";
}

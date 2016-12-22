package aspect;

import java.lang.reflect.Method;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class ValidAspect {

	@Around(value = "@annotation(annotation.Validator)")
	public Object dealService(ProceedingJoinPoint joinPoint) throws Throwable {
		System.out.println("signature:" + joinPoint.getSignature().getName());
		System.out.println("kind:" + joinPoint.getKind());
		System.out.println("target:"
				+ joinPoint.getTarget().getClass().getName());

		Object[] objects = joinPoint.getArgs();

		System.out.println("------------------------");
		
		System.out.println("joinPoint的getArgs列表");
		for (Object obj : objects) {
			System.out.println(obj.getClass().getName());
		}
		
		System.out.println("------------------------");

		LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();

		Method[] methods = joinPoint.getTarget().getClass()
				.getDeclaredMethods();
		
		System.out.println("------------------------");
		
		System.out.println("interface中的method列表:");
		for (Method methodInInter : methods) {
			System.out.println(methodInInter.getName());
		}
		System.out.println("------------------------");

		return joinPoint.proceed();
	}
}

package crud.Configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("crud")
public class MyConfigClass {

	@Bean
	EntityManager getEM()
	{
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
	
	@Bean
	ViewResolver resolver()
	{
		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
		resolver.setSuffix(".jsp");
		resolver.setPrefix("frontend/");
		return resolver;
	}
}

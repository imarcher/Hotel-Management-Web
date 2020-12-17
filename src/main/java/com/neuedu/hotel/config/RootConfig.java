package com.neuedu.hotel.config;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@ComponentScan(basePackages = {"com.neuedu.hotel.service"})
@MapperScan("com.neuedu.hotel.mapper")
public class RootConfig {
	
	// ˝æ›‘¥≈‰÷√
	@Bean(destroyMethod = "close")
	public DataSource dataSource() throws PropertyVetoException  {
		ComboPooledDataSource dataSource=new ComboPooledDataSource();
		dataSource.setJdbcUrl("jdbc:mysql://localhost:9000/neuedu");
		dataSource.setDriverClass("com.mysql.jdbc.Driver");
		dataSource.setUser("root");
		dataSource.setPassword("");
		return dataSource;
	}
	
	@Bean
	public DataSourceTransactionManager txManager() throws PropertyVetoException {
		return new  DataSourceTransactionManager(dataSource());
	}

	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean factoryBean=new SqlSessionFactoryBean();
		factoryBean.setDataSource(dataSource());
		return factoryBean.getObject();
	}
	
}

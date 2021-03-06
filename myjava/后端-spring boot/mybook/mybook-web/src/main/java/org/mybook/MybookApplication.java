package org.mybook;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication()
@EnableCaching
@MapperScan(basePackages = "org.mybook.dao.mapper")
@EnableScheduling
public class MybookApplication {
    public static void main(String[] args) {
        SpringApplication.run(MybookApplication.class, args);
    }
}

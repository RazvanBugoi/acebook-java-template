package com.makersacademy.acebook;

import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {

        registry.addViewController("/signup").setViewName("signup");
        registry.addViewController("/badSignUp").setViewName("badSignUp");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/badlogin").setViewName("badlogin");
        registry.addViewController("/logout").setViewName("logout");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/static/");
    }
}
package com.akita.moa.security.config;

import cn.hutool.core.collection.CollUtil;
import com.akita.moa.security.component.JwtAuthenticationTokenFilter;
import com.akita.moa.security.component.RestAuthenticationEntryPoint;
import com.akita.moa.security.component.RestfulAccessDeniedHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.filter.OncePerRequestFilter;

import java.util.List;

public abstract class AbstractWebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        ExpressionUrlAuthorizationConfigurer<HttpSecurity>.ExpressionInterceptUrlRegistry registry = http.authorizeRequests();

        // 不需要保护的资源路径允许访问
        List<String> whiteUrls;
        if (CollUtil.isNotEmpty(whiteUrls = secureWhitelistConfig().getUrls())) {
            for (String url : whiteUrls) {
                registry.antMatchers(url).permitAll();
            }
        }

        // 允许跨域请求的OPTIONS请求
        registry.antMatchers(HttpMethod.OPTIONS)
                .permitAll();
        // 任何请求需要身份认证
        registry.and()
                .authorizeRequests()
                .anyRequest()
                .authenticated()
                // 关闭跨站请求防护及不使用session
                .and()
                .csrf()
                .disable()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                // 自定义权限拒绝处理类
                .and()
                .exceptionHandling()
                .accessDeniedHandler(accessDeniedHandler())
                .authenticationEntryPoint(authenticationEntryPoint())
                // 自定义权限拦截器JWT过滤器
                .and()
                .addFilterBefore(oncePerRequestFilter(), UsernamePasswordAuthenticationFilter.class);
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService())
                .passwordEncoder(passwordEncoder());
    }

    // 白名单
    @Bean
    protected SecureWhitelistConfig secureWhitelistConfig() {
        return new SecureWhitelistConfig();
    }

    // 用来解决认证过的用户访问无权限资源时的异常
    @Bean
    protected AccessDeniedHandler accessDeniedHandler() {
        return new RestfulAccessDeniedHandler();
    }

    // 用来解决匿名用户访问无权限资源时的异常
    @Bean
    protected AuthenticationEntryPoint authenticationEntryPoint() {
        return new RestAuthenticationEntryPoint();
    }

    @Bean
    protected OncePerRequestFilter oncePerRequestFilter() {
        return new JwtAuthenticationTokenFilter();
    }

    @Bean
    public abstract UserDetailsService userDetailsService();

    @Bean
    protected PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}

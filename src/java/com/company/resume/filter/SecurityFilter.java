package com.company.resume.filter;



import com.company.resume.util.ControllerUtil;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter(filterName = "JSPFileFilter2",urlPatterns = {"/*"})
public class SecurityFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        try {
            HttpServletRequest req = (HttpServletRequest) request;
            HttpServletResponse res = (HttpServletResponse) response;

            if (!req.getRequestURI().contains("/login") && req.getSession().getAttribute("loggedInUser") == null) {
//                ControllerUtil.errorPage(res, new IllegalArgumentException("Not found!"));
                res.sendRedirect("login");

            } else {
                chain.doFilter(request, response);
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}

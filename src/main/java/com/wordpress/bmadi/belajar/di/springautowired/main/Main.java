package com.wordpress.bmadi.belajar.di.springautowired.main;

import com.wordpress.bmadi.belajar.di.springautowired.dao.ProdukDao;
import com.wordpress.bmadi.belajar.di.springautowired.model.Produk;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

    public static void main(String[] args) throws Exception {

        // silahkan buka file sql
       // --test read data produk 
        Produk p = new Produk();
        ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
        ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
        pd.read(p);
    }
}

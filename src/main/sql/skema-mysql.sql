create table produk (
    id integer auto_increment,
    kode varchar(15) not null,
    nama varchar(45) not null,
    harga decimal(8,2) not null,
    primary key(id)
)Engine=InnoDB;

create table user (
    id integer auto_increment,
    firstName varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45)not null unique,
    primary key(id)
)Engine=InnoDB;

-- DEMO TEST PRODUK --
-- test create data produk
Produk p = new Produk();
p.setKode("P-002");
p.setNama("Mouse");
p.setHarga(new BigDecimal(100000.00));
        
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
        
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
pd.create(p);

-- test read data produk
Produk p = new Produk();
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
pd.read(p);

-- test cariById data produk
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
Produk p = pd.cariById(2);

-- test cariByNama data produk
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
Produk p = pd.cariByNama("P-002");

-- test update data produk
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
Produk p = new Produk();
p.setKode("P-003");
p.setNama("Joy Steak");
p.setHarga(new BigDecimal(100000.00));
p.setId(3);
pd.update(p);

-- test delete data produk
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
ProdukDao pd = (ProdukDao) ctx.getBean(ProdukDao.class);
Produk p = new Produk();
p.setId(5);
pd.delete(p);

-- DEMO TEST USER --

-- test create data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = new User();
u.setFirstName("Madi");
u.setLastName("Andi");
u.setEmail("madiandi@yahoo.com");
ud.create(u);

-- test read data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = new User();
ud.read(u);

-- test cariById data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = ud.cariById(4);

-- test cariByNama data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = ud.cariByEmail("madiandi@yahoo.com");

-- test update data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = new User();
u.setFirstName("Andi");
u.setLastName("Gosling");
u.setEmail("andigosling@yahoo.com");
u.setId(4);
ud.update(u);

-- test delete data user
ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:konfig-spring.xml");
UserDao ud = ctx.getBean(UserDao.class);
User u = new User();
u.setId(4);
ud.delete(u);
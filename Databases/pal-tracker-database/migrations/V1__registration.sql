create table users (
  id   bigint not null auto_increment,
  name VARCHAR(255),

  primary key (id),
  unique key name (name)
)
engine = innodb
default charset = UTF8MB4;

create table accounts (
  id       bigint not null auto_increment,
  owner_id bigint,
  name     VARCHAR(255),

  primary key (id),
  unique key name (name),
  constraint foreign key (owner_id) references users (id)
)
engine = innodb
default charset = UTF8MB4;

create table projects (
  id         bigint not null auto_increment,
  account_id bigint,
  name       VARCHAR(255),
  active     bit(1) not null default b'1',

  primary key (id),
  unique key name (name),
  constraint foreign key (account_id) references accounts (id)
)
engine = innodb
default charset = UTF8MB4;

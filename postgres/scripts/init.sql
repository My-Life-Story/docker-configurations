create schema mls_media;


CREATE ROLE u_mls_write SUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN PASSWORD 'welcome1' ;
CREATE ROLE u_mls_admin SUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN PASSWORD 'welcome1' ;

grant all privileges on schema mls_media to u_mls_write;
grant all privileges on schema mls_media to u_mls_admin;

create extension ltree with schema public;
create extension btree_gist with schema public;
create extension "uuid-ossp" with schema public;
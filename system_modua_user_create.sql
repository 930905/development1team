show user;

CREATE user modua_1 IDENTIFIED by 1234;

grant resource, connect, dba to modua_1;

commit;
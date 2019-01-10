# CI - Web

## 后台账号 [ /shmadmin ]

### username: shmadmin

### password: sahereman999

``` database-initialization

mysql -u sahereman_com -p
shH68c8Ab48eTazP

//删除数据库
# DROP DATABASE [IF EXISTS] `sahereman_com`;
DROP DATABASE IF EXISTS `sahereman_com`;

//创建数据库
# CREATE DATABASE [IF NOT EXISTS] `sahereman_com` [DEFAULT] CHARACTER SET [=] 'utf8' [DEFAULT] COLLATE [=] 'utf8_general_ci';

# or:

# CREATE DATABASE [IF NOT EXISTS] `sahereman_com` [DEFAULT] CHARSET [=] 'utf8' [DEFAULT] COLLATE [=] 'utf8_general_ci';
CREATE DATABASE IF NOT EXISTS `sahereman_com` DEFAULT CHARSET = 'utf8' DEFAULT COLLATE = 'utf8_general_ci';

```

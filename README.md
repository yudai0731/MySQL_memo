# MySQL_memo

## 1. 基本操作

### 1.1 データベースの一覧表示
```
show databases;
```

### 1.2 データベースの追加
```
create database データベース名;
```

### 1.3 データベースの削除
```
drop database データベース名;
```

### 1.4 使用するデータベースの切り替え
```
use データベース名;
```

### 1.5 ファイルに記述されているクエリを実行する
```
$mysql DB名 < クエリを記述したファイル
```

## 2. テーブルの操作

### 2.1 テーブル確認
```
show tables;
```

### 2.2 テーブルの生成
```
create table テーブル名(
    属性名 型 キー制約,
    属性名 型 キー制約,
    ...
);
```

例として学生テーブルを作成するときのクエリを示す.
```
CREATE TABLE student (
 id INT NOT NULL PRIMARY KEY,
 name VARCHAR(128),
 grade INT
);
```
### 2.3 テーブルの構造取得
```
desc テーブル名;
```
### 2.4 テーブルの削除
```
drop table テーブル名;
```

## 3. データの操作
### 3.1 データの追加
```
insert into テーブル名 VALUES(属性1, 属性2, ...);
```
### 3.2 データの取得
#### 3.2.1 データを一括で取得する
```
select * from テーブル名;
```

#### 3.2.2 取得する属性を指定する
表示する属性を指定する.　重複を防ぐためには「select distinct」を用いる.
```
select 属性1,属性2,... from テーブル名;
```
#### 3.2.3 ソートして表示する
昇順(default)
```
select 属性 from テーブル名 order by ソートする属性 (ASC);
```

降順
```
select 属性 from テーブル名 order by ソートする属性 DESC;
```

#### 3.2.4 条件に一致するレコードのみを取得する
where : 演算子を指定した条件の指定に用いる.
like : ワイルドカードを指定した条件の指定に用いる.
```
select 属性 from テーブル名 where 条件;
select 属性 from テーブル名 like 条件;
```

#### 3.2.5 機能
最大値, 最小値, 平均値, 総和, カウントを代表とする集計を行うことができる.
```
select 関数名(属性) from テーブル名;
```

また, 2つの属性の演算を仮の属性として出力することができる.
```
select 属性と属性の演算 as 仮属性名 from テーブル名;
```

#### 3.2.6 集計した後で条件に一致するレコードを取得する.
集計はgroup by を用いて行う.
```
select 属性 from テーブル名 group by 集計を行う属性名;
```
集計後の条件付けはhaving句を用いる.
select 属性 from テーブル名 group by 集計を行う属性名 having 条件;

### 3.3 データの更新
```
update テーブル名 set 属性=更新後の値 where 条件;
```
### 3.4 データの削除
delete テーブル名 where 条件;
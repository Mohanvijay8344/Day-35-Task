//Movie should have multiple media(Video or Image)

CREATE TABLE Movies (
    id INTEGER,
    title TEXT,
    artist TEXT,
    Img BLOB,
    Genre TEXT,
    skill TEXT,
    Role text
  );


//Movie can belongs to multiple Genre

Insert into Movies
VALUES
    (1,"Pushpa","Allu-arjun","https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-bar-220169404","singer,director","hero,son"),

    (2,"Irumugan","Vikram","https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-bar-220169404","thriller,drama,action","singer,dancer","hero,son,friend"),

    (3,"Vikram","Kamalhasan","https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-bar-220169404","drama,comedy,action","choreo,director","hero,son,uncle"),

    (4,"Singam","Surya","https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-bar-220169404","drama,action,thriller","choreo,director","hero,friend"),

    (5,"Beast","Vijay","https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-bar-220169404","drama,action,horrer","singer,director","hero,uncle");

CREATE TABLE user (
    user_id INTEGER FOREIGN KEY,
    Review   text
  
  );

//Movie can have multiple reviews and Review can belongs to a user

Insert into user
VALUES
(1,"good,average,nice"),
(2,"average,nice,poor"),
(3,"good,poor,nice"),
(4,"average,poor"),
(5,"good,poor,nice");


//Queries

Select * from movie
Inner join user
On id = user_id


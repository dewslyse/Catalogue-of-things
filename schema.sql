CREATE TABLE "Items"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre "char",
    author "char",
    source "char",
    label "char",
    publish_date date,
    archived boolean
);

CREATE TABLE "Genre"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name "char",
);

CREATE TABLE "MusicAlbum"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre "char",
    publish_date date,
    on_spotify boolean
);
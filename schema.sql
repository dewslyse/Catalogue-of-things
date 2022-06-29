
CREATE TABLE "Items"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre "char",
    author "char",
    source "char",
    label "char",
    publish_date date,
    archived boolean,
);

CREATE TABLE "Genre"
(
    id integer,
    name "char",
    PRIMARY KEY (id)
);

CREATE TABLE "MusicAlbum"
(
    on_spotify boolean
);
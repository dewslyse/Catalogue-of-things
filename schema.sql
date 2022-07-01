CREATE TABLE items
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date date,
    archived boolean,
    genre_id "char",
    author_id "char",
    label_id "char",
    FOREIGN KEY (genre_id) REFERENCES genre (id),
    FOREIGN KEY (author_id) REFERENCES author (id),
    FOREIGN KEY (label_id) REFERENCES label (id)
);

CREATE TABLE music_album
(
    id integer,
    on_spotify boolean,
    FOREIGN KEY (id) REFERENCES items (id)
);

CREATE TABLE genre
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name "char"
);

CREATE TABLE book (
    id INT,
    publihser TEXT,
    cover_state TEXT,
    FOREIGN KEY (id) REFERENCES items (id)
);

CREATE TABLE label (
    id INT GENERATED ALWAYS AS IDENTITY,
    title TEXT,
    color TEXT
);

CREATE TABLE game (
    id INT,
    mutiplayer TEXT,
    last_played_at DATE,
    FOREIGN KEY (id) REFERENCES items (id)
);

CREATE TABLE author (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE author (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name TEXT,
    last_name TEXT
);



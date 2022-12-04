CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    names VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS listband (
    id SERIAL PRIMARY KEY,
    names VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS bandgenre (
    id_genre INTEGER REFERENCES genre(id),
    id_band INTEGER REFERENCES listband(id),
    CONSTRAINT pk_bandgenre PRIMARY KEY (id_genre, id_band)
);
CREATE TABLE IF NOT EXISTS listalbum (
    name_album VARCHAR (20) NOT NULL,
    year INTEGER,
    id SERIAL PRIMARY KEY
);
CREATE TABLE IF NOT EXISTS bandalbum (
    id_album INTEGER REFERENCES listband(id),
    id_band INTEGER REFERENCES listalbum(id),
    CONSTRAINT pk_bandalbum PRIMARY KEY (id_album, id_band)
);
CREATE TABLE IF NOT EXISTS listsong (
    names VARCHAR(20) NOT NULL,
    id_album INTEGER REFERENCES listalbum(id),
    id SERIAL PRIMARY KEY,
    duration TIME
);
CREATE TABLE IF NOT EXISTS collections (
    names VARCHAR(20) NOT NULL,
    year INTEGER,
    id SERIAL PRIMARY KEY
);
CREATE TABLE IF NOT EXISTS songcollections (
    id_song INTEGER REFERENCES listsong(id),
    id_collections INTEGER REFERENCES collections(id),
    CONSTRAINT pk_songcollections PRIMARY KEY (id_song, id_collections)
);

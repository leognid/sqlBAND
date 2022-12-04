CREATE IF NOT EXISTS Genre (
    id SERIAL PRIMARY KEY,
    names VARCHAR(20) NOT NULL
);
CREATE IF NOT EXISTS Listband (
    id SERIAL PRIMARY KEY,
    names VARCHAR(20) NOT NULL
);
CREATE IF NOT EXISTS Bandgenre (
    id_genre INTEGER REFERENCES Genre(id),
    id_band INTEGER REFERENCES Listband(id)
    CONSTRAINT pk_Bandgenre PRIMARY KEY (id_genre, id_band)
);
CREATE IF NOT EXISTS Listalbum (
    name_album VARCHAR (20) NOT NULL
    year INTEGER
    id SERIAL PRIMARY KEY
);
CREATE IF NOT EXISTS Bandalbum (
    id_album INTEGER REFERENCES Listband(id),
    id_band INTEGER REFERENCES Listalbum(id)
    CONSTRAINT pk_Bandalbum PRIMARY KEY (id_album, id_band)
);
CREATE IF NOT EXISTS Listsong (
    names VARCHAR(20) NOT NULL
    id_album INTEGER REFERENCES Listalbum(id)
    id SERIAL PRIMARY KEY,
    duration INTEGER
);
CREATE IF NOT EXISTS Collections (
    names VARCHAR(20) NOT NULL
    year INTEGER
    id_song
    id SERIAL PRIMARY KEY
);
CREATE IF NOT EXISTS Songcollections (
    id_song INTEGER REFERENCES Listsong(id)
    id_collections INTEGER REFERENCES Collections(id)
    CONSTRAINT pk_Songcollections PRIMARY KEY (id_song, id_collections)
);

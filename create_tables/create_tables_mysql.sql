CREATE TABLE IF NOT EXISTS uavt_il (
    id INT NOT NULL AUTO_INCREMENT,
    kodu INT NOT NULL,
    adi VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS uavt_ilce (
    id INT NOT NULL AUTO_INCREMENT,
    il_kod INT NOT NULL,
    kod INT NOT NULL,
    ad VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS uavt_koy (
    id INT NOT NULL AUTO_INCREMENT,
    ilcekod INT NOT NULL,
    ad VARCHAR(255) NOT NULL,
    kod INT NOT NULL,
    sirano INT NOT NULL,
    koyad VARCHAR(255),
    koykod INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS uavt_mahalle (
    id INT NOT NULL AUTO_INCREMENT,
    koy_kod INT NOT NULL,
    kod INT NOT NULL,
    ad VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS uavt_sokak (
    id INT NOT NULL AUTO_INCREMENT,
    mahalle_kod INT NOT NULL,
    kod INT NOT NULL,
    ad VARCHAR(255) NOT NULL,
    sokak_turu VARCHAR(255),
    sokak_turu_aciklama VARCHAR(255),
    gelisim_durumu_aciklama VARCHAR(255),
    gelisim_durumu_kodu VARCHAR(255),
    sabit_tanitim_numarasi DECIMAL,
    PRIMARY KEY (id)
);

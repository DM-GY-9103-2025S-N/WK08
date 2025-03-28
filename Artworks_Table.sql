DROP TABLE IF EXISTS 'Artworks' ;

CREATE TABLE IF NOT EXISTS 'Artworks' (
  'Title' TEXT NULL DEFAULT NULL,
  'Artist' TEXT NULL DEFAULT NULL,
  'ConstituentID' INT NULL DEFAULT NULL,
  'ArtistBio' TEXT NULL DEFAULT NULL,
  'Nationality' TEXT NULL DEFAULT NULL,
  'BeginDate' INT NULL DEFAULT 0,
  'EndDate' INT NULL DEFAULT 0,
  'Gender' TEXT NULL DEFAULT NULL,
  'Date' TEXT NULL DEFAULT NULL,
  'Medium' TEXT NULL DEFAULT NULL,
  'Dimensions' TEXT NULL DEFAULT NULL,
  'CreditLine' TEXT NULL DEFAULT NULL,
  'AccessionNumber' TEXT NULL DEFAULT NULL,
  'Classification' TEXT NULL DEFAULT NULL,
  'Department' TEXT NULL DEFAULT NULL,
  'DateAcquired' TEXT NULL DEFAULT NULL,
  'Cataloged' TEXT NULL DEFAULT NULL,
  'ObjectID' INT NOT NULL,
  'URL' TEXT NULL DEFAULT NULL,
  'ImageURL' TEXT NULL DEFAULT NULL,
  'OnView' TEXT NULL DEFAULT NULL,
  'Circumference' TEXT NULL DEFAULT NULL,
  'Depth' TEXT NULL DEFAULT NULL,
  'Diameter' TEXT NULL DEFAULT NULL,
  'Height' REAL NULL DEFAULT NULL,
  'Length' TEXT NULL DEFAULT NULL,
  'Weight' TEXT NULL DEFAULT NULL,
  'Width' REAL NULL DEFAULT NULL,
  'SeatHeight' TEXT NULL DEFAULT NULL,
  'Duration' TEXT NULL DEFAULT NULL,
  PRIMARY KEY ('ObjectID')
);

DROP TABLE IF EXISTS 'Artists' ;

CREATE TABLE IF NOT EXISTS 'Artists' (
  'ConstituentID' INT NOT NULL,
  'DisplayName' TEXT NULL DEFAULT NULL,
  'ArtistBio' TEXT NULL DEFAULT NULL,
  'Nationality' TEXT NULL DEFAULT NULL,
  'Gender' TEXT NULL DEFAULT NULL,
  'BeginDate' INT NULL DEFAULT 0,
  'EndDate' INT NULL DEFAULT 0,
  'WikiQID' TEXT NULL DEFAULT NULL,
  'ULAN' TEXT NULL DEFAULT NULL,
  PRIMARY KEY ('ConstituentID'));

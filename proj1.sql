-- Before running drop any existing views
DROP VIEW IF EXISTS q0;
DROP VIEW IF EXISTS q1i;
DROP VIEW IF EXISTS q1ii;
DROP VIEW IF EXISTS q1iii;
DROP VIEW IF EXISTS q1iv;
DROP VIEW IF EXISTS q2i;
DROP VIEW IF EXISTS q2ii;
DROP VIEW IF EXISTS q2iii;
DROP VIEW IF EXISTS q3i;
DROP VIEW IF EXISTS q3ii;
DROP VIEW IF EXISTS q3iii;
DROP VIEW IF EXISTS q4i;
DROP VIEW IF EXISTS q4ii;
DROP VIEW IF EXISTS q4iii;
DROP VIEW IF EXISTS q4iv;
DROP VIEW IF EXISTS q4v;

-- Question 0
CREATE VIEW q0(era)
AS
  select max(era) from pitching
;

-- Question 1i
CREATE VIEW q1i(namefirst, namelast, birthyear)
AS
   select namefirst, namelast, birthyear from people where weight > 300;
;

-- Question 1ii
CREATE VIEW q1ii(namefirst, namelast, birthyear)
AS
  select namefirst, namelast, birthyear from people where namefirst like '% %' order by namefirst asc, namelast asc;
;

-- Question 1iii
CREATE VIEW q1iii(birthyear, avgheight, count)
AS
  select birthyear, avg(height), count(*) from people group by birthyear order by birthyear asc;
;

-- Question 1iv
CREATE VIEW q1iv(birthyear, avgheight, count)
AS
  select birthyear, avg(height), count(*) from people group by birthyear having avg(height)>70 order by birthyear asc;
;

-- Question 2i
CREATE VIEW q2i(namefirst, namelast, playerid, yearid)
AS
  SELECT P.namefirst, P.namelast, P.playerid, H.yearid
  FROM people AS P, halloffame AS H
  WHERE P.playerid = H.playerid AND H.inducted = 'Y'
  ORDER BY H.yearid DESC, P.playerid ASC
;

-- Question 2ii
CREATE VIEW q2ii(namefirst, namelast, playerid, schoolid, yearid)
AS
    SELECT P.namefirst, P.namelast, P.playerid, S.schoolid, H.yearid
    FROM people AS P, CollegePlaying AS C, schools AS S, halloffame AS H
    WHERE P.playerid = H.playerid AND H.inducted = 'Y' AND S.schoolState = 'CA' AND C.playerid = P.playerid AND C.schoolid = S.schoolid
    ORDER BY H.yearid DESC, S.schoolid ASC, P.playerid ASC
;

-- Question 2iii
CREATE VIEW q2iii(playerid, namefirst, namelast, schoolid)
AS
    SELECT DISTINCT P.playerid, P.namefirst, P.namelast, C.schoolid
    FROM people AS P
    INNER JOIN halloffame AS H ON P.playerid = H.playerid AND H.inducted = 'Y'
    LEFT OUTER JOIN CollegePlaying AS C ON P.playerid = C.playerid
    ORDER BY P.playerid DESC, C.schoolid ASC
;

-- Question 3i
CREATE VIEW q3i(playerid, namefirst, namelast, yearid, slg)
AS
  SELECT 1, 1, 1, 1, 1 -- replace this line
;

-- Question 3ii
CREATE VIEW q3ii(playerid, namefirst, namelast, lslg)
AS
  SELECT 1, 1, 1, 1 -- replace this line
;

-- Question 3iii
CREATE VIEW q3iii(namefirst, namelast, lslg)
AS
  SELECT 1, 1, 1 -- replace this line
;

-- Question 4i
CREATE VIEW q4i(yearid, min, max, avg)
AS
  SELECT 1, 1, 1, 1 -- replace this line
;

-- Question 4ii
CREATE VIEW q4ii(binid, low, high, count)
AS
  SELECT 1, 1, 1, 1 -- replace this line
;

-- Question 4iii
CREATE VIEW q4iii(yearid, mindiff, maxdiff, avgdiff)
AS
  SELECT 1, 1, 1, 1 -- replace this line
;

-- Question 4iv
CREATE VIEW q4iv(playerid, namefirst, namelast, salary, yearid)
AS
  SELECT 1, 1, 1, 1, 1 -- replace this line
;
-- Question 4v
CREATE VIEW q4v(team, diffAvg) AS
  SELECT 1, 1 -- replace this line
;


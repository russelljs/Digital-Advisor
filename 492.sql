-- table for holding all registered user info

CREATE TABLE users
(
	major			char(30),
	secondmajor		char(30),
	minor			char(30),
	username		char(30),
	password		char(30),
	confirmcode		char(30),
	applicationarea		char(30),
	fineartsreq		tinyint(1),
	labreq			tinyint(1),
	upperdivreq		tinyint(1),
	lowerdivreq		tinyint(1),
	socscireq		tinyint(1),
	appreq			tinyint(1),
	historyreq		tinyint(1),
	libartsreq		tinyint(1)
);

-- table containing the core computer science courses

CREATE TABLE coreCS
(
	department	char(4),
	number		char(4)
);


-- table containing the two choices for the third english requirement

CREATE TABLE CSEnglish
(
	department	char(4),
	number		char(4)
);


-- table containing the choices for history requirement

CREATE TABLE CSHistory
(
	department	char(4),
	number		char(4)
);


-- table containing the choices for the fine arts requirement

CREATE TABLE CSFineArts
(
	department	char(4),
	number		char(4)
);


-- table containing the choices for the social sciences requirement

CREATE TABLE CSSocialSciences
(
	department	char(4),
	number		char(4)
);


-- table containing the choices for the foreign language requirement

CREATE TABLE CSForeignLang
(
	department	char(4),
	number		char(4)
);


-- table containing the remaining choices for the Liberal arts requirement
-- shoud be grouped with foreign language table, history table, and social 
-- sciences table when evaluating additional liberal arts requirements.

CREATE TABLE CSLiberalArts
(
	department	char(4),
	number		char(4)
);


-- table containing choices for lower division computer science electives

CREATE TABLE CSLowerDiv
(
	department	char(4),
	number		char(4)
);


-- table containing choices for upper division computer science electives

CREATE TABLE CSUpperDiv
(
	department	char(4),
	number		char(4)
);


-- application area tables

-- Bioinformatics
-- Required table

CREATE TABLE bioReq
(
	department	char(4),
	number		char(4)
);

-- Choose one class from this table
CREATE TABLE bioOne
(
	department	char(4),
	number		char(4)
);

-- Choose two from this table
CREATE TABLE bioTwo
(
	department	char(4),
	number		char(4)
);



-- Game design and programming
-- required table
CREATE TABLE gameReq
(
	department	char(4),
	number		char(4)
);

-- choose one from this table
CREATE TABLE gameOne
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE gameTwo
(
	department	char(4),
	number		char(4)
);



-- Forensics
-- required table
CREATE TABLE forensicsReq
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE forensicsOne
(
	department	char(4),
	number		char(4)
);



-- Geographic Information Systems
-- required course
CREATE TABLE gisReq
(
	department	char(4),
	number		char(4)
);

-- choose two from this table
CREATE TABLE gisOne
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE gisTwo
(
	department	char(4),
	number		char(4)
);



-- Linguistics
-- required table (choose one)
CREATE TABLE lingReq
(
	department	char(4),
	number		char(4)
);

-- choose two from this table
CREATE TABLE lingOne
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE lingTwo
(
	department	char(4),
	number		char(4)
);



-- Scientific Computing
-- required table
CREATE TABLE scienceReq
(
	department	char(4),
	number		char(4)
);

-- choose two from this table
CREATE TABLE scienceOne
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE scienceTwo
(
	department	char(4),
	number		char(4)
);



-- Risk and insurance
-- required table
CREATE TABLE riskReq
(
	department	char(4),
	number		char(4)
);

-- choose two from this table
CREATE TABLE riskOne
(
	department	char(4),
	number		char(4)
);



-- New media
-- required course
CREATE TABLE mediaReq
(
	department	char(4),
	number		char(4)
);

-- Choose two from this table
CREATE TABLE mediaOne
(
	department	char(4),
	number		char(4)
);

-- choose three from this table
CREATE TABLE mediaTwo
(
	department	char(4),
	number		char(4)
);


-- Lab science requirement will be fulfilled by all classes in physics or chemistry table as well as 
-- one course from addlabsci table.  classes CANNOT be duplicated
-- table containing courses for the physics option for lab science requirement
CREATE TABLE physics
(
	department	char(4),
	number		char(4)
);

-- table containing courses for the chemistry option for lab science requirement
CREATE TABLE chemistry
(
	department	char(4),
	number		char(4)
);

-- table containing courses for the additional lab science requirement
CREATE TABLE addlabsci
(
	department	char(4),
	number		char(4)
);


-- populate the physics table
INSERT INTO physics
	VALUES("PHYS","211");
INSERT INTO physics
	VALUES("PHYS","211L");
INSERT INTO physics
	VALUES("PHYS","212");
INSERT INTO physics
	VALUES("PHYS","212L");

-- populate the chemistry table
INSERT INTO chemistry
	VALUES("CHEM","111");
INSERT INTO chemistry
	VALUES("CHEM","112");

-- populate the additional lab science table
INSERT INTO addlabsci
	VALUES("CHEM","111");
INSERT INTO addlabsci
	VALUES("BIOL","101");
INSERT INTO addlabsci
	VALUES("BIOL","101L");
INSERT INTO addlabsci
	VALUES("PHYS","211");
INSERT INTO addlabsci
	VALUES("PHYS","211L");
INSERT INTO addlabsci
	VALUES("GEOL","201");
INSERT INTO addlabsci
	VALUES("GEOL","202");
INSERT INTO addlabsci
	VALUES("MSCI","101");
INSERT INTO addlabsci
	VALUES("MSCI","102");

-- populate application tables

-- populate bioinformatics application table
INSERT INTO bioReq
	VALUES ("CSCE","555");
INSERT INTO bioReq
	VALUES ("BIOL","101");
INSERT INTO bioReq
	VALUES ("BIOL","102");
INSERT INTO bioReq
	VALUES ("BIOL","302");
INSERT INTO bioReq
	VALUES ("CHEM","111");
INSERT INTO bioReq
	VALUES ("CHEM","112");

INSERT INTO bioOne
	VALUES ("CSCE","565");
INSERT INTO bioOne
	VALUES ("CSCE","567");
INSERT INTO bioOne
	VALUES ("CSCE","569");
INSERT INTO bioOne
	VALUES ("CSCE","582");

INSERT INTO bioTwo
	VALUES ("BIOL","301");
INSERT INTO bioTwo
	VALUES ("BIOL","303");
INSERT INTO bioTwo
	VALUES ("CHEM","111");
INSERT INTO bioTwo
	VALUES ("CHEM","212");
INSERT INTO bioTwo
	VALUES ("CHEM","333");

-- populate game design and programming application table
INSERT INTO gameReq
	VALUES ("CSCE","552");
INSERT INTO gameReq
	VALUES ("MART","110");

INSERT INTO gameOne
	VALUES ("CSCE","520");
INSERT INTO gameOne
	VALUES ("CSCE","565");
INSERT INTO gameOne
	VALUES ("CSCE","580");

INSERT INTO gameTwo
	VALUES ("MART","210");
INSERT INTO gameTwo
	VALUES ("MART","371");
INSERT INTO gameTwo
	VALUES ("MART","583");
INSERT INTO gameTwo
	VALUES ("MATH","527");
INSERT INTO gameTwo
	VALUES ("MATH","576");

-- populate forensics application table
INSERT INTO forensicsReq
	VALUES ("CSCE","517");
INSERT INTO forensicsReq
	VALUES ("CSCE","522");

INSERT INTO forensicsOne
	VALUES ("CRJU","313");
INSERT INTO forensicsOne
	VALUES ("CRJU","314");
INSERT INTO forensicsOne
	VALUES ("CRJU","341");
INSERT INTO forensicsOne
	VALUES ("LAWS","525");
INSERT INTO forensicsOne
	VALUES ("LAWS","526");
INSERT INTO forensicsOne
	VALUES ("LAWS","547");
INSERT INTO forensicsOne
	VALUES ("JOUR","303");
INSERT INTO forensicsOne
	VALUES ("JOUR","504");

-- populate geographic information systems application table
INSERT INTO gisReq
	VALUES ("CSCE","520");

INSERT INTO gisOne
	VALUES ("CSCE","564");
INSERT INTO gisOne
	VALUES ("CSCE","565");
INSERT INTO gisOne
	VALUES ("CSCE","567");

INSERT INTO gisOne
	VALUES ("GEOG","341");
INSERT INTO gisOne
	VALUES ("GEOG","345");
INSERT INTO gisOne
	VALUES ("GEOG","363");
INSERT INTO gisOne
	VALUES ("GEOG","541");
INSERT INTO gisOne
	VALUES ("GEOG","551");
INSERT INTO gisOne
	VALUES ("GEOG","562");
INSERT INTO gisOne
	VALUES ("GEOG","563");
INSERT INTO gisOne
	VALUES ("GEOG","564");

-- populate linguistics application table
INSERT INTO lingReq
	VALUES ("LING","300");
INSERT INTO lingReq
	VALUES ("LING","301");

INSERT INTO lingOne
	VALUES ("CSCE","520");
INSERT INTO lingOne
	VALUES ("CSCE","531");
INSERT INTO lingOne
	VALUES ("CSCE","587");
INSERT INTO lingOne
	VALUES ("CSCE","580");

INSERT INTO lingTwo
	VALUES ("LING","340");
INSERT INTO lingTwo
	VALUES ("LING","421");
INSERT INTO lingTwo
	VALUES ("LING","440");
INSERT INTO lingTwo
	VALUES ("LING","565");
INSERT INTO lingTwo
	VALUES ("LING","567");

-- populate scientific computing application table
INSERT INTO scienceReq
	VALUES ("MATH","141");
INSERT INTO scienceReq
	VALUES ("MATH","142");

INSERT INTO scienceOne
	VALUES ("CSCE","564");
INSERT INTO scienceOne
	VALUES ("CSCE","565");
INSERT INTO scienceOne
	VALUES ("CSCE","567");
INSERT INTO scienceOne
	VALUES ("CSCE","569");

INSERT INTO scienceTwo
	VALUES ("MATH","242");
INSERT INTO scienceTwo
	VALUES ("MATH","520");
INSERT INTO scienceTwo
	VALUES ("MATH","521");
INSERT INTO scienceTwo
	VALUES ("MATH","522");
INSERT INTO scienceTwo
	VALUES ("MATH","527");
INSERT INTO scienceTwo
	VALUES ("CSCE","561");

-- populate risk and insurance application table
INSERT INTO riskReq
	VALUES ("CSCE","520");
INSERT INTO riskReq
	VALUES ("CSCE","522");
INSERT INTO riskReq
	VALUES ("ACCT","224");
INSERT INTO riskReq
	VALUES ("ECON","224");
INSERT INTO riskReq
	VALUES ("FINA","363");

INSERT INTO riskOne
	VALUES ("FINA","341");
INSERT INTO riskOne
	VALUES ("FINA","442");
INSERT INTO riskOne
	VALUES ("FINA","443");
INSERT INTO riskOne
	VALUES ("FINA","444");
INSERT INTO riskOne
	VALUES ("FINA","445");

-- populate new media application table
INSERT INTO mediaReq
	VALUES ("MART","110");

INSERT INTO mediaOne
	VALUES ("CSCE","520");
INSERT INTO mediaOne
	VALUES ("CSCE","552");
INSERT INTO mediaOne
	VALUES ("CSCE","564");
INSERT INTO mediaOne
	VALUES ("CSCE","567");

INSERT INTO mediaTwo
	VALUES ("MART","210");
INSERT INTO mediaTwo
	VALUES ("MART","371");
INSERT INTO mediaTwo
	VALUES ("MART","380");
INSERT INTO mediaTwo
	VALUES ("MART","583");


-- populate table for core Computer Science courses
 
INSERT INTO coreCS
	VALUES ("CSCE","145");
INSERT INTO coreCS
	VALUES ("CSCE","190");
INSERT INTO coreCS
	VALUES ("CSCE","146");
INSERT INTO coreCS
	VALUES ("CSCE","215");
INSERT INTO coreCS
	VALUES ("CSCE","211");
INSERT INTO coreCS
	VALUES ("CSCE","240");
INSERT INTO coreCS
	VALUES ("CSCE","212");
INSERT INTO coreCS
	VALUES ("CSCE","311");
INSERT INTO coreCS
	VALUES ("CSCE","350");
INSERT INTO coreCS
	VALUES ("CSCE","330");
INSERT INTO coreCS
	VALUES ("CSCE","390");
INSERT INTO coreCS
	VALUES ("CSCE","416");
INSERT INTO coreCS
	VALUES ("CSCE","490");
INSERT INTO coreCS
	VALUES ("CSCE","355");
INSERT INTO coreCS
	VALUES ("CSCE","492");
INSERT INTO coreCS
	VALUES ("MATH","141");
INSERT INTO coreCS
	VALUES ("MATH","142");
INSERT INTO coreCS
	VALUES ("MATH","241");
INSERT INTO coreCS
	VALUES ("MATH","374");
INSERT INTO coreCS
	VALUES ("MATH","526");
INSERT INTO coreCS
	VALUES ("ENGL","101");
INSERT INTO coreCS
	VALUES ("ENGL","102");
INSERT INTO coreCS
	VALUES ("SPCH","140");
INSERT INTO coreCS
	VALUES ("STAT","509");

-- populate table for choices for english requirement

INSERT INTO CSEnglish
	VALUES ("ENGL","462");
INSERT INTO CSEnglish
	VALUES ("ENGL","463");

-- populate table for choices for history requirement

INSERT INTO CSHistory
	VALUES ("HIST","101");
INSERT INTO CSHistory
	VALUES ("HIST","102");
INSERT INTO CSHistory
	VALUES ("HIST","104");
INSERT INTO CSHistory
	VALUES ("HIST","105");
INSERT INTO CSHistory
	VALUES ("HIST","106");
INSERT INTO CSHistory
	VALUES ("HIST","108");
INSERT INTO CSHistory
	VALUES ("HIST","109");
INSERT INTO CSHistory
	VALUES ("HIST","111");
INSERT INTO CSHistory
	VALUES ("HIST","112");
INSERT INTO CSHistory
	VALUES ("ARMY","406");
INSERT INTO CSHistory
	VALUES ("ARMY","407");
INSERT INTO CSHistory
	VALUES ("NAVY","303");

-- populate table for choices for Fine Arts requirement

INSERT INTO CSFineArts
	VALUES ("ARTE","101");

INSERT INTO CSFineArts
	VALUES ("ARTH","105");
INSERT INTO CSFineArts
	VALUES ("ARTE","106");
INSERT INTO CSFineArts
	VALUES ("ARTE","313");
INSERT INTO CSFineArts
	VALUES ("ARTE","320");
INSERT INTO CSFineArts
	VALUES ("ARTE","321");
INSERT INTO CSFineArts
	VALUES ("ARTE","325");
INSERT INTO CSFineArts
	VALUES ("ARTE","327");
INSERT INTO CSFineArts
	VALUES ("ARTE","330");
INSERT INTO CSFineArts
	VALUES ("ARTE","335");
INSERT INTO CSFineArts
	VALUES ("ARTE","337");
INSERT INTO CSFineArts
	VALUES ("ARTE","340");
INSERT INTO CSFineArts
	VALUES ("ARTE","341");
INSERT INTO CSFineArts
	VALUES ("ARTE","342");

INSERT INTO CSFineArts
	VALUES ("ARTS","103");
INSERT INTO CSFineArts
	VALUES ("ARTS","104");
INSERT INTO CSFineArts
	VALUES ("ARTS","107");
INSERT INTO CSFineArts
	VALUES ("ARTS","108");
INSERT INTO CSFineArts
	VALUES ("ARTS","111");
INSERT INTO CSFineArts
	VALUES ("ARTS","235");
INSERT INTO CSFineArts
	VALUES ("ARTS","241");
INSERT INTO CSFineArts
	VALUES ("ARTS","255");
INSERT INTO CSFineArts
	VALUES ("ARTS","258");
INSERT INTO CSFineArts
	VALUES ("ARTS","260");
INSERT INTO CSFineArts
	VALUES ("ARTS","261");

INSERT INTO CSFineArts
	VALUES ("DANC","101");
INSERT INTO CSFineArts
	VALUES ("DANC","150");
INSERT INTO CSFineArts
	VALUES ("DANC","250");
INSERT INTO CSFineArts
	VALUES ("DANC","300");
INSERT INTO CSFineArts
	VALUES ("DANC","377");
INSERT INTO CSFineArts
	VALUES ("DANC","380");
INSERT INTO CSFineArts
	VALUES ("DANC","381");

INSERT INTO CSFineArts
	VALUES ("MUSC","110");
INSERT INTO CSFineArts
	VALUES ("MUSC","114");
INSERT INTO CSFineArts
	VALUES ("MUSC","115");
INSERT INTO CSFineArts
	VALUES ("MUSC","140");

INSERT INTO CSFineArts
	VALUES ("FILM","180");
INSERT INTO CSFineArts
	VALUES ("FILM","240");
INSERT INTO CSFineArts
	VALUES ("FILM","365");
INSERT INTO CSFineArts
	VALUES ("FILM","366");
INSERT INTO CSFineArts
	VALUES ("FILM","555");
INSERT INTO CSFineArts
	VALUES ("FILM","597");

INSERT INTO CSFineArts
	VALUES ("MART","110");
INSERT INTO CSFineArts
	VALUES ("MART","201");
INSERT INTO CSFineArts
	VALUES ("MART","341");

INSERT INTO CSFineArts
	VALUES ("THEA","170");
INSERT INTO CSFineArts
	VALUES ("THEA","200");
INSERT INTO CSFineArts
	VALUES ("THEA","230");
INSERT INTO CSFineArts
	VALUES ("THEA","240");
INSERT INTO CSFineArts
	VALUES ("THEA","252");
INSERT INTO CSFineArts
	VALUES ("THEA","253");
INSERT INTO CSFineArts
	VALUES ("THEA","280");
INSERT INTO CSFineArts
	VALUES ("THEA","283");
INSERT INTO CSFineArts
	VALUES ("THEA","288");
INSERT INTO CSFineArts
	VALUES ("THEA","359");
INSERT INTO CSFineArts
	VALUES ("THEA","372");
INSERT INTO CSFineArts
	VALUES ("THEA","480");
INSERT INTO CSFineArts
	VALUES ("THEA","481");
INSERT INTO CSFineArts
	VALUES ("THEA","550");
INSERT INTO CSFineArts
	VALUES ("THEA","561");
INSERT INTO CSFineArts
	VALUES ("THEA","562");
INSERT INTO CSFineArts
	VALUES ("THEA","565");

-- populate table for choices for Social Sciences requirement

INSERT INTO CSSocialSciences
	VALUES ("ANTH","101");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","102");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","161");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","205");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","208");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","291F");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","291N");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","291S");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","301");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","307");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","310");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","311");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","317");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","319");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","321");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","331");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","345");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","352");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","355");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","356");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","373");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","381");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391A");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391D");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391E");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391F");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391H");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","391P");
INSERT INTO CSSocialSciences
	VALUES ("ANTH","442");

INSERT INTO CSSocialSciences
	VALUES ("CRJU","101");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","202");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","203");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","311");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","312");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","313");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","314");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","322");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","323");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","341");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","351");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","420");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","421");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","422");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","425");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","491C");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","491E");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","491T");
INSERT INTO CSSocialSciences
	VALUES ("CRJU","491W");

INSERT INTO CSSocialSciences
	VALUES ("ECON","221");
INSERT INTO CSSocialSciences
	VALUES ("ECON","222");
INSERT INTO CSSocialSciences
	VALUES ("ECON","224");
INSERT INTO CSSocialSciences
	VALUES ("ECON","301");
INSERT INTO CSSocialSciences
	VALUES ("ECON","311");
INSERT INTO CSSocialSciences
	VALUES ("ECON","321");
INSERT INTO CSSocialSciences
	VALUES ("ECON","322");
INSERT INTO CSSocialSciences
	VALUES ("ECON","379");
INSERT INTO CSSocialSciences
	VALUES ("ECON","402");

INSERT INTO CSSocialSciences
	VALUES ("GEOG","103");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","104");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","105");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","121");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","210");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","221");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","223");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","224");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","225");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","311");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","313");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","330");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","343");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","344");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","346");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","347");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","348");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","365");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","370");
INSERT INTO CSSocialSciences
	VALUES ("GEOG","495");

INSERT INTO CSSocialSciences
	VALUES ("LASP","201");
INSERT INTO CSSocialSciences
	VALUES ("LASP","301");
INSERT INTO CSSocialSciences
	VALUES ("LASP","311");
INSERT INTO CSSocialSciences
	VALUES ("LASP","312");
INSERT INTO CSSocialSciences
	VALUES ("LASP","315");
INSERT INTO CSSocialSciences
	VALUES ("LASP","322");
INSERT INTO CSSocialSciences
	VALUES ("LASP","325");
INSERT INTO CSSocialSciences
	VALUES ("LASP","331");
INSERT INTO CSSocialSciences
	VALUES ("LASP","351");
INSERT INTO CSSocialSciences
	VALUES ("LASP","425");
INSERT INTO CSSocialSciences
	VALUES ("LASP","451");

INSERT INTO CSSocialSciences
	VALUES ("LING","300");
INSERT INTO CSSocialSciences
	VALUES ("LING","340");
INSERT INTO CSSocialSciences
	VALUES ("LING","442");
INSERT INTO CSSocialSciences
	VALUES ("LING","540");
INSERT INTO CSSocialSciences
	VALUES ("LING","541");
INSERT INTO CSSocialSciences
	VALUES ("LING","542");
INSERT INTO CSSocialSciences
	VALUES ("LING","543");
INSERT INTO CSSocialSciences
	VALUES ("LING","545");
INSERT INTO CSSocialSciences
	VALUES ("LING","567");
INSERT INTO CSSocialSciences
	VALUES ("LING","570");
INSERT INTO CSSocialSciences
	VALUES ("LING","600");

INSERT INTO CSSocialSciences
	VALUES ("POLI","101");
INSERT INTO CSSocialSciences
	VALUES ("POLI","103A");
INSERT INTO CSSocialSciences
	VALUES ("POLI","103B");
INSERT INTO CSSocialSciences
	VALUES ("POLI","103C");
INSERT INTO CSSocialSciences
	VALUES ("POLI","103D");
INSERT INTO CSSocialSciences
	VALUES ("POLI","105");
INSERT INTO CSSocialSciences
	VALUES ("POLI","121");
INSERT INTO CSSocialSciences
	VALUES ("POLI","201");
INSERT INTO CSSocialSciences
	VALUES ("POLI","300");
INSERT INTO CSSocialSciences
	VALUES ("POLI","302");
INSERT INTO CSSocialSciences
	VALUES ("POLI","303");
INSERT INTO CSSocialSciences
	VALUES ("POLI","304");
INSERT INTO CSSocialSciences
	VALUES ("POLI","305");
INSERT INTO CSSocialSciences
	VALUES ("POLI","307");
INSERT INTO CSSocialSciences
	VALUES ("POLI","315");
INSERT INTO CSSocialSciences
	VALUES ("POLI","316");
INSERT INTO CSSocialSciences
	VALUES ("POLI","330");
INSERT INTO CSSocialSciences
	VALUES ("POLI","340");
INSERT INTO CSSocialSciences
	VALUES ("POLI","341");
INSERT INTO CSSocialSciences
	VALUES ("POLI","342");
INSERT INTO CSSocialSciences
	VALUES ("POLI","350");
INSERT INTO CSSocialSciences
	VALUES ("POLI","352");
INSERT INTO CSSocialSciences
	VALUES ("POLI","353");
INSERT INTO CSSocialSciences
	VALUES ("POLI","357");
INSERT INTO CSSocialSciences
	VALUES ("POLI","360");
INSERT INTO CSSocialSciences
	VALUES ("POLI","361");
INSERT INTO CSSocialSciences
	VALUES ("POLI","362");
INSERT INTO CSSocialSciences
	VALUES ("POLI","363");
INSERT INTO CSSocialSciences
	VALUES ("POLI","364");
INSERT INTO CSSocialSciences
	VALUES ("POLI","365");
INSERT INTO CSSocialSciences
	VALUES ("POLI","368");
INSERT INTO CSSocialSciences
	VALUES ("POLI","370");
INSERT INTO CSSocialSciences
	VALUES ("POLI","374");
INSERT INTO CSSocialSciences
	VALUES ("POLI","380");
INSERT INTO CSSocialSciences
	VALUES ("POLI","383");
INSERT INTO CSSocialSciences
	VALUES ("POLI","406");
INSERT INTO CSSocialSciences
	VALUES ("POLI","417");
INSERT INTO CSSocialSciences
	VALUES ("POLI","421");
INSERT INTO CSSocialSciences
	VALUES ("POLI","432");
INSERT INTO CSSocialSciences
	VALUES ("POLI","433");
INSERT INTO CSSocialSciences
	VALUES ("POLI","440");
INSERT INTO CSSocialSciences
	VALUES ("POLI","442");
INSERT INTO CSSocialSciences
	VALUES ("POLI","443");
INSERT INTO CSSocialSciences
	VALUES ("POLI","446");
INSERT INTO CSSocialSciences
	VALUES ("POLI","448");
INSERT INTO CSSocialSciences
	VALUES ("POLI","450");
INSERT INTO CSSocialSciences
	VALUES ("POLI","451");
INSERT INTO CSSocialSciences
	VALUES ("POLI","452");
INSERT INTO CSSocialSciences
	VALUES ("POLI","463");
INSERT INTO CSSocialSciences
	VALUES ("POLI","470");
INSERT INTO CSSocialSciences
	VALUES ("POLI","477");
INSERT INTO CSSocialSciences
	VALUES ("POLI","480");
INSERT INTO CSSocialSciences
	VALUES ("POLI","483");

INSERT INTO CSSocialSciences
	VALUES ("PSYC","101");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","300");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","301");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","310");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","330");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","360");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","380");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","400");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","405");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","410");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","420");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","430");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","440");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","450");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","460");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","465");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","470");
INSERT INTO CSSocialSciences
	VALUES ("PSYC","487");

INSERT INTO CSSocialSciences
	VALUES ("SOCY","101");

INSERT INTO CSSocialSciences
	VALUES ("SOST","301");
INSERT INTO CSSocialSciences
	VALUES ("SOST","305");

INSERT INTO CSSocialSciences
	VALUES ("WGST","112");
INSERT INTO CSSocialSciences
	VALUES ("WGST","210");
INSERT INTO CSSocialSciences
	VALUES ("WGST","300");
INSERT INTO CSSocialSciences
	VALUES ("WGST","301");
INSERT INTO CSSocialSciences
	VALUES ("WGST","304");
INSERT INTO CSSocialSciences
	VALUES ("WGST","305");
INSERT INTO CSSocialSciences
	VALUES ("WGST","307");
INSERT INTO CSSocialSciences
	VALUES ("WGST","308");
INSERT INTO CSSocialSciences
	VALUES ("WGST","310");
INSERT INTO CSSocialSciences
	VALUES ("WGST","351");
INSERT INTO CSSocialSciences
	VALUES ("WGST","352");
INSERT INTO CSSocialSciences
	VALUES ("WGST","358");
INSERT INTO CSSocialSciences
	VALUES ("WGST","454");
INSERT INTO CSSocialSciences
	VALUES ("WGST","525");
INSERT INTO CSSocialSciences
	VALUES ("WGST","554");
INSERT INTO CSSocialSciences
	VALUES ("WGST","555");

-- populate table for choices for Foreign Language requirement

INSERT INTO CSForeignLang
	VALUES ("ARAB","121");
INSERT INTO CSForeignLang
	VALUES ("ARAB","201");
INSERT INTO CSForeignLang
	VALUES ("ARAB","301");
INSERT INTO CSForeignLang
	VALUES ("ARAB","399");
INSERT INTO CSForeignLang
	VALUES ("ARAB","615");
INSERT INTO CSForeignLang
	VALUES ("ARAB","777");
INSERT INTO CSForeignLang
	VALUES ("ARAB","122");
INSERT INTO CSForeignLang
	VALUES ("ARAB","202");
INSERT INTO CSForeignLang
	VALUES ("ARAB","302");
INSERT INTO CSForeignLang
	VALUES ("ARAB","312");

INSERT INTO CSForeignLang
	VALUES ("CHIN","121");
INSERT INTO CSForeignLang
	VALUES ("CHIN","221");
INSERT INTO CSForeignLang
	VALUES ("CHIN","321");
INSERT INTO CSForeignLang
	VALUES ("CHIN","398H");
INSERT INTO CSForeignLang
	VALUES ("CHIN","398S");
INSERT INTO CSForeignLang
	VALUES ("CHIN","398T");
INSERT INTO CSForeignLang
	VALUES ("CHIN","399");
INSERT INTO CSForeignLang
	VALUES ("CHIN","777");
INSERT INTO CSForeignLang
	VALUES ("CHIN","122");
INSERT INTO CSForeignLang
	VALUES ("CHIN","222");
INSERT INTO CSForeignLang
	VALUES ("CHIN","322");
INSERT INTO CSForeignLang
	VALUES ("CHIN","298D");
INSERT INTO CSForeignLang
	VALUES ("CHIN","398U");

INSERT INTO CSForeignLang
	VALUES ("FREN","109");
INSERT INTO CSForeignLang
	VALUES ("FREN","110");
INSERT INTO CSForeignLang
	VALUES ("FREN","121");
INSERT INTO CSForeignLang
	VALUES ("FREN","122");
INSERT INTO CSForeignLang
	VALUES ("FREN","209");
INSERT INTO CSForeignLang
	VALUES ("FREN","210");
INSERT INTO CSForeignLang
	VALUES ("FREN","307");
INSERT INTO CSForeignLang
	VALUES ("FREN","309");
INSERT INTO CSForeignLang
	VALUES ("FREN","310");
INSERT INTO CSForeignLang
	VALUES ("FREN","316");
INSERT INTO CSForeignLang
	VALUES ("FREN","397");
INSERT INTO CSForeignLang
	VALUES ("FREN","399");
INSERT INTO CSForeignLang
	VALUES ("FREN","451");
INSERT INTO CSForeignLang
	VALUES ("FREN","453");
INSERT INTO CSForeignLang
	VALUES ("FREN","516");
INSERT INTO CSForeignLang
	VALUES ("FREN","735");
INSERT INTO CSForeignLang
	VALUES ("FREN","777");
INSERT INTO CSForeignLang
	VALUES ("FREN","795");
INSERT INTO CSForeignLang
	VALUES ("FREN","796");
INSERT INTO CSForeignLang
	VALUES ("FREN","799");
INSERT INTO CSForeignLang
	VALUES ("FREN","290");
INSERT INTO CSForeignLang
	VALUES ("FREN","300");
INSERT INTO CSForeignLang
	VALUES ("FREN","311");
INSERT INTO CSForeignLang
	VALUES ("FREN","330");
INSERT INTO CSForeignLang
	VALUES ("FREN","450");
INSERT INTO CSForeignLang
	VALUES ("FREN","499");
INSERT INTO CSForeignLang
	VALUES ("FREN","501");
INSERT INTO CSForeignLang
	VALUES ("FREN","517");
INSERT INTO CSForeignLang
	VALUES ("FREN","615");
INSERT INTO CSForeignLang
	VALUES ("FREN","700");
INSERT INTO CSForeignLang
	VALUES ("FREN","790");

INSERT INTO CSForeignLang
	VALUES ("GERM","109");
INSERT INTO CSForeignLang
	VALUES ("GERM","110");
INSERT INTO CSForeignLang
	VALUES ("GERM","121");
INSERT INTO CSForeignLang
	VALUES ("GERM","122");
INSERT INTO CSForeignLang
	VALUES ("GERM","210");
INSERT INTO CSForeignLang
	VALUES ("GERM","211");
INSERT INTO CSForeignLang
	VALUES ("GERM","310");
INSERT INTO CSForeignLang
	VALUES ("GERM","311");
INSERT INTO CSForeignLang
	VALUES ("GERM","316");
INSERT INTO CSForeignLang
	VALUES ("GERM","398A");
INSERT INTO CSForeignLang
	VALUES ("GERM","399");
INSERT INTO CSForeignLang
	VALUES ("GERM","401P");
INSERT INTO CSForeignLang
	VALUES ("GERM","411");
INSERT INTO CSForeignLang
	VALUES ("GERM","500");
INSERT INTO CSForeignLang
	VALUES ("GERM","777");
INSERT INTO CSForeignLang
	VALUES ("GERM","780N");
INSERT INTO CSForeignLang
	VALUES ("GERM","790");
INSERT INTO CSForeignLang
	VALUES ("GERM","799");
INSERT INTO CSForeignLang
	VALUES ("GERM","340");
INSERT INTO CSForeignLang
	VALUES ("GERM","416");
INSERT INTO CSForeignLang
	VALUES ("GERM","460");
INSERT INTO CSForeignLang
	VALUES ("GERM","510");
INSERT INTO CSForeignLang
	VALUES ("GERM","515");
INSERT INTO CSForeignLang
	VALUES ("GERM","615");
INSERT INTO CSForeignLang
	VALUES ("GERM","700");

INSERT INTO CSForeignLang
	VALUES ("LATN","109");
INSERT INTO CSForeignLang
	VALUES ("LATN","110");
INSERT INTO CSForeignLang
	VALUES ("LATN","121");
INSERT INTO CSForeignLang
	VALUES ("LATN","122");
INSERT INTO CSForeignLang
	VALUES ("LATN","301");
INSERT INTO CSForeignLang
	VALUES ("LATN","537");
INSERT INTO CSForeignLang
	VALUES ("LATN","560");
INSERT INTO CSForeignLang
	VALUES ("LATN","502");
INSERT INTO CSForeignLang
	VALUES ("LATN","561");

INSERT INTO CSForeignLang
	VALUES ("SPAN","109");
INSERT INTO CSForeignLang
	VALUES ("SPAN","111");
INSERT INTO CSForeignLang
	VALUES ("SPAN","121");
INSERT INTO CSForeignLang
	VALUES ("SPAN","122");
INSERT INTO CSForeignLang
	VALUES ("SPAN","207");
INSERT INTO CSForeignLang
	VALUES ("SPAN","209");
INSERT INTO CSForeignLang
	VALUES ("SPAN","210");
INSERT INTO CSForeignLang
	VALUES ("SPAN","300");
INSERT INTO CSForeignLang
	VALUES ("SPAN","301");
INSERT INTO CSForeignLang
	VALUES ("SPAN","305");
INSERT INTO CSForeignLang
	VALUES ("SPAN","309");
INSERT INTO CSForeignLang
	VALUES ("SPAN","310");
INSERT INTO CSForeignLang
	VALUES ("SPAN","312");
INSERT INTO CSForeignLang
	VALUES ("SPAN","316");
INSERT INTO CSForeignLang
	VALUES ("SPAN","317");
INSERT INTO CSForeignLang
	VALUES ("SPAN","380A");
INSERT INTO CSForeignLang
	VALUES ("SPAN","398D");
INSERT INTO CSForeignLang
	VALUES ("SPAN","399");
INSERT INTO CSForeignLang
	VALUES ("SPAN","401");
INSERT INTO CSForeignLang
	VALUES ("SPAN","405");
INSERT INTO CSForeignLang
	VALUES ("SPAN","515");
INSERT INTO CSForeignLang
	VALUES ("SPAN","752");
INSERT INTO CSForeignLang
	VALUES ("SPAN","777");
INSERT INTO CSForeignLang
	VALUES ("SPAN","783A");
INSERT INTO CSForeignLang
	VALUES ("SPAN","796");
INSERT INTO CSForeignLang
	VALUES ("SPAN","799");
INSERT INTO CSForeignLang
	VALUES ("SPAN","110");
INSERT INTO CSForeignLang
	VALUES ("SPAN","220");
INSERT INTO CSForeignLang
	VALUES ("SPAN","375V");
INSERT INTO CSForeignLang
	VALUES ("SPAN","380B");
INSERT INTO CSForeignLang
	VALUES ("SPAN","400");
INSERT INTO CSForeignLang
	VALUES ("SPAN","404");
INSERT INTO CSForeignLang
	VALUES ("SPAN","417");
INSERT INTO CSForeignLang
	VALUES ("SPAN","516");
INSERT INTO CSForeignLang
	VALUES ("SPAN","538");
INSERT INTO CSForeignLang
	VALUES ("SPAN","700");
INSERT INTO CSForeignLang
	VALUES ("SPAN","765");
INSERT INTO CSForeignLang
	VALUES ("SPAN","880");

INSERT INTO CSForeignLang
	VALUES ("RUSS","121");
INSERT INTO CSForeignLang
	VALUES ("RUSS","201");
INSERT INTO CSForeignLang
	VALUES ("RUSS","301");
INSERT INTO CSForeignLang
	VALUES ("RUSS","319");
INSERT INTO CSForeignLang
	VALUES ("RUSS","319L");
INSERT INTO CSForeignLang
	VALUES ("RUSS","399");
INSERT INTO CSForeignLang
	VALUES ("RUSS","401");
INSERT INTO CSForeignLang
	VALUES ("RUSS","598F");
INSERT INTO CSForeignLang
	VALUES ("RUSS","777");
INSERT INTO CSForeignLang
	VALUES ("RUSS","790");
INSERT INTO CSForeignLang
	VALUES ("RUSS","122");
INSERT INTO CSForeignLang
	VALUES ("RUSS","202");
INSERT INTO CSForeignLang
	VALUES ("RUSS","280");
INSERT INTO CSForeignLang
	VALUES ("RUSS","302");
INSERT INTO CSForeignLang
	VALUES ("RUSS","402");
INSERT INTO CSForeignLang
	VALUES ("RUSS","598B");
INSERT INTO CSForeignLang
	VALUES ("RUSS","598G");

INSERT INTO CSForeignLang
	VALUES ("SWAH","121");
INSERT INTO CSForeignLang
	VALUES ("SWAH","122");

INSERT INTO CSForeignLang
	VALUES ("ITAL","121");
INSERT INTO CSForeignLang
	VALUES ("ITAL","221");
INSERT INTO CSForeignLang
	VALUES ("ITAL","399");
INSERT INTO CSForeignLang
	VALUES ("ITAL","400");
INSERT INTO CSForeignLang
	VALUES ("ITAL","122");
INSERT INTO CSForeignLang
	VALUES ("ITAL","222");
INSERT INTO CSForeignLang
	VALUES ("ITAL","411");

INSERT INTO CSForeignLang
	VALUES ("JAPA","121");
INSERT INTO CSForeignLang
	VALUES ("JAPA","221");
INSERT INTO CSForeignLang
	VALUES ("JAPA","240");
INSERT INTO CSForeignLang
	VALUES ("JAPA","321");
INSERT INTO CSForeignLang
	VALUES ("JAPA","350");
INSERT INTO CSForeignLang
	VALUES ("JAPA","399");
INSERT INTO CSForeignLang
	VALUES ("JAPA","421");
INSERT INTO CSForeignLang
	VALUES ("JAPA","122");
INSERT INTO CSForeignLang
	VALUES ("JAPA","222");
INSERT INTO CSForeignLang
	VALUES ("JAPA","322");
INSERT INTO CSForeignLang
	VALUES ("JAPA","340");
INSERT INTO CSForeignLang
	VALUES ("JAPA","353");
INSERT INTO CSForeignLang
	VALUES ("JAPA","398K");
INSERT INTO CSForeignLang
	VALUES ("JAPA","422");

INSERT INTO CSForeignLang
	VALUES ("ASLG","121");
INSERT INTO CSForeignLang
	VALUES ("ASLG","122");

INSERT INTO CSForeignLang
	VALUES ("GREK","121");
INSERT INTO CSForeignLang
	VALUES ("GREK","321");
INSERT INTO CSForeignLang
	VALUES ("GREK","550");
INSERT INTO CSForeignLang
	VALUES ("GREK","560");
INSERT INTO CSForeignLang
	VALUES ("GREK","122");
INSERT INTO CSForeignLang
	VALUES ("GREK","399");
INSERT INTO CSForeignLang
	VALUES ("GREK","534");
INSERT INTO CSForeignLang
	VALUES ("GREK","561");

INSERT INTO CSForeignLang
	VALUES ("KORE","121");
INSERT INTO CSForeignLang
	VALUES ("KORE","122");

INSERT INTO CSForeignLang
	VALUES ("PORT","121");
INSERT INTO CSForeignLang
	VALUES ("PORT","122");
INSERT INTO CSForeignLang
	VALUES ("PORT","299");
INSERT INTO CSForeignLang
	VALUES ("PORT","399");
INSERT INTO CSForeignLang
	VALUES ("PORT","615");

-- populate table for choices for extra Liberal Arts requirement

INSERT INTO CSLiberalArts
	VALUES ("AFRO","201");
INSERT INTO CSLiberalArts
	VALUES ("AFRO","202");

INSERT INTO CSLiberalArts
	VALUES ("CLAS","220");
INSERT INTO CSLiberalArts
	VALUES ("CLAS","230");

INSERT INTO CSLiberalArts
	VALUES ("ENGL","270");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","282");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","283");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","284");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","285");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","285C");
INSERT INTO CSLiberalArts
	VALUES ("ENGL","286");

INSERT INTO CSLiberalArts
	VALUES ("PHIL","102");

INSERT INTO CSLiberalArts
	VALUES ("RELG","110");

INSERT INTO CSLiberalArts
	VALUES ("WGST","111");

INSERT INTO CSLiberalArts
	VALUES ("AERO","401");
INSERT INTO CSLiberalArts
	VALUES ("AERO","402");

INSERT INTO CSLiberalArts
	VALUES ("CPLT","270");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","301");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","380");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","381");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","384");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","415A");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","415B");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","499");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","700");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","701");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","750N");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","777");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","799");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","895");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","896");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","899");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","302");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","702");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","703");
INSERT INTO CSLiberalArts
	VALUES ("CPLT","880N");

-- populate table for choices for lower division Computer Science electives

INSERT INTO CSLowerDiv
	VALUES ("CSCE","204");
INSERT INTO CSLowerDiv
	VALUES ("CSCE","205");
INSERT INTO CSLowerDiv
	VALUES ("CSCE","206");
INSERT INTO CSLowerDiv
	VALUES ("CSCE","207");
INSERT INTO CSLowerDiv
	VALUES ("CSCE","242");


-- populate table for choices for upper division Computer Science electives

INSERT INTO CSUpperDiv
	VALUES ("CSCE","317");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","513");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","522");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","580");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","590C");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","611");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","715");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","750");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","774");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","782");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","790B");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","790C");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","791");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","797");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","798");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","799");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","815");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","824");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","899");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","520");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","526");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","531");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","548");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","551");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","574");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","582");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","590D");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","713");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","719");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","763");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","768");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","883");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","555");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","565");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","567");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","569");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","517");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","552");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","564");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","587");
INSERT INTO CSUpperDiv
	VALUES ("CSCE","561");

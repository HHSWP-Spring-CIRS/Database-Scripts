use a1605352;

CREATE TABLE Category (
    id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    budgetLimit DECIMAL(15 , 2 ) NOT NULL,
    isActive BOOLEAN NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (id)
);
alter table Category Auto_Increment =101;

CREATE TABLE Idea (
    id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(3000) NOT NULL,
    budget DECIMAL(12 , 4 ) NOT NULL,
    isReadyForComments BOOLEAN NOT NULL,
    peopleNeeded INTEGER NOT NULL,
    creationDate date NOT NULL,
    lastModifed TIMESTAMP NOT NULL DEFAULT NOW(),
    categoryId INTEGER NOT NULL,
    CONSTRAINT pk_Idea PRIMARY KEY (id),
    CONSTRAINT fk_Idea_Category FOREIGN KEY (categoryId)
        REFERENCES Category (id)
);
alter table Idea Auto_Increment =201;

CREATE TABLE Member (
    id INTEGER NOT NULL AUTO_INCREMENT,
    userName VARCHAR(200) NOT NULL,
    email VARCHAR(400) NOT NULL,
    CONSTRAINT pk_Member PRIMARY KEY (id)
);
alter table Member auto_increment=301;

CREATE TABLE Comment (
    memberId INTEGER NOT NULL,
    ideaId INTEGER NOT NULL,
    commentTimeStamp TIMESTAMP NOT NULL DEFAULT NOW(),
    commentLine VARCHAR(200) NOT NULL,
    CONSTRAINT pk_Comment PRIMARY KEY (memberId , ideaId , commentTimeStamp),
    CONSTRAINT fk_Comment_Member FOREIGN KEY (memberId)
        REFERENCES Member (id),
    CONSTRAINT fk_Comment_Idea FOREIGN KEY (ideaId)
        REFERENCES Idea (id)
);
alter table Comment auto_increment=401;

CREATE TABLE MemberIdea (
    memberId INTEGER NOT NULL,
    ideaId INTEGER NOT NULL,
    CONSTRAINT pk_MemberIdea PRIMARY KEY (memberId , ideaId),
    CONSTRAINT fk_MemberIdea_Member FOREIGN KEY (memberId)
        REFERENCES Member (id),
    CONSTRAINT fk_MemberIdea_Idea FOREIGN KEY (ideaId)
        REFERENCES Idea (id)
);
alter table MemberIdea auto_increment=501;



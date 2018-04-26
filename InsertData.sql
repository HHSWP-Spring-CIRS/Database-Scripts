use a1605352;


Insert into Category
(title,budgetLimit,isActive)
values('great idea 1',15.90,1);

Insert into Category
(title,budgetLimit,isActive)
values('great idea 2',17.90,0);

Insert into Category
(title,budgetLimit,isActive)
values('great idea 3',100.4,1);

Insert into Category
(title,budgetLimit,isActive)
values('great idea 4',145.12,0);

Insert into Category
(title,budgetLimit,isActive)
values('great idea 5',78.4,1);



Insert into Idea
(title,description,budget,isReadyForComments,peopleNeeded,categoryId,creationDate)
values('1 idea','ololololo',671.90,1,12,101,curdate());

Insert into Idea
(title,description,budget,isReadyForComments,peopleNeeded,categoryId,creationDate)
values('2 idea','ololololo',614.90,1,22,102,curdate());

Insert into Idea
(title,description,budget,isReadyForComments,peopleNeeded,categoryId,creationDate)
values('3 idea','Trololololo',611234.90,0,2,103,curdate());

Insert into Idea
(title,description,budget,isReadyForComments,peopleNeeded,categoryId,creationDate)
values('4 idea','Nanananan',100.12,1,78,104,curdate());

Insert into Idea
(title,description,budget,isReadyForComments,peopleNeeded,categoryId,creationDate)
values('5 idea','Desc',120.12,0,78,105,curdate());

insert into Member
(userName,email)values('firstUser','firstUser@data.com');

insert into Member
(userName,email)values('secondUser','secondUser@data.com');

insert into Member
(userName,email)values('thirdUser','thirdUser@data.com');

insert into Member
(userName,email)values('forhtUser','forthUser@data.com');

insert into Member
(userName,email)values('fifthUser','fifthUser@data.com');

insert into Comment
(memberId,ideaId,commentLine)
values(301,202,'first comment here');

insert into Comment
(memberId,ideaId,commentLine)
values(302,203,'second comment here');

insert into Comment
(memberId,ideaId,commentLine)
values(303,204,'Third comment here');

insert into MemberIdea
(memberId,ideaId)
values(301,201);






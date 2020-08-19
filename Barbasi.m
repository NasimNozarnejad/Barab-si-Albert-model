clc
clear
A=zeros(202,202); 
i=5;
A(1,2)=1;
A(2,1)=1;
A(1,3)=1;
A(3,1)=1;
A(3,4)=1;
A(4,3)=1;
A(2,4)=1;
A(4,2)=1;
A(1,4)=1;
A(4,1)=1;
A(2,3)=1;
A(3,2)=1;
c=4;
j1=0;
NUM=0;
for j=1:200
    R=1;R2=1;R3=1;
ehtemal=0;ehtemal2=0;ehtemal3=0;
 NUM=NUM+1
    while R>ehtemal || R2>ehtemal2|| R==ehtemal ||R2==ehtemal2 || R3==ehtemal ||R3>ehtemal3
        %nod=randperm(c,3);
nod=randi(c);
nod2=randi(c);
nod3=randi(c);
while nod2==nod || nod2==nod3
    nod2=randi(c);
end
while nod3==nod 
    nod3=randi(c);
end
b=sum(A');
%[row1,col1]=find(A(nod,:)==1);
%[row2,col2]=find(A(nod2,:)==1);
%[row3,col3]=find(A(nod3,:)==1);
%kol=sum(sum(A));
%Derae=sum(b(col1(1,:)));
%Derae2=sum(b(col2(1,:)));
%Derae3=sum(b(col3(1,:)));
%ehtemal=Derae/kol;
%ehtemal2=Derae2/kol;
%ehtemal3=Derae3/kol;
Derae=b(nod);
Derae2=b(nod2);
Derae3=b(nod3);
kol=sum(sum(A));
ehtemal=Derae/kol;
ehtemal2=Derae2/kol;
ehtemal3=Derae3/kol;
R=rand;
R2=rand;
R3=rand;
if R<ehtemal& R2<ehtemal2&  R3<ehtemal3
 A(nod,nod)=0;
    A(nod,i)=1;
    A(i,nod)=1;
    A(nod2,nod2)=0;
    A(nod2,i)=1;
    A(i,nod2)=1;
    A(nod3,i)=1;
    A(i,nod3)=1;
    c=c+1;
    i=i+1;
    end
end

end
d=sum(A');
kol=sum(sum(d));
S=unique(d)
j1=length(S)
for h=1:j1
N(1,(j1+1-h)) = length(find(d == S(j1+1-h)));
p(1,(j1+1-h))=sum(N)/c;
k(1,(j1+1-h))=S(j1+1-h);
end
LOG=log(p);
LOG1=log(k)
plot(LOG1,LOG,'o');

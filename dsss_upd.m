clc
close all
clear all
Source1=0
subplot(4,4,1)
stem(Source1);
title('Station 1')
for i=1
    if Source1(i)==0
        Source1(i)=-1;
    end
    
end


Source2=0
subplot(4,4,2)

stem(Source2);
title('Station 2')
for i=1
    if Source2(i)==0
        Source2(i)=-1;
    end
    
end


Source3=0
subplot(4,4,3)

stem(Source3);
title('Station 3')
for i=1
    if Source3(i)==0
        Source3(i)=-1;
    end
    
end


Source4=1
subplot(4,4,4)

stem(Source4);
title('Station 4')
for i=1
    if Source4(i)==0
        Source4(i)=-1;
    end
    
end


b=[1 1 1 1];
for i=1:4
    if b(i)==0
        b(i)=-1;
    end
    
end
subplot(4,4,5)

stairs(b);
title('Pseudo 1')
axis([0 5 -2 2])
s=1;

for i=1:4
    c(s)=Source1*b(i);
    s=s+1;
end
subplot(4,4,6)

stairs(c);
title('DSSS 1')
axis([0 5 -2 2])

d=[1 -1 1 -1];
for i=1:4
    if d(i)==0
        d(i)=-1;
    end
    
end
subplot(4,4,7)

stairs(d);
title('Pseudo 2')
axis([0 5 -2 2])
s=1;

for i=1:4
    e(s)=Source2*d(i);
    s=s+1;
end
subplot(4,4,8)

stairs(e);
title('DSSS 2')
axis([0 5 -2 2])

f=[1 1 -1 -1];
for i=1:4
    if f(i)==0
        f(i)=-1;
    end
    
end
subplot(4,4,9)

stairs(f);
title('Pseudo 3')
axis([0 5 -2 2])
s=1;

for i=1:4
    g(s)=Source3*f(i);
    s=s+1;
end
subplot(4,4,10)

stairs(g);
title('DSSS 3')
axis([0 5 -2 2])

h=[1 -1 -1 1];
for i=1:4
    if h(i)==0
        h(i)=-1;
    end
    
end
subplot(4,4,11)

stairs(h);
title('Pseudo 4')
axis([0 5 -2 2])
s=1;

for i=1:4
    n(s)=Source4*h(i);
    s=s+1;
end
subplot(4,4,12)

stairs(n);
title('DSSS 4')
axis([0 5 -2 2])

for i=1:4
o(i)=c(i)+e(i)+g(i)+n(i);
end
disp('Data present in the Channel')
disp(o)
subplot(4,4,14.5)
stairs(o);
title('Channel')
axis([0 5 -2 2])
for i=1:4
    if o(i)==0
        o(i)=-1;
    end
end

Receiver = input('Enter the receiver station : ')
if Receiver == 1
    select = input('Enter the transmitter station : ');
switch select 
    case 2
        for i=1:4
            p(i)=d(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
        for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
        end
        disp('Data = ')
        disp(Databit)
    case 3
        for i=1:4
            p(i)=f(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 4
        for i=1:4
            p(i)=h(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
        
end 
end

if Receiver == 2
    select = input('Enter the transmitter station : ');
switch select 
    case 1
        for i=1:4
            p(i)=b(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 3
        for i=1:4
            p(i)=f(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 4
        for i=1:4
            p(i)=h(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
        
end 
end
if Receiver == 3
    select = input('Enter the transmitter station : ');
switch select 
    case 1
        for i=1:4
            p(i)=b(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 2
        for i=1:4
            p(i)=d(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 4
        for i=1:4
            p(i)=h(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
        
end 
end
if Receiver == 4
    select = input('Enter the transmitter station : ');
switch select 
    case 1
        for i=1:4
            p(i)=b(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 2
        for i=1:4
            p(i)=d(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
    case 3
        for i=1:4
            p(i)=f(i)*o(i);
        end
        op1=p(1)+p(2)+p(3)+p(4);
        Databit=(op1)/4;
         for i=1
         if Databit(i)==-1
            Databit(i)=0;
         end
    
         end
        disp('Data = ')
        disp(Databit)
        
end 
end

            
    

        
        


    



       
        
    

    

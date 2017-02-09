clear all
%ESTRUCTURES 2D

%DEFINICIÓ DE LA SUPERFICIE (MALLADO)
N=1000;                            %GRANDARIA DEL CUADRAT----CAL NOMBRE PAR!!!
E = zeros(N);              %MALLAT
x=0:1:N;
y=0:1:N;
%OJO!! CAL FER QUE LA MATRIU SIGUI CUADRADA PERO MULTIPLICACIÓ DE ÍNDEXS PARS(PER A PODER DIVIDR)
i;
j;

ultimageneracio=50;
generacio=1;

%CONDICIONS INICIALS
E(1,1)=true;

for i=450:1:600;
    for j=450:1:600;
    
    E(i,j)=true;
    end
end



for k=1:1:100
    i=int16(rand(1)*1000);
    j=int16(rand(1)*1000);
    E(i,j)=true;
  
end

%FINS AQUI SON EXEMPLES DE CONDICIONS INICIALS PER POSAR, POSAR EL QUE ES
%VULGUI.

%COS DEL PROGRAMA

%CONDICIONS DE CONTORN.
for k=1:generacio:ultimageneracio;
    for i=3:1:N-3;
        for j=3:1:N-3;
       
            %CONDICIO DE FER TRUE ELS DE SOBRE i els de l'esquerra
             if E(i,j)==true; %cal posar el doble = als ifs  
                  E(i-1,j)= true;
                  E(i,j-1)= true;
                  E(i,j)= false;
             end               
        end
    end
   
                                 %# Get the matrix size
              axis ([0 100 0 100])
                imagesc((1:j)+0.5,(1:i)+0.5,E);            %# Plot the image
                colormap(gray);   %# Use a gray colormap
        pause(0.01)
  
        end

        

       
d = importdata('Ray2.xlsx'); %import data
n = length(d.data); %number of data rows
n_mes = length(d.textdata(1,:)) - 2; %number of measurments

%Get time stamps
t = zeros(length(d.textdata) - 1); %total time array
formatIn = 'dd. mm. yyyy HH:MM'; %import format
for i=2:length(d.textdata)
    t(i-1) = datenum(d.textdata(i,1),formatIn);
end;

%Find all serial numbers of units
serial = [];
serial(1) = d.data(1,1);
k = 2;
for i=2:n
    w = true; 
    for j=1:k-1
       if (d.data(i,1) == serial(j))
           w = false;
       end;
    end;
    
    if(w)
       serial(k) = d.data(i,1); 
       k=k+1;
    end;
end;

n_units = length(serial); %number of units in the measurement

%Get data
D = []; %data[measurment][unit][values]
tt = []; %time array tt[unit][time]
start_n = zeros(n_mes, n_units); %starting point for each measurement start_n[measurement][unit]
end_n = []; %end point for each unit end_n[unit]
unit = 1; %start wih first unit
k = 1; %measuremnts count

%loop over all data
for i=1:n
   
    %Check if next unit
    if(d.data(i,1) ~= serial(unit))
        %check start values
        for j=1:n_mes
            if(start_n(j,unit) == 0)
                start_n(j,unit) = end_n(unit);
            end;
        end;
        unit = unit+1;
        k = 1;
    end;
    
    %loop over the measurements
    for j=1:n_mes
        % Check if value is defined
        if( ~isnan(d.data(i,j+1)) ) 
            D(j,unit,k) = d.data(i,j+1);
            
            %Set start point to first value
            if(start_n(j,unit) == 0)
                start_n(j,unit) = k;
            end;
        % Value is NaN and first measurment point   
        elseif (k==1)
            D(j,unit,k) = 0;
        % Value is NaN and not first measurment point 
        else
             D(j,unit,k) =   D(j,unit,k-1);
        end; 
    end;
    
    tt(unit,k) = t(i);
    end_n(unit) = k;
    k = k+1;
end;

for i =1:n_mes
    for j = 1:n_units
        if(start_n(i,j) == 0)
                start_n(i,j) = end_n(j);
            end;
    end;
end;

%Simple data filter
fs = 15; %filter sample
if(fs > n/50)
    fs = round(n/50);
end;
DA = []; % average data[measurment][unit][values]
M = []; %mean data
%loop over measurments
for i=1:n_mes
    
    %loop over units
    for j=1:n_units
        %loop over measurments
        if(start_n(i,j) + fs > length(D))
            
                for k =1:start_n(i,j)
                    DA(i,j,k) = D(i,j,k);
                end;
                for k=start_n(i,j):end_n(j)
                    sum = 0;
                    for l=1:fs
                        sum = sum + D(i,j,k-l);
                    end;
                    DA(i,j,k) = sum/fs;
                end;
        else
            for k =1:start_n(i,j) + fs
                DA(i,j,k) = D(i,j,k);
            end;
            for k=start_n(i,j)+fs+1:end_n(j)
                sum = 0;
                for l=1:fs
                    sum = sum + D(i,j,k-l);
                end;
                DA(i,j,k) = sum/fs;
            end;
        end;
    end;
end;

%Find data mean
tt_mean = []; %time array for mean data tt_mean[meas][t]
%loop over measurments
for i=1:n_mes
    
    t_min = tt(1, start_n(i,1)); %min and max times of mean time
    t_max = tt(1, end_n(1));
    
    %loop over units
    for j=1:n_units
        
        %determine min and max tiome
       if(t_min < tt(j, start_n(i,j)))
           t_min = tt(j, start_n(i,j));
       end;
       if(t_max > tt(j, end_n(j)))
           t_max = tt(j, end_n(j));
       end;
    end;
    
    %Compute time array for measurement
    tt_mean(i,:) = linspace(t_min, t_max, 100); 
    
    y = zeros(n_units,100); %create extrapolation to mean time array
     %loop over units
     n_extrap = n_units;
    for j=1:n_units
        %remove repeated points
        [x, index] = unique(tt(j,start_n(i,j)+2:end_n(j)-2)); 
%         copy interpolation datat points
        for k=1:length(index)
            index(k) = index(k) + start_n(i,j);
        end;
        if(length(index) > 2)
            y(j,:) = interp1( x, squeeze( D( i,j,index ) ), tt_mean(i,:), 'linear', 'extrap');
            %y(j,:) = interp1( tt(j,start_n(i,j):end_n(j)), squeeze(D(i,j,start_n(i,j):end_n(j))), tt_mean(i), 'linear', 'extrap');
        else
            n_extrap = n_extrap -1;
        end;
    end;
    
    %calculate mean
    for k=1:length(tt_mean)
        M(i,k) = 0;
        for j=1:n_units
             M(i,k) =  M(i,k)+ y(j,k);
        end;
        M(i,k) =  M(i,k)/n_extrap;
    end;
end;

%Create new folder
folder = datestr(now, 'yyyymmddTHHMMSS');
mkdir(folder);
cc=hsv(n_units); %create array of different colors

%find start time
t_start = t(1);

%loop over measurements to produce plots
for i=1:n_mes
    f = figure(i);
    hold on;
    set(f, 'Position', [100, 100, 800, 500]);
    %plot all units
    for j=1:n_units
        scatter((tt(j,start_n(i,j):end_n(j))-t_start)*24, squeeze(D(i,j,start_n(i,j):end_n(j))),'DisplayName',num2str(serial(j)), 'MarkerEdgeColor', cc(j,:));
        plot((tt(j,start_n(i,j):end_n(j))-t_start)*24, squeeze(DA(i,j,start_n(i,j):end_n(j))),'DisplayName',num2str(serial(j)), 'color', cc(j,:),'LineWidth',1);
    end;
    
    %plot mean data
    plot((tt_mean(i,:)-t_start)*24,M(i,:),'r--','DisplayName','Mean','LineWidth',2.5);
    
    legend('show');
    mes = d.textdata(1,i + 2);
    mes_text = mes{1};
    tit = title(mes_text); 
    set(tit,'Interpreter','none');
    lh=findall(gcf,'tag','legend');
     set(lh,'location','northeastoutside');
    savefig(f, fullfile(folder,mes_text));
    saveas(f, fullfile(folder,mes_text), 'png');
    %close(f);
end;



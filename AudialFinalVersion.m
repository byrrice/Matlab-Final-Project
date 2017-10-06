function AudialFinalVersion
gui = figure('Position', [1 800 900 700]);
static1 = uicontrol('Style', 'text', 'Position', [1 650 300 40]);
set(static1, 'String', 'Enter .wav file:')
edit1 = uicontrol('Style', 'edit', 'Position', [300 650 300 40]);
edit2 = uicontrol('Style', 'edit', 'Position', [160 390 150 40]);
edit3 = uicontrol('Style', 'edit', 'Position', [160 430 150 40]);
edit4 = uicontrol('Style', 'edit', 'Position', [1 525 200 40]);
edit5 = uicontrol('Style', 'edit', 'Position', [205 525 200 40]);
static3 = uicontrol('Style', 'text', 'Position', [1 390 150 30]);
set(static3, 'String', 'Insert frequencies here:')
static4 = uicontrol('Style', 'text', 'Position', [1 420 150 50]);
set(static4, 'String', 'Insert time here:')
static5 = uicontrol('Style', 'text', 'Position', [485 390 150 50]);
set(static5, 'String', 'Press clear to erase data to insert new values:')
static6 = uicontrol('Style', 'text', 'Position', [1 500 900 10]);
set(static6, 'String', '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------')
static7 = uicontrol('Style', 'text', 'Position', [1 360 900 10]);
set(static7, 'String', '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------')
buttona = uicontrol('Style', 'pushbutton', 'String', 'Clear','Position', [672 410 80 40],'Callback',@clearday);
buttonb = uicontrol('Style', 'pushbutton', 'String', 'Play','Position', [405 410 80 40],'Callback',@playgirl);
button0 = uicontrol('Style', 'pushbutton', 'String', 'Enter','Position', [325 410 80 40],'Callback',@storage); 
button1 = uicontrol('Style', 'pushbutton', 'String', 'Slow Down','Position', [1 575 200 40], 'Callback',@slowdown);
button2 = uicontrol('Style', 'pushbutton', 'String', 'Speed Up','Position', [205 575 200 40], 'Callback',@speedup);
button5 = uicontrol('Style', 'pushbutton', 'String', 'Play','Position', [410 575 200 40],'Callback',@playboy);
button6 = uicontrol('Style', 'pushbutton', 'String', 'Record','Position', [1 175 200 40],'Callback',@recording);
cbutton = uicontrol('Style', 'pushbutton', 'String', 'C (263.63Hz)','Position', [1 300 140 40],'Callback',@notec);
csharpbutton = uicontrol('Style', 'pushbutton', 'String', 'C#/Dflat(277.18Hz)','Position', [145 300 140 40],'Callback',@notecsharp);
dbutton = uicontrol('Style', 'pushbutton', 'String', 'D(293.66Hz)','Position', [289 300 140 40],'Callback',@noted);
dsharpbutton = uicontrol('Style', 'pushbutton', 'String', 'D#/Eflat(311.13Hz)','Position', [433 300 140 40],'Callback',@notedsharp);
ebuttom = uicontrol('Style', 'pushbutton', 'String', 'E(329.63Hz)','Position', [577 300 140 40],'Callback',@notee);
fbutton = uicontrol('Style', 'pushbutton', 'String', 'F(349.29Hz)','Position', [719 300 140 40],'Callback',@notef);
fsharpbutton = uicontrol('Style', 'pushbutton', 'String', 'F#/Gflat(369.99Hz)','Position', [1 250 140 40],'Callback',@notefsharp);
gbutton = uicontrol('Style', 'pushbutton', 'String', 'G(392Hz)','Position', [145 250 140 40],'Callback',@noteg);
gsharpbutton = uicontrol('Style', 'pushbutton', 'String', 'G#/Aflat(415.3)','Position', [289 250 140 40],'Callback',@notegsharp);
abutton = uicontrol('Style', 'pushbutton', 'String', 'A(440)','Position', [433 250 140 40],'Callback',@notea);
asharpbutton = uicontrol('Style', 'pushbutton', 'String', 'A#/Bflat(466.16Hz)','Position', [577 250 140 40], 'Callback', @noteasharp);
bbutton = uicontrol('Style', 'pushbutton', 'String', 'B(493.88Hz)','Position', [719 250 140 40],'Callback',@noteb);
playbutton = uicontrol('Style', 'pushbutton','String', 'Play', 'Position', [200 175 200 40], 'Callback',@play);
static3 = uicontrol('Style', 'text', 'Position', [1 100 400 40]);
set(static3, 'String', 'Click Record to start recording. Click Play to end recording and start playback')
    function playboy(source, eventdata) %loading the file and playing
      filename = get(edit1, 'string');
        fid = fopen(filename);
        if fid ~= -1
           fclose(fid);
           [aa, bb] = audioread(filename);
           sound(aa,bb)
        end
    end          
   function slowdown(source, eventdata) %loading the files and slowing down
      food = str2num(get(edit4, 'string'))
      filename = get(edit1, 'string');
        fid = fopen(filename);
        if fid ~= -1
            fclose(fid);
           [aa, bb] = audioread(filename);
           sound(aa/food,bb/food)
        end
   end   
 function speedup(source, eventdata) %loading the files and speeding
      lmao = str2num(get(edit5, 'string'))
      filename = get(edit1, 'string');
        fid = fopen(filename);
        if fid ~= -1
            fclose(fid);
           [aa, bb] = audioread(filename);
           sound(aa*lmao,bb*lmao)
        end
   end  
%Insert carbon copy of the above function 3 times for the three additional buttons  
n=1;
tones = {};
function recording(source, eventdata) %Creates cell array
n=1;
tones = {};
gravy = 0;
end
function notec(source, eventdata) %print c into tones array
playnote(263.63)
tones{1,n} = 263.63;
n = n + 1;
end
function notecsharp(source, eventdata) %print csharp into tones array
playnote(277.18)
tones{1,n} = 277.18;
n = n + 1;
end
function noted(source, eventdata)%print d into tones array
step = 2 * pi / 8192;
 playnote(293.66)
tones{1,n} = 293.66;
n = n + 1;
end
function notedsharp(source, eventdata) %print dsharp into tones array
playnote(311.13)
tones{1,n} = 311.13;
n = n + 1;
end
function notee(source, eventdata) %print e into tones array
step = 2 * pi / 8192;
playnote(329.63)
tones{1,n} = 329.63;
n = n + 1;
end
function notef(source, eventdata) %print f into tones array
playnote(349.29)
tones{1,n} = 349.29;
n = n + 1;
end
function notefsharp(source, eventdata) %print fsharp into tones array
playnote(369.99)
tones{1,n} = 369.99;
n = n + 1;
end
function noteg(source, eventdata) %print g into tones array
playnote(392)
tones{1,n} = 392;
n = n + 1;
end
function notegsharp(source, eventdata) %print gsharp into tones array
playnote(415.3)
tones{1,n} = 415.3;
n = n + 1;
end
function notea(source, eventdata) %print a into tones array
playnote(440)
tones{1,n} = 440;
n = n + 1;
end
function noteasharp(source, eventdata) %print asharp into tones array
playnote(466.16)
tones{1,n} = 466.16;
n = n + 1;
end
function noteb(source, eventdata) %print b into tones array
playnote(493.88)
tones{1,n} = 493.88;
n = n + 1;
end
    function clearday(source, eventdata)
        delete('times.txt', 'frequencies.txt')
    end
    function play(source, eventdata)
        b = [];
        for i = 1:length(tones)
            step = 2 * pi / 8192;
            t = 0:step:pi;
            wave{i} = sin(tones{1,i} * t);
            d = [b, wave{i}];
            sound(d)
            pause(.5)
        end
        clear n
    end
    function storage(source, eventdata)
            g = str2num(get(edit2, 'string'));
            if g < 0
                errordlg('NO NEGATIVE FREQUENCIES ST00PID')
            else
                fid = fopen('frequencies.txt', 'a');
                fprintf(fid, '%d\n', g);
            end 
            asdf = str2num(get(edit3, 'string'));
            if isempty(asdf)
                asdf = 1;
            elseif asdf<0
                asdf = 1;
            end
            
            fid23 = fopen('times.txt', 'a');
            fprintf(fid23, '%d\n', asdf)
            
            fclose(fid23);
            fclose(fid); 

        end
        function playgirl(source, eventdata)
            fid = fopen('frequencies.txt');
            if fid ~= -1
               datas = fscanf(fid, '%d');
               fclose(fid);
            else 
                datas = [];
            end
            fid2 = fopen('times.txt');
            if fid2 ~= -1
               times = fscanf(fid2, '%d');
               fclose(fid2);
            else 
                times = [];
            end
            y = [];
            for i = 1:length(datas)
                step = 1 / 8192;
                t = 0:step:times(i);
                wave = sin(datas(i)*2*pi* t);
                y = [y, wave];
            end
            sound(y,8192);
        end 
end



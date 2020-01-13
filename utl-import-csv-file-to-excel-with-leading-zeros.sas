Import csv file to excel keeping leading zeros                                                                                       
                                                                                                                                     
   I you already have quoted fields with commas between the quotes then none of these solutions will work.                           
                                                                                                                                     
   Three Solutions                                                                                                                   
                                                                                                                                     
       a. Enclose all values with equal sign and quotes, ie="XXXXXX".                                                                
                                                                                                                                     
       b. Enclose just values with leadin zeros  equal sign and quotes, ie="XXXXXX"                                                  
          Does not quote  O.NNNNNN  fields                                                                                           
                                                                                                                                     
       c. Adds a tab character before leading 0s.                                                                                    
          Does not quote  O.NNNNNN  fields                                                                                           
                                                                                                                                     
FYI                                                                                                                                  
                                                                                                                                     
  Github is a work in progress and I want to thank the SAS-L brain trust for rasing issues and even                                  
  suggesing solutions to my lame code.                                                                                               
                                                                                                                                     
  For instance I am not sure this code handles all possible csv files?                                                               
                                                                                                                                     
                                                                                                                                     
github                                                                                                                               
https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros                                                   
                                                                                                                                     
CSV output (open with excel)                                                                                                         
                                                                                                                                     
want_tab_just_0.csv                                                                                                                  
https://tinyurl.com/vdtukp2                                                                                                          
https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros/blob/master/want_tab_just_0.csv                   
                                                                                                                                     
want_tab_just_0.csv                                                                                                                  
https://tinyurl.com/tu2m5jb                                                                                                          
https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros/blob/master/want_tab_just_0.csv                   
                                                                                                                                     
want_tab_just_0.csv                                                                                                                  
https://tinyurl.com/rsr86qk                                                                                                          
https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros/blob/master/want_tab_just_0.csv                   
                                                                                                                                     
*_                   _                                                                                                               
(_)_ __  _ __  _   _| |_                                                                                                             
| | '_ \| '_ \| | | | __|                                                                                                            
| | | | | |_) | |_| | |_                                                                                                             
|_|_| |_| .__/ \__,_|\__|                                                                                                            
        |_|                                                                                                                          
;                                                                                                                                    
data ckk;                                                                                                                            
                                                                                                                                     
file "d:/csv/ledZro.csv" lrecl=4096 recfm=v;                                                                                         
                                                                                                                                     
lyn1="name,sex,age,height,weight";put lyn1;                                                                                          
lyn1="0 zro,M F,05,0.12,";         put lyn1;  putlog lyn1; output;                                                                   
lyn1=",,,11,055";                  put lyn1;  putlog lyn1; output;                                                                   
lyn1=",M,0A 0A 0,,00";             put lyn1;  putlog lyn1; output;                                                                   
lyn1="0,M,03,2 0 2,";              put lyn1;  putlog lyn1; output;                                                                   
lyn1="Ja 0 ne,0,,,0000";           put lyn1;  putlog lyn1; output;                                                                   
                                                                                                                                     
run;quit;                                                                                                                            
                                                                                                                                     
                                                                                                                                     
d:/csv/ledZro.csv (note tabs have been inserted                                                                                      
                                                                                                                                     
  name,sex,age,height,weight                                                                                                         
  , 0 zro,M F, 05,0.12,                                                                                                              
  ,,,11, 055                                                                                                                         
  ,M, 0A 0A 0,, 00                                                                                                                   
  ="0",M, 03,2 0 2,                                                                                                                  
  Ja 0 ne, 0,,, 0000                                                                                                                 
                                                                                                                                     
*            _               _                                                                                                       
  ___  _   _| |_ _ __  _   _| |_ ___                                                                                                 
 / _ \| | | | __| '_ \| | | | __/ __|                                                                                                
| (_) | |_| | |_| |_) | |_| | |_\__ \                                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|___/                                                                                                
                |_|                                                                                                                  
;                                                                                                                                    
                                                                                                                                     
Jst open the new CSV with excel                                                                                                      
                                                                                                                                     
  QUOTE ALL                                                                                                                          
                                                                                                                                     
  d:/csv/want_quote_all.csv                                                                                                          
                                                                                                                                     
     name,sex,age,height,weight                                                                                                      
   ="0 zro",="M F",="05",="",="0.12"                                                                                                 
   ="",="",="",="11",="055"                                                                                                          
   ="",="M",="0A 0A 0",="",="00"                                                                                                     
   =0,="M",="03",="2 0 2",=""                                                                                                        
   ="Ja 0 ne",="0",="",="",="0000"                                                                                                   
                                                                                                                                     
 want_quote_just_0.csv                                                                                                               
                                                                                                                                     
   name,sex,age,height,weight                                                                                                        
   ="0 zro",M F,="05",0.12,                                                                                                          
   ,,,11,="055"                                                                                                                      
   ,M,="0A 0A 0",,="00"                                                                                                              
   ="0",M,="03",2 0 2,                                                                                                               
   Ja 0 ne,="0",,,="0000"                                                                                                            
                                                                                                                                     
 want_tab_just_0.csv                                                                                                                 
                                                                                                                                     
   name,sex,age,height,weight                                                                                                        
   ,      0 zro,M F,      05,0.12,                                                                                                   
   ,,,11,      055                                                                                                                   
   ,M,      0A 0A 0,,      00                                                                                                        
          0,      03,2 0 2,                                                                                                          
   Ja 0 ne,      0,,,      0000                                                                                                      
                                                                                                                                     
                                                                                                                                     
  d:/xls/want##.xlsx                                                                                                                 
                                                                                                                                     
      +--------------------------------------------------------------+                                                               
      |     A      |    B       |     C      |    D       |    E     |                                                               
      +--------------------------------------------------------------+                                                               
   1  | NAME       |   SEX      |    AGE     |  HEIGHT    |  WEIGHT  |                                                               
      +------------+------------+------------+------------+----------+                                                               
   2  | 0zro       |   M-F      |    05      |            |  0.12    |                                                               
      +------------+------------+------------+------------+----------+                                                               
   3  |            |    M       |            |    11      |   055    |                                                               
      +------------+------------+------------+------------+----------+                                                               
   4  |            |    M       |  0A OA 0   |            |   00     |                                                               
      +------------+------------+------------+------------+----------+                                                               
   5  | 0          |    M       |    03      |   202      |          |                                                               
      +------------+------------+------------+------------+----------+                                                               
   6  | Ja 0 ne    |    0       |            |            |  0000    |                                                               
      +------------+------------+------------+------------+----------+                                                               
                                                                                                                                     
      [CLASS]                                                                                                                        
                                                                                                                                     
*          _       _   _                                                                                                             
 ___  ___ | |_   _| |_(_) ___  _ __                                                                                                  
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                                                 
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                                                
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                                                
                   _               _ _                                                                                               
  __ _ _   _  ___ | |_ ___    __ _| | |                                                                                              
 / _` | | | |/ _ \| __/ _ \  / _` | | |                                                                                              
| (_| | |_| | (_) | ||  __/ | (_| | | |                                                                                              
 \__, |\__,_|\___/ \__\___|  \__,_|_|_|                                                                                              
    |_|                                                                                                                              
;                                                                                                                                    
                                                                                                                                     
data want;                                                                                                                           
  length outlyn $16184;                                                                                                              
  infile  "d:/csv/ledZro.csv" lrecl=4096 recfm=v;                                                                                    
  file  "d:/csv/want_quote_all.csv" lrecl=8092 recfm=v;                                                                              
  input;                                                                                                                             
  if _n_=1 then put _infile_;                                                                                                        
  else do;                                                                                                                           
      outlyn=tranwrd(_infile_,",",'","');                                                                                            
      outlyn=tranwrd(outlyn,",",",=");                                                                                               
      outlyn=cats('="',outlyn,'"');                                                                                                  
      put outlyn;                                                                                                                    
      putlog outlyn;                                                                                                                 
  end;                                                                                                                               
run;quit;                                                                                                                            
                                                                                                                                     
*_                          _           _           _      ___                                                                       
| |__      __ _ _   _  ___ | |_ ___    (_)_   _ ___| |_   / _ \ ___                                                                  
| '_ \    / _` | | | |/ _ \| __/ _ \   | | | | / __| __| | | | / __|                                                                 
| |_) |  | (_| | |_| | (_) | ||  __/   | | |_| \__ \ |_  | |_| \__ \                                                                 
|_.__(_)  \__, |\__,_|\___/ \__\___|  _/ |\__,_|___/\__|  \___/|___/                                                                 
             |_|                     |__/                                                                                            
;                                                                                                                                    
                                                                                                                                     
data _null_;                                                                                                                         
   length word $30 outlyn $32756;                                                                                                    
   infile  "d:/csv/ledZro.csv" lrecl=32756 recfm=v;                                                                                  
   file  "d:/csv/want_quote_just_0.csv" lrecl=32756 recfm=v;                                                                         
   input;                                                                                                                            
   if _n_=1                         then  put _infile_;                                                                              
   else if not index(_infile_,',0') then  put _infile_;                                                                              
   else do;                                                                                                                          
     do count=1 to countc(_infile_,',')+1;                                                                                           
        call scan(_infile_, count, position, length,',','moq');                                                                      
        word=substrn(_infile_, position, length);                                                                                    
        select;                                                                                                                      
          when (count=1 and word not =:'0') new=word; /* no comma and tab when first column does not have leading 0 */               
          when (count=1 and word=:'0.'    ) new=word; /* no comma for leading 0. */                                                  
          when (count=1 and word='0'      ) new=cats('="' ,word,'"' );                                                               
          when (word =:'0.'               ) new=cats(','  ,word);                                                                    
          when (word not =:'0'            ) new=cats(','  ,word);                                                                    
          when (word=:'0'                 ) new=cats(',="',word,'"' );                                                               
          /* leave the otherwise off to force an error in not exclusive above */                                                     
        end;                                                                                                                         
        outlyn=cats(outlyn,new);                                                                                                     
     end;                                                                                                                            
     put outlyn;                                                                                                                     
   end;                                                                                                                              
run;                                                                                                                                 
*         _        _         _           _      ___                                                                                  
  ___    | |_ __ _| |__     (_)_   _ ___| |_   / _ \ ___                                                                             
 / __|   | __/ _` | '_ \    | | | | / __| __| | | | / __|                                                                            
| (__ _  | || (_| | |_) |   | | |_| \__ \ |_  | |_| \__ \                                                                            
 \___(_)  \__\__,_|_.__/   _/ |\__,_|___/\__|  \___/|___/                                                                            
                          |__/                                                                                                       
                                                                                                                                     
data _null_;                                                                                                                         
   length word $30 outlyn $32756;                                                                                                    
   infile  "d:/csv/ledZro.csv" lrecl=32756 recfm=v;                                                                                  
   file  "d:/csv/want_tab_just_0.csv" lrecl=32756 recfm=v;                                                                           
   input;                                                                                                                            
   if _n_=1                         then  put _infile_;                                                                              
   else if not index(_infile_,',0') then  put _infile_;                                                                              
   else do;                                                                                                                          
     do count=1 to countc(_infile_,',')+1;                                                                                           
        call scan(_infile_, count, position, length,',','moq');                                                                      
        word=substrn(_infile_, position, length);                                                                                    
        select;                                                                                                                      
          when (count=1 and word not =:'0') new=word; /* no comma and tab when first column does not have leading 0 */               
          when (count=1 and word=:'0.'    ) new=word; /* no comma for leading 0. */                                                  
          when (count=1 and word='0'      ) new=cats('2C09'x,word);  /* just tab we do not eant leading 0 */                         
          when (word =:'0.'               ) new=cats(','  ,word);    /* no tab */                                                    
          when (word not =:'0'            ) new=cats(','  ,word);                                                                    
          when (word=:'0'                 ) new=cats('2C09'x,word);                                                                  
          /* leave the otherwise off to force an error in not exclusive above */                                                     
        end;                                                                                                                         
        outlyn=cats(outlyn,new);                                                                                                     
     end;                                                                                                                            
     put outlyn;                                                                                                                     
   end;                                                                                                                              
run;                                                                                                                                 
                                                                                                                                     

# utl-import-csv-file-to-excel-with-leading-zeros
Import csv file to excel with leading zeros  
    Import csv file to excel with leading zeros                                                                            
                                                                                                                           
      Solution: Update the csv file with equal sign and quoted values                                                      
                                                                                                                           
         0000,0000 becomes ="0000",="0000"                                                                                 
                                                                                                                           
      This should work for commas within quotes.                                                                           
      To fix justification just set foramt to text for the entite sheet and save as xlxs file.                             
                                                                                                                           
       Two Solutions                                                                                                       
           a. Enclose all values with equal sign and quotes, ie="XXXXXX".                                                  
              Does not work with commas within quotes                                                                      
                                                                                                                           
                                                                                                                           
           b. Enclose just vales with leadin zeros  equal sign and quotes, ie="XXXXXX"                                     
              Does not work with commas within quotes                                                                      
              This can easily be enhanced.                                                                                 
                                                                                                                           
    FYI: it should be possible to,import-export) and use tagattr and proc report but that may be very slow?                
                                                                                                                           
                                                                                                                           
    github                                                                                                                 
    https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros                                     
                                                                                                                           
                                                                                                                           
    CSV output (open with excel)                                                                                           
                                                                                                                           
    https://tinyurl.com/vdtukp2                                                                                            
    https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros/blob/master/want_quote_all.csv      
                                                                                                                           
    https://tinyurl.com/tu2m5jb                                                                                            
    https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros/blob/master/want_quote_just_0.csv   
                                                                                                                           
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
    lyn1="0 zro,M F,05,,";             put lyn1;  putlog lyn1; output;                                                     
    lyn1=",,,11,055";                  put lyn1;  putlog lyn1; output;                                                     
    lyn1=",M,0A 0A 0,,00";             put lyn1;  putlog lyn1; output;                                                     
    lyn1="Joan,M,03,2 0 2,";           put lyn1;  putlog lyn1; output;                                                     
    lyn1="Ja 0 ne,0,,,0000";           put lyn1;  putlog lyn1; output;                                                     
                                                                                                                           
    run;quit;                                                                                                              
                                                                                                                           
                                                                                                                           
    d:/csv/ledZro.csv                                                                                                      
                                                                                                                           
      name,sex,age,height,weight                                                                                           
      0 zro,M F,05,,                                                                                                       
      ,,,11,055                                                                                                            
      ,M,0A 0A 0,,00                                                                                                       
      Joan,M,03,2 0 2,                                                                                                     
      Ja 0 ne,0,,,0000                                                                                                     
                                                                                                                           
    *            _               _                                                                                         
      ___  _   _| |_ _ __  _   _| |_                                                                                       
     / _ \| | | | __| '_ \| | | | __|                                                                                      
    | (_) | |_| | |_| |_) | |_| | |_                                                                                       
     \___/ \__,_|\__| .__/ \__,_|\__|                                                                                      
                    |_|                          _ _                                                                       
      __ _      __ _ _   _  ___ | |_ ___    __ _| | |                                                                      
     / _` |    / _` | | | |/ _ \| __/ _ \  / _` | | |                                                                      
    | (_| |_  | (_| | |_| | (_) | ||  __/ | (_| | | |                                                                      
     \__,_(_)  \__, |\__,_|\___/ \__\___|  \__,_|_|_|                                                                      
                  |_|                                                                                                      
    ;                                                                                                                      
                                                                                                                           
    Jst open the new CSV with excel                                                                                        
                                                                                                                           
    d:/csv/want_quote_all.csv                                                                                              
                                                                                                                           
         name,sex,age,height,weight                                                                                        
       ="0 zro",="M F",="05",="",=""                                                                                       
       ="",="",="",="11",="055"                                                                                            
       ="",="M",="0A 0A 0",="",="00"                                                                                       
       ="Joan",="M",="03",="2 0 2",=""                                                                                     
       ="Ja 0 ne",="0",="",="",="0000"                                                                                     
                                                                                                                           
                                                                                                                           
                                                                                                                           
      d:/xls/want_.xls                                                                                                     
                                                                                                                           
          +--------------------------------------------------------------+                                                 
          |     A      |    B       |     C      |    D       |    E     |                                                 
          +--------------------------------------------------------------+                                                 
       1  | NAME       |   SEX      |    AGE     |  HEIGHT    |  WEIGHT  |                                                 
          +------------+------------+------------+------------+----------+                                                 
       2  | 0zro       |   M-F      |    05      |            |          |                                                 
          +------------+------------+------------+------------+----------+                                                 
       3  |            |    M       |            |    11      |   055    |                                                 
          +------------+------------+------------+------------+----------+                                                 
       4  |            |    M       |  0A OA 0   |            |   00     |                                                 
          +------------+------------+------------+------------+----------+                                                 
       5  | Joan       |    M       |    03      |   202      |          |                                                 
          +------------+------------+------------+------------+----------+                                                 
       6  | Ja 0 ne    |    0       |            |            |  0000    |                                                 
          +------------+------------+------------+------------+----------+                                                 
                                                                                                                           
          [CLASS]                                                                                                          
                                                                                                                           
    * same output in excel                                                                                                 
    *_                          _           _           _      ___                                                         
    | |__      __ _ _   _  ___ | |_ ___    (_)_   _ ___| |_   / _ \ ___                                                    
    | '_ \    / _` | | | |/ _ \| __/ _ \   | | | | / __| __| | | | / __|                                                   
    | |_) |  | (_| | |_| | (_) | ||  __/   | | |_| \__ \ |_  | |_| \__ \                                                   
    |_.__(_)  \__, |\__,_|\___/ \__\___|  _/ |\__,_|___/\__|  \___/|___/                                                   
                 |_|                     |__/                                                                              
    ;                                                                                                                      
                                                                                                                           
        name,sex,age,height,weight                                                                                         
        ="0 zro",M F,="05",,                                                                                               
        ,,,11,="055"                                                                                                       
        ,M,="0A 0A 0",,="00"                                                                                               
        Joan,M,="03",2 0 2,                                                                                                
        Ja 0 ne,="0",,,="0000"                                                                                             
                                                                                                                           
    *                                                                                                                      
     _ __  _ __ ___   ___ ___  ___ ___                                                                                     
    | '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                    
    | |_) | | | (_) | (_|  __/\__ \__ \                                                                                    
    | .__/|_|  \___/ \___\___||___/___/                                                                                    
    |_|                          _               _ _                                                                       
      __ _      __ _ _   _  ___ | |_ ___    __ _| | |                                                                      
     / _` |    / _` | | | |/ _ \| __/ _ \  / _` | | |                                                                      
    | (_| |_  | (_| | |_| | (_) | ||  __/ | (_| | | |                                                                      
     \__,_(_)  \__, |\__,_|\___/ \__\___|  \__,_|_|_|                                                                      
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
                                                                                                                           
                                                                                                                           
    /* To fix mixed justification just set foramt to text for the entite sheet and save as xlxs file. */                   
                                                                                                                           
    data _null_;                                                                                                           
       retain count 0; /* not needed but I like to include it */                                                           
       length word $30 outlyn $32756;                                                                                      
       infile  "d:/csv/ledZro.csv" lrecl=32756 recfm=v;                                                                    
       file  "d:/csv/want_quote_just_0.csv" lrecl=32756 recfm=v;                                                           
       input;                                                                                                              
       if _n_=1                       then  put _infile_;                                                                  
       else if index(_infile_,',0')=0 then  put _infile_;                                                                  
       else do;                                                                                                            
         do until(position<=0);                                                                                            
            count+1;                                                                                                       
            call scan(_infile_, count, position, length,',','moq');                                                        
            word=substrn(_infile_, position, length);                                                                      
            select;                                                                                                        
              when (count=1 and word=:'0'     ) new=cats('="' ,word,'"' );                                                 
              when (count=1 and word not =:'0') new=           word      ;                                                 
              when (word not =:'0'            ) new=cats(','  ,word     );                                                 
              when (word=:'0'                 ) new=cats(',="',word,'"' );                                                 
              /* leave the otherwise off to force an error in not exclusive above */                                       
            end;                                                                                                           
            outlyn=cats(outlyn,new);                                                                                       
         end;                                                                                                              
         put outlyn;                                                                                                       
         count=0;                                                                                                          
       end;                                                                                                                
    run;                                                                                                                   
                                                                                                                           

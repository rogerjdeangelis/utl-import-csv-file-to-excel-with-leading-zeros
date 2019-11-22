# utl-import-csv-file-to-excel-with-leading-zeros
Import csv file to excel with leading zeros  
    Import csv file to excel with leading zeros                                               
                                                                                              
      Create a new csv file with equal sign and quoted values                                 
                                                                                              
         0000,0000 becomes ="0000",="0000"                                                    
                                                                                              
    github                                                                                    
    https://github.com/rogerjdeangelis/utl-import-csv-file-to-excel-with-leading-zeros        
                                                                                              
    *_                   _                                                                    
    (_)_ __  _ __  _   _| |_                                                                  
    | | '_ \| '_ \| | | | __|                                                                 
    | | | | | |_) | |_| | |_                                                                  
    |_|_| |_| .__/ \__,_|\__|                                                                 
            |_|                                                                               
    ;                                                                                         
                                                                                              
    data _null_;                                                                              
                                                                                              
    file "d:/csv/ledZro.csv" lrecl=4096 recfm=v;                                              
                                                                                              
    lyn1="name,sex,age,height,weight";put lyn1;                                               
    lyn2="0zro,  M, 15,      ,      ";put lyn2;                                               
    lyn3="Mary,  M, 01,   11 ,   055";put lyn3;                                               
    lyn4="    ,  M, 02,   00 ,      ";put lyn4;                                               
    lyn5="Joan,  M, 03,   22 ,      ";put lyn5;                                               
    lyn6="Jane,  0,   ,      ,   99 ";put lyn6;                                               
                                                                                              
    run;quit;                                                                                 
                                                                                              
    d:/csv/ledZro.csv                                                                         
                                                                                              
      name,sex,age,height,weight                                                              
      0zro,  M, 15,      ,                                                                    
      Mary,  M, 01,   11 ,   055                                                              
          ,  M, 02,   00 ,                                                                    
      Joan,  M, 03,   22 ,                                                                    
      Jane,  0,   ,      ,   99                                                               
                                                                                              
    *            _               _                                                            
      ___  _   _| |_ _ __  _   _| |_                                                          
     / _ \| | | | __| '_ \| | | | __|                                                         
    | (_) | |_| | |_| |_) | |_| | |_                                                          
     \___/ \__,_|\__| .__/ \__,_|\__|                                                         
                    |_|                                                                       
    ;                                                                                         
                                                                                              
    Jst open the new CSV with excel                                                           
                                                                                              
    d:/csv/want.csv                                                                           
                                                                                              
      ="0zro",="M",="15",="",=""                                                              
      ="Mary",="M",="01",="11",="055"                                                         
      ="",="M",="02",="00",=""                                                                
      ="Joan",="M",="03",="22",=""                                                            
      ="Joan",="0",="",="",="99"                                                              
                                                                                              
      d:/xls/want.xls                                                                         
                                                                                              
          +--------------------------------------------------------------+                    
          |     A      |    B       |     C      |    D       |    E     |                    
          +--------------------------------------------------------------+                    
       1  | NAME       |   SEX      |    AGE     |  HEIGHT    |  WEIGHT  |                    
          +------------+------------+------------+------------+----------+                    
       2  | 0zro       |    M       |    15      |            |          |                    
          +------------+------------+------------+------------+----------+                    
       3  | Mary       |    M       |    01      |    11      |   055    |                    
          +------------+------------+------------+------------+----------+                    
       4  |            |    M       |    02      |    00      |          |                    
          +------------+------------+------------+------------+----------+                    
       5  | Joan       |    M       |    03      |    22      |          |                    
          +------------+------------+------------+------------+----------+                    
       6  | Jane       |    0       |            |            |   99     |                    
          +------------+------------+------------+------------+----------+                    
                                                                                              
          [CLASS]                                                                             
    *                                                                                         
     _ __  _ __ ___   ___ ___  ___ ___                                                        
    | '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                       
    | |_) | | | (_) | (_|  __/\__ \__ \                                                       
    | .__/|_|  \___/ \___\___||___/___/                                                       
    |_|                                                                                       
    ;                                                                                         
                                                                                              
    data want;                                                                                
      length outlyn $16184;                                                                   
      infile  "d:/csv/ledZro.csv" lrecl=4096 recfm=v;                                         
      file  "d:/csv/want.csv" lrecl=8092 recfm=v;                                             
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

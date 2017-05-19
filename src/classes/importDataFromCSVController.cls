public class importDataFromCSVController {

    public void mapFields() {
           csvAsString = csvFileBody.toString();
           csvFileLines = csvAsString.split('\n');
               csvHeader1.add(csvFileLines[0]);
    csvHeader1.add(csvFileLines[1]);
               

    }

public Blob csvFileBody{get;set;}
public string csvAsString{get;set;}
public String[] csvFileLines{get;set;}
public String[] csvHeader{get;set;}
List<string> csvHeader1 = new List<String>();

public List<String> getcsvHeader11(){
    return csvHeader1;
}

public List<account> acclist{get;set;}
  public importDataFromCSVController(){
    csvFileLines = new String[]{};

  }
  
  public void importCSVFile(){
       try{
           csvAsString = csvFileBody.toString();
           csvFileLines = csvAsString.split('\n'); 
          
           
           for(Integer i=1;i<csvFileLines.size();i++){
              
               
               Account accObj = new Account() ;
               string[] csvRecordData = csvFileLines[i].split(',');
               
                   accObj.name = csvRecordData[0] ;             
                   accObj.accountnumber = csvRecordData[1];
                   accObj.Type = csvRecordData[2];
                   accObj.AccountSource = csvRecordData[3];   
                   accObj.Industry = csvRecordData[4];                                                                             
                   acclist.add(accObj);   
               
           }
        //insert acclist;
        }
        catch (Exception e)
        {
            ApexPages.Message errorMessage = new ApexPages.Message(ApexPages.severity.ERROR,'An error has occured while importin data Please make sure input csv file is correct'+e.getLineNumber());
            ApexPages.addMessage(errorMessage);
        }  
  }
}
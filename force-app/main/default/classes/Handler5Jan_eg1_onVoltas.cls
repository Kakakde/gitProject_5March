public class Handler5Jan_eg1_onVoltas {
	public static void method(List<Voltas_Electrics__c> voltasDataList)
    {
		if(!voltasDataList.isEmpty())
        {
			for(Voltas_Electrics__c vdL : voltasDataList)
                {
                    if(vdL.Product_Type__c == 'Led & Screen')
                    {
                        vdL.Active_Region__c = 'Asia';
                    }
                }
        }
    }
}
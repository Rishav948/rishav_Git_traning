trigger accountUpdate on SOBJECT (before insert,befor update) {
    if(Trigger.isBefore && Trigger.isbefore ){
		
        for(Account acc : trigger.new){
            if(acc.billingCountry != null){
                acc.ShippingCountry = acc.billingCountry;
            }
            if(acc.billingState != null){
                acc.ShippingState = acc.billingState;
            }
            if(acc.billingCity != null){
                acc.ShippingCity = acc.billingCity;
            }
            if(acc.ShippingPostalCode != null){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
        }		

}

}
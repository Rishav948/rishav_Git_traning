@isTest
public with sharing class testUpdateAcc {
    @isTest
    public testUpdateAcc() {
        Account ac=new Account();
        ac.BillingCity='Test';
        ac.BillingCountry='TestCountry';
        ac.BillingPostalCode='34567';
        ac.BillingState='West Bengal';
        ac.BillingStreet='testing';
        ac.name='test';
        insert ac;
        Test.startTest();
        Account acc=[select id ,BillingCity,BillingCountry,BillingPostalCode from Account where id=ac.id];

        System.assertEquals(acc.BillingCity, acc.BillingCity);
        System.assertEquals(acc.BillingPostalCode, acc.BillingPostalCode);
        Test.stopTest();
    }
}

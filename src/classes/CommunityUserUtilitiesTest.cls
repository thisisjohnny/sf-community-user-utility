@isTest
private class CommunityUserUtilitiesTest {
    @testSetup static void setup(){
        Account a			= new Account();
        a.Name				= 'Example Account';
        insert a;
        
        Contact c			= new Contact();
        c.FirstName			= 'Charles';
        c.LastName			= 'Gumboot';
        c.Email				= 'cholly@example.com';
        c.AccountId			= a.Id;
        insert c;
        
        Profile p			= [SELECT Id FROM Profile WHERE Name = 'Customer Community User' LIMIT 1];
        
        User u				= new User();
        u.firstName			= c.FirstName;
        u.lastName			= c.LastName;
        u.ContactId			= c.Id;
        u.Email				= c.Email;
        u.Username			= 'cgum@community.example';
		u.CommunityNickname	= 'cgum';
        u.Alias				= 'cgum';				// required
        u.ProfileId			= p.Id;					// required
        u.TimeZoneSidKey	= 'GMT';				// required
        u.LocaleSidKey		= 'en_US';				// required
        u.EmailEncodingKey	= 'ISO-8859-1';			// required
        u.LanguageLocaleKey	= 'en_US';				// required
		insert u;
    }
    
    @isTest static void testUpdateContactRecords(){
        Test.startTest();
        CommunityUserUtilities.updateAllContactsCommunityUser();
        Test.stopTest();
        
        Contact c			= [SELECT Id, Community_User__c FROM Contact WHERE Email = 'cholly@example.com' LIMIT 1];
        User u				= [SELECT Id FROM User WHERE ContactId = :c.Id];
        
        System.assertEquals(c.Community_User__c, u.Id);
    }
}
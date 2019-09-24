global class CommunityUserUtilities {
    @InvocableMethod(label='Update All Contacts with Community User' description='Updates lookup field on Contact records to the associated User record for any Community members.')
    global static void updateAllContactsCommunityUser(){
        Map<Id, Id>		contactToUserMap	= new Map<Id, Id>();
        List<User>		uList				= new List<User>([SELECT Id, ContactId FROM User WHERE ContactId != null]);
        for(User	u : uList){ contactToUserMap.put(u.ContactId, u.Id); }
        
        List<Contact>	cList				= new List<Contact>([SELECT Id, Community_User__c FROM Contact WHERE Id IN :contactToUserMap.keyset()]);
        for(Contact	c: cList){ if(contactToUserMap.containsKey(c.Id) == true){ c.Community_User__c = contactToUserMap.get(c.Id); } }

		update cList;
    }
}
Account account = new Account();

account.Name = 'Acme Software';

insert account;

List<Product2> products = new List<Product2>();

Product2 basicSubscription = new Product2();
basicSubscription.Name = 'Basic License';
basicSubscription.Product_Type__c = 'Subscription';
basicSubscription.CanUseRevenueSchedule = true;

Product2 premiumSubscription = new Product2();
premiumSubscription.Name = 'Premium License';
premiumSubscription.Product_Type__c = 'Subscription';
premiumSubscription.CanUseRevenueSchedule = true;

Product2 ultimateSubscription = new Product2();
ultimateSubscription.Name = 'Ultimate License';
ultimateSubscription.Product_Type__c = 'Subscription';
ultimateSubscription.CanUseRevenueSchedule = true;

Product2 oneDayTraining = new Product2();
oneDayTraining.Name = 'One Day Training';
oneDayTraining.Product_Type__c = 'One-time';

Product2 oneWeekTraining = new Product2();
oneWeekTraining.Name = 'One Week Training';
oneWeekTraining.Product_Type__c = 'One-time';

Product2 installation = new Product2();
installation.Name = 'Install and Setup';
installation.Product_Type__c = 'One-time';

products.add(basicSubscription);
products.add(premiumSubscription);
products.add(ultimateSubscription);
products.add(oneDayTraining);
products.add(oneWeekTraining);
products.add(installation);

insert products;

Pricebook2 standardPriceBook = [select id, name from Pricebook2 where isStandard = true limit 1];

standardPriceBook.IsActive = true;

update standardPriceBook;

List<PricebookEntry> entires = new List<PricebookEntry>();

PricebookEntry basicEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = basicSubscription.Id,
    UnitPrice = 200,
    IsActive = true
);

PricebookEntry premiumEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = premiumSubscription.Id,
    UnitPrice = 500,
    IsActive = true
);

PricebookEntry ultimateEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = ultimateSubscription.Id,
    UnitPrice = 1000,
    IsActive = true
);

PricebookEntry oneDayTrainingEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = oneDayTraining.Id,
    UnitPrice = 1500,
    IsActive = true
);

PricebookEntry oneWeekTrainingEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = oneWeekTraining.Id,
    UnitPrice = 5000,
    IsActive = true
);

PricebookEntry installationEntry = new PricebookEntry(
    Pricebook2Id = standardPriceBook.Id,
    Product2Id = installation.Id,
    UnitPrice = 3000,
    IsActive = true
);

entires.add(basicEntry);
entires.add(premiumEntry);
entires.add(ultimateEntry);
entires.add(oneDayTrainingEntry);
entires.add(oneWeekTrainingEntry);
entires.add(installationEntry);

insert entires;


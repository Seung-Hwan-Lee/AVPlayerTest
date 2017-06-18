# Core Spotlight


## What is Spotlight
 Original search API on macOS 
 Document-centric
  Search results identify document 
  Not location in document
 Not ideal for databases


## What is Core Spotlight
 Original search tool on iOS 
 Database-friendly Spotlight API 
 Search for content in apps 
 Allows deep linking
 Access CoreSpotlight search data from your app
 No zero-length files


## Three Pieces
 Way to indicate property participation
  NSPropertyDescription.indexedBySpotlight
 Way to specify display name
  NSEntityDescription.coreSpotlightDisplayNameExpression
 Exporter


## coreSpotlightDisplayNameExpression
 NSExpression
 Evaluated during Core Spotlight update
  object parameter will be an instance of NSManagedObject
 Can return anything Core Spotlight can accept
  CSLocalizedString
 Keypath
  Property name
 Function
  lowercase:(displayName)
  FUNCTION:(castTo:(@“Class”, @“MyUtilityClass”), @“displayNameFor:”, self))


## NSCoreDataCoreSpotlightDelegate
 Implements CSSearchableIndexDelegate
  Default implementations of all methods
 Uses a separate store on a background thread
  Initialize with NSPersistentStoreDescription + model
 Override point is NSCoreDataCoreSpotlightDelegate.attributeSet(for object:)


## Non-Sharp Corners
 Will automatically export to Core Spotlight on first launch 
 Uses Persistent History Tracking to ensure all data is pushed


## Sharpish Corners
 Core Spotlight and Spotlight integration mutually exclusive   
  entity.coreSpotlightDisplayNameExpression OR
  property.storedInExternalRecord
 Doesn’t track results of batch operations


# New Indexing API

## Indexing

- Configure database for faster search
- One or more columns per index
- One or more indexes per column
- Database will choose most efficient index based on query


## Current Indexing APIs
- Single property index
> NSAttributeDescription.isIndexed
- Multiple column index
> NSEntityDescription.compoundIndexes

















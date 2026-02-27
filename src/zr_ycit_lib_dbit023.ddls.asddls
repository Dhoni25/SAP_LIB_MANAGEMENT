@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZYCIT_LIB_DBIT023'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_YCIT_LIB_DBIT023
  as select from YCIT_LIB_DBIT023
{
  key book_id as BookID,
  book_name as BookName,
  author as Author,
  category as Category,
  price as Price,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  publish_year as PublishYear,
  status as Status,
  quantity as Quantity,
  isbn as Isbn,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}

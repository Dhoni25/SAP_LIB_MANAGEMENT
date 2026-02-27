@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZYCIT_LIB_DBIT023'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_YCIT_LIB_DBIT023
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_YCIT_LIB_DBIT023
  association [1..1] to ZR_YCIT_LIB_DBIT023 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  BookName,
  Author,
  Category,
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  PublishYear,
  Status,
  Quantity,
  Isbn,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}

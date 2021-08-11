using acc.com.employeeinfo from '../db/data-model';

service CatalogService {
    entity Employees as projection on employeeinfo.Employees;
};
annotate CatalogService.Employees with @(
  UI: {
       HeaderInfo: {
        TypeName: 'Employee',
        TypeNamePlural: 'Employees',
        Title: { $Type: 'UI.DataField', Value: ID }
      },
        SelectionFields: [ ID, firstname, lastname, company, experience],      
      LineItem: [
        {$Type: 'UI.DataField', Value: ID},
        {$Type: 'UI.DataField', Value: firstname},
        {$Type: 'UI.DataField', Value: lastname},
        {$Type: 'UI.DataField', Value: company},
        {$Type: 'UI.DataField', Value: experience}
      ],  
  }
);

// annotate CatalogService.Employees with {
//   ID @( Common: { Label: '{i18n>Cat.ID}'} );
//   firstname @( Common.Label: '{i18n>Cat.firstname}' );
//   lastname @( Common.Label: '{i18n>Cat.lastname}' );
//   company @( Common.Label: '{i18n>Cat.company}' );
//   experience @( Common.Label: '{i18n>Cat.experience}');
// }


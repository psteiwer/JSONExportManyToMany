# JSONExportManyToMany
Sample for %JSONExport against a class with Many to Many Relationship

After installing this sample, the following two commands can be run from terminal:
do ##class(JSONExportManyToMany.TeacherStudent).Populate()
do ##class(JSONExportManyToMany.TeacherStudent).Test()

The test output should appear as follows:

{"Name":"Peter","Teachers":[{"ID":1,"Teacher":{"Name":"Teacher1Name"}},{"ID":2,"Teacher":{"Name":"Teacher2Name"}}]}
 
{"Name":"Nael","Teachers":[{"ID":3,"Teacher":{"Name":"Teacher1Name"}},{"ID":4,"Teacher":{"Name":"Teacher3Name"}}]}
 
{"Name":"Teacher1Name","Students":[{"ID":1,"Student":{"Name":"Peter"}},{"ID":3,"Student":{"Name":"Nael"}}]}
 
{"Name":"Teacher2Name","Students":[{"ID":2,"Student":{"Name":"Peter"}}]}
 
{"Name":"Teacher3Name","Students":[{"ID":4,"Student":{"Name":"Nael"}}]}

You will notice here that when exporting from Student (First 2 output lines), the relationship to Teacher is followed through TeacherStudent and details of the Teacher are exported.
Likewise, when exporting from Teacher, the relationship to Student is followed through TeacherStudent and details of the Student are exported.

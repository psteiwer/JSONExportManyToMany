Class JSONExportManyToMany.Teacher Extends (%Persistent, %JSON.Adaptor)
{

Property Name As %String;

Property Students As list Of JSONExportManyToMany.TeacherStudent;

XData Teacher
{
<Mapping xmlns="http://www.intersystems.com/jsonmapping">
    <Property Name="Name"/>
    <Property Name="Students"/>
  </Mapping>
}

XData Student
{
<Mapping xmlns="http://www.intersystems.com/jsonmapping">
    <Property Name="Name"/>
  </Mapping>
}

Storage Default
{
<Data name="TeacherDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Students</Value>
</Value>
</Data>
<DataLocation>^JSONExportManyToMany.TeacherD</DataLocation>
<DefaultData>TeacherDefaultData</DefaultData>
<IdLocation>^JSONExportManyToMany.TeacherD</IdLocation>
<IndexLocation>^JSONExportManyToMany.TeacherI</IndexLocation>
<StreamLocation>^JSONExportManyToMany.TeacherS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

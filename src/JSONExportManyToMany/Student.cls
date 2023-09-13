Class JSONExportManyToMany.Student Extends (%Persistent, %JSON.Adaptor)
{

Property Name As %String;

Property Teachers As list Of JSONExportManyToMany.TeacherStudent;

XData Student
{
<Mapping xmlns="http://www.intersystems.com/jsonmapping">
    <Property Name="Name"/>
    <Property Name="Teachers"/>
  </Mapping>
}

XData Teacher
{
<Mapping xmlns="http://www.intersystems.com/jsonmapping">
    <Property Name="Name"/>
  </Mapping>
}

Storage Default
{
<Data name="StudentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Teachers</Value>
</Value>
</Data>
<DataLocation>^JSONExportManyToMany.StudentD</DataLocation>
<DefaultData>StudentDefaultData</DefaultData>
<IdLocation>^JSONExportManyToMany.StudentD</IdLocation>
<IndexLocation>^JSONExportManyToMany.StudentI</IndexLocation>
<StreamLocation>^JSONExportManyToMany.StudentS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

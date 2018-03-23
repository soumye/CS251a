function increase()
{
  var val=parseInt(document.getElementById('count').innerHTML);
  document.getElementById('count').innerHTML=val+1;
}
 ///////////////////////////////////////////////////////////
	var xml_array = new Array();
    function create_xml(){
    var student_name = document.getElementById("std_name").value;
    var area_name = document.getElementById("area").value;
    var faculty_name_name = document.getElementById("faculty_name").value;

    var xml_string="\t<data> \n \t \t<area>\n \t \t \t"+ area_name +"\n \t \t</area> \n \t \t<faculty_name>\n \t \t \t"+faculty_name_name+"\n \t \t</faculty_name> \n \t \t<student>\n \t \t \t"+student_name+"\n \t \t</student>\n \t </data>\n"
        xml_array.push(xml_string);
        Display();
}
function Display()
{
    var tmp="";
    tmp+="<interests>\n"
    for (var i = 0; i < xml_array.length; i++)
    {
        tmp+=xml_array[i];
    }
    tmp+="</interests>";
    document.getElementById("Xml_data").innerHTML= tmp;
}

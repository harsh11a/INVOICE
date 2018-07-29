<html>
<head>
<title>INDoogle</title>
<style type="text/css">
a {
    text-decoration: none !important;
	color: #00f;
}
a.pageurl{
	color:#516B85;
	font-style:italic;
	font-size:10px;
}
c
{
font-family: Comic Sans MS;
font-size:20px;
}	
m
{
	color:#F50707;
	font-size:25px;
}
r
{
	font-size:15px;
    font-family:Courier New;
}
body{
	background-color:	#F5F5F5;
	
}
.search{
	width: 700px;
height: 40px;
border-radius:10px;
}
</style>
</head>
<body>

<font color="#FF9933" size="5">IND</font><font color="#0000ff" size="5">oo</font><font color="#138808" size="5">gle</font>

 <input type="text" class='search' size="80" name="search" placeholder="Search anything else?">
<hr>
</body>
</html>
<?php 
$button = $_GET [ 'submit' ];

$search = $_GET [ 'search' ];
 
 if( !$button )
 echo "you didn't submit a keyword"; 
 
 else { if( strlen( $search ) <= 1 ) 
 
 echo "Search term too short";

else { 

echo "<h5>You searched for <b> <m>$search</m> </b></h5><hr size='1'> ";
$con= mysqli_connect( "localhost","root","","search") ;

 
 $search_exploded = explode ( " ", $search ); 

 
 $x = 0; 
 
 foreach( $search_exploded as $search_each ) 
 
 { $x++;
 $construct = ""; 
 if( $x == 1 )

$construct .="pagecontent LIKE '%$search_each%'"; 

else $construct .="AND pagecontent LIKE '%$search_each%'"; 
} 
    
$construct = "SELECT * FROM searchengine WHERE $construct";

 $run = mysqli_query($con, $construct ); 
 
 $foundnum = mysqli_num_rows($run); 




if ($foundnum == 0) {
     

echo "Sorry, there are no matching result for <b> $search </b>. </br> </br> 1. Try more general words. for example: If you want to search 'how to create a website' then use general keyword like 'create' 'website' </br> 2. Try different words with similar meaning </br> 3. Please check your spelling"; 
}
else

 {

 echo "<r> About $foundnum results found !</br></br></br></r>"; 

while( $runrows = mysqli_fetch_assoc( $run ) ) {

 $id = $runrows ['id'];  
 
 $pageurl = $runrows ['pageurl']; 
    
    $pagecontent = $runrows ['pagecontent'];
 
 echo "<table><a href='$pageurl'> <c>$pagecontent</c> </a></br> <a href='$pageurl' class='pageurl'> $pageurl </a></table>"; } } }
  }
 ?>
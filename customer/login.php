<?php
mysql_connect("localhost","root","");
mysql_select_db("user");
$q = mysql_query("select * from tbl_user");
while ($r = mysql_fetch_assoc($q)) {
	$output[] = $r;
}
printf(json_encode($output));
mysql_close();
?>

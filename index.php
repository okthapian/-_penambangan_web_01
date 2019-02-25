<?php
class csv extends mysqli
{
	
	public function __construct(){
		parent::__construct("localhost","root","","data_monotaro");
		if ($this->connect_error) {
			echo"gagal:".$this->connect_error;
		}
	}

	public function import($file){
		$file=fopen($file,'r');
		while ($row=fgetcsv($file)) {
			print"<pre>";
			print_r($row);
			echo $row[1]."+".$row[2]."+".$row[3];
			print"</pre>";
			$value="'".implode("','",$row)."'";
			echo $value;
			$nama=substr($row[1], 40);
			$data="INSERT INTO product(name_produk,price,stok)VALUES('$nama',$row[2],$row[3])";
			$this->query($data);
		}
	}
}

$csv=new csv();
$csv->import("dataku.csv");
?>
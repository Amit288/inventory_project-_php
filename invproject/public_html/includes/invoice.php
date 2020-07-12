<?php





class Invoice
{
	
	private $con;

	function __construct()
	{
		include_once("../database/db.php");
		$db = new Database();
		$this->con = $db->connect();
	}



	public function joinInvoiceWithoutDate($table,$table1){

		$query = "SELECT {$table}.order_date,{$table}.invoice_no,{$table}.customer_name,{$table1}.product_name,{$table1}.qty,{$table}.net_total,{$table}.paid,{$table}.due,{$table}.payment_type FROM {$table} LEFT JOIN {$table1} ON {$table}.invoice_no={$table1}.invoice_no";
		//}
		$result = $this->con->query($query) or die($this->con->error);
		
		return $result;
	}
}
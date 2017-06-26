<?php 
	require_once '../include.php';

	function connect()
	{
		$link = new mysqli(DB_HOST, DB_USER, DB_PWD, DB_DBNAME);

		if ($link->connect_error) {
			die('Could not connect: '. $link->connect_error);
		}
		$link->query("set names utf8");
		return $link;
	}



	function fetchAll($conn, $sql){
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
				$rows[] = $row;
			}
			return $rows;
		} else {
			return 0;
		}
	}



	function fetchOne($conn, $sql, $where=null)
	{
		$sta = $sql . ($where==null?null:" where " . $where);
		$result = $conn->query($sta);
		if ($result->num_rows > 0) {
			$row = $result->fetch_array();
			return $row;
		} else {
			return 0;
		}
	}




	function insert($conn, $table, $array)
	{
		$keys = join(",", array_keys($array));


		$vals = "'" . join("','", array_values($array)) . "'";


		$sql = "insert into {$table}($keys) values ({$vals})";


		if ($conn->query($sql) === TRUE) {
			echo "insert ok";
		} else {
			alertMes("插入失败", "$_SERVER ['PHP_SELF']");
		}
		
	}



	function update($conn, $table, $array, $where=null)
	{
		foreach ($array as $key => $value) {
			if ($str==null) {
				$sep = "";
			} else {
				$sep = ",";
			}
			$str .= $sep . $key . "='" . $values . "'";
		}
		$sql = "update {$table} set {$str} " . ($where==null?null:" where " . $where);
		if ($conn->query($sql) === TRUE) {
			echo "update ok";
		} else {
			alertMes("更新失败", "$_SERVER ['PHP_SELF']");
		}
	}



	function delete($conn, $table, $where=null)
	{
		$sql = "delete from {$table} " . ($where==null?null:" where " . $where);
		if ($conn->query($sql) === TRUE) {
			echo "delete ok";
		} else {
			alertMes("删除失败", "$_SERVER ['PHP_SELF']");
		}
	}



	function getResultNum($conn, $sql)
	{
		$result = $conn->query($sql);

		return $result->num_rows;
	}


$conn = connect();
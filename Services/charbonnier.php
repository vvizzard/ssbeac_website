<?php

function getNbrCharbonnierForme($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND YEAR(vt.date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND vt.region_id = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT vt.id, vt.district AS district, vt.region_id, SUM(vt.number) AS nbr, SUM(vf.number) AS nbr_f 
		FROM view_charbonnier_total vt 
		LEFT JOIN view_charbonnier_forme vf ON vt.id = vf.id 
		WHERE 1=1 ".$whereSql." GROUP BY id ";
		// var_dump($sql);
		$result = $conn->query($sql);
		while($row = $result->fetch_assoc()) {
			$valiny[] = $row;
		}
		return $valiny;
	} catch (Exception $e) {
		echo $e;
	} finally {
		$conn->close();
	}
}

function getNbrCharbonnierTotal($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND region_id = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT id, district as district, region_id, SUM(number) as nbr FROM view_charbonnier_total  
		WHERE 1=1 ".$whereSql." GROUP BY id ";
		// var_dump($sql);
		$result = $conn->query($sql);
		while($row = $result->fetch_assoc()) {
			$valiny[] = $row;
		}
		return $valiny;
	} catch (Exception $e) {
		echo $e;
	} finally {
		$conn->close();
	}
}

function getTauxTechinqueCarbonisation($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND region_id = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id AS id, district AS district, region_id, label AS technique, SUM(bois) AS bois, SUM(charbon) AS charbon FROM view_technique_carbonisation  
		WHERE 1=1 ".$whereSql." GROUP BY district_id, label ";
		// var_dump($sql);
		$result = $conn->query($sql);
		while($row = $result->fetch_assoc()) {
			$valiny[] = $row;
		}
		return $valiny;
	} catch (Exception $e) {
		echo $e;
	} finally {
		$conn->close();
	}
}
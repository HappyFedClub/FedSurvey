<?php
//获取ip地址
function getip() {
	if ($_SERVER["HTTP_X_FORWARDED_FOR"])
		$ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
	else if ($_SERVER["HTTP_CLIENT_IP"])
		$ip = $_SERVER["HTTP_CLIENT_IP"];
	else if ($_SERVER["REMOTE_ADDR"])
		$ip = $_SERVER["REMOTE_ADDR"];
	else if (getenv("HTTP_X_FORWARDED_FOR"))
		$ip = getenv("HTTP_X_FORWARDED_FOR");
	else if (getenv("HTTP_CLIENT_IP"))
		$ip = getenv("HTTP_CLIENT_IP");
	else if (getenv("REMOTE_ADDR"))
		$ip = getenv("REMOTE_ADDR");
	else
		$ip = "Unknown";
	return $ip;
}
//获取外部ip地址
function getip_out() {
	$ip = false;
	if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
		$ip = $_SERVER["HTTP_CLIENT_IP"];
	}
	if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		$ip= explode(", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
		if ($ip) { array_unshift($ips, $ip);
			$ip = FALSE;
		}
		for ($i = 0; $i < count($ips); $i++) {
			if (!eregi("^(10│172.16│192.168).", $ips[$i])) {
				$ip = $ips[$i];
				break;
			}
		}
	}
	return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);
}
//获取格式化的客户端时间
function getDatetimeNow() {
    $tz_object = new DateTimeZone('PRC');
	date_default_timezone_set('PRC');//设置为中华人民共和国
	
    $datetime = new DateTime();
    $datetime->setTimezone($tz_object);
    return $datetime->format('Y\-m\-d\ h:i:s');
}
?>
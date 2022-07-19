<?php
$con=mysqli_connect("localhost", "root", "1234", "carsharing") or die("MySQL 접속 실패!! ");

$CustomerID = $_POST['CustomerID'];
$Password = $_POST['Password'];

$sql = "select * from customer where CustomerID ='".$CustomerID."' AND Password = '".$Password."'";

    $result = mysqli_query($con,$sql);

    $row = mysqli_fetch_array($result);
            $article = array(
                'CustomerID' => $row['CustomerID'],
                'Password' => $row['Password']
            );
    if(empty($article['CustomerID']) && empty($article['Password']))
    {
        echo "로그인 실패";
        echo '<a href = "main.html">돌아가기</a>';
    }
    else{
        echo "아이디 : ".$article['CustomerID']." 비밀번호 : ".$article['Password']."</br>";
        echo '성공했습니다. <a href = "mainpage.html">접속하기</a>';
    }
?>
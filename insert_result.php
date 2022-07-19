<?php
    $con=mysqli_connect("localhost", "root", "1234", "carsharing") or die("MySQL 접속 실패!! ");

    $CustomerID = $_POST["CustomerID"];
    $CustomerName = $_POST["CustomerName"];
    $Gender = $_POST["Gender"];
    $Address = $_POST["Address"];
    $Licence = $_POST["Licence"];
    $Password = $_POST["Password"];
    $Phone = $_POST["Phone"];
    $BirthDate = $_POST["BirthDate"];

    $sql =" INSERT INTO customer VALUES('".$CustomerID."','".$CustomerName."','".$Gender."','".$Address."','".$Licence."','".$Password."','".$Phone."','".$BirthDate."')";

    $ret = mysqli_query($con, $sql);

    echo "<h1> 신규 회원 입력 결과 </h1>";
    if($ret){
        echo "데이터가 성공적으로 입력됨";
    }
    else {
        echo "데이터 입력 실패!!"."<br>";
        echo "실패 원인 :".mysqli_error($con);
    }
    mysqli_close($con);

    echo "<br> <a href='main.html'> <--초기 화면</a>";
?>
   
    
    


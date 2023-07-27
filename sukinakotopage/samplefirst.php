<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
// フォームデータの受け取り
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

// データベースに接続
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "avengers";

$conn = new mysqli($servername, $username, $password, $dbname);

// 接続の確認
if ($conn->connect_error) {
    die("データベースへの接続に失敗しました: " . $conn->connect_error);
}

// データの挿入
$sql = "INSERT INTO お問い合わせ (名前, メールアドレス, メッセージ) VALUES ('$name', '$email', '$message')";

if ($conn->query($sql) === TRUE) {
    echo "お問い合わせが送信されました。";
 
} else {
    echo "エラー: " . $sql . "<br>" . $conn->error;
}

// データベースとの接続を閉じる
$conn->close();
?>
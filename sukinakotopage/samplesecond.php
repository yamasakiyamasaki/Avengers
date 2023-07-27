
<?php
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

// お問い合わせ情報の取得
$sql = "SELECT * FROM お問い合わせ";
$result = $conn->query($sql);

// 結果の格納
$rows = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $rows[] = array("名前" => $row["名前"], "メッセージ" => $row["メッセージ"]);
    }
}

// データベースとの接続を閉じる
$conn->close();

// JSON形式で出力
header('Content-Type: application/json');
echo json_encode(array("comments" => $rows));
?>
function getData() {
    document.getElementById("Result").value = "問い合わせ中です…";
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "samplesecond.php");
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
    xhr.send();

    // ここでパラメータを指定する
    var params = "param1=value1&param2=value2";
    xhr.send(params);

    xhr.onreadystatechange = function () {
        try {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    var result = JSON.parse(xhr.response);
                    var comments = result.comments;
                    var displayText = "";
                    for (var i = 0; i < comments.length; i++) {
                        displayText += "名前: " + comments[i].名前 + "\n";
                        displayText += "メッセージ: " + comments[i].メッセージ + "\n\n";
                    }
                    document.getElementById("Result").value = comments.length > 0 ? displayText : "お問い合わせ情報がありません。";
                } else {
                    document.getElementById("Result").value = "エラーが発生しました。";
                }
            }
        } catch (e) {
            document.getElementById("Result").value = "エラーが発生しました。";
        }
    };
}
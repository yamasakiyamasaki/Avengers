

$(function(){
    ityped.init(document.querySelector("#ityped"), {
    strings: ['オススメ'],    
    typeSpeed:  100,             //タイピングのスピード
    backSpeed:  50,              //文字が消えていくときのスピード
    startDelay: 500,             //タイピングが始まるまでの時間
    backDelay:  500,             //タイピングが終わって消え始めるまでの時間
    loop: true,                 //繰り返しの有無（trueかfalseで指定）
    showCursor: true,            //カーソル表示の有無（trueかfalseで指定）
    placeholder: false,          //プレースホルダーでのアニメーション（trueかfalseで指定）
    disableBackTyping: false,    //文字を消していく動作の有無（trueかfalseで指定）
    cursorChar: "|", 
});
});
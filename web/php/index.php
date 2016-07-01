<?php
require_once('lib/MysqliDb.php');
require_once('lib/conn.php');
error_reporting(E_ALL);

// 输出调查问卷标题和调查信
function printSurvey(){
    global $db;

    $db->where ("id", 1);
    $survey = $db->getOne ("surveys");
    if ($survey) {
        echo "<header class='header'>
                <h1>{$survey['title']}</h1>
                <div>{$survey['welcome']}</div>
             </header>";
    }else{
        echo "<span>没有调查问卷，赶紧加入吧！</span>";
    }       
}
// 输出问卷题目
function printSurveyQestion(){
    global $db;

    $questions = $db->get('questions');

    if ($db->count == 0) {
        echo "<div>没有问题哟，快点添加呀！</div>";
        return;
    }
    foreach ($questions as $q) {
        echo "<div class='qList'>
                <h3>{$q['title']}</h3>
                <ul class='list clearfix'>";

                $qid=$q['id'];
                $type=$q['type'];
                $db->where ('qid', $qid);
                $answers = $db->get('answers');

                if ($db->count == 0) {
                    echo "<li>没有选项哟，快点添加呀！</li>";
                    return;
                }

                foreach ($answers as $a) {
                    if($type=='1'){
                        echo "<li class='list__item'>
                                <label class='label--radio'>
                                    <input type='radio' class='radio' name='a{$qid}' value='{$a['id']}'>{$a['text']}
                                </label>
                            </li>";
                    }else if ($type=='2') {
                        echo "<li class='list__item'>
                                <label 'class=label--checkbox'>
                                    <input type='checkbox' class='checkbox' name='b{$qid}' value='{$a['id']}'>{$a['text']}
                                </label>
                            </li>";
                    }     
                }
        echo "</ul></div>";
    }
}

function getData(){
     global $db;

     $answers = $db->get('answers');

     $number=$db->count;

     for ($i=0; $i <$number ; $i++) { 
        echo "abc";
     }
}

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>调查问卷-前端开发行业现状调查</title>
    <meta name="viewport" content="width=device-width
, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link href="//cdn.bootcss.com/meyer-reset/2.0/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/css.css">
</head>

<body>
    <?printSurvey();?>
    <section class="content">
        <form action="index.php">
            <?printSurveyQestion();?>
            <div class="result">
                <input type="submit" id="submit" name="submit" onlick="" class="button" style="display:none;">
                <label for="submit" class="button">提交问卷</label>
                <a href="result.html" target="_blank" class="button">查看结果</button>
            </div>
        </form>
    </section>
    <div id="progress"> 
        <svg id="svg" viewbox="0 0 100 100">
            <circle cx="50" cy="50" r="40" fill="#f0f0ff
" opacity="0.5" stroke="#d0d0d0" stroke-width="4" />
            <path id="circle" fill="none" stroke-linecap="round" stroke-width="4" stroke="#16a085" stroke-dasharray="1,250.2" d="M50 10 a 40 40 0 0 1 0 80 a 40 40 0 0 1 0 -80" />
            <text id="count" x="50" y="35" text-anchor="middle" dy="7" font-size="10">答题进度</text>
            <text id="count2" x="50" y="60" text-anchor="middle" dy="7" font-size="16"></text>
        </svg>
    </div>
    <footer>
        <p>
            浙江邮电职业技术学院<a class="background-slide" href="https://github.com/HappyFedClub" target="_blank">前端开发俱乐部</a>版权所有
        </p>
        <p>建议使用现代浏览器浏览！</p>
    </footer>
    <script src="//cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/snap.svg/0.4.1/snap.svg-min.js"></script>
    <script>
    $(function() {
        var s = Snap('#progress');
        var circle = s.select('#circle');
        var count2 = $('#count2');
        var listLength = $(".list").length;
        var i;
        count2.html("0/" + listLength);
        $(".list").find("input").change(function() {
            i = 0;
            $(".list").each(function() {
                var choose = $(this).find("input:checked").length;
                if (choose) {
                    i += 1;
                };
            });
            var valOld = ((i - 1) / listLength).toFixed(2);
            var val = (i / listLength).toFixed(2);
            count2.html(i + "/" + listLength);
            Snap.animate(valOld * 251.2, val * 251.2, function(val) {
                circle.attr({
                    'stroke-dasharray': val + ',251.2'
                });
            }, 1000);
        });
    });
    </script>
</body>

</html>

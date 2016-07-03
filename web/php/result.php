<?php
require_once ('lib/MysqliDb.php');
require_once ('lib/conn.php');
require_once ('lib/function.php');
error_reporting(E_ALL);

$number;

// 输出调查问卷标题和调查信
function printSurvey() {
	global $db;
	global $number;;

	$db -> where("id", 1);
	$survey = $db -> getOne("surveys");
	
	if ($survey) {
		
		$db-> where("surveyid",1);
		$voters=$db->get("votes");
		$number=$db->count;
		
		echo "<header class='header'>
                <h1>{$survey['title']}</h1>
                <div>
                	{$survey['welcome']}
                	<p>感谢您的参与，共有{$number}位同仁参与了调查，调查结果分析如下。</p>
                </div>
             </header>";
	} else {
		echo "<span>没有调查问卷，赶紧加入吧！</span>";
	}
}

// 输出问卷题目
function printSurveyQestion() {
	global $db;

	$db -> where('sid', 1);
	$db -> orderBy("num", "asc");
	$questions = $db -> get('questions');
	$qNum = $db -> count;
	
	echo "<section class='content clearfix'>";
	if ($qNum == 0) {
		echo "<div>没有问题哟，快点添加呀！</div>";
		return;
	}
	foreach ($questions as $q) {
		echo "<div class='qList'>
                <h3>{$q['title']}</h3>
                <div class='chart' id='{$q['id']}'></div>
           </div>";
	}
	echo "</section>";
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>结果分析-前端开发行业现状调查</title>
    <meta name="viewport" content="width=device-width
, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link href="//cdn.bootcss.com/meyer-reset/2.0/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/css.css">
</head>

<body class="resultPage">
    <? printSurvey(); ?>
    <? printSurveyQestion(); ?>
    <footer>
        <p>
            浙江邮电职业技术学院<a class="background-slide" href="https://github.com/HappyFedClub" target="_blank">前端开发俱乐部</a>版权所有
        </p>
        <p>建议使用现代浏览器浏览！</p>
    </footer>
    <script src="//cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/echarts/3.1.10/echarts.min.js"></script>
    <script>
    	<?php 
    		
	   		global $db;
			global $number;
    		
    		$db -> where('sid', 1);
			$db -> orderBy("num", "asc");
			$questions = $db -> get('questions');
			
			$db -> where('sid', 1);
			$questions = $db -> get('questions');
			
			foreach ($questions as $q) {
				$qid=$q['id'];
				$qtitle=$q['title'];
				
				$db -> where('qid',$qid);
				$answers=$db->get('answers');
				
				$strpie="option{$qid} = {
		            title : {
		                text: '{$qtitle}',
		                x:'center',
                		y:'center'
		            },
		            tooltip : {
		                trigger: 'item',
		                formatter: '{a} <br/>{b} : {c} ({d}%)'
		            },
		            legend: {
		            	orient: 'vertical',
		                x: '5%',
		                y: '5%',
		                data: [";
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strpie.="'".$atitle."',";
					}    
			               
		            $strpie.="]
		            },
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'pie',
		                    radius : '70%',
                    		center: ['50%', '55%'],
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strpie.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strpie.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                }
		            ]
		        };";
				
				$strfunnel="option{$qid} = {
		            title : {
		                text: '{$qtitle}',
		                x:'center',
                		y:'bottom'
		            },
		            tooltip : {
		                trigger: 'item',
		                formatter: '{a} <br/>{b} : {c} ({d}%)'
		            },
		            legend: {
		            	orient: 'vertical',
		                x: '5%',
		                y: '5%',
		                data: [";
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strfunnel.="'".$atitle."',";
					}    
			               
		            $strfunnel.="]
		            },
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'funnel',
		                    width: '60%',
		                    height: '80%',
		                    left: 'center',
		                    top: '10%',
		                    sort: 'ascending',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strfunnel.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strfunnel.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                }
		            ]
		        };";
		        
		        $strfunnel2="option{$qid} = {
		            tooltip : {
		                trigger: 'item',
		                formatter: '{a} <br/>{b} : {c} ({d}%)'
		            },
		            legend: {
		            	orient: 'vertical',
		                x: '5%',
		                y: '5%',
		                data: [";
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strfunnel2.="'".$atitle."',";
					}    
			               
		            $strfunnel2.="]
		            },
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'funnel',
		                    width: '60%',
		                    height: '40%',
		                    left: 'center',
		                    top: '10%',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strfunnel2.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strfunnel2.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                },
		                {
		                    name: '{$qtitle}',
		                    type: 'funnel',
		                    width: '60%',
		                    height: '40%',
		                    left: 'center',
		                    top: '50%',
		                    sort: 'ascending',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strfunnel2.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strfunnel2.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                }
		            ]
		        };";
		        
		        $strfunnel3="option{$qid} = {
		            tooltip : {
		                trigger: 'item',
		                formatter: '{a} <br/>{b} : {c} ({d}%)'
		            },
		            legend: {
		            	orient: 'vertical',
		                x: '5%',
		                y: '5%',
		                data: [";
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strfunnel3.="'".$atitle."',";
					}    
			               
		            $strfunnel3.="]
		            },
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'funnel',
		                    width: '60%',
		                    height: '40%',
		                    left: 'center',
		                    top: '10%',
		                    sort: 'ascending',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strfunnel3.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strfunnel3.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                },
		                {
		                    name: '{$qtitle}',
		                    type: 'funnel',
		                    width: '60%',
		                    height: '40%',
		                    left: 'center',
		                    top: '50%',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strfunnel3.="{value:{$answercount}, name:'{$atitle}'},";
								
							}       
				            $strfunnel3.="],
				            itemStyle: {
		                        emphasis: {
		                            shadowBlur: 10,
		                            shadowOffsetX: 0,
		                            shadowColor: 'rgba(0, 0, 0, 0.5)'
		                        }
		                    }
		                }
		            ]
		        };";
		        
		        $strbar="option{$qid} = {
			        title : {
			                text: '{$qtitle}',
			                x:'center',
	                		y:'center'
			        },
		            tooltip: {
		                trigger: 'axis'
		            },
		            toolbox: {
		                show : true,
		                feature : {
		                    dataView : {show: true, readOnly: false},
		                    magicType : {show: true, type: ['line', 'bar']},
		                    restore : {show: true},
		                    saveAsImage : {show: true}
		                }
		            },
		            yAxis: {
		                type: 'value',
		                boundaryGap: [0, 0.01]
		            },
		            xAxis: {
		                type: 'category',
		                axisLabel:{
		                    interval:0,
		                    rotate:45
		                },
		                data: [";
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strbar.="'".$atitle."',";
					}    
			               
		            $strbar.="]
		            },
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'bar',
		                    barWidth: '20',
		                    data:[";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strbar.="{$answercount},";
								
							}       
				            $strbar.="],
				             markPoint : {
		                        data : [
		                            {type : 'max', name: '最大值'},
		                            {type : 'min', name: '最小值'}
		                        ]
		                    }
		                }
		            ]
		        };";
				
				$strradar="option{$qid} = {
				    tooltip: {
				        trigger: 'axis'
				    },
				    radar: [
				        {
				            indicator: [";     
		            
		            foreach ($answers as $a) {
						$aid=$a['id'];
						$atitle=$a['text'];
						
						$strradar.="{text:'{$atitle}',max:{$number}},";
					}    
			               
		            $strradar.="],
				            center: ['25%','40%'],
				            radius: 80
				        }
				    ],
		            series : [
		                {
		                    name: '{$qtitle}',
		                    type: 'radar',
		                    tooltip: {
				                trigger: 'item'
				            },
				            itemStyle: {normal: {areaStyle: {type: 'default'}}},
		                    data:[
		                    	{
		                    		value: [";
				             foreach ($answers as $a) {
								$aid=$a['id'];
								$atitle=$a['text'];
								
								$db -> where('answerid', $aid);
								$db -> where('questionid', $qid);
								$answerlist = $db -> get('answerlist');
								$answercount=$db->count;
								
								$strradar.="{$answercount},";
								
							}       
				            	$strradar.="],
				            		name:'{$qtitle}'
				            	 }
				            ]
		                }
		            ]
		        };";
		        
				echo $strbar;
			}
		?>
        
        optionMobile={
            title : {
                text: ''
            },
            legend: {
                orient: 'horizontal'
            }
        }
       	
        $(".chart").each(function(index, el) {
            var chart=echarts.init(this);
            chart.setOption(eval('option'+(index+1)));
            if($(window).width()<768){
                chart.setOption(optionMobile);
            }
        });
    </script>
</body>
</html>
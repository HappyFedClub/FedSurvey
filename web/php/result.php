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
                	<div class='link'>
		                <a href='result.php?chartType=1' class='button'>饼图</a>
		                <a href='result.php?chartType=2' class='button'>漏斗图1</a>
		                <a href='result.php?chartType=3' class='button'>漏斗图2</a>
		                <a href='result.php?chartType=4' class='button'>漏斗图3</a>
		                <a href='result.php?chartType=5' class='button'>柱图</a>
		                <a href='result.php?chartType=6' class='button'>雷达图</a>
		                <a href='result.php' class='button'>随机</a>
		            </div>
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
    <?php printSurvey(); ?>
    <?php printSurveyQestion(); ?>
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
    		
    		$chartType=!empty($_GET['chartType'])?$_GET['chartType']:-1;
//			echo $chartType;
    		
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
				$answersCount=$db->count;
				
				$strpie="option{$qid} = {
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
		                    radius : '60%',
                    		center: ['50%', '50%'],
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
		                    label: {
				                normal: {
				                    position: 'center',
				                    textStyle: {
				                    	color:'#000',
				                    }
				                },
				                emphasis: {
				                    textStyle: {
				                    	fontWeight:'bold'
				                    }
				                }
				            },
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
		                    label: {
				                normal: {
				                    position: 'center',
				                    textStyle: {
				                    	color:'#000',
				                    }
				                }
				            },
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
		                    label: {
				                normal: {
				                    position: 'center',
				                    textStyle: {
				                    	color:'#000',
				                    }
				                }
				            },
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
		                    label: {
				                normal: {
				                    position: 'center',
				                    textStyle: {
				                    	color:'#000',
				                    }
				                }
				            },
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
		                    label: {
				                normal: {
				                    position: 'center',
				                    textStyle:{
				                    	color:'#000',
				                    }
				                }
				            },
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
			        tooltip: {
		                trigger: 'axis'
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
				            center: ['50%','50%'],
				            radius: 140
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
				
				if($answersCount>6){
					$strfunnel3=$strfunnel2=$strfunnel;
				}
				
				$typeArray=Array($strpie,$strfunnel,$strfunnel2,$strfunnel3,$strbar,$strradar);
		        
		        if( $chartType >= 1 && $chartType <= 6){
					echo $typeArray[$chartType-1];
				}else{
					$arr=array();
  					$arr[]=rand(0,5);
  					$arr=array_unique($arr);
					echo $typeArray[$arr[0]];
				}
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
        optionMobile2={
        	legend: {
                show:false,
            }
        }
       	
        $(".chart").each(function(index, el) {
            var chart=echarts.init(this);
            chart.setOption(eval('option'+(index+1)));
            if($(window).width()<768){
                chart.setOption(optionMobile);
            }
            if(index==5||index==14||index==15){
            	chart.setOption(optionMobile2);
            }
        });
    </script>
</body>
</html>
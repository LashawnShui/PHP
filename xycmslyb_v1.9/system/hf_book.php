<?php
require 'include/session.php';
require 'include/globle.inc.php';
if($_GET["act"]==ok){
	$siteinfo = array(
	    'b_id'=>$_POST['id'],
		'r_content ' => $_POST['content'],
		'r_name' => $_POST['r_name'],
		'r_date' => strtotime($_POST['c_date'])
		);
	$db->insert("xycms_book_reply", $siteinfo);
	//$db->close();
    echo "<script language='javascript'>"; 
    echo "alert('恭喜您,留言新回复成功!');";
    echo " location='manage_book.php';"; 
    echo "</script>";
}
$sxid=$_GET["id"];
$e_rs=$db->get_one("select * from xycms_book where id=$sxid",MYSQL_ASSOC);
$bid=$e_rs['id'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>栏目信息添加</title>
<script type="text/javascript" src="Js/jquery.min.js"></script>
<link href="style/style.css" type="text/css" rel="stylesheet" />
<script charset="utf-8" src="xyeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="xyeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/laydate.js"></script>
<script>
var editor;
KindEditor.ready(function(K) {
  editor = K.create('textarea[name="content"]', {
	uploadJson : 'xyeditor/php/upload_json.php',
	fileManagerJson : 'xyeditor/php/file_manager_json.php',
    allowFileManager : true
  });
  K('#s_img').click(function() {
	editor.loadPlugin('image', function() {
	editor.plugin.imageDialog({
	imageUrl : K('#link_img').val(),
	clickFn : function(img, title, width, height, border, align) {
	K('#link_img').val(img);
	editor.hideDialog();
	}
	});
   });
  });
});
</script>
</head>
<body style="overflow-x:hidden;">
<div id="loader" >页面加载中...</div>
<div id="result" class="result none"></div>
<div class="mainbox">
  <div id="nav" class="mainnav_title">
    <ul>
      <a href="manage_reply.php">回复管理</a>
    </ul>
    <div class="clear"></div>
  </div>
  <script>
	jQuery(document).ready(function(){
		
		$('#nav ul a ').eq(0).addClass('on');
	});
	</script>
  <div id="msg"></div>
  <form name="addform" id="addform" action="?act=ok" method="post">
    <table cellpadding=0 cellspacing=0 class="table_form" width="100%">
      <tr>
        <td width="10%" >留言标题</td>
        <td width="90%" id="box_content"><?php echo $e_rs['b_title'];?> <input type="hidden" name="id" value="<?php echo $bid;?>" /></td>
      </tr>
      <tr>
        <td width="10%" >留言内容</td>
        <td width="90%" id="box_content"><?php echo $e_rs['b_content'];?></td>
      </tr>
      <tr>
        <td width="10%" >回复者</td>
        <td width="90%" id="box_content"><input type="text" class="input-text" name="r_name"  id="r_name"  size="55" value="管理员" /></td>
      </tr>
      <tr>
        <td width="10%" >回复内容</td>
        <td width="90%" id="box_content"><textarea name="content" style="width:670px;height:400px;visibility:hidden;"></textarea></td>
      </tr>
      <tr>
        <td width="10%" ><font color="red">*</font>发布时间</td>
        <td width="90%" id="box_createtime"><input name="c_date" type='text' class="laydate-icon" id="c_date" value="<?php echo date("Y-m-d H:i:s",$e_rs['c_date']);?>" /></td>
      </tr>
    </table>
    <div id="bootline"></div>
    <div id="btnbox" class="btn">
      <INPUT TYPE="submit"  value="提交" class="button" >
      <input TYPE="reset"  value="取消" class="button">
    </div>
  </form>
</div>
</body>
</html>
<script>
laydate({
    elem: '#c_date', 
    event: 'focus',
	format: 'YYYY-MM-DD hh:mm:ss'
	});
</script>
<?php
$db->close();
?>
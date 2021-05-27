function calTotal() {
    //首先定义一个总价
    let total = 0;
    //获取表格中的指定列
    const tds = $("tbody tr :nth-child(7)");
    //遍历这个列中的所有内容
    tds.each(function () {
        //获取每一行的数据
        var v = $(this).text();
        //计算总和
        total = total + parseFloat(v);
    });
    //输出总和
    $("#st").html("商品总价为:¥ " + total + "元")
}


// <script language="javascript">
//     function check(myform) {
//     if (!isNaN(myform.num<%=i%>.value) || myform.num<%=i%>.value.indexOf('.', 0) != -1) {
//     alert("请不要输入非法字符");
//     myform.num<%=i%>.focus();
//     return;
// }
//     if (myform.num<%=i%>.value == "") {
//     alert("请输入修改的数量");
//     myform.num<%=i%>.focus();
//     return;
// }
//     myform.submit();
// }
// </script>
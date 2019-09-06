/**
 * 公用js，检查是否登录或超时。
 * -- 在需要检查的页面引入即可
 */
layui.use(['layer', 'admin'], function () {
    var $ = layui.jquery;
    var layer = layui.layer;
    var admin = layui.admin;

    layer.msg('你进入了checkLogin.js....检查是否登录或超时....')

    // 检查是否登录或超时
    admin.req('/checkLogin', {}, function (res) {
        if (408 == res.code) {
            layer.alert('会话超时，请重新登录!', {icon: 5, closeBtn: 0}, function(index){
                // 返回登录页
                location.replace('/spa/login.html');
            });
        }
    }, 'get');

});
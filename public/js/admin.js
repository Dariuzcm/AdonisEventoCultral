$(document).ready(()=>{
    $("#addNotice").click(()=>{
        var rep=$("#noticePanel");
        var url=$(this).attr("href");
        rep.load(url).fadeIn(1000);
        return false;
    });
});
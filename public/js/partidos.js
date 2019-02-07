$(document).ready(()=>{
    $("#A1").change(()=>{
        var ax = $("#A1").val();

        $("#31").val(ax);
        $("#51").val(ax);
        $("#91").val(ax);
    });
});
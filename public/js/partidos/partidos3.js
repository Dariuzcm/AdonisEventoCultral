$(document).ready(()=>{
    $("#A1").change(()=>{
        var ax = $("#A1").val();

        $("#11").val(ax);
        $("#31").val(ax);
    });

    $("#A2").change(()=>{
        var ax = $("#A2").val();

        $("#12").val(ax);
        $("#21").val(ax);
    });

    $("#A3").change(()=>{
        var ax = $("#A3").val();

        $("#22").val(ax);
        $("#32").val(ax);
    });
    
});
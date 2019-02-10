$(document).ready(()=>{
    $("#A1").change(()=>{
        var ax = $("#A1").val();

        $("#11").val(ax);
        $("#41").val(ax);
        $("#51").val(ax);

    });
    $("#A2").change(()=>{
        var ax = $("#A2").val();

        $("#12").val(ax);
        $("#31").val(ax);
        $("#62").val(ax);
    });
    $("#A3").change(()=>{
        var ax = $("#A3").val();

        $("#21").val(ax);
        $("#32").val(ax);
        $("#52").val(ax);
    });
    $("#A4").change(()=>{
        var ax = $("#A4").val();

        $("#22").val(ax);
        $("#42").val(ax);
        $("#61").val(ax);
    });
});
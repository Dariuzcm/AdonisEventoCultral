$(document).ready(()=>{
    $("#A1").change(()=>{
        var ax = $("#A1").val();

        $("#31").val(ax);
        $("#51").val(ax);
        $("#91").val(ax);
    });
    $("#A2").change(()=>{
        var ax = $("#A2").val();

        $("#11").val(ax);
        $("#102").val(ax);
        $("#52").val(ax);
    });
    $("#A3").change(()=>{
        var ax = $("#A3").val();

        $("#61").val(ax);
        $("#101").val(ax);
        $("#31").val(ax);
    });
    $("#A4").change(()=>{
        var ax = $("#A4").val();

        $("#12").val(ax);
        $("#62").val(ax);
        $("#92").val(ax);
    });
    $("#B1").change(()=>{
        var ax = $("#B1").val();

        $("#41").val(ax);
        $("#21").val(ax);
    });
    $("#B2").change(()=>{
        var ax = $("#B2").val();

        $("#22").val(ax);
        $("#71").val(ax);
    });
    $("#B3").change(()=>{
        var ax = $("#B3").val();

        $("#42").val(ax);
        $("#72").val(ax);
    });
    $("#B4").change(()=>{
        var ax = $("#B4").val();

        $("#31").val(ax);
        $("#51").val(ax);
        $("#91").val(ax);
    });
});
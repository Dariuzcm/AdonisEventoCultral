$(document).ready(() => {
    var file = $('#fileSelect');

    file.hide();

    $('#changeImage').change(() => {
        console.log($('#changeImage').prop('checked'));
        if ($('#changeImage').prop('checked'))
            file.show();
        else
            file.hide();
    })
})

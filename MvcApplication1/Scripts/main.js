var addressItems = [];
$(document).ready(function () {



});
$('#btnAddress').click(function () {
    $('#tblAddress tbody').append('<tr><td><input type="text" id="txtadd" /></td><td>\
                        <input type="button" id="btnAremove" onclick="removeBtn();" value="remove" style="width:80px" class="btn btn-danger" />\
                    </td></tr>');
});
function removeBtn() {
    debugger;
    $(this).parent().remove();
};
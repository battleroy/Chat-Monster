function deleteSpotById(spotId) {
    $.ajax({
        url: '/spot/' + spotId + '/delete',
        type: 'POST',
        success: function(result) {
            console.log('Spot ' + spotId + ' deleted');
            window.location.replace("/myspots");
        }
    });
}

$('#modalDeleteDiv').on('shown.bs.modal', function(event) {
    console.log('modal delete event fired');
    var button = $(event.relatedTarget);
    var recipient = button.data('spotid');
    var modal = $(this);
    modal.find('#button-confirm').attr('onclick', "deleteSpotById(" + recipient + ");");
});
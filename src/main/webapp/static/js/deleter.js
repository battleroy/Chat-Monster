function deleteSpotById(spotId) {
    $.ajax({
        url: '/spot/' + spotId,
        type: 'POST',
        success: function(result) {
            console.log('Spot ' + spotId + ' deleted');
            location.reload(true);
        }
    });
}
function deleteSpotById(spotId) {
    $.ajax({
        url: '/spot/' + spotId,
        type: 'PUT',
        success: function(result) {
            console.log('Spot ' + spotId + ' deleted')
        }
    });
}
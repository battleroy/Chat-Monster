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
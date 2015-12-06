$().ready(function() {
    $('#spot-form').validate({
        rules: {
            name: {
                required: true,
                minlength: 5
            },
            address: {
                required: true,
                minlength: 10
            }
        }
    });
});
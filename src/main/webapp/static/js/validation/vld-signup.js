$().ready(function() {
    $('#signup-form').validate({
        rules: {
            username: {
                required: true,
                minlength: 4
            },
            password: {
                required: true,
                minlength: 5
            },
            firstName: "required",
            lastName: "required"
        }
    });
});
import swal from "sweetalert";

const SweetAlert = function(title, text, callback) {

    swal({
        title: title,
        text: text,
        icon: "warning",
        buttons: {
            confirm: {
                text: "Yes, I'm sure",
                className: "btn btn-theme",
            },
            cancel: {
                text: "Cancel",
                className: "btn btn-secondary-outline",
                visible: true,
            }
        }
    }).then(function(result) {
        callback(result);
    });

};

export default SweetAlert
$(document).ready(function () {
    $('.act').click(function () {
        var buttonId = $(this).attr('button_id');
        try {
            changeButtonProps(".act", buttonId, "#ddd", "#000000", "Approving")
            approve(".act", buttonId)
        } catch (e) {
            changeButtonProps(".act", buttonId, "#ff0000", "#000000", "Failed")
            console.log(e)
        }
    });

    $('.revoke').click(function () {
        var buttonId = $(this).attr('button_id');
        try {
            changeButtonProps(".revoke", buttonId, "#ddd", "#000000", "Revoking")
            revoke(".revoke", buttonId)
        } catch (e) {
            changeButtonProps(".revoke", buttonId, "#ff0000", "#000000", "Failed")
            console.log(e)
        }
    });

    function changeButtonProps(identifier, button_id, color, textcolor, text) {
        const className = identifier + "_" + button_id
        $(className).text(text)
        $(className).css("background-color", color)
        $(className).css("color", textcolor)
        $(className).removeClass("btn-success")
        $(className).removeClass("btn-danger")
    }

    function approve(identifier, buttonId) {
        call(buttonId, "Approved")
        changeStatus(buttonId, "Approved", identifier + "_" + buttonId)
    }

    function revoke(identifier, buttonId) {
        call(buttonId, "Revoke")
        changeStatus(buttonId, "Revoked", identifier + "_" + buttonId)
    }

    function changeStatus(buttonId, status, className) {
        const appIdentifier = ".act_" + buttonId
        const revokeIdentifier = ".revoke_" + buttonId
        $(className).text(status)
        $(appIdentifier).addClass("disabled")
        $(revokeIdentifier).addClass("disabled")
    }

    function call(buttonId, status) {
        $.ajax({
            url: "/approve",
            type: "post",
            data: {
                reimburseId: buttonId,
                status: status
            },
            success: (data) => {
                console.log(data)
            },
            error: (xhr, status, error) => {
                console.log(status)
                console.log(error)
            }
        })
    }
});

$ = jQuery
$ ->
    $ 'body'
        .prepend """
    <div class="modal-dialog-overlay">
        <div class="dialog-content-wrapper">
        </div>
    </div>
        """
$.fn.modalDialog = (options) ->
    $modalOverlay = $ 'div.modal-dialog-overlay'

    defaults =
        type : 'facebook'

    options = $.extend defaults, options

    @each ->
        $ @
            .on 'click', ->
                showDialog()


    showDialog = ->
        alert options.type
        $modalOverlay.children().addClass "#{options.type}-dialog"
        $modalOverlay.show()

    hideDialog = ->
        $modalOverlay.hide();

    $modalOverlay.on 'click', ->
        hideDialog()

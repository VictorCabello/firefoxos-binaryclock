class App

    constructor: ->
        console.log('creating ...')
        this.addNavBar()

    initEvents: ->
        alert('init events')

    addNavBar: ->
        $.ajax(
            {
                url: "navBar.html",
                mimeType: "text/plain",
                success: (data) ->
                    $('body').append(data)
                    $(document).foundation()
            }
        )

myApp = new App

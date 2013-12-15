class App
    parent: null

    constructor: (aParent) ->
        console.log('creating ...')
        this.addNavBar()
        this.parent =  aParent


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

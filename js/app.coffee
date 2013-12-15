class App
    parent: null

    constructor: (@parent) ->
        console.log('creating ...')
        this.addNavBar()


    initEvents: ->
        alert('init events')

    addNavBar: ->
        myParent = @parent
        $.ajax(
            {
                url: "navBar.html",
                mimeType: "text/plain",
                success: (data) ->
                    myParent.append(data)
                    $(document).foundation()
            }
        )

myApp = new App $('body')

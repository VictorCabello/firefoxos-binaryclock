class NavBar

    constructor: (@parent) ->
        console.log('creating ...')
        this.initLayout()


    initLayout: () ->
        myParent = @parent
        $.ajax(
            {
                url: "navBar.html",
                async : false
                mimeType: "text/plain",
                success: (data) ->
                    myParent.append(data)
            }
        )


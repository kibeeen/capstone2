(function() {
    var editor_id = "";
    tinymce.PluginManager.add('instagram', function(editor, url) {
        // Add a button that opens a window
        editor.addButton('instagram', {
            text: 'Instagram',
            icon: false,
            onclick: function() {
                // Open window
                editor.windowManager.open({
                    title: 'Instagram Embed',
                    body: [
                        {   type: 'textbox',
                            size: 40,
                            height: '100px',
                            name: 'instagram',
                            label: 'instagram'
                        }
                    ],
                    onsubmit: function(e) {
                        // Insert content when the window form is submitted
                        console.log(e.data.instagram);
                        var embedCode = e.data.instagram;
                        var script = embedCode.match(/<script.*<\/script>/)[0];
                        var scriptSrc = script.match(/".*\.js/)[0].split("\"")[1];
                        console.log(script, scriptSrc);

                        var sc = document.createElement("script");
                        sc.setAttribute("src", scriptSrc);
                        sc.setAttribute("type", "text/javascript");

                        var iframe = document.getElementById(editor_id + "_ifr");
                        var iframeHead = iframe.contentWindow.document.getElementsByTagName('head')[0];

                        tinyMCE.activeEditor.insertContent(e.data.instagram);
                        iframeHead.appendChild(sc);
                        setTimeout(function() {
                        	iframe.contentWindow.instgrm.Embeds.process();
                        }, 1000)
                        // editor.insertContent('Title: ' + e.data.title);
                    }
                });
            }
        });
    });
    tinymce.init({
        selector:'textarea.tinymce',

        height: 600,

  		// ===========================================
	  	// INCLUDE THE PLUGIN
	  	// ===========================================
	
	 	plugins: [
	 	  "advlist autolink lists link image charmap print preview anchor",
	  	 "searchreplace visualblocks code fullscreen",
	  	 "insertdatetime media table contextmenu paste jbimages instagram wordcount"
	 	],
	
 	 	// ===========================================
	 	// PUT PLUGIN'S BUTTON on the toolbar
 		// ===========================================
	
  		toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages | instagram",
	
  		// ===========================================
  		// SET RELATIVE_URLS to FALSE (This is required for images to display properly)
  		// ===========================================
		
	    relative_urls: false,


        extended_valid_elements : "script[language|type|async|src|charset]",
        setup: function (editor) {
            console.log(editor);
            editor.on('init', function (args) {
                editor_id = args.target.id;
            });
        }
    });
})();

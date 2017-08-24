App.onLaunch = function(options) {
    let template = `<document>
					   <alertTemplate>
					   <button><text>Open List Item View</text></button>
					   <tvbutton><text>Green custom button without an action</text></tvbutton>
					   </alertTemplate>
				   	</document>`;

    let doc = loadDocument(template);
    doc.addEventListener("select", function(event) {
        let listTemplate = `<document>
							   <catalogTemplate>
							   <banner>
							      <title>Catalog with normal and custom listItems</title>
							   </banner>
							   <list>
							      <section>
							      	<header><text>2 listItems</text></header>
							        <listItemLockup style="tv-highlight-color:rgb(255,117,0)">
							        	<title>Ordinary listItem</title>
							        </listItemLockup>
							      </section>
							      <section>
							        <tvListItem style="tv-highlight-color:rgb(255,0,0)">
							        	<text>Custom listItem</text>
							        </tvListItem>
							      </section>
							   </list>
							</catalogTemplate>
						   	</document>`;

        loadDocument(listTemplate);
    });
}

function loadDocument(templateString) {
    var templateParser = new DOMParser();
    var parsedTemplate = templateParser.parseFromString(templateString, "application/xml");
    navigationDocument.pushDocument(parsedTemplate);
    return parsedTemplate;
}

App.onExit = function() {
    console.log('App finished');
}
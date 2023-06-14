import module namespace m='http://www.tei-c.org/pm/models/docbook/fo' at '/db/apps/ProHD/transform/docbook-fo.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/docbook.css"],
    "collection": "/db/apps/ProHD/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)
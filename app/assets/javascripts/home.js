%h1 riff home
= link_to 'Things', things_path
%div{ 'ng-controller':  'indexCtrl' }
  {{ some_text.thing }} - {{ some_text.thingType }}
  %br
  {{ month }}
  %br
  %button{ 'ng-click': 'changeThing()' } New Thing, please.
  %ul
    %li{ 'ng-repeat': 'thing in things.things' }
      {{ thing.thing }} - {{ thing.thing_type }}
      %button{ 'ng-click': 'deleteThing(thing.id)' } Delete
  %form{'ng-submit': "submitForm()"}
    %input{type: "text", placeholder: 'Thing', 'ng-model': 'formThing'}
    %input{type: "text", placeholder: 'Thing Type', 'ng-model': 'formThingType'}
    %input{type: "submit"}
import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'tr',
    didRender(){
      renderMathInElement(this.get('element'),
          {delimiters: [
              {left: "$$", right: "$$", display: true},
              {left: "\\[", right: "\\]", display: true},
              {left: "\\(", right: "\\)", display: false},
               {left: "$", right: "$", display: false},
          ]});
    }
});

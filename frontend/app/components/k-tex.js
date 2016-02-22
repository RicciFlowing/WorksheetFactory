import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',
  positionalParams: ['text'],
  didRender(){
    Ember.Logger.log('didRender');
    renderMathInElement(this.get('element'),
        {delimiters: [
            {left: "$$", right: "$$", display: true},
            {left: "\\[", right: "\\]", display: true},
            {left: "\\(", right: "\\)", display: false},
             {left: "$", right: "$", display: false},
        ]});
  }
});

import Ember from 'ember';

export default Ember.Component.extend({
  classNameBindings: ['class'],
  classNames: ['number-clicker'],
  tagName: 'div',
  minimum: 0,
  actions:{
    add(summand){
      if(typeof this.get('number') == 'object'){
        this.set('number', '0');
      }
      let number = parseInt(this.get('number'));
      number += summand;
      if(number<this.get('minimum')){
        number = 0;
      }
      this.set('number', number.toString());

      return false;
    }
  }
});

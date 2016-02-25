import Ember from 'ember';

export default Ember.Component.extend({
  classNameBindings: ['class'],
  classNames: ['form-group', 'form-inline', 'clicker-form'],
  tagName: 'form',
  minimum: 0,
  actions:{
    add(summand){
      this.set('number', this.get('number')+summand);
      if(this.get('number')<this.get('minimum')){
        this.set('number',0)
      }
      return false;
    }
  }
});

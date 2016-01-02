import Ember from 'ember';

export default Ember.Controller.extend({
  increment(property, diff){
    value = this.get(property);
    this.set(value,1);
  }
});

import Ember from 'ember';

export default Ember.Route.extend({
  model(){
    return Ember.RSVP.hash({
      groups: this.store.findAll('group'),
      factories: this.store.findAll('factory')
    });
  }
});

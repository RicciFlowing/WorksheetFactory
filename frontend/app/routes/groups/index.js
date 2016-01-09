import Ember from 'ember';

export default Ember.Route.extend({
    model(){
      return Ember.RSVP.hash({
        groups: this.store.findAll('group'),
        new_group: this.store.createRecord('group'),
        factories: this.store.findAll('factory')
      });
    },
      setupController(controller, model){
        this._super(controller, model);
        Ember.set(controller, 'groups', model.groups);
        Ember.set(controller, 'factories', model.factories);
        Ember.set(controller, 'new_group', model.new_group);
      },
      deactivate(){
        alert('Hello');
        let model = this.controllerFor('groups.index').get('new_group');
        model.rollbackAttributes();
      },
      actions: {
        reloadModels(){
          this.refresh();
          return false;
        },
      }
});

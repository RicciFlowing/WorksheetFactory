import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){ return this.store.find('worksheet_set', params.worksheet_set_id); },
});

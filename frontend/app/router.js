import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('worksheets', function(){
    this.route('new');
    this.route('show',{path: ':worksheet_id'});
  });
  this.route('worksheet_sets');
});

export default Router;

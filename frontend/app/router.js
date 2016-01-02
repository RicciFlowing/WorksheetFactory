import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('worksheets', function(){
    this.route('show',{path: ':worksheet_id'});
  });
  this.route('groups', function(){
    this.route('new');
    this.route('show',{path: ':group_id'});
  });
});

export default Router;

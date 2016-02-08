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
    this.route('show', {path: ':group_id'});
    this.route('new');
  });

  this.route('worksheet_sets', function(){
    this.route('new', {path: '/new/:group_id'});
  });

  this.route('factories', function() {
    this.route('new');
  });
  this.route('sets');
});

export default Router;

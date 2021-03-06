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
    this.route('show', {path: ':group_id'}, function(){
      this.route('worksheet_set',{path: '/worksheet_set/'}, function(){
        this.route('index', {path: ':set_id'}),
        this.route('results', {path: '/results/:set_id/:worksheet_id'});
      });
      this.route('create_set');
    });
    this.route('new');
  });

  this.route('worksheet_sets');

  this.route('factories', function() {
    this.route('new', function(){
      this.route('sector', {path: '/sector/:sector_id'});
    });
  });


  this.route('login');
  this.route('dashboard');
});

export default Router;

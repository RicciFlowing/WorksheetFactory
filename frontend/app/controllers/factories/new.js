import Ember from 'ember';

export default Ember.Controller.extend({
  selection: Ember.A([]),
  hasSelection: Ember.computed.alias('selection.length'),
  actions: {
    save() {
      var factory = this.get('factory')
      factory.save().then(()=>{
        this.set_skills(factory);
      });
      this.transitionToRoute('groups');
    },
    cancel() {
      this.set('selection', Ember.A([]));
      this.transitionToRoute('groups');
      return false;
    },
    addToSelection(skill){
      this.get('selection').pushObject(skill);
    },
    removeFromSelection(skill){
      this.get('selection').removeObject(skill);
    }
  },
  set_skills(factory){
    let skills = this.get('selection');
    skills.forEach(
      (skill)=>{this._create_factory_skill_association(skill, factory)}
    );
    this.set('selection', Ember.A([]));
  },
  _create_factory_skill_association(skill, factory){
        alert('create');
    var association = this.store.createRecord('FactorySkillAssociation');
    association.set('skill', skill);
    association.set('factory', factory);
    association.save();
  },
});

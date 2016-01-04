import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    save() {
      var factory = this.get('factory')
      factory.save().then(()=>{
        this.set_skills(factory);
      });
      this.transitionToRoute('groups');
    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    },
    didMakeSelection(selection){
        if (selection) {
          this.set('selection', selection)
        }
    }
  },
  set_skills(factory){
    var skills = Ember.A(this.get('selection'));
    skills.forEach(
      (skill)=>{this._create_factory_skill_association(skill, factory)}
    );
  },
  _create_factory_skill_association(skill, factory){
    alert('create association');
    var association = this.store.createRecord('FactorySkillAssociation');
    association.set('skill', skill);
    association.set('factory', factory);
    association.save();
  },
});

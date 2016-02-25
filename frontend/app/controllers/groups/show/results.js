import Ember from 'ember';

export default Ember.Controller.extend({
  maxNumbers: Ember.computed.mapBy('worksheetSet.worksheets','questionCount'),
  count :     Ember.computed.max('maxNumbers'),
  numbers: Ember.computed('count',function(){
    let array = Ember.A();
    for(let j = 1; j<this.get('count')+1; j++){
      array.push(j);
    }
    Ember.Logger.log(array);
    return array;
  }),
  actions: {
    submit() {
      this.createResults();
      this.transitionToRoute('groups.show.worksheet_set' );
    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  },
  createResults(){
    let worksheet = this.get('worksheet')
    worksheet.get('questions').forEach((question)=>{
      if((question.negatives)&&(question.positives)){
        let result = this.store.createRecord('result');
        result.set('worksheet', worksheet);
        result.set('question', question);
        result.set('group', this.get('group'));
        result.set('negative', question.negatives);
        result.set('positive', question.positives);
        result.save();
        question.set('negatives', undefined);
        question.set('positives', undefined);
      }
    });
  }
});

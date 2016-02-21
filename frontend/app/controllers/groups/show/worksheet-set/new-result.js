import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit() {
      this.createResults();
      // this.get('worksheetSet').save().then(()=>{
      //   this.transitionToRoute('groups.show.worksheet_set', this.get('worksheetSet').id );
      // });

    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  },
  createResults(){
    let worksheet = this.get('worksheet')
    Ember.Logger.log(worksheet);
    worksheet.get('questions').forEach((question)=>{
      if((question.negatives)&&(question.positives)){
        let result = this.store.createRecord('result');
        result.set('worksheet', worksheet);
        result.set('question', question);
        result.set('group', this.get('group'));
        result.set('negative', question.negatives);
        result.set('positive', question.positives);
        result.save();
      }
    });
  }
});

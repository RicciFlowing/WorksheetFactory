import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'li',
    archived: Ember.computed.alias('worksheet.archived'),
    actions: {
      refresh(){
        let worksheet = this.get('worksheet');
        worksheet.set('archived', false);
        worksheet.save();
      },
      archive(){
        let worksheet = this.get('worksheet');
        worksheet.set('archived', true);
        worksheet.save();
      }
    }
});

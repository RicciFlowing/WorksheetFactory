import DS from 'ember-data';
import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin';

export default DS.ActiveModelAdapter.extend(DataAdapterMixin, {
  coalesceFindRequests: true,
  authorizer: 'authorizer:devise'
});

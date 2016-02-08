import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('worksheet-set-tag', 'Integration | Component | worksheet set tag', {
  integration: true
});

test('it renders', function(assert) {
  
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });" + EOL + EOL +

  this.render(hbs`{{worksheet-set-tag}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:" + EOL +
  this.render(hbs`
    {{#worksheet-set-tag}}
      template block text
    {{/worksheet-set-tag}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});

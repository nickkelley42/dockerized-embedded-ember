import { module, test } from 'qunit';
import { visit, currentURL, findAll } from '@ember/test-helpers';
import { setupApplicationTest } from 'ember-qunit';

module('Acceptance | careers', function(hooks) {
  setupApplicationTest(hooks);

  test('visiting /careers', async function(assert) {
    await visit('/');

    assert.equal(currentURL(), '/');

    await visit('/locations');
    assert.equal(currentURL(), '/locations');

    let li = findAll('.location-list li');
    assert.equal(li.length, 3);
  });
});

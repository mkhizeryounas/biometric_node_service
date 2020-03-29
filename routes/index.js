var express = require('express');
var router = express.Router();
const db = require('../config/db');

const MEM_CACHE = {};

router.get('/', async function(req, res, next) {
  res.reply({
    data: { title: 'Express Boilerplate with GitHub Actions & Jenkins..!' }
  });
});

router.post('/new-fingerprint', async function(req, res, next) {
  let { body } = req;
  console.log(body);
  let saved_template = await db.query(
    'INSERT INTO `finger_templates`(`device_name`, `template`, `user_id`) VALUES (?,?,?)',
    [body.DeviceName, body.template, body.id]
  );
  console.log('saved_template', saved_template);
  res.reply({
    data: { title: 'Express Boilerplate with GitHub Actions & Jenkins..!' }
  });
});

router.get('/push-fingerprint', async function(req, res, next) {
  let { query } = req;
  console.log(query);
  MEM_CACHE[query.device_name] = query.id;
  res.reply({
    data: { message: 'Ready to push' }
  });
});

router.post('/pull-fingerprint', async function(req, res, next) {
  let { body } = req;
  console.log(body, MEM_CACHE);
  let user_id = MEM_CACHE[body.device_name];
  if (user_id) {
    delete MEM_CACHE[body.device_name];
    res.send('add-id' + user_id);
  } else {
    res.send('NO_FINGERPRINT_TO_PUSH');
  }
});

router.post('/pull-fingerprint/:id', async function(req, res, next) {
  let finger = await db.query(
    'select * from users join finger_templates on users.fingerprint_id = finger_templates.user_id where users.fingerprint_id=?',
    [req.params.id]
  );
  res.send(finger.length ? finger[0].template : '');
});

module.exports = router;

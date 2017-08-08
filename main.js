let Koa = require('koa');
let path = require('path');
let bodyParser = require('koa-bodyparser');
let ejs = require('ejs');
let session = require('koa-session-minimal');
let MysqlStore = require('koa-mysql-session');
let router = require('koa-router');
let views = require('koa-views');
let serve = require('koa-static');

let app = new Koa();

let config = require('./config/default.js');


// session存储配置
const sessionMysqlConfig = {
    user: config.database.USERNAME,
    password: config.database.PASSWORD,
    database: config.database.DATABASE,
    host: config.database.HOST,
};

// 配置session中间件
app.use(session({
    key: 'USER_SID',
    store: new MysqlStore(sessionMysqlConfig),
}));

// console.log(path.join(__dirname, 'static'));
// 配置静态资源加载中间件
app.use(serve(
    path.join(__dirname, '/static'),
));

// 配置服务端模板渲染引擎中间件
app.use(views(path.join(__dirname, './views'), {
    extension: 'ejs',

}));

app.use(bodyParser());

//  路由
app.use(require('./routers/index.js').routes());
app.use(require('./routers/signin.js').routes());
app.use(require('./routers/signup.js').routes());
app.use(require('./routers/posts.js').routes());
app.use(require('./routers/signout.js').routes());

if (module.parent) {
    module.exports = app;
} else {
    app.listen(config.port);
    console.log(`KOA2 listening on port ${config.port}`);

}

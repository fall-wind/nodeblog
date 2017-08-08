const config = {
    // 启动端口
    port: 3000,
    // 数据库配置
    database: {
        DATABASE: 'nodesql',
        USERNAME: 'root',
        PASSWORD: '123456',
        PORT: '3306',
        HOST: '192.168.1.21',
    },
    site_info: {
        index_title: 'my blog',
        site_name: 'blog.douban.help',
        keywords: 'todo, goals, plan',
        description: 'a todo app',
        aboutme: 'THIS IS about me',
        author: 'blog.douban.help admin',
    },
};

module.exports = config;

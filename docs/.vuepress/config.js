module.exports = {
  base: '/sshkit-notes/',
  title: 'Rake sshkit notes',
  host: '0.0.0.0',
  description: 'Rake sshkit notes',
  head: [
    [
      'link',
      {
        rel: 'icon',
        href: 'http://himg.bdimg.com/sys/portrait/item/be10475f686d6c73db00.jpg'
      }
    ]
  ],
  themeConfig: {
    sidebar: [
      {
        title: 'On Remote',
        collapsable: false,
        children: [
          '/on_remote/001-password.md',
          '/on_remote/002-id_rsa.md',
          '/on_remote/003-load_yaml.md'
        ]
      }
    ]
  }
};

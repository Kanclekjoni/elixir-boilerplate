import 'simple-css-reset/reset.css';
import '../css/app.css';

import {Socket} from 'phoenix';
import {LiveSocket} from 'phoenix_live_view';

let Hooks = {};

Hooks.Flash = {
  mounted() {
    let hide = () =>
      liveSocket.execJS(this.el, this.el.getAttribute('phx-click'));
    this.timer = setTimeout(() => hide(), 8000);
    this.el.addEventListener('mouseover', () => {
      clearTimeout(this.timer);
      this.timer = setTimeout(() => hide(), 8000);
    });
  },
  destroyed() {
    clearTimeout(this.timer);
  }
};

let csrfToken = document
  .querySelector("meta[name='csrf-token']")
  .getAttribute('content');

let liveSocket = new LiveSocket('/live', Socket, {
  params: {_csrf_token: csrfToken},
  hooks: Hooks
});

liveSocket.connect();

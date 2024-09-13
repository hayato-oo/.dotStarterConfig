import Gio from "gi://Gio"
import Launcher from 'modules/launcher/index';
import Greeter from 'modules/greetd/index';
import AppLauncher from 'modules/launcher/modules/applauncher';
import BluetoothMenu from 'modules/launcher/modules/bluetooth';
import OSD from 'modules/osd/index';
import { NotificationPopups } from "modules/notifications/index";
import { forMonitors } from "lib/utils";

async function reloadCss() {
  Utils.exec(`sassc ${App.configDir}/styles/main.scss ${App.configDir}/style.css`);
  App.resetCss();
  App.applyCss(`${App.configDir}/style.css`);
  console.log('[LOG] SCSS and Styles applied')
}

Utils.monitorFile(
  `${App.configDir}/styles/`, (_, eventType) => {
    if(eventType === Gio.FileMonitorEvent.CHANGES_DONE_HINT) {
      reloadCss();
    }
  }
)

reloadCss();

function addWindows(windows) {
  windows.forEach(win => App.addWindow(win));
}

Utils.idle(() => addWindows([
  Launcher(),
  Greeter(),
  AppLauncher(),
  BluetoothMenu(),
  OSD(),
  ...forMonitors(NotificationPopups)
]));
Utils.timeout(100, () => Utils.notify({
    summary: "Notification Popup Example",
    iconName: "info-symbolic",
    body: "Lorem ipsum dolor sit amet, qui minim labore adipisicing "
        + "minim sint cillum sint consectetur cupidatat.",
    actions: {
        "Cool": () => print("pressed Cool"),
    },
}))
App.config({
  style: `${App.configDir}/style.css`,
  closeWindowDelay: {

  },
});

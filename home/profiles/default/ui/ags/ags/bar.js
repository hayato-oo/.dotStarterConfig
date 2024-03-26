import Lock from './modules/lock/Lock.js';
import { SystemLeft, SystemRight } from './modules/system/System.js';

const Left = () => Widget.Box({
    class_name: 'left_bar',
    homogeneous: false,
    vertical: false,
    hpack: 'start',
    children: [
    ],
});

const Center = () => Widget.Box({
    class_name: 'center_bar',
    homogeneous: false,
    vertical: false,
    hpack: 'center',
    children: [
        Lock(),
    ],
});

const Right = () => Widget.Box({
    class_name: 'right_bar',
    homogeneous: false,
    vertical: false,
    hpack: 'end',
    children: [
        SystemLeft(), 
        SystemRight(),
    ],

});


export const Bar = (monitor = 0) => Widget.Window({
    anchor: ['top', 'left', 'right'],
    name: `bar-${monitor}`,
    monitor,
    exclusivity: 'exclusive',
    child: Widget.CenterBox({
        class_name: 'bar_layout',
        start_widget: Left(),
        center_widget: Center(),
        end_widget: Right(),

    }),
});

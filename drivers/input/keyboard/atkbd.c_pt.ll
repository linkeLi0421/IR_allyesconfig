; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/atkbd.c_pt.bc'
source_filename = "../drivers/input/keyboard/atkbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atkbd = type { %struct.ps2dev, ptr, [64 x i8], [32 x i8], i16, [512 x i16], [16 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, i32, i32, %struct.mutex, [24 x i32], i32 }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [46 x i8] c"atkbd.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [46 x i8] c"atkbd.description=AT and PS/2 keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [40 x i8] c"atkbd.file=drivers/input/keyboard/atkbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [18 x i8] c"atkbd.license=GPL\00", section ".modinfo", align 1
@__param_str_set = internal constant [10 x i8] c"atkbd.set\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@atkbd_set = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_set = internal constant %struct.kernel_param { ptr @__param_str_set, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_set } }, section "__param", align 4
@__UNIQUE_ID_settype231 = internal constant [23 x i8] c"atkbd.parmtype=set:int\00", section ".modinfo", align 1
@__UNIQUE_ID_set232 = internal constant [71 x i8] c"atkbd.parm=set:Select keyboard code set (2 = default, 3 = PS/2 native)\00", section ".modinfo", align 1
@__param_str_reset = internal constant [12 x i8] c"atkbd.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@atkbd_reset = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_reset } }, section "__param", align 4
@__UNIQUE_ID_resettype233 = internal constant [26 x i8] c"atkbd.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset234 = internal constant [54 x i8] c"atkbd.parm=reset:Reset keyboard during initialization\00", section ".modinfo", align 1
@__param_str_softrepeat = internal constant [17 x i8] c"atkbd.softrepeat\00", align 1
@atkbd_softrepeat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_softrepeat = internal constant %struct.kernel_param { ptr @__param_str_softrepeat, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_softrepeat } }, section "__param", align 4
@__UNIQUE_ID_softrepeattype235 = internal constant [31 x i8] c"atkbd.parmtype=softrepeat:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_softrepeat236 = internal constant [51 x i8] c"atkbd.parm=softrepeat:Use software keyboard repeat\00", section ".modinfo", align 1
@__param_str_softraw = internal constant [14 x i8] c"atkbd.softraw\00", align 1
@atkbd_softraw = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_softraw = internal constant %struct.kernel_param { ptr @__param_str_softraw, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_softraw } }, section "__param", align 4
@__UNIQUE_ID_softrawtype237 = internal constant [28 x i8] c"atkbd.parmtype=softraw:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_softraw238 = internal constant [50 x i8] c"atkbd.parm=softraw:Use software generated rawmode\00", section ".modinfo", align 1
@__param_str_scroll = internal constant [13 x i8] c"atkbd.scroll\00", align 1
@atkbd_scroll = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_scroll = internal constant %struct.kernel_param { ptr @__param_str_scroll, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_scroll } }, section "__param", align 4
@__UNIQUE_ID_scrolltype239 = internal constant [27 x i8] c"atkbd.parmtype=scroll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_scroll240 = internal constant [73 x i8] c"atkbd.parm=scroll:Enable scroll-wheel on MS Office and similar keyboards\00", section ".modinfo", align 1
@__param_str_extra = internal constant [12 x i8] c"atkbd.extra\00", align 1
@atkbd_extra = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_extra = internal constant %struct.kernel_param { ptr @__param_str_extra, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_extra } }, section "__param", align 4
@__UNIQUE_ID_extratype241 = internal constant [26 x i8] c"atkbd.parmtype=extra:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_extra242 = internal constant [91 x i8] c"atkbd.parm=extra:Enable extra LEDs and keys on IBM RapidAcces, EzKey and similar keyboards\00", section ".modinfo", align 1
@__param_str_terminal = internal constant [15 x i8] c"atkbd.terminal\00", align 1
@atkbd_terminal = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_terminal = internal constant %struct.kernel_param { ptr @__param_str_terminal, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @atkbd_terminal } }, section "__param", align 4
@__UNIQUE_ID_terminaltype243 = internal constant [29 x i8] c"atkbd.parmtype=terminal:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_terminal244 = internal constant [88 x i8] c"atkbd.parm=terminal:Enable break codes on an IBM Terminal keyboard connected via AT/PS2\00", section ".modinfo", align 1
@atkbd_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str, ptr @atkbd_serio_ids, i8 0, ptr null, ptr @atkbd_interrupt, ptr @atkbd_connect, ptr @atkbd_reconnect, ptr null, ptr @atkbd_disconnect, ptr @atkbd_cleanup, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_atkbd__250_1913_atkbd_init6 = internal global ptr @atkbd_init, section ".initcall6.init", align 4
@__exitcall_atkbd_exit = internal global ptr @atkbd_exit, section ".exitcall.exit", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AT and PS/2 keyboard driver\00", [36 x i8] zeroinitializer }, align 32
@atkbd_serio_ids = internal constant { [4 x %struct.serio_device_id], [16 x i8] } { [4 x %struct.serio_device_id] [%struct.serio_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 6, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 34 }, %struct.serio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atkbd\00", [26 x i8] zeroinitializer }, align 32
@atkbd_interrupt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atkbd_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/keyboard/atkbd.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Received %02x flags %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Frame/parity error: %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry_ptr = internal global ptr @atkbd_interrupt._entry, section ".printk_index", align 4
@atkbd_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Spurious %s on %s. Some program might be trying to access hardware directly.\0A\00", [50 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry_ptr.10 = internal global ptr @atkbd_interrupt._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACK\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NAK\00", [28 x i8] zeroinitializer }, align 32
@atkbd_interrupt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Keyboard on %s reports too many keys pressed.\0A\00", [49 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unknown key %s (%s set %d, code %#x on %s).\0A\00", [51 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry_ptr.16 = internal global ptr @atkbd_interrupt._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"translated\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 513, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Use 'setkeycodes %s%02x <keycode>' to make it known.\0A\00", [42 x i8] zeroinitializer }, align 32
@atkbd_interrupt._entry_ptr.23 = internal global ptr @atkbd_interrupt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"e0\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@atkbd_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&atkbd->event_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@atkbd_connect.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&atkbd->event_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@atkbd_connect.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&atkbd->mutex\00", [18 x i8] zeroinitializer }, align 32
@atkbd_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @atkbd_attr_is_visible, ptr null, ptr @atkbd_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.atkbd_set_repeat_rate.period = private unnamed_addr constant [32 x i16] [i16 33, i16 37, i16 42, i16 46, i16 50, i16 54, i16 58, i16 63, i16 67, i16 75, i16 83, i16 92, i16 100, i16 109, i16 116, i16 125, i16 133, i16 149, i16 167, i16 182, i16 200, i16 217, i16 232, i16 250, i16 270, i16 303, i16 333, i16 370, i16 400, i16 435, i16 470, i16 500], align 2
@__const.atkbd_set_repeat_rate.delay = private unnamed_addr constant [4 x i16] [i16 250, i16 500, i16 750, i16 1000], align 2
@atkbd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 778, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"keyboard reset failed on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atkbd_probe\00", [20 x i8] zeroinitializer }, align 32
@atkbd_probe._entry_ptr = internal global ptr @atkbd_probe._entry, section ".printk_index", align 4
@atkbd_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 810, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"NCD terminal keyboards are only supported on non-translating controllers. Use i8042.direct=1 to disable translation.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@atkbd_probe._entry_ptr.36 = internal global ptr @atkbd_probe._entry.33, section ".printk_index", align 4
@atkbd_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 756, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to deactivate keyboard on %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atkbd_deactivate\00", [47 x i8] zeroinitializer }, align 32
@atkbd_deactivate._entry_ptr = internal global ptr @atkbd_deactivate._entry, section ".printk_index", align 4
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"function-row-physmap\00", [43 x i8] zeroinitializer }, align 32
@atkbd_parse_fwnode_data.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atkbd_parse_fwnode_data\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FW reported %d function-row key locations\0A\00", [53 x i8] zeroinitializer }, align 32
@atkbd_set_keycode_table.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atkbd_set_keycode_table\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using FW keymap\0A\00", [47 x i8] zeroinitializer }, align 32
@atkbd_unxlate_table = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 118, i16 22, i16 30, i16 38, i16 37, i16 46, i16 54, i16 61, i16 62, i16 70, i16 69, i16 78, i16 85, i16 102, i16 13, i16 21, i16 29, i16 36, i16 45, i16 44, i16 53, i16 60, i16 67, i16 68, i16 77, i16 84, i16 91, i16 90, i16 20, i16 28, i16 27, i16 35, i16 43, i16 52, i16 51, i16 59, i16 66, i16 75, i16 76, i16 82, i16 14, i16 18, i16 93, i16 26, i16 34, i16 33, i16 42, i16 50, i16 49, i16 58, i16 65, i16 73, i16 74, i16 89, i16 124, i16 17, i16 41, i16 88, i16 5, i16 6, i16 4, i16 12, i16 3, i16 11, i16 2, i16 10, i16 1, i16 9, i16 119, i16 126, i16 108, i16 117, i16 125, i16 123, i16 107, i16 115, i16 116, i16 121, i16 105, i16 114, i16 122, i16 112, i16 113, i16 127, i16 96, i16 97, i16 120, i16 7, i16 15, i16 23, i16 31, i16 39, i16 47, i16 55, i16 63, i16 71, i16 79, i16 86, i16 94, i16 8, i16 16, i16 24, i16 32, i16 40, i16 48, i16 56, i16 64, i16 72, i16 80, i16 87, i16 111, i16 19, i16 25, i16 57, i16 81, i16 83, i16 92, i16 95, i16 98, i16 99, i16 100, i16 101, i16 103, i16 104, i16 106, i16 109, i16 110], [64 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,keymap\00", [19 x i8] zeroinitializer }, align 32
@atkbd_get_keymap_from_fwnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1055, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"problem parsing FW keymap property\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atkbd_get_keymap_from_fwnode\00", [35 x i8] zeroinitializer }, align 32
@atkbd_get_keymap_from_fwnode._entry_ptr = internal global ptr @atkbd_get_keymap_from_fwnode._entry, section ".printk_index", align 4
@atkbd_set2_keycode = internal constant { <{ [261 x i16], [251 x i16] }>, [256 x i8] } { <{ [261 x i16], [251 x i16] }> <{ [261 x i16] [i16 0, i16 67, i16 65, i16 63, i16 61, i16 59, i16 60, i16 88, i16 0, i16 68, i16 66, i16 64, i16 62, i16 15, i16 41, i16 117, i16 0, i16 56, i16 42, i16 93, i16 29, i16 16, i16 2, i16 0, i16 0, i16 0, i16 44, i16 31, i16 30, i16 17, i16 3, i16 0, i16 0, i16 46, i16 45, i16 32, i16 18, i16 5, i16 4, i16 95, i16 0, i16 57, i16 47, i16 33, i16 20, i16 19, i16 6, i16 183, i16 0, i16 49, i16 48, i16 35, i16 34, i16 21, i16 7, i16 184, i16 0, i16 0, i16 50, i16 36, i16 22, i16 8, i16 9, i16 185, i16 0, i16 51, i16 37, i16 23, i16 24, i16 11, i16 10, i16 0, i16 0, i16 52, i16 53, i16 38, i16 39, i16 25, i16 12, i16 0, i16 0, i16 89, i16 40, i16 0, i16 26, i16 13, i16 0, i16 0, i16 58, i16 54, i16 28, i16 27, i16 0, i16 43, i16 0, i16 85, i16 0, i16 86, i16 91, i16 90, i16 92, i16 0, i16 14, i16 94, i16 0, i16 79, i16 124, i16 75, i16 71, i16 121, i16 0, i16 0, i16 82, i16 83, i16 80, i16 76, i16 77, i16 72, i16 1, i16 69, i16 87, i16 78, i16 81, i16 74, i16 55, i16 73, i16 70, i16 99, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 217, i16 100, i16 255, i16 0, i16 97, i16 165, i16 0, i16 0, i16 156, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 125, i16 173, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 126, i16 128, i16 0, i16 0, i16 140, i16 0, i16 0, i16 0, i16 127, i16 159, i16 0, i16 115, i16 0, i16 164, i16 0, i16 0, i16 116, i16 158, i16 0, i16 172, i16 166, i16 0, i16 0, i16 0, i16 142, i16 157, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 155, i16 0, i16 98, i16 0, i16 0, i16 163, i16 0, i16 0, i16 226, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 255, i16 96, i16 0, i16 0, i16 0, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 107, i16 0, i16 105, i16 102, i16 0, i16 0, i16 112, i16 110, i16 111, i16 108, i16 112, i16 106, i16 103, i16 0, i16 119, i16 0, i16 118, i16 109, i16 0, i16 99, i16 104, i16 119, i16 0, i16 0, i16 0, i16 0, i16 65, i16 99], [251 x i16] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@atkbd_set3_keycode = internal constant { <{ [164 x i16], [348 x i16] }>, [256 x i8] } { <{ [164 x i16], [348 x i16] }> <{ [164 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 59, i16 1, i16 138, i16 128, i16 129, i16 130, i16 15, i16 41, i16 60, i16 131, i16 29, i16 42, i16 86, i16 58, i16 16, i16 2, i16 61, i16 133, i16 56, i16 44, i16 31, i16 30, i16 17, i16 3, i16 62, i16 134, i16 46, i16 45, i16 32, i16 18, i16 5, i16 4, i16 63, i16 135, i16 57, i16 47, i16 33, i16 20, i16 19, i16 6, i16 64, i16 136, i16 49, i16 48, i16 35, i16 34, i16 21, i16 7, i16 65, i16 137, i16 100, i16 50, i16 36, i16 22, i16 8, i16 9, i16 66, i16 125, i16 51, i16 37, i16 23, i16 24, i16 11, i16 10, i16 67, i16 126, i16 52, i16 53, i16 38, i16 39, i16 25, i16 12, i16 68, i16 113, i16 114, i16 40, i16 43, i16 26, i16 13, i16 87, i16 99, i16 97, i16 54, i16 28, i16 27, i16 43, i16 43, i16 88, i16 70, i16 108, i16 105, i16 119, i16 103, i16 111, i16 107, i16 14, i16 110, i16 0, i16 79, i16 106, i16 75, i16 71, i16 109, i16 102, i16 104, i16 82, i16 83, i16 80, i16 76, i16 77, i16 72, i16 69, i16 98, i16 0, i16 96, i16 81, i16 0, i16 78, i16 73, i16 55, i16 183, i16 184, i16 185, i16 186, i16 187, i16 74, i16 94, i16 92, i16 93, i16 0, i16 0, i16 0, i16 125, i16 126, i16 127, i16 112, i16 0, i16 0, i16 139, i16 172, i16 163, i16 165, i16 115, i16 152, i16 172, i16 166, i16 140, i16 160, i16 154, i16 113, i16 114, i16 167, i16 168, i16 148, i16 149, i16 147, i16 140], [348 x i16] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AT Set 2 Extra keyboard\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AT %s Set %d keyboard\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Translated\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Raw\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@atkbd_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @atkbd_attr_extra, ptr @atkbd_attr_force_release, ptr @atkbd_attr_scroll, ptr @atkbd_attr_set, ptr @atkbd_attr_softrepeat, ptr @atkbd_attr_softraw, ptr @atkbd_attr_err_count, ptr @atkbd_attr_function_row_physmap, ptr null], [60 x i8] zeroinitializer }, align 32
@atkbd_attr_function_row_physmap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_function_row_physmap, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"function_row_physmap\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@atkbd_attr_extra = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_extra, ptr @atkbd_do_set_extra }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_force_release = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_force_release, ptr @atkbd_do_set_force_release }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_scroll = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_scroll, ptr @atkbd_do_set_scroll }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_set = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_set, ptr @atkbd_do_set_set }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_softrepeat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_softrepeat, ptr @atkbd_do_set_softrepeat }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_softraw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_softraw, ptr @atkbd_do_set_softraw }, [36 x i8] zeroinitializer }, align 32
@atkbd_attr_err_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @atkbd_do_show_err_count, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extra\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"force_release\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pbl\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scroll\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"softrepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softraw\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"err_count\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@atkbd_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 737, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable keyboard on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atkbd_activate\00", [17 x i8] zeroinitializer }, align 32
@atkbd_activate._entry_ptr = internal global ptr @atkbd_activate._entry, section ".printk_index", align 4
@atkbd_reconnect.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atkbd_reconnect\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"reconnect request, but serio is disconnected, ignoring...\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 170, i64 241, i64 242, i64 250, i64 254, i64 255]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 42, i64 113, i64 114, i64 122, i64 126, i64 127]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 32, i64 170, i64 224, i64 225, i64 240, i64 250, i64 254, i64 255]
@__sancov_gen_cov_switch_values.73 = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 255, i64 65528, i64 65529, i64 65530, i64 65531, i64 65532, i64 65533, i64 65534]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [9 x i64] [i64 7, i64 16, i64 155, i64 157, i64 164, i64 197, i64 203, i64 210, i64 224]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 20]
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"atkbd_set\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 35, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"atkbd_reset\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 42, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"atkbd_softrepeat\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 47, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"atkbd_softraw\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 51, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"atkbd_scroll\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 55, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"atkbd_extra\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 59, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"atkbd_terminal\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 63, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"atkbd_drv\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1390, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1394, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"atkbd_serio_ids\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1366, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1392, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 419, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 423, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 479, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 486, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 506, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 511, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1237, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1238, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"atkbd_attribute_group\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 338, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 776, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 808, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 754, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1208, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1213, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1086, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"atkbd_unxlate_table\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 126, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1046, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1055, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"atkbd_set2_keycode\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 79, i32 29 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"atkbd_set3_keycode\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 110, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1139, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1142, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1143, i32 25 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1143, i32 40 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1146, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"atkbd_attributes\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 297, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant [32 x i8] c"atkbd_attr_function_row_physmap\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 295, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 318, i32 51 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 320, i32 50 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"atkbd_attr_extra\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"atkbd_attr_force_release\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"atkbd_attr_scroll\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"atkbd_attr_set\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [22 x i8] c"atkbd_attr_softrepeat\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"atkbd_attr_softraw\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"atkbd_attr_err_count\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 277, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1434, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 278, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1495, i32 45 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 279, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 280, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 281, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 282, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 294, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1725, i32 22 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 735, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [34 x i8] c"../drivers/input/keyboard/atkbd.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1319, i32 3 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_extra242, ptr @__UNIQUE_ID_extratype241, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_reset234, ptr @__UNIQUE_ID_resettype233, ptr @__UNIQUE_ID_scroll240, ptr @__UNIQUE_ID_scrolltype239, ptr @__UNIQUE_ID_set232, ptr @__UNIQUE_ID_settype231, ptr @__UNIQUE_ID_softraw238, ptr @__UNIQUE_ID_softrawtype237, ptr @__UNIQUE_ID_softrepeat236, ptr @__UNIQUE_ID_softrepeattype235, ptr @__UNIQUE_ID_terminal244, ptr @__UNIQUE_ID_terminaltype243, ptr @__exitcall_atkbd_exit, ptr @__initcall__kmod_atkbd__250_1913_atkbd_init6, ptr @__param_extra, ptr @__param_reset, ptr @__param_scroll, ptr @__param_set, ptr @__param_softraw, ptr @__param_softrepeat, ptr @__param_terminal, ptr @atkbd_activate._entry, ptr @atkbd_activate._entry_ptr, ptr @atkbd_deactivate._entry, ptr @atkbd_deactivate._entry_ptr, ptr @atkbd_exit, ptr @atkbd_get_keymap_from_fwnode._entry, ptr @atkbd_get_keymap_from_fwnode._entry_ptr, ptr @atkbd_interrupt._entry, ptr @atkbd_interrupt._entry.14, ptr @atkbd_interrupt._entry.21, ptr @atkbd_interrupt._entry.8, ptr @atkbd_interrupt._entry_ptr, ptr @atkbd_interrupt._entry_ptr.10, ptr @atkbd_interrupt._entry_ptr.16, ptr @atkbd_interrupt._entry_ptr.23, ptr @atkbd_probe._entry, ptr @atkbd_probe._entry.33, ptr @atkbd_probe._entry_ptr, ptr @atkbd_probe._entry_ptr.36, ptr @atkbd_set, ptr @atkbd_reset, ptr @atkbd_softrepeat, ptr @atkbd_softraw, ptr @atkbd_scroll, ptr @atkbd_extra, ptr @atkbd_terminal, ptr @atkbd_drv, ptr @.str, ptr @atkbd_serio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @atkbd_connect.__key, ptr @.str.26, ptr @atkbd_connect.__key.27, ptr @.str.28, ptr @atkbd_connect.__key.29, ptr @.str.30, ptr @atkbd_attribute_group, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @atkbd_unxlate_table, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @atkbd_set2_keycode, ptr @atkbd_set3_keycode, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @atkbd_attributes, ptr @atkbd_attr_function_row_physmap, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @atkbd_attr_extra, ptr @atkbd_attr_force_release, ptr @atkbd_attr_scroll, ptr @atkbd_attr_set, ptr @atkbd_attr_softrepeat, ptr @atkbd_attr_softraw, ptr @atkbd_attr_err_count, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_softrepeat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_softraw to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_scroll to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_extra to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_terminal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_serio_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_interrupt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_interrupt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_connect.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_connect.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_unxlate_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_get_keymap_from_fwnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_set2_keycode to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_set3_keycode to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_function_row_physmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_extra to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_force_release to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_scroll to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_softrepeat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_softraw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_attr_err_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atkbd_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atkbd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @serio_unregister_driver(ptr noundef nonnull @atkbd_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__serio_register_driver(ptr noundef nonnull @atkbd_drv, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  %xl_bit.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %conv = zext i8 %data to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atkbd_interrupt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atkbd_interrupt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !249

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev5 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atkbd_interrupt.__UNIQUE_ID_ddebug245, ptr noundef %dev5, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %flags) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %flags, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp ne i32 %and, 0
  %neg = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool9.not.not = icmp eq i32 %neg, 0
  %or.cond = and i1 %tobool7.not, %tobool9.not.not
  br i1 %or.cond, label %land.lhs.true10, label %if.end22

land.lhs.true10:                                  ; preds = %do.end
  %resend = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %resend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resend, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true10.if.end22.thread_crit_edge

land.lhs.true10.if.end22.thread_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.thread

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %write = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end22.thread_crit_edge, label %do.end18

land.lhs.true12.if.end22.thread_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.thread

do.end18:                                         ; preds = %land.lhs.true12
  %dev19 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.5, i32 noundef %flags) #13
  %write.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end18.serio_write.exit_crit_edge, label %if.then.i353

do.end18.serio_write.exit_crit_edge:              ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_write.exit

if.then.i353:                                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %9(ptr noundef %serio, i8 noundef zeroext -2) #10
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i353, %do.end18.serio_write.exit_crit_edge
  %10 = ptrtoint ptr %resend to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %resend, align 1
  br label %out

if.end22.thread:                                  ; preds = %land.lhs.true12.if.end22.thread_crit_edge, %land.lhs.true10.if.end22.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %data)
  %cmp365 = icmp eq i8 %data, -6
  br label %if.end29

if.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool23.not = icmp eq i32 %flags, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %data)
  %cmp = icmp eq i8 %data, -6
  %or.cond337 = and i1 %cmp, %tobool23.not
  br i1 %or.cond337, label %if.then27, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %resend28 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %resend28 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %resend28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge, %if.end22.thread
  %cmp367 = phi i1 [ %cmp365, %if.end22.thread ], [ true, %if.then27 ], [ %cmp, %if.end22.if.end29_crit_edge ]
  %flags30 = getelementptr inbounds %struct.ps2dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags30, align 4
  %and31 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end44_crit_edge, label %if.then39, !prof !251

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then39:                                        ; preds = %if.end29
  %call41 = tail call zeroext i1 @ps2_handle_ack(ptr noundef %1, i8 noundef zeroext %data) #10
  br i1 %call41, label %if.then39.out_crit_edge, label %if.then39.if.end44_crit_edge

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %if.end29.if.end44_crit_edge
  %14 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags30, align 4
  %and47 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end44.if.end60_crit_edge, label %if.then55, !prof !251

if.end44.if.end60_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55:                                        ; preds = %if.end44
  %call57 = tail call zeroext i1 @ps2_handle_response(ptr noundef %1, i8 noundef zeroext %data) #10
  br i1 %call57, label %if.then55.out_crit_edge, label %if.then55.if.end60_crit_edge

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55.out_crit_edge:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end44.if.end60_crit_edge
  %dev61 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @pm_wakeup_dev_event(ptr noundef %dev61, i32 noundef 0, i1 noundef zeroext false) #10
  %enabled = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool62.not = icmp eq i8 %17, 0
  br i1 %tobool62.not, label %if.end60.out_crit_edge, label %if.end64

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end64:                                         ; preds = %if.end60
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 3, i32 noundef %conv) #10
  %translated = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool69.not = icmp eq i8 %19, 0
  br i1 %tobool69.not, label %if.end64.if.end85_crit_edge, label %if.then70

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then70:                                        ; preds = %if.end64
  %emul = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %emul to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %emul, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool72.not = icmp eq i8 %21, 0
  br i1 %tobool72.not, label %lor.lhs.false, label %if.then70.if.then76_crit_edge

if.then70.if.then76_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

lor.lhs.false:                                    ; preds = %if.then70
  %xl_bit = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %xl_bit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xl_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xl_bit.addr.i)
  %24 = ptrtoint ptr %xl_bit.addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %xl_bit.addr.i, align 4
  %25 = and i8 %data, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %25)
  %switch.i = icmp eq i8 %25, -32
  br i1 %switch.i, label %atkbd_need_xlate.exit.thread369, label %for.body.preheader.i

atkbd_need_xlate.exit.thread369:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xl_bit.addr.i)
  br label %if.end80

for.body.preheader.i:                             ; preds = %lor.lhs.false
  %26 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %atkbd_need_xlate.exit.thread [
    i8 -86, label %for.body.preheader.i.atkbd_need_xlate.exit_crit_edge
    i8 -1, label %if.then10.fold.split.i
    i8 -6, label %if.then10.fold.split20.i
    i8 -2, label %if.then10.fold.split21.i
    i8 -15, label %if.then10.fold.split22.i
    i8 -14, label %if.then10.fold.split23.i
  ]

for.body.preheader.i.atkbd_need_xlate.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

atkbd_need_xlate.exit.thread:                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xl_bit.addr.i)
  br label %if.then76

if.then10.fold.split.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

if.then10.fold.split20.i:                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

if.then10.fold.split21.i:                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

if.then10.fold.split22.i:                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

if.then10.fold.split23.i:                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_need_xlate.exit

atkbd_need_xlate.exit:                            ; preds = %if.then10.fold.split23.i, %if.then10.fold.split22.i, %if.then10.fold.split21.i, %if.then10.fold.split20.i, %if.then10.fold.split.i, %for.body.preheader.i.atkbd_need_xlate.exit_crit_edge
  %i.018.lcssa.i = phi i32 [ 0, %for.body.preheader.i.atkbd_need_xlate.exit_crit_edge ], [ 1, %if.then10.fold.split.i ], [ 2, %if.then10.fold.split20.i ], [ 3, %if.then10.fold.split21.i ], [ 4, %if.then10.fold.split22.i ], [ 5, %if.then10.fold.split23.i ]
  %27 = ptrtoint ptr %xl_bit.addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %xl_bit.addr.i.0.xl_bit.addr.i.0.xl_bit.addr.0..i = load volatile i32, ptr %xl_bit.addr.i, align 4
  %28 = shl nuw nsw i32 1, %i.018.lcssa.i
  %29 = and i32 %xl_bit.addr.i.0.xl_bit.addr.i.0.xl_bit.addr.0..i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xl_bit.addr.i)
  br i1 %tobool.i.not, label %atkbd_need_xlate.exit.if.end80_crit_edge, label %atkbd_need_xlate.exit.if.then76_crit_edge

atkbd_need_xlate.exit.if.then76_crit_edge:        ; preds = %atkbd_need_xlate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

atkbd_need_xlate.exit.if.end80_crit_edge:         ; preds = %atkbd_need_xlate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then76:                                        ; preds = %atkbd_need_xlate.exit.if.then76_crit_edge, %atkbd_need_xlate.exit.thread, %if.then70.if.then76_crit_edge
  %release = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 17
  %data.lobit = lshr i8 %data, 7
  %30 = ptrtoint ptr %release to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %data.lobit, ptr %release, align 2
  %and79 = and i32 %conv, 127
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %atkbd_need_xlate.exit.if.end80_crit_edge, %atkbd_need_xlate.exit.thread369
  %code.1 = phi i32 [ %and79, %if.then76 ], [ %conv, %atkbd_need_xlate.exit.if.end80_crit_edge ], [ %conv, %atkbd_need_xlate.exit.thread369 ]
  %31 = ptrtoint ptr %emul to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %emul, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool82.not = icmp eq i8 %32, 0
  br i1 %tobool82.not, label %if.then83, label %if.end80.if.end85_crit_edge

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then83:                                        ; preds = %if.end80
  %xor.i = and i32 %conv, 127
  %33 = zext i32 %xor.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %xor.i, label %if.then83.if.end85_crit_edge [
    i32 42, label %if.then83.if.then.i356_crit_edge
    i32 127, label %if.then.i356.fold.split
    i32 122, label %if.then.i356.fold.split373
    i32 126, label %if.then.i356.fold.split374
    i32 113, label %if.then.i356.fold.split375
    i32 114, label %if.then.i356.fold.split376
  ]

if.then83.if.then.i356_crit_edge:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then83.if.end85_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then.i356.fold.split:                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then.i356.fold.split373:                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then.i356.fold.split374:                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then.i356.fold.split375:                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then.i356.fold.split376:                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i356

if.then.i356:                                     ; preds = %if.then.i356.fold.split376, %if.then.i356.fold.split375, %if.then.i356.fold.split374, %if.then.i356.fold.split373, %if.then.i356.fold.split, %if.then83.if.then.i356_crit_edge
  %i.016.lcssa.i = phi i32 [ 0, %if.then83.if.then.i356_crit_edge ], [ 1, %if.then.i356.fold.split ], [ 2, %if.then.i356.fold.split373 ], [ 3, %if.then.i356.fold.split374 ], [ 4, %if.then.i356.fold.split375 ], [ 5, %if.then.i356.fold.split376 ]
  %and2.i = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %xl_bit5.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 18
  %shl.i14.i = shl nuw nsw i32 1, %i.016.lcssa.i
  br i1 %tobool3.not.i, label %if.else.i357, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %shl.i14.i, -1
  %34 = ptrtoint ptr %xl_bit5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xl_bit5.i, align 4
  %and.i.i = and i32 %35, %neg.i.i
  br label %for.end.sink.split.i

if.else.i357:                                     ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %xl_bit5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xl_bit5.i, align 4
  %or.i.i = or i32 %37, %shl.i14.i
  br label %for.end.sink.split.i

for.end.sink.split.i:                             ; preds = %if.else.i357, %if.then4.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.then4.i ], [ %or.i.i, %if.else.i357 ]
  %38 = ptrtoint ptr %xl_bit5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i.sink.i, ptr %xl_bit5.i, align 4
  br label %if.end85

if.end85:                                         ; preds = %for.end.sink.split.i, %if.then83.if.end85_crit_edge, %if.end80.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  %code.2 = phi i32 [ %code.1, %if.end80.if.end85_crit_edge ], [ %conv, %if.end64.if.end85_crit_edge ], [ %code.1, %for.end.sink.split.i ], [ %code.1, %if.then83.if.end85_crit_edge ]
  %39 = zext i32 %code.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %code.2, label %sw.epilog [
    i32 170, label %sw.bb
    i32 224, label %sw.bb89
    i32 225, label %sw.bb91
    i32 240, label %sw.bb93
    i32 250, label %if.end85.sw.bb95_crit_edge
    i32 254, label %if.end85.sw.bb95_crit_edge377
    i32 255, label %sw.bb107
  ]

if.end85.sw.bb95_crit_edge377:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb95

if.end85.sw.bb95_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb95

sw.bb:                                            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %enabled, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  tail call void @serio_reconnect(ptr noundef %42) #10
  br label %out

sw.bb89:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %emul90 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %43 = ptrtoint ptr %emul90 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %emul90, align 4
  br label %out

sw.bb91:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %emul92 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %emul92 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %emul92, align 4
  br label %out

sw.bb93:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %release94 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %release94 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %release94, align 2
  br label %out

sw.bb95:                                          ; preds = %if.end85.sw.bb95_crit_edge, %if.end85.sw.bb95_crit_edge377
  %call96 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %sw.bb95.out_crit_edge, label %do.end101

sw.bb95.out_crit_edge:                            ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end101:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %cmp367, ptr @.str.11, ptr @.str.12
  %phys = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, ptr noundef %phys) #13
  br label %out

sw.bb107:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %err_count = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err_count, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %err_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atkbd_interrupt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atkbd_interrupt, %if.then120)) #10
          to label %out [label %if.then120], !srcloc !249

if.then120:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #12
  %phys122 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atkbd_interrupt.__UNIQUE_ID_ddebug246, ptr noundef %dev61, ptr noundef nonnull @.str.13, ptr noundef %phys122) #10
  br label %out

sw.epilog:                                        ; preds = %if.end85
  %set.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %set.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.i358 = icmp eq i8 %49, 3
  br i1 %cmp.i358, label %if.then.i359, label %if.else.i361

if.then.i359:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %emul.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %emul.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %emul.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp3.i = icmp eq i8 %51, 1
  %or.i = or i32 %code.2, 256
  %spec.select.i = select i1 %cmp3.i, i32 %or.i, i32 %code.2
  br label %atkbd_compat_scancode.exit

if.else.i361:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %and.i360 = and i32 %code.2, 127
  %and6.i = shl nsw i32 %code.2, 1
  %shl.i = and i32 %and6.i, 256
  %or7.i = or i32 %shl.i, %and.i360
  %emul8.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %emul8.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %emul8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp10.i = icmp eq i8 %53, 1
  %or13.i = or i32 %or7.i, 128
  %spec.select22.i = select i1 %cmp10.i, i32 %or13.i, i32 %or7.i
  br label %atkbd_compat_scancode.exit

atkbd_compat_scancode.exit:                       ; preds = %if.else.i361, %if.then.i359
  %code.addr.0.i = phi i32 [ %spec.select.i, %if.then.i359 ], [ %spec.select22.i, %if.else.i361 ]
  %emul128 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %emul128 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %emul128, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool130.not = icmp eq i8 %55, 0
  br i1 %tobool130.not, label %atkbd_compat_scancode.exit.if.end136_crit_edge, label %land.lhs.true131

atkbd_compat_scancode.exit.if.end136_crit_edge:   ; preds = %atkbd_compat_scancode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

land.lhs.true131:                                 ; preds = %atkbd_compat_scancode.exit
  %dec = add i8 %55, -1
  %56 = ptrtoint ptr %emul128 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %dec, ptr %emul128, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool134.not = icmp eq i8 %dec, 0
  br i1 %tobool134.not, label %land.lhs.true131.if.end136_crit_edge, label %land.lhs.true131.out_crit_edge

land.lhs.true131.out_crit_edge:                   ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true131.if.end136_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.end136:                                        ; preds = %land.lhs.true131.if.end136_crit_edge, %atkbd_compat_scancode.exit.if.end136_crit_edge
  %arrayidx = getelementptr %struct.atkbd, ptr %1, i32 0, i32 5, i32 %code.addr.0.i
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx, align 2
  %release138 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 17
  %59 = ptrtoint ptr %release138 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %release138, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool139.not = icmp eq i8 %60, 0
  br i1 %tobool139.not, label %if.then145, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.end136
  %force_release_mask = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 6
  %div3.i = lshr i32 %code.addr.0.i, 5
  %arrayidx.i = getelementptr i32, ptr %force_release_mask, i32 %div3.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %code.addr.0.i, 31
  %63 = shl nuw i32 1, %and.i
  %64 = and i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool144.not = icmp ne i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %58)
  %cmp147.not = icmp eq i16 %58, 255
  %or.cond338 = select i1 %tobool144.not, i1 true, i1 %cmp147.not
  br i1 %or.cond338, label %land.lhs.true141.if.end151_crit_edge, label %land.lhs.true141.if.then149_crit_edge

land.lhs.true141.if.then149_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then149

land.lhs.true141.if.end151_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then145:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %58)
  %cmp147.not.old = icmp eq i16 %58, 255
  br i1 %cmp147.not.old, label %if.then145.sw.epilog221_crit_edge, label %if.then145.if.then149_crit_edge

if.then145.if.then149_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then149

if.then145.sw.epilog221_crit_edge:                ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

if.then149:                                       ; preds = %if.then145.if.then149_crit_edge, %land.lhs.true141.if.then149_crit_edge
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef %code.addr.0.i) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %land.lhs.true141.if.end151_crit_edge
  %conv152 = zext i16 %58 to i32
  %65 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %58, label %sw.default [
    i16 255, label %if.end151.sw.epilog221_crit_edge
    i16 0, label %do.end156
    i16 -2, label %sw.bb177
    i16 -3, label %sw.bb178
    i16 -4, label %sw.bb179
    i16 -5, label %sw.bb180
    i16 -6, label %sw.bb181
    i16 -7, label %sw.bb186
    i16 -8, label %sw.bb187
  ]

if.end151.sw.epilog221_crit_edge:                 ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

do.end156:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %release138 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %release138, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool159.not = icmp eq i8 %67, 0
  %cond161 = select i1 %tobool159.not, ptr @.str.18, ptr @.str.17
  %68 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool163.not = icmp eq i8 %69, 0
  %cond165 = select i1 %tobool163.not, ptr @.str.20, ptr @.str.19
  %70 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %set.i, align 4
  %conv166 = zext i8 %71 to i32
  %phys167 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond161, ptr noundef nonnull %cond165, i32 noundef %conv166, i32 noundef %code.addr.0.i, ptr noundef %phys167) #13
  %and173 = and i32 %code.addr.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  %cond175 = select i1 %tobool174.not, ptr @.str.25, ptr @.str.24
  %and176 = and i32 %code.addr.0.i, 127
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond175, i32 noundef %and176) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog221

sw.bb177:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.bb178:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.bb179:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.bb180:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.bb181:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %release138 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %release138, align 2, !range !250
  %74 = xor i8 %73, 1
  %75 = zext i8 %74 to i32
  br label %sw.epilog221

sw.bb186:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.bb187:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

sw.default:                                       ; preds = %if.end151
  %76 = ptrtoint ptr %release138 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %release138, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool189.not = icmp eq i8 %77, 0
  br i1 %tobool189.not, label %if.else, label %if.then190

if.then190:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %last = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 19
  %78 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %last, align 4
  br label %if.end210

if.else:                                          ; preds = %sw.default
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 11
  %79 = ptrtoint ptr %softrepeat to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %softrepeat, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool191.not = icmp eq i8 %80, 0
  br i1 %tobool191.not, label %land.lhs.true192, label %if.else.if.else204_crit_edge

if.else.if.else204_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else204

land.lhs.true192:                                 ; preds = %if.else
  %key = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 27
  %div3.i342 = lshr i32 %conv152, 5
  %arrayidx.i343 = getelementptr i32, ptr %key, i32 %div3.i342
  %81 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i343, align 4
  %and.i344 = and i32 %conv152, 31
  %83 = shl nuw i32 1, %and.i344
  %84 = and i32 %82, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool196.not = icmp eq i32 %84, 0
  br i1 %tobool196.not, label %land.lhs.true192.if.else204_crit_edge, label %if.then197

land.lhs.true192.if.else204_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else204

if.then197:                                       ; preds = %land.lhs.true192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 20
  %86 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %time, align 4
  %sub = sub i32 %85, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp198 = icmp slt i32 %sub, 0
  br i1 %cmp198, label %land.rhs, label %if.then197.if.end210_crit_edge

if.then197.if.end210_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

land.rhs:                                         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  %last200 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 19
  %88 = ptrtoint ptr %last200 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %last200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %code.addr.0.i)
  %cmp201 = icmp eq i32 %89, %code.addr.0.i
  %phi.sel = select i1 %cmp201, i32 1, i32 2
  br label %if.end210

if.else204:                                       ; preds = %land.lhs.true192.if.else204_crit_edge, %if.else.if.else204_crit_edge
  %last205 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 19
  %90 = ptrtoint ptr %last205 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %code.addr.0.i, ptr %last205, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %rep = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 24
  %92 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rep, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %93) #10
  %div336 = lshr i32 %call2.i, 1
  %add = add i32 %div336, %91
  %time208 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 20
  %94 = ptrtoint ptr %time208 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add, ptr %time208, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.else204, %land.rhs, %if.then197.if.end210_crit_edge, %if.then190
  %value.0 = phi i32 [ 0, %if.then190 ], [ 1, %if.else204 ], [ 2, %if.then197.if.end210_crit_edge ], [ %phi.sel, %land.rhs ]
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv152, i32 noundef %value.0) #10
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.0)
  %tobool212.not = icmp eq i32 %value.0, 0
  br i1 %tobool212.not, label %if.end210.sw.epilog221_crit_edge, label %land.lhs.true213

if.end210.sw.epilog221_crit_edge:                 ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

land.lhs.true213:                                 ; preds = %if.end210
  %force_release_mask214 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 6
  %div3.i348 = lshr i32 %code.addr.0.i, 5
  %arrayidx.i349 = getelementptr i32, ptr %force_release_mask214, i32 %div3.i348
  %95 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %arrayidx.i349, align 4
  %and.i350 = and i32 %code.addr.0.i, 31
  %97 = shl nuw i32 1, %and.i350
  %98 = and i32 %96, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool217.not = icmp eq i32 %98, 0
  br i1 %tobool217.not, label %land.lhs.true213.sw.epilog221_crit_edge, label %if.then218

land.lhs.true213.sw.epilog221_crit_edge:          ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog221

if.then218:                                       ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef %code.addr.0.i) #10
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv152, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog221

sw.epilog221:                                     ; preds = %if.then218, %land.lhs.true213.sw.epilog221_crit_edge, %if.end210.sw.epilog221_crit_edge, %sw.bb187, %sw.bb186, %sw.bb181, %sw.bb180, %sw.bb179, %sw.bb178, %sw.bb177, %do.end156, %if.end151.sw.epilog221_crit_edge, %if.then145.sw.epilog221_crit_edge
  %hscroll.0 = phi i32 [ 0, %if.then218 ], [ 0, %land.lhs.true213.sw.epilog221_crit_edge ], [ 0, %if.end210.sw.epilog221_crit_edge ], [ 1, %sw.bb187 ], [ -1, %sw.bb186 ], [ 0, %sw.bb181 ], [ 0, %sw.bb180 ], [ 0, %sw.bb179 ], [ 0, %sw.bb178 ], [ 0, %sw.bb177 ], [ 0, %do.end156 ], [ 0, %if.end151.sw.epilog221_crit_edge ], [ 0, %if.then145.sw.epilog221_crit_edge ]
  %click.0 = phi i32 [ -1, %if.then218 ], [ -1, %land.lhs.true213.sw.epilog221_crit_edge ], [ -1, %if.end210.sw.epilog221_crit_edge ], [ -1, %sw.bb187 ], [ -1, %sw.bb186 ], [ %75, %sw.bb181 ], [ -1, %sw.bb180 ], [ -1, %sw.bb179 ], [ -1, %sw.bb178 ], [ -1, %sw.bb177 ], [ -1, %do.end156 ], [ -1, %if.end151.sw.epilog221_crit_edge ], [ -1, %if.then145.sw.epilog221_crit_edge ]
  %scroll.0 = phi i32 [ 0, %if.then218 ], [ 0, %land.lhs.true213.sw.epilog221_crit_edge ], [ 0, %if.end210.sw.epilog221_crit_edge ], [ 0, %sw.bb187 ], [ 0, %sw.bb186 ], [ 0, %sw.bb181 ], [ 8, %sw.bb180 ], [ 4, %sw.bb179 ], [ 2, %sw.bb178 ], [ 1, %sw.bb177 ], [ 0, %do.end156 ], [ 0, %if.end151.sw.epilog221_crit_edge ], [ 0, %if.then145.sw.epilog221_crit_edge ]
  %scroll222 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 13
  %99 = ptrtoint ptr %scroll222 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %scroll222, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool223.not = icmp eq i8 %100, 0
  br i1 %tobool223.not, label %sw.epilog221.if.end234_crit_edge, label %if.then224

sw.epilog221.if.end234_crit_edge:                 ; preds = %sw.epilog221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

if.then224:                                       ; preds = %sw.epilog221
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %click.0)
  %cmp225.not = icmp eq i32 %click.0, -1
  br i1 %cmp225.not, label %if.then224.if.end228_crit_edge, label %if.then227

if.then224.if.end228_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then227:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %click.0)
  %tobool.i362 = icmp ne i32 %click.0, 0
  %lnot.ext.i = zext i1 %tobool.i362 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i) #10
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %if.then224.if.end228_crit_edge
  %101 = ptrtoint ptr %release138 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %release138, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool230.not = icmp eq i8 %102, 0
  %sub232 = sub nsw i32 0, %scroll.0
  %cond233 = select i1 %tobool230.not, i32 %scroll.0, i32 %sub232
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %cond233) #10
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 6, i32 noundef %hscroll.0) #10
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %if.end234

if.end234:                                        ; preds = %if.end228, %sw.epilog221.if.end234_crit_edge
  %103 = ptrtoint ptr %release138 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %release138, align 2
  br label %out

out:                                              ; preds = %if.end234, %land.lhs.true131.out_crit_edge, %if.then120, %sw.bb107, %do.end101, %sw.bb95.out_crit_edge, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb, %if.end60.out_crit_edge, %if.then55.out_crit_edge, %if.then39.out_crit_edge, %serio_write.exit
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1684) #14
  %call1 = tail call ptr @input_allocate_device() #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail1

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %dev3, align 4
  tail call void @ps2_init(ptr noundef nonnull %call7.i.i, ptr noundef %serio) #10
  %event_work = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #10
  %2 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %event_work, align 8
  %lockdep_map = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @atkbd_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1
  %3 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atkbd_event_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @atkbd_connect.__key.27) #10
  %mutex = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.30, ptr noundef nonnull @atkbd_connect.__key.29) #10
  %id = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %7, label %if.end.sw.epilog_crit_edge [
    i8 6, label %sw.bb
    i8 1, label %if.end.sw.bb23_crit_edge
  ]

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %translated = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %translated to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %translated, align 1
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb, %if.end.sw.bb23_crit_edge
  %write = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 8
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %sw.bb23.sw.epilog_crit_edge, label %if.then25

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %write26 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %write26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %write26, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then25, %sw.bb23.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %13 = load i8, ptr @atkbd_softraw, align 1, !range !250
  %softraw = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %softraw, align 1
  %15 = load i8, ptr @atkbd_softrepeat, align 1, !range !250
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %softrepeat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %softrepeat, align 8
  %17 = load i8, ptr @atkbd_scroll, align 1, !range !250
  %scroll = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %scroll to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %scroll, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool34.not = icmp eq i8 %15, 0
  br i1 %tobool34.not, label %sw.epilog.if.end37_crit_edge, label %if.then35

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %softraw, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %sw.epilog.if.end37_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call38 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.fail2_crit_edge

if.end37.fail2_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail2

if.end41:                                         ; preds = %if.end37
  %write42 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %write42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write42, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool43.not = icmp eq i8 %22, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  %call45 = tail call fastcc i32 @atkbd_probe(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.fail3_crit_edge

if.then44.fail3_crit_edge:                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail3

if.end48:                                         ; preds = %if.then44
  %23 = load i32, ptr @atkbd_set, align 4
  %24 = load i8, ptr @atkbd_extra, align 1, !range !250
  %25 = zext i8 %24 to i32
  %call51 = tail call fastcc i32 @atkbd_select_set(ptr noundef nonnull %call7.i.i, i32 noundef %23, i32 noundef %25)
  %conv52 = trunc i32 %call51 to i8
  %set = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv52, ptr %set, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %27 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %param.i, align 1
  %call.i = call i32 @ps2_command(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %param.i, i32 noundef 4333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.atkbd_reset_state.exit_crit_edge

if.end48.atkbd_reset_state.exit_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_reset_state.exit

if.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %param.i, align 1
  %call4.i = call i32 @ps2_command(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %atkbd_reset_state.exit

atkbd_reset_state.exit:                           ; preds = %if.end.i, %if.end48.atkbd_reset_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  br label %if.end56

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %set54 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %set54 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %set54, align 4
  %id55 = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %id55 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -21760, ptr %id55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %atkbd_reset_state.exit
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0) #10
  %33 = add i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %34 = icmp ult i32 %33, 24
  br i1 %34, label %land.lhs.true4.i, label %if.end56.atkbd_parse_fwnode_data.exit_crit_edge

if.end56.atkbd_parse_fwnode_data.exit_crit_edge:  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_parse_fwnode_data.exit

land.lhs.true4.i:                                 ; preds = %if.end56
  %function_row_physmap.i = getelementptr inbounds %struct.atkbd, ptr %32, i32 0, i32 26
  %call5.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.39, ptr noundef %function_row_physmap.i, i32 noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i121 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i121, label %if.then.i, label %land.lhs.true4.i.atkbd_parse_fwnode_data.exit_crit_edge

land.lhs.true4.i.atkbd_parse_fwnode_data.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_parse_fwnode_data.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_function_row_keys.i = getelementptr inbounds %struct.atkbd, ptr %32, i32 0, i32 27
  %35 = ptrtoint ptr %num_function_row_keys.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.i, ptr %num_function_row_keys.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atkbd_parse_fwnode_data.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atkbd_connect, %if.then10.i)) #10
          to label %atkbd_parse_fwnode_data.exit [label %if.then10.i], !srcloc !249

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atkbd_parse_fwnode_data.__UNIQUE_ID_ddebug248, ptr noundef %dev1.i, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #10
  br label %atkbd_parse_fwnode_data.exit

atkbd_parse_fwnode_data.exit:                     ; preds = %if.then10.i, %if.then.i, %land.lhs.true4.i.atkbd_parse_fwnode_data.exit_crit_edge, %if.end56.atkbd_parse_fwnode_data.exit_crit_edge
  call fastcc void @atkbd_set_keycode_table(ptr noundef nonnull %call7.i.i)
  call fastcc void @atkbd_set_device_attrs(ptr noundef nonnull %call7.i.i)
  %call58 = call i32 @sysfs_create_group(ptr noundef %dev1.i, ptr noundef nonnull @atkbd_attribute_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %atkbd_parse_fwnode_data.exit.fail3_crit_edge

atkbd_parse_fwnode_data.exit.fail3_crit_edge:     ; preds = %atkbd_parse_fwnode_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail3

if.end61:                                         ; preds = %atkbd_parse_fwnode_data.exit
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %37, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %enabled.i = getelementptr inbounds %struct.atkbd, ptr %call7.i.i, i32 0, i32 14
  %38 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %enabled.i, align 1
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %40, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #10
  %write62 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %41 = ptrtoint ptr %write62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write62, align 8
  %tobool63.not = icmp eq ptr %42, null
  br i1 %tobool63.not, label %if.end61.if.end66_crit_edge, label %if.then64

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  %call.i122 = call i32 @ps2_command(ptr noundef nonnull %call7.i.i, ptr noundef null, i32 noundef 244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %if.then64.if.end66_crit_edge, label %do.end.i

if.then64.if.end66_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.67, ptr noundef %phys.i) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end.i, %if.then64.if.end66_crit_edge, %if.end61.if.end66_crit_edge
  %45 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3, align 4
  %call68 = call i32 @input_register_device(ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end66.cleanup_crit_edge, label %fail4

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail4:                                            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void @sysfs_remove_group(ptr noundef %dev1.i, ptr noundef nonnull @atkbd_attribute_group) #10
  br label %fail3

fail3:                                            ; preds = %fail4, %atkbd_parse_fwnode_data.exit.fail3_crit_edge, %if.then44.fail3_crit_edge
  %err.0 = phi i32 [ %call58, %atkbd_parse_fwnode_data.exit.fail3_crit_edge ], [ %call68, %fail4 ], [ -19, %if.then44.fail3_crit_edge ]
  call void @serio_close(ptr noundef %serio) #10
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end37.fail2_crit_edge
  %err.1 = phi i32 [ %call38, %if.end37.fail2_crit_edge ], [ %err.0, %fail3 ]
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.2 = phi i32 [ %err.1, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  call void @input_free_device(ptr noundef %call1) #10
  call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_reconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %drv1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end9

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atkbd_reconnect.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atkbd_reconnect, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !249

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atkbd_reconnect.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.70) #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %enabled.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #10
  %write = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end9.if.end29_crit_edge, label %if.then11

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then11:                                        ; preds = %if.end9
  %call12 = tail call fastcc i32 @atkbd_probe(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.then11
  %set = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %set, align 4
  %conv = zext i8 %12 to i32
  %extra = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %extra, align 2, !range !250
  %15 = zext i8 %14 to i32
  %call20 = tail call fastcc i32 @atkbd_select_set(ptr noundef nonnull %1, i32 noundef %conv, i32 noundef %15)
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %conv)
  %cmp.not = icmp eq i32 %call20, %conv
  br i1 %cmp.not, label %if.end23, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %if.end15
  tail call fastcc void @atkbd_set_leds(ptr noundef nonnull %1)
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %softrepeat to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %softrepeat, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atkbd_set_repeat_rate(ptr noundef nonnull %1)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %xl_bit = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %xl_bit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %xl_bit, align 4
  %emul = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %emul to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %emul, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %lock.i.i57 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i57) #10
  %22 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %enabled.i, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %lock.i5.i59 = getelementptr inbounds %struct.serio, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i59) #10
  %25 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.end29.out_crit_edge, label %if.then32

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32:                                        ; preds = %if.end29
  %call.i = tail call i32 @ps2_command(ptr noundef nonnull %1, ptr noundef null, i32 noundef 244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then32.out_crit_edge, label %do.end.i

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.67, ptr noundef %phys.i) #13
  br label %out

out:                                              ; preds = %do.end.i, %if.then32.out_crit_edge, %if.end29.out_crit_edge, %if.end15.out_crit_edge, %if.then11.out_crit_edge
  %retval2.0 = phi i32 [ -1, %if.then11.out_crit_edge ], [ -1, %if.end15.out_crit_edge ], [ 0, %if.end29.out_crit_edge ], [ 0, %if.then32.out_crit_edge ], [ 0, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %do.body
  %retval.0 = phi i32 [ %retval2.0, %out ], [ -1, %if.then8 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atkbd_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @atkbd_attribute_group) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %enabled.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #10
  %dev1 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  tail call void @input_unregister_device(ptr noundef %8) #10
  %event_work = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 22
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %event_work) #10
  tail call void @serio_close(ptr noundef %serio) #10
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atkbd_cleanup(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %enabled.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #10
  %call1 = tail call i32 @ps2_command(ptr noundef %1, ptr noundef null, i32 noundef 246) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_ack(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atkbd_event_work(ptr noundef %work) #2 align 64 {
entry:
  %param.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1384
  %mutex = getelementptr i8, ptr %work, i32 108
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %work, i32 -21
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 10) #10
  br label %if.end12

if.else:                                          ; preds = %entry
  %event_mask = getelementptr i8, ptr %work, i32 104
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %event_mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end_crit_edge, label %if.then4

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atkbd_set_leds(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %event_mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end
  %dev1.i = getelementptr i8, ptr %work, i32 -1220
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %arrayidx2.i = getelementptr %struct.input_dev, ptr %4, i32 0, i32 24, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then9
  %i.01.i = phi i32 [ 0, %if.then9 ], [ %inc.i, %while.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %i.01.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp3.i = icmp sgt i32 %6, %conv.i
  br i1 %cmp3.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 31, %while.body.i.while.end.i_crit_edge ], [ %i.01.i, %land.rhs.i.while.end.i_crit_edge ]
  %arrayidx5.i = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %i.0.lcssa.i
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = sext i16 %10 to i32
  %rep7.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 24
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6.i, ptr %arrayidx2.i, align 4
  %12 = ptrtoint ptr %rep7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rep7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %13)
  %cmp17.i = icmp sgt i32 %13, 250
  br i1 %cmp17.i, label %while.body20.i, label %while.end.i.atkbd_set_repeat_rate.exit_crit_edge

while.end.i.atkbd_set_repeat_rate.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_set_repeat_rate.exit

while.body20.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %13)
  %cmp17.1.i = icmp ugt i32 %13, 500
  br i1 %cmp17.1.i, label %while.body20.1.i, label %while.body20.i.atkbd_set_repeat_rate.exit_crit_edge

while.body20.i.atkbd_set_repeat_rate.exit_crit_edge: ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_set_repeat_rate.exit

while.body20.1.i:                                 ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %13)
  %cmp17.2.i = icmp ugt i32 %13, 750
  %spec.select.i = select i1 %cmp17.2.i, i32 3, i32 2
  br label %atkbd_set_repeat_rate.exit

atkbd_set_repeat_rate.exit:                       ; preds = %while.body20.1.i, %while.body20.i.atkbd_set_repeat_rate.exit_crit_edge, %while.end.i.atkbd_set_repeat_rate.exit_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %while.end.i.atkbd_set_repeat_rate.exit_crit_edge ], [ 1, %while.body20.i.atkbd_set_repeat_rate.exit_crit_edge ], [ %spec.select.i, %while.body20.1.i ]
  %arrayidx23.i = getelementptr [4 x i16], ptr @__const.atkbd_set_repeat_rate.delay, i32 0, i32 %j.0.lcssa.i
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx23.i, align 2
  %conv24.i = sext i16 %15 to i32
  %16 = ptrtoint ptr %rep7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv24.i, ptr %rep7.i, align 4
  %shl.i = shl nuw nsw i32 %j.0.lcssa.i, 5
  %or.i = or i32 %shl.i, %i.0.lcssa.i
  %conv27.i = trunc i32 %or.i to i8
  %17 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv27.i, ptr %param.i, align 1
  %call.i = call i32 @ps2_command(ptr noundef %add.ptr, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  br label %if.end12

if.end12:                                         ; preds = %atkbd_set_repeat_rate.exit, %if.end.if.end12_crit_edge, %if.then
  call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_probe(ptr noundef %atkbd) unnamed_addr #2 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #10
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %1 = load i8, ptr @atkbd_reset, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @ps2_command(ptr noundef %atkbd, ptr noundef null, i32 noundef 767) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atkbd, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  %phys = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %phys) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -91, ptr %0, align 1
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -91, ptr %param, align 1
  %call8 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 754) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.end5
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param, align 1
  %call13 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -21574, ptr %id, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param, align 1
  %call19 = call zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %9) #10
  br i1 %call19, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %param, align 1
  %conv = zext i8 %11 to i16
  %shl = shl nuw i16 %conv, 8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv24 = zext i8 %13 to i16
  %or = or i16 %shl, %conv24
  %id26 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 4
  %14 = ptrtoint ptr %id26 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %id26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21343, i16 %or)
  %cmp = icmp eq i16 %or, -21343
  br i1 %cmp, label %land.lhs.true, label %if.end21.if.then40_crit_edge

if.end21.if.then40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

land.lhs.true:                                    ; preds = %if.end21
  %translated = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 8
  %15 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %land.lhs.true.if.then40_crit_edge, label %do.end35

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

do.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atkbd, align 4
  %dev37 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true.if.then40_crit_edge, %if.end21.if.then40_crit_edge
  %call.i = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef null, i32 noundef 245) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then40.cleanup_crit_edge, label %do.end.i

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %atkbd, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %phys.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then40.cleanup_crit_edge, %do.end35, %if.end17.cleanup_crit_edge, %if.end16, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -1, %do.end35 ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.end17.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_select_set(ptr noundef %atkbd, i32 noundef %target_set, i32 noundef %allow_extra) unnamed_addr #2 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #10
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !252
  %1 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !252
  %extra = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 9
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %extra, align 2
  %translated = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 8
  %4 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21343, i16 %7)
  %cmp = icmp eq i16 %7, -21343
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4336) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_extra)
  %tobool5.not = icmp eq i32 %allow_extra, 0
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 113, ptr %param, align 1
  %call9 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4330) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %extra, align 2
  br label %cleanup

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %11 = load i8, ptr @atkbd_terminal, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 248) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %target_set)
  %cmp20.not = icmp eq i32 %target_set, 3
  br i1 %cmp20.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call25 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 744) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %param, align 1
  %conv29 = zext i8 %13 to i16
  %shl = shl nuw i16 %conv29, 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %conv31 = zext i8 %15 to i16
  %or = or i16 %shl, %conv31
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or, ptr %id, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %param, align 1
  %call37 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4336) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %param, align 1
  %call43 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %19 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp49.not = icmp eq i8 %20, 3
  br i1 %cmp49.not, label %if.end46.if.end58_crit_edge, label %if.then51

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then51:                                        ; preds = %if.end46
  %21 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %param, align 1
  %call54 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4336) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end58_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %if.end46.if.end58_crit_edge
  %call60 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 250) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then51.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then27, %if.end19.cleanup_crit_edge, %if.then16, %if.then11, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then3 ], [ 3, %if.then16 ], [ 3, %if.end58 ], [ 2, %if.then27 ], [ 2, %if.then11 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end19.cleanup_crit_edge ], [ 2, %if.end34.cleanup_crit_edge ], [ 2, %if.end40.cleanup_crit_edge ], [ 2, %if.then51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atkbd, align 4
  %dev1 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %keycode = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 5
  %2 = call ptr @memset(ptr %keycode, i32 0, i32 1024)
  %force_release_mask = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 6
  %3 = call ptr @memset(ptr %force_release_mask, i32 0, i32 64)
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0) #10
  %4 = add i32 %call.i.i, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %4)
  %5 = icmp ult i32 %4, -512
  br i1 %5, label %entry.if.else_crit_edge, label %if.end7.i.i.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end7.i.i.i:                                    ; preds = %entry
  %6 = shl nuw nsw i32 %call.i.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.else_crit_edge, label %if.end5.i

if.end7.i.i.i.if.else_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end5.i:                                        ; preds = %if.end7.i.i.i
  %call6.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef nonnull %call8.i.i.i, i32 noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.preheader.i, label %atkbd_get_keymap_from_fwnode.exit

for.body.preheader.i:                             ; preds = %if.end5.i
  %7 = call ptr @memset(ptr %keycode, i32 0, i32 1024)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.041.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.041.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %9, 16
  %conv14.i = trunc i32 %9 to i16
  %arrayidx16.i = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv14.i, ptr %arrayidx16.i, align 2
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %do.body, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

atkbd_get_keymap_from_fwnode.exit:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %if.else

do.body:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atkbd_set_keycode_table.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atkbd_set_keycode_table, %if.then7)) #10
          to label %if.end69 [label %if.then7], !srcloc !249

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atkbd_set_keycode_table.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.43) #10
  br label %if.end69

if.else:                                          ; preds = %atkbd_get_keymap_from_fwnode.exit, %if.end7.i.i.i.if.else_crit_edge, %entry.if.else_crit_edge
  %translated = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 8
  %11 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.else39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %scroll = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.cond.preheader
  %i.0155 = phi i32 [ 0, %for.cond.preheader ], [ %inc37, %for.inc36.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i16], ptr @atkbd_unxlate_table, i32 0, i32 %i.0155
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  %arrayidx10 = getelementptr [512 x i16], ptr @atkbd_set2_keycode, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx10, align 2
  %arrayidx12 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %i.0155
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx12, align 2
  %or = or i32 %conv, 128
  %arrayidx13 = getelementptr [512 x i16], ptr @atkbd_set2_keycode, i32 0, i32 %or
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx13, align 2
  %or15 = or i32 %i.0155, 128
  %arrayidx16 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %or15
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx16, align 2
  %21 = ptrtoint ptr %scroll to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scroll, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %for.body.for.inc36_crit_edge, label %for.body22.preheader

for.body.for.inc36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.body22.preheader:                             ; preds = %for.body
  %trunc = trunc i32 %or to i16
  %23 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %trunc, label %for.body22.preheader.for.inc36_crit_edge [
    i16 197, label %for.body22.preheader.for.inc36.sink.split_crit_edge
    i16 157, label %if.then28.1
    i16 164, label %if.then28.2
    i16 155, label %if.then28.3
    i16 224, label %if.then28.4
    i16 203, label %for.inc.5.thread
    i16 210, label %if.then28.6
  ]

for.body22.preheader.for.inc36.sink.split_crit_edge: ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

for.body22.preheader.for.inc36_crit_edge:         ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

if.then28.1:                                      ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

if.then28.2:                                      ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

if.then28.3:                                      ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

if.then28.4:                                      ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

for.inc.5.thread:                                 ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

if.then28.6:                                      ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.sink.split

for.inc36.sink.split:                             ; preds = %if.then28.6, %for.inc.5.thread, %if.then28.4, %if.then28.3, %if.then28.2, %if.then28.1, %for.body22.preheader.for.inc36.sink.split_crit_edge
  %.sink = phi i16 [ -6, %if.then28.4 ], [ -5, %if.then28.3 ], [ -4, %if.then28.2 ], [ -3, %if.then28.1 ], [ -8, %if.then28.6 ], [ -7, %for.inc.5.thread ], [ -2, %for.body22.preheader.for.inc36.sink.split_crit_edge ]
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink, ptr %arrayidx16, align 2
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc36.sink.split, %for.body22.preheader.for.inc36_crit_edge, %for.body.for.inc36_crit_edge
  %inc37 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc37, 128
  br i1 %exitcond.not, label %for.inc36.if.end69_crit_edge, label %for.inc36.for.body_crit_edge

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc36.if.end69_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.else39:                                        ; preds = %if.else
  %set = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %25 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp41 = icmp eq i8 %26, 3
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call ptr @memcpy(ptr %keycode, ptr @atkbd_set3_keycode, i32 1024)
  br label %if.end69

if.else46:                                        ; preds = %if.else39
  %28 = call ptr @memcpy(ptr %keycode, ptr @atkbd_set2_keycode, i32 1024)
  %scroll49 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 13
  %29 = ptrtoint ptr %scroll49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scroll49, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool50.not = icmp eq i8 %30, 0
  br i1 %tobool50.not, label %if.else46.if.end69_crit_edge, label %for.body55.preheader

if.else46.if.end69_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

for.body55.preheader:                             ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx62 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 197
  %31 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -2, ptr %arrayidx62, align 2
  %arrayidx62.1 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 157
  %32 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -3, ptr %arrayidx62.1, align 2
  %arrayidx62.2 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 164
  %33 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -4, ptr %arrayidx62.2, align 2
  %arrayidx62.3 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 155
  %34 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -5, ptr %arrayidx62.3, align 2
  %arrayidx62.4 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 224
  %35 = ptrtoint ptr %arrayidx62.4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -6, ptr %arrayidx62.4, align 2
  %arrayidx62.5 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 203
  %36 = ptrtoint ptr %arrayidx62.5 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -7, ptr %arrayidx62.5, align 2
  %arrayidx62.6 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 210
  %37 = ptrtoint ptr %arrayidx62.6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -8, ptr %arrayidx62.6, align 2
  br label %if.end69

if.end69:                                         ; preds = %for.body55.preheader, %if.else46.if.end69_crit_edge, %if.then43, %for.inc36.if.end69_crit_edge, %if.then7, %do.body
  %set.i = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %38 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %set.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp.i = icmp eq i8 %39, 3
  %emul.i = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 15
  %40 = ptrtoint ptr %emul.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %emul.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp3.i = icmp eq i8 %41, 1
  %. = select i1 %cmp.i, i32 242, i32 370
  %.172 = select i1 %cmp.i, i32 241, i32 369
  %spec.select.i128 = select i1 %cmp3.i, i32 498, i32 %.
  %arrayidx72148 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %spec.select.i128
  %42 = ptrtoint ptr %arrayidx72148 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 122, ptr %arrayidx72148, align 2
  %div2.i149 = lshr i32 %spec.select.i128, 5
  %add.ptr.i150 = getelementptr i32, ptr %force_release_mask, i32 %div2.i149
  %43 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i150, align 4
  %or.i151 = or i32 %44, 262144
  store i32 %or.i151, ptr %add.ptr.i150, align 4
  %spec.select.i133 = select i1 %cmp3.i, i32 497, i32 %.172
  %arrayidx77 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %spec.select.i133
  %45 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 123, ptr %arrayidx77, align 2
  %div2.i124 = lshr i32 %spec.select.i133, 5
  %add.ptr.i125 = getelementptr i32, ptr %force_release_mask, i32 %div2.i124
  %46 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i125, align 4
  %or.i126 = or i32 %47, 131072
  store i32 %or.i126, ptr %add.ptr.i125, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %extra = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 9
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %name1 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memcpy(ptr %name1, ptr @.str.49, i32 24)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %translated = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 8
  %5 = ptrtoint ptr %translated to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %translated, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool3.not, ptr @.str.52, ptr @.str.51
  %set = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %7 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %set, align 4
  %conv = zext i8 %8 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1, i32 noundef 64, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phys = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 3
  %9 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %atkbd, align 4
  %phys6 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef %phys6)
  %name9 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name9, ptr %1, align 8
  %phys14 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %phys14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %phys, ptr %phys14, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 17, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %vendor, align 2
  %translated16 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 8
  %15 = ptrtoint ptr %translated16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %translated16, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %set19 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %17 = ptrtoint ptr %set19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %set19, align 4
  %phi.cast = zext i8 %18 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond21 = phi i16 [ %phi.cast, %cond.false ], [ 1, %if.end.cond.end_crit_edge ]
  %product = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %cond21, ptr %product, align 4
  %id24 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 4
  %20 = ptrtoint ptr %id24 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id24, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %version, align 2
  %event = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 34
  %23 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @atkbd_event, ptr %event, align 4
  %24 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %atkbd, align 4
  %dev28 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev28, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %atkbd, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048594, ptr %evbit, align 8
  %write = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 10
  %29 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %cond.end.if.end35_crit_edge, label %if.then31

cond.end.if.end35_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then31:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1179666, ptr %evbit, align 8
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %ledbit to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %ledbit, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %cond.end.if.end35_crit_edge
  %33 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extra, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool37.not = icmp eq i8 %34, 0
  br i1 %tobool37.not, label %if.end35.if.end42_crit_edge, label %if.then38

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %ledbit39 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %ledbit39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ledbit39, align 4
  %or41 = or i32 %36, 488
  store i32 %or41, ptr %ledbit39, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35.if.end42_crit_edge
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 11
  %37 = ptrtoint ptr %softrepeat to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %softrepeat, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool43.not = icmp eq i8 %38, 0
  br i1 %tobool43.not, label %if.then44, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %rep = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 24
  %39 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 250, ptr %rep, align 4
  %arrayidx47 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 24, i32 1
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 33, ptr %arrayidx47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end42.if.end48_crit_edge
  %softraw = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 12
  %41 = ptrtoint ptr %softraw to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %softraw, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool49.not = icmp eq i8 %42, 0
  %cond51 = select i1 %tobool49.not, i32 24, i32 16
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %mscbit to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond51, ptr %mscbit, align 8
  %scroll = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 13
  %44 = ptrtoint ptr %scroll to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %scroll, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool53.not = icmp eq i8 %45, 0
  br i1 %tobool53.not, label %if.end48.if.end60_crit_edge, label %if.then54

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %evbit, align 8
  %or57 = or i32 %47, 4
  store i32 %or57, ptr %evbit, align 8
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 320, ptr %relbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %50, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.end48.if.end60_crit_edge
  %keycode = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 5
  %keycode62 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %51 = ptrtoint ptr %keycode62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %keycode, ptr %keycode62, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 512, ptr %keycodemax, align 4
  %keybit84 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end60
  %i.0140 = phi i32 [ 0, %if.end60 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx65 = getelementptr %struct.atkbd, ptr %atkbd, i32 0, i32 5, i32 %i.0140
  %54 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx65, align 2
  %conv66 = zext i16 %55 to i32
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %55, label %land.lhs.true74 [
    i16 0, label %for.body.for.inc_crit_edge
    i16 255, label %for.body.for.inc_crit_edge141
  ]

for.body.for.inc_crit_edge141:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true74:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %55)
  %cmp78 = icmp ult i16 %55, -8
  br i1 %cmp78, label %if.then80, label %land.lhs.true74.for.inc_crit_edge

land.lhs.true74.for.inc_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then80:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = and i32 %conv66, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv66, 5
  %add.ptr.i138 = getelementptr i32, ptr %keybit84, i32 %div2.i
  %57 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i138, align 4
  %or.i139 = or i32 %58, %shl.i
  store i32 %or.i139, ptr %add.ptr.i138, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then80, %land.lhs.true74.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge141
  %inc = add nuw nsw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_leds(ptr noundef %atkbd) unnamed_addr #2 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #10
  %2 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !252
  %led = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %led, align 4
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %9 = load volatile i32, ptr %led, align 4
  %10 = trunc i32 %9 to i8
  %11 = shl i8 %10, 1
  %12 = and i8 %11, 2
  %or = or i8 %12, %8
  %13 = load volatile i32, ptr %led, align 4
  %14 = trunc i32 %13 to i8
  %15 = shl i8 %14, 1
  %16 = and i8 %15, 4
  %or12 = or i8 %or, %16
  %17 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or12, ptr %param, align 1
  %call14 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %extra = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 9
  %18 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extra, align 2, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %param, align 1
  %21 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %led, align 4
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 3
  %25 = and i8 %24, 1
  %26 = load volatile i32, ptr %led, align 4
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 2
  %or29 = or i8 %29, %25
  %30 = load volatile i32, ptr %led, align 4
  %31 = trunc i32 %30 to i8
  %32 = lshr i8 %31, 4
  %33 = and i8 %32, 4
  %or35 = or i8 %or29, %33
  %34 = load volatile i32, ptr %led, align 4
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 16
  %or41 = or i8 %or35, %37
  %38 = load volatile i32, ptr %led, align 4
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 2
  %41 = and i8 %40, 32
  %or47 = or i8 %or41, %41
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or47, ptr %2, align 1
  %call52 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 8427) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_repeat_rate(ptr noundef %atkbd) unnamed_addr #2 align 64 {
entry:
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #10
  %arrayidx2 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %while.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %i.01
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3 = icmp sgt i32 %3, %conv
  br i1 %cmp3, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 31, %while.body.while.end_crit_edge ], [ %i.01, %land.rhs.while.end_crit_edge ]
  %arrayidx5 = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %7 to i32
  %rep7 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %rep7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rep7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %10)
  %cmp17 = icmp sgt i32 %10, 250
  br i1 %cmp17, label %while.body20, label %while.end.while.end22_crit_edge

while.end.while.end22_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end22

while.body20:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %10)
  %cmp17.1 = icmp ugt i32 %10, 500
  br i1 %cmp17.1, label %while.body20.1, label %while.body20.while.end22_crit_edge

while.body20.while.end22_crit_edge:               ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end22

while.body20.1:                                   ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %10)
  %cmp17.2 = icmp ugt i32 %10, 750
  %spec.select = select i1 %cmp17.2, i32 3, i32 2
  br label %while.end22

while.end22:                                      ; preds = %while.body20.1, %while.body20.while.end22_crit_edge, %while.end.while.end22_crit_edge
  %j.0.lcssa = phi i32 [ 0, %while.end.while.end22_crit_edge ], [ 1, %while.body20.while.end22_crit_edge ], [ %spec.select, %while.body20.1 ]
  %arrayidx23 = getelementptr [4 x i16], ptr @__const.atkbd_set_repeat_rate.delay, i32 0, i32 %j.0.lcssa
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %12 to i32
  %13 = ptrtoint ptr %rep7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv24, ptr %rep7, align 4
  %shl = shl nuw nsw i32 %j.0.lcssa, 5
  %or = or i32 %shl, %i.0.lcssa
  %conv27 = trunc i32 %or to i8
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param, i32 noundef 4339) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 17, label %sw.bb
    i32 20, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %event_jiffies.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %event_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_jiffies.i, align 4
  %add.i = add i32 %6, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %spec.select.i = select i1 %cmp.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %event_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %event_jiffies.i, align 4
  %event_mask.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %event_mask.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %if.end
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %softrepeat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %softrepeat, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.then3, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %event_jiffies.i8 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %event_jiffies.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_jiffies.i8, align 4
  %add.i9 = add i32 %13, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i10 = sub i32 %add.i9, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i10)
  %cmp.i11 = icmp slt i32 %sub.i10, 0
  %spec.select.i12 = select i1 %cmp.i11, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %event_jiffies.i8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %event_jiffies.i8, align 4
  %event_mask.i13 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 1, ptr noundef %event_mask.i13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %sw.bb
  %spec.select.i12.sink = phi i32 [ %spec.select.i12, %if.then3 ], [ %spec.select.i, %sw.bb ]
  tail call void @arm_heavy_mb() #10
  %event_work.i14 = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i.i15 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %event_work.i14, i32 noundef %spec.select.i12.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @atkbd_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @atkbd_attr_function_row_physmap
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_function_row_keys = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %num_function_row_keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_function_row_keys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_function_row_physmap(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_function_row_keys.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %num_function_row_keys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_function_row_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.atkbd_show_function_row_physmap.exit_crit_edge, label %for.cond.preheader.i

entry.atkbd_show_function_row_physmap.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_show_function_row_physmap.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.i = icmp sgt i32 %3, 0
  br i1 %cmp18.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %size.019.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %b, i32 %size.019.i
  %sub.i = sub i32 4096, %size.019.i
  %arrayidx.i = getelementptr %struct.atkbd, ptr %1, i32 0, i32 26, i32 %i.020.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.55, i32 noundef %5) #10
  %add.i = add i32 %call.i, %size.019.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %6 = ptrtoint ptr %num_function_row_keys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_function_row_keys.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %add.ptr2.i = getelementptr i8, ptr %b, i32 %size.0.lcssa.i
  %sub3.i = sub i32 4096, %size.0.lcssa.i
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.56) #10
  %add5.i = add i32 %call4.i, %size.0.lcssa.i
  br label %atkbd_show_function_row_physmap.exit

atkbd_show_function_row_physmap.exit:             ; preds = %for.end.i, %entry.atkbd_show_function_row_physmap.exit_crit_edge
  %retval.0.i = phi i32 [ %add5.i, %for.end.i ], [ 0, %entry.atkbd_show_function_row_physmap.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_extra(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %extra.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %extra.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra.i, align 2, !range !250
  %4 = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.58, i32 noundef %4) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_extra(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %d, ptr noundef %b, i32 noundef %s, ptr noundef nonnull @atkbd_set_extra)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_attr_set_helper(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %handler) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 25
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %enabled.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #10
  %call3 = tail call i32 %handler(ptr noundef %1, ptr noundef %buf, i32 noundef %count) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %lock.i.i13 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i13) #10
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %enabled.i, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %lock.i5.i15 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i15) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_set_extra(ptr noundef %atkbd, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !252
  %write = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 10
  %1 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %extra = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 9
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %extra, align 2, !range !250
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp7.not = icmp eq i32 %4, %7
  br i1 %cmp7.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %set = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %10 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %set, align 4
  %call12 = call ptr @input_allocate_device() #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %dev, align 4
  %13 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %set, align 4
  %conv18 = zext i8 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %call19 = call fastcc i32 @atkbd_select_set(ptr noundef %atkbd, i32 noundef %conv18, i32 noundef %16)
  %conv20 = trunc i32 %call19 to i8
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20, ptr %set, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %18 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %param.i, align 1
  %call.i = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param.i, i32 noundef 4333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.atkbd_reset_state.exit_crit_edge

if.end15.atkbd_reset_state.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_reset_state.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %param.i, align 1
  %call4.i = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %atkbd_reset_state.exit

atkbd_reset_state.exit:                           ; preds = %if.end.i, %if.end15.atkbd_reset_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  %call.i66 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef null, i32 noundef 244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %atkbd_reset_state.exit.atkbd_activate.exit_crit_edge, label %do.end.i

atkbd_reset_state.exit.atkbd_activate.exit_crit_edge: ; preds = %atkbd_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_activate.exit

do.end.i:                                         ; preds = %atkbd_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %atkbd, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.67, ptr noundef %phys.i) #13
  br label %atkbd_activate.exit

atkbd_activate.exit:                              ; preds = %do.end.i, %atkbd_reset_state.exit.atkbd_activate.exit_crit_edge
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call25 = call i32 @input_register_device(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %atkbd_activate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_free_device(ptr noundef nonnull %call12) #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %9, ptr %dev, align 4
  %conv29 = zext i8 %11 to i32
  %call32 = call fastcc i32 @atkbd_select_set(ptr noundef %atkbd, i32 noundef %conv29, i32 noundef %7)
  %conv33 = trunc i32 %call32 to i8
  %25 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv33, ptr %set, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  br label %cleanup

if.end35:                                         ; preds = %atkbd_activate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_unregister_device(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then27, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.then27 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.then9.cleanup_crit_edge ], [ %count, %if.end35 ], [ %count, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_force_release(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %force_release_mask.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 6
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %b, i32 noundef 4095, ptr noundef nonnull @.str.60, i32 noundef 512, ptr noundef %force_release_mask.i) #10
  %inc.i = add i32 %call.i, 1
  %arrayidx.i = getelementptr i8, ptr %b, i32 %call.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %b, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx1.i, align 1
  ret i32 %inc.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_force_release(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  %new_mask.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 25
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.atkbd_attr_set_helper.exit_crit_edge

entry.atkbd_attr_set_helper.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_attr_set_helper.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #10
  %enabled.i.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %new_mask.i) #10
  %7 = call ptr @memset(ptr %new_mask.i, i32 255, i32 64)
  %call.i = call i32 @bitmap_parselist(ptr noundef %b, ptr noundef nonnull %new_mask.i, i32 noundef 512) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %if.end.i2, label %if.end.i.atkbd_set_force_release.exit_crit_edge

if.end.i.atkbd_set_force_release.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_set_force_release.exit

if.end.i2:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %force_release_mask.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %force_release_mask.i, ptr %new_mask.i, i32 64)
  br label %atkbd_set_force_release.exit

atkbd_set_force_release.exit:                     ; preds = %if.end.i2, %if.end.i.atkbd_set_force_release.exit_crit_edge
  %retval.0.i3 = phi i32 [ %s, %if.end.i2 ], [ %call.i, %if.end.i.atkbd_set_force_release.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %new_mask.i) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %lock.i.i13.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i13.i) #10
  %11 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enabled.i.i, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %lock.i5.i15.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i15.i) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %atkbd_attr_set_helper.exit

atkbd_attr_set_helper.exit:                       ; preds = %atkbd_set_force_release.exit, %entry.atkbd_attr_set_helper.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i3, %atkbd_set_force_release.exit ], [ %call2.i, %entry.atkbd_attr_set_helper.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_scroll(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %scroll.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %scroll.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scroll.i, align 2, !range !250
  %4 = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.58, i32 noundef %4) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_scroll(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %d, ptr noundef %b, i32 noundef %s, ptr noundef nonnull @atkbd_set_scroll)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_set_scroll(ptr noundef %atkbd, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !252
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %scroll = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 13
  %3 = ptrtoint ptr %scroll to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %scroll, align 2, !range !250
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp4.not = icmp eq i32 %2, %5
  br i1 %cmp4.not, label %if.end2.cleanup_crit_edge, label %if.then6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end2
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call9 = call ptr @input_allocate_device() #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then6.cleanup_crit_edge, label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %dev, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14 = icmp ne i32 %10, 0
  %frombool16 = zext i1 %tobool14 to i8
  %11 = ptrtoint ptr %scroll to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool16, ptr %scroll, align 2
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call18 = call i32 @input_register_device(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_free_device(ptr noundef nonnull %call9) #10
  %14 = ptrtoint ptr %scroll to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %4, ptr %scroll, align 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %dev, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_unregister_device(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then20, %if.then6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ %count, %if.end25 ], [ %count, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_set(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %set.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set.i, align 4
  %conv.i = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.58, i32 noundef %conv.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_set(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %d, ptr noundef %b, i32 noundef %s, ptr noundef nonnull @atkbd_set_set)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_set_set(ptr noundef %atkbd, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !252
  %write = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 10
  %1 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp eq i32 %5, 2
  br i1 %switch, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %set = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 7
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp7.not = icmp eq i32 %4, %conv
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %extra = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 9
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extra, align 2, !range !250
  %call12 = call ptr @input_allocate_device() #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %dev, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %15 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %extra, align 2, !range !250
  %17 = zext i8 %16 to i32
  %call20 = call fastcc i32 @atkbd_select_set(ptr noundef %atkbd, i32 noundef %14, i32 noundef %17)
  %conv21 = trunc i32 %call20 to i8
  %18 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %set, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %19 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %param.i, align 1
  %call.i = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param.i, i32 noundef 4333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.atkbd_reset_state.exit_crit_edge

if.end15.atkbd_reset_state.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_reset_state.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %param.i, align 1
  %call4.i = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %atkbd_reset_state.exit

atkbd_reset_state.exit:                           ; preds = %if.end.i, %if.end15.atkbd_reset_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  %call.i67 = call i32 @ps2_command(ptr noundef %atkbd, ptr noundef null, i32 noundef 244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %atkbd_reset_state.exit.atkbd_activate.exit_crit_edge, label %do.end.i

atkbd_reset_state.exit.atkbd_activate.exit_crit_edge: ; preds = %atkbd_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %atkbd_activate.exit

do.end.i:                                         ; preds = %atkbd_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %atkbd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %atkbd, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.67, ptr noundef %phys.i) #13
  br label %atkbd_activate.exit

atkbd_activate.exit:                              ; preds = %do.end.i, %atkbd_reset_state.exit.atkbd_activate.exit_crit_edge
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call26 = call i32 @input_register_device(ptr noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end36, label %if.then28

if.then28:                                        ; preds = %atkbd_activate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_free_device(ptr noundef nonnull %call12) #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %9, ptr %dev, align 4
  %26 = zext i8 %11 to i32
  %call33 = call fastcc i32 @atkbd_select_set(ptr noundef %atkbd, i32 noundef %conv, i32 noundef %26)
  %conv34 = trunc i32 %call33 to i8
  %27 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv34, ptr %set, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %atkbd)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  br label %cleanup

if.end36:                                         ; preds = %atkbd_activate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_unregister_device(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then28, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.then9.cleanup_crit_edge ], [ %count, %if.end36 ], [ %count, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_softrepeat(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %softrepeat.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %softrepeat.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %softrepeat.i, align 4, !range !250
  %4 = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.58, i32 noundef %4) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_softrepeat(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %d, ptr noundef %b, i32 noundef %s, ptr noundef nonnull @atkbd_set_softrepeat)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_set_softrepeat(ptr noundef %atkbd, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !252
  %write = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 10
  %1 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %write, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %softrepeat = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 11
  %5 = ptrtoint ptr %softrepeat to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %softrepeat, align 4, !range !250
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp7.not = icmp eq i32 %4, %7
  br i1 %cmp7.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %softraw = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 12
  %10 = ptrtoint ptr %softraw to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %softraw, align 1, !range !250
  %call14 = call ptr @input_allocate_device() #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then9.cleanup_crit_edge, label %if.end17

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %dev, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19 = icmp ne i32 %14, 0
  %frombool21 = zext i1 %tobool19 to i8
  %15 = ptrtoint ptr %softrepeat to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool21, ptr %softrepeat, align 4
  br i1 %tobool19, label %if.then24, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %softraw, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17.if.end26_crit_edge
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call28 = call i32 @input_register_device(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end38, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_free_device(ptr noundef nonnull %call14) #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %dev, align 4
  %20 = ptrtoint ptr %softrepeat to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %6, ptr %softrepeat, align 4
  %21 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %11, ptr %softraw, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_unregister_device(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then30, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.then9.cleanup_crit_edge ], [ %count, %if.end38 ], [ %count, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_softraw(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %softraw.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %softraw.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %softraw.i, align 1, !range !250
  %4 = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.58, i32 noundef %4) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_softraw(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b, i32 noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %d, ptr noundef %b, i32 noundef %s, ptr noundef nonnull @atkbd_set_softraw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_set_softraw(ptr noundef %atkbd, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !252
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %softraw = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 12
  %3 = ptrtoint ptr %softraw to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %softraw, align 1, !range !250
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp4.not = icmp eq i32 %2, %5
  br i1 %cmp4.not, label %if.end2.cleanup_crit_edge, label %if.then6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end2
  %dev = getelementptr inbounds %struct.atkbd, ptr %atkbd, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call9 = call ptr @input_allocate_device() #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then6.cleanup_crit_edge, label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %dev, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14 = icmp ne i32 %10, 0
  %frombool16 = zext i1 %tobool14 to i8
  %11 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool16, ptr %softraw, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call18 = call i32 @input_register_device(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_free_device(ptr noundef nonnull %call9) #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %dev, align 4
  %15 = ptrtoint ptr %softraw to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %4, ptr %softraw, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %atkbd)
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_unregister_device(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then20, %if.then6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ %count, %if.end25 ], [ %count, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_err_count(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %err_count.i = getelementptr inbounds %struct.atkbd, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %err_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_count.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.66, i32 noundef %3) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !182, !184, !186, !188, !190, !191, !193, !195, !196, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !218, !219, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/atkbd.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/atkbd.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/atkbd.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_set, !8, !"__param_set", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/atkbd.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_settype231, !8, !"__UNIQUE_ID_settype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_set232, !11, !"__UNIQUE_ID_set232", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/atkbd.c", i32 37, i32 1}
!12 = !{ptr @__param_reset, !13, !"__param_reset", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/atkbd.c", i32 44, i32 1}
!14 = !{ptr @__UNIQUE_ID_resettype233, !13, !"__UNIQUE_ID_resettype233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_reset234, !16, !"__UNIQUE_ID_reset234", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/atkbd.c", i32 45, i32 1}
!17 = !{ptr @__param_softrepeat, !18, !"__param_softrepeat", i1 false, i1 false}
!18 = !{!"../drivers/input/keyboard/atkbd.c", i32 48, i32 1}
!19 = !{ptr @__UNIQUE_ID_softrepeattype235, !18, !"__UNIQUE_ID_softrepeattype235", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_softrepeat236, !21, !"__UNIQUE_ID_softrepeat236", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/atkbd.c", i32 49, i32 1}
!22 = !{ptr @__param_softraw, !23, !"__param_softraw", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/atkbd.c", i32 52, i32 1}
!24 = !{ptr @__UNIQUE_ID_softrawtype237, !23, !"__UNIQUE_ID_softrawtype237", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_softraw238, !26, !"__UNIQUE_ID_softraw238", i1 false, i1 false}
!26 = !{!"../drivers/input/keyboard/atkbd.c", i32 53, i32 1}
!27 = !{ptr @__param_scroll, !28, !"__param_scroll", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/atkbd.c", i32 56, i32 1}
!29 = !{ptr @__UNIQUE_ID_scrolltype239, !28, !"__UNIQUE_ID_scrolltype239", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_scroll240, !31, !"__UNIQUE_ID_scroll240", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/atkbd.c", i32 57, i32 1}
!32 = !{ptr @__param_extra, !33, !"__param_extra", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/atkbd.c", i32 60, i32 1}
!34 = !{ptr @__UNIQUE_ID_extratype241, !33, !"__UNIQUE_ID_extratype241", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_extra242, !36, !"__UNIQUE_ID_extra242", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/atkbd.c", i32 61, i32 1}
!37 = !{ptr @__param_terminal, !38, !"__param_terminal", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/atkbd.c", i32 64, i32 1}
!39 = !{ptr @__UNIQUE_ID_terminaltype243, !38, !"__UNIQUE_ID_terminaltype243", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_terminal244, !41, !"__UNIQUE_ID_terminal244", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/atkbd.c", i32 65, i32 1}
!42 = !{ptr @__initcall__kmod_atkbd__250_1913_atkbd_init6, !43, !"__initcall__kmod_atkbd__250_1913_atkbd_init6", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/atkbd.c", i32 1913, i32 1}
!44 = !{ptr @__exitcall_atkbd_exit, !45, !"__exitcall_atkbd_exit", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/atkbd.c", i32 1914, i32 1}
!46 = !{ptr @atkbd_softrepeat, !47, !"atkbd_softrepeat", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/atkbd.c", i32 47, i32 13}
!48 = !{ptr @atkbd_scroll, !49, !"atkbd_scroll", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/atkbd.c", i32 55, i32 13}
!50 = !{ptr @atkbd_extra, !51, !"atkbd_extra", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/atkbd.c", i32 59, i32 13}
!52 = !{ptr @atkbd_terminal, !53, !"atkbd_terminal", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/atkbd.c", i32 63, i32 13}
!54 = !{ptr @__param_str_set, !8, !"__param_str_set", i1 false, i1 false}
!55 = !{ptr @atkbd_set, !56, !"atkbd_set", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/atkbd.c", i32 35, i32 12}
!57 = !{ptr @__param_str_reset, !13, !"__param_str_reset", i1 false, i1 false}
!58 = !{ptr @atkbd_reset, !59, !"atkbd_reset", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/atkbd.c", i32 42, i32 13}
!60 = !{ptr @__param_str_softrepeat, !18, !"__param_str_softrepeat", i1 false, i1 false}
!61 = !{ptr @__param_str_softraw, !23, !"__param_str_softraw", i1 false, i1 false}
!62 = !{ptr @atkbd_softraw, !63, !"atkbd_softraw", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/atkbd.c", i32 51, i32 13}
!64 = !{ptr @__param_str_scroll, !28, !"__param_str_scroll", i1 false, i1 false}
!65 = !{ptr @__param_str_extra, !33, !"__param_str_extra", i1 false, i1 false}
!66 = !{ptr @__param_str_terminal, !38, !"__param_str_terminal", i1 false, i1 false}
!67 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/atkbd.c", i32 1394, i32 17}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/atkbd.c", i32 1392, i32 11}
!71 = !{ptr @atkbd_drv, !72, !"atkbd_drv", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/atkbd.c", i32 1390, i32 28}
!73 = !{ptr @atkbd_serio_ids, !74, !"atkbd_serio_ids", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/atkbd.c", i32 1366, i32 37}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/atkbd.c", i32 419, i32 2}
!77 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @atkbd_interrupt.__UNIQUE_ID_ddebug245, !76, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/atkbd.c", i32 423, i32 3}
!82 = !{ptr @.str.6, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.7, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @atkbd_interrupt._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @atkbd_interrupt._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.9, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/atkbd.c", i32 479, i32 4}
!88 = !{ptr @atkbd_interrupt._entry.8, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @atkbd_interrupt._entry_ptr.10, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.11, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.12, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.13, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/keyboard/atkbd.c", i32 486, i32 3}
!94 = !{ptr @atkbd_interrupt.__UNIQUE_ID_ddebug246, !93, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/atkbd.c", i32 506, i32 3}
!97 = !{ptr @atkbd_interrupt._entry.14, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @atkbd_interrupt._entry_ptr.16, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.19, !96, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/keyboard/atkbd.c", i32 511, i32 3}
!105 = !{ptr @atkbd_interrupt._entry.21, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @atkbd_interrupt._entry_ptr.23, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"atkbd_platform_scancode_fixup", i1 false, i1 false}
!110 = !{!"../drivers/input/keyboard/atkbd.c", i32 249, i32 23}
!111 = distinct !{null, !112, !"xl_table", i1 false, i1 false}
!112 = !{!"../drivers/input/keyboard/atkbd.c", i32 343, i32 27}
!113 = !{ptr @atkbd_connect.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/input/keyboard/atkbd.c", i32 1237, i32 2}
!115 = !{ptr @.str.26, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @atkbd_connect.__key.27, !114, !"__key", i1 false, i1 false}
!117 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @atkbd_connect.__key.29, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/input/keyboard/atkbd.c", i32 1238, i32 2}
!120 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/keyboard/atkbd.c", i32 776, i32 4}
!123 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @atkbd_probe._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @atkbd_probe._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/keyboard/atkbd.c", i32 808, i32 3}
!128 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @atkbd_probe._entry.33, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @atkbd_probe._entry_ptr.36, !127, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"atkbd_skip_deactivate", i1 false, i1 false}
!132 = !{!"../drivers/input/keyboard/atkbd.c", i32 255, i32 13}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/keyboard/atkbd.c", i32 754, i32 3}
!135 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @atkbd_deactivate._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @atkbd_deactivate._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/keyboard/atkbd.c", i32 1208, i32 37}
!140 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/keyboard/atkbd.c", i32 1213, i32 3}
!142 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @atkbd_parse_fwnode_data.__UNIQUE_ID_ddebug248, !141, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/keyboard/atkbd.c", i32 1086, i32 3}
!146 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @atkbd_set_keycode_table.__UNIQUE_ID_ddebug247, !145, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!148 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/keyboard/atkbd.c", i32 1046, i32 37}
!150 = !{ptr @.str.45, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/keyboard/atkbd.c", i32 1055, i32 3}
!152 = !{ptr @.str.46, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @atkbd_get_keymap_from_fwnode._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @atkbd_get_keymap_from_fwnode._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @atkbd_unxlate_table, !156, !"atkbd_unxlate_table", i1 false, i1 false}
!156 = !{!"../drivers/input/keyboard/atkbd.c", i32 126, i32 29}
!157 = !{ptr @atkbd_set2_keycode, !158, !"atkbd_set2_keycode", i1 false, i1 false}
!158 = !{!"../drivers/input/keyboard/atkbd.c", i32 79, i32 29}
!159 = distinct !{null, !160, !"atkbd_scroll_keys", i1 false, i1 false}
!160 = !{!"../drivers/input/keyboard/atkbd.c", i32 189, i32 3}
!161 = !{ptr @atkbd_set3_keycode, !162, !"atkbd_set3_keycode", i1 false, i1 false}
!162 = !{!"../drivers/input/keyboard/atkbd.c", i32 110, i32 29}
!163 = distinct !{null, !164, !"atkbd_platform_fixup", i1 false, i1 false}
!164 = !{!"../drivers/input/keyboard/atkbd.c", i32 247, i32 15}
!165 = distinct !{null, !166, !"atkbd_platform_fixup_data", i1 false, i1 false}
!166 = !{!"../drivers/input/keyboard/atkbd.c", i32 248, i32 14}
!167 = !{ptr @.str.49, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/keyboard/atkbd.c", i32 1139, i32 5}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/keyboard/atkbd.c", i32 1142, i32 5}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/keyboard/atkbd.c", i32 1143, i32 25}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/keyboard/atkbd.c", i32 1143, i32 40}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/keyboard/atkbd.c", i32 1146, i32 4}
!177 = !{ptr @atkbd_attribute_group, !178, !"atkbd_attribute_group", i1 false, i1 false}
!178 = !{!"../drivers/input/keyboard/atkbd.c", i32 338, i32 31}
!179 = !{ptr @.str.54, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/keyboard/atkbd.c", i32 295, i32 1}
!181 = !{ptr @atkbd_attr_function_row_physmap, !180, !"atkbd_attr_function_row_physmap", i1 false, i1 false}
!182 = !{ptr @.str.55, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/keyboard/atkbd.c", i32 318, i32 51}
!184 = !{ptr @.str.56, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/keyboard/atkbd.c", i32 320, i32 50}
!186 = !{ptr @atkbd_attributes, !187, !"atkbd_attributes", i1 false, i1 false}
!187 = !{!"../drivers/input/keyboard/atkbd.c", i32 297, i32 26}
!188 = !{ptr @.str.57, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/keyboard/atkbd.c", i32 277, i32 1}
!190 = !{ptr @atkbd_attr_extra, !189, !"atkbd_attr_extra", i1 false, i1 false}
!191 = !{ptr @.str.58, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/keyboard/atkbd.c", i32 1434, i32 22}
!193 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/keyboard/atkbd.c", i32 278, i32 1}
!195 = !{ptr @atkbd_attr_force_release, !194, !"atkbd_attr_force_release", i1 false, i1 false}
!196 = !{ptr @.str.60, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/keyboard/atkbd.c", i32 1495, i32 45}
!198 = !{ptr @.str.61, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/input/keyboard/atkbd.c", i32 279, i32 1}
!200 = !{ptr @atkbd_attr_scroll, !199, !"atkbd_attr_scroll", i1 false, i1 false}
!201 = !{ptr @.str.62, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/keyboard/atkbd.c", i32 280, i32 1}
!203 = !{ptr @atkbd_attr_set, !202, !"atkbd_attr_set", i1 false, i1 false}
!204 = !{ptr @.str.63, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/input/keyboard/atkbd.c", i32 281, i32 1}
!206 = !{ptr @atkbd_attr_softrepeat, !205, !"atkbd_attr_softrepeat", i1 false, i1 false}
!207 = !{ptr @.str.64, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/input/keyboard/atkbd.c", i32 282, i32 1}
!209 = !{ptr @atkbd_attr_softraw, !208, !"atkbd_attr_softraw", i1 false, i1 false}
!210 = !{ptr @.str.65, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/keyboard/atkbd.c", i32 294, i32 1}
!212 = !{ptr @atkbd_attr_err_count, !211, !"atkbd_attr_err_count", i1 false, i1 false}
!213 = !{ptr @.str.66, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/keyboard/atkbd.c", i32 1725, i32 22}
!215 = !{ptr @.str.67, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/keyboard/atkbd.c", i32 735, i32 3}
!217 = !{ptr @.str.68, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @atkbd_activate._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @atkbd_activate._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/input/keyboard/atkbd.c", i32 1319, i32 3}
!222 = !{ptr @.str.70, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @atkbd_reconnect.__UNIQUE_ID_ddebug249, !221, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!224 = distinct !{null, !225, !"atkbd_dmi_quirk_table", i1 false, i1 false}
!225 = !{!"../drivers/input/keyboard/atkbd.c", i32 1755, i32 35}
!226 = distinct !{null, !227, !"atkbd_dell_laptop_forced_release_keys", i1 false, i1 false}
!227 = !{!"../drivers/input/keyboard/atkbd.c", i32 974, i32 21}
!228 = distinct !{null, !229, !"atkbd_hp_forced_release_keys", i1 false, i1 false}
!229 = !{!"../drivers/input/keyboard/atkbd.c", i32 982, i32 21}
!230 = distinct !{null, !231, !"atkbd_volume_forced_release_keys", i1 false, i1 false}
!231 = !{!"../drivers/input/keyboard/atkbd.c", i32 1018, i32 21}
!232 = distinct !{null, !233, !"atkbd_samsung_forced_release_keys", i1 false, i1 false}
!233 = !{!"../drivers/input/keyboard/atkbd.c", i32 989, i32 21}
!234 = distinct !{null, !235, !"atkbd_amilo_pi3525_forced_release_keys", i1 false, i1 false}
!235 = !{!"../drivers/input/keyboard/atkbd.c", i32 996, i32 21}
!236 = distinct !{null, !237, !"atkbd_amilo_xi3650_forced_release_keys", i1 false, i1 false}
!237 = !{!"../drivers/input/keyboard/atkbd.c", i32 1003, i32 21}
!238 = distinct !{null, !239, !"atkdb_soltech_ta12_forced_release_keys", i1 false, i1 false}
!239 = !{!"../drivers/input/keyboard/atkbd.c", i32 1010, i32 21}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 2148802945, i64 2148802950, i64 2148802963, i64 2148803007, i64 2148803041, i64 2148803062}
!250 = !{i8 0, i8 2}
!251 = !{!"branch_weights", i32 2000, i32 1}
!252 = !{!"auto-init"}
!253 = !{i64 2153957531}

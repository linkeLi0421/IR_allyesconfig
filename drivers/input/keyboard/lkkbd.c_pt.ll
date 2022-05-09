; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/lkkbd.c_pt.bc'
source_filename = "../drivers/input/keyboard/lkkbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.lkkbd = type { [256 x i16], i32, [6 x i8], ptr, ptr, %struct.work_struct, [64 x i8], [32 x i8], i8, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [51 x i8] c"lkkbd.author=Jan-Benedict Glaw <jbglaw@lug-owl.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [37 x i8] c"lkkbd.description=LK keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [40 x i8] c"lkkbd.file=drivers/input/keyboard/lkkbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [18 x i8] c"lkkbd.license=GPL\00", section ".modinfo", align 1
@__param_str_bell_volume = internal constant [18 x i8] c"lkkbd.bell_volume\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bell_volume = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_bell_volume = internal constant %struct.kernel_param { ptr @__param_str_bell_volume, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @bell_volume } }, section "__param", align 4
@__UNIQUE_ID_bell_volumetype231 = internal constant [31 x i8] c"lkkbd.parmtype=bell_volume:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bell_volume232 = internal constant [59 x i8] c"lkkbd.parm=bell_volume:Bell volume (in %). default is 100%\00", section ".modinfo", align 1
@__param_str_keyclick_volume = internal constant [22 x i8] c"lkkbd.keyclick_volume\00", align 1
@keyclick_volume = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_keyclick_volume = internal constant %struct.kernel_param { ptr @__param_str_keyclick_volume, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @keyclick_volume } }, section "__param", align 4
@__UNIQUE_ID_keyclick_volumetype233 = internal constant [35 x i8] c"lkkbd.parmtype=keyclick_volume:int\00", section ".modinfo", align 1
@__UNIQUE_ID_keyclick_volume234 = internal constant [67 x i8] c"lkkbd.parm=keyclick_volume:Keyclick volume (in %), default is 100%\00", section ".modinfo", align 1
@__param_str_ctrlclick_volume = internal constant [23 x i8] c"lkkbd.ctrlclick_volume\00", align 1
@ctrlclick_volume = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_ctrlclick_volume = internal constant %struct.kernel_param { ptr @__param_str_ctrlclick_volume, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @ctrlclick_volume } }, section "__param", align 4
@__UNIQUE_ID_ctrlclick_volumetype235 = internal constant [36 x i8] c"lkkbd.parmtype=ctrlclick_volume:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ctrlclick_volume236 = internal constant [69 x i8] c"lkkbd.parm=ctrlclick_volume:Ctrlclick volume (in %), default is 100%\00", section ".modinfo", align 1
@__param_str_lk201_compose_is_alt = internal constant [27 x i8] c"lkkbd.lk201_compose_is_alt\00", align 1
@lk201_compose_is_alt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lk201_compose_is_alt = internal constant %struct.kernel_param { ptr @__param_str_lk201_compose_is_alt, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lk201_compose_is_alt } }, section "__param", align 4
@__UNIQUE_ID_lk201_compose_is_alttype237 = internal constant [40 x i8] c"lkkbd.parmtype=lk201_compose_is_alt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lk201_compose_is_alt238 = internal constant [91 x i8] c"lkkbd.parm=lk201_compose_is_alt:If set non-zero, LK201' Compose key will act as an Alt key\00", section ".modinfo", align 1
@__initcall__kmod_lkkbd__239_721_lkkbd_drv_init6 = internal global ptr @lkkbd_drv_init, section ".initcall6.init", align 4
@lkkbd_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @lkkbd_serio_ids, i8 0, ptr null, ptr @lkkbd_interrupt, ptr @lkkbd_connect, ptr null, ptr null, ptr @lkkbd_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_lkkbd_drv_exit = internal global ptr @lkkbd_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lkkbd\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LK keyboard driver\00", [45 x i8] zeroinitializer }, align 32
@lkkbd_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 40 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@lkkbd_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Unknown key with scancode 0x%02x on %s.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lkkbd_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/keyboard/lkkbd.c\00", [33 x i8] zeroinitializer }, align 32
@lkkbd_interrupt._entry_ptr = internal global ptr @lkkbd_interrupt._entry, section ".printk_index", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEC LK201 keyboard\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEC LK401 keyboard\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown DEC keyboard\00", [43 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013lkkbd: keyboard on %s is unknown, please report to Jan-Benedict Glaw <jbglaw@lug-owl.de>\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lkkbd_detection_done\00", [43 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr = internal global ptr @lkkbd_detection_done._entry, section ".printk_index", align 4
@lkkbd_detection_done._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013lkkbd: keyboard ID'ed as:\00", [36 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.12 = internal global ptr @lkkbd_detection_done._entry.10, section ".printk_index", align 4
@lkkbd_detection_done._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" 0x%02x\00", [24 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.15 = internal global ptr @lkkbd_detection_done._entry.13, section ".printk_index", align 4
@lkkbd_detection_done._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.18 = internal global ptr @lkkbd_detection_done._entry.16, section ".printk_index", align 4
@lkkbd_detection_done._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.4, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016lkkbd: keyboard on %s identified as: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.21 = internal global ptr @lkkbd_detection_done._entry.19, section ".printk_index", align 4
@lkkbd_detection_done._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.4, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013lkkbd: Stuck key on keyboard at %s\0A\00", [58 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.24 = internal global ptr @lkkbd_detection_done._entry.22, section ".printk_index", align 4
@lkkbd_detection_done._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.4, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013lkkbd: Selftest failed on keyboard at %s, keyboard may not work properly\0A\00", [52 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.27 = internal global ptr @lkkbd_detection_done._entry.25, section ".printk_index", align 4
@lkkbd_detection_done._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.4, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013lkkbd: Unknown error %02x on keyboard at %s\0A\00", [49 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.30 = internal global ptr @lkkbd_detection_done._entry.28, section ".printk_index", align 4
@lkkbd_detection_done._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.4, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Scancode of stuck key is 0x%02x, keycode is 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@lkkbd_detection_done._entry_ptr.33 = internal global ptr @lkkbd_detection_done._entry.31, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lkkbd_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(work_completion)(&lk->tq)\00", [37 x i8] zeroinitializer }, align 32
@lkkbd_keycode = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 59, i16 60, i16 61, i16 62, i16 63, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 65, i16 66, i16 67, i16 68, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 87, i16 88, i16 183, i16 184, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 185, i16 186, i16 0, i16 0, i16 187, i16 188, i16 189, i16 190, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 136, i16 110, i16 111, i16 353, i16 104, i16 109, i16 0, i16 0, i16 82, i16 0, i16 83, i16 96, i16 79, i16 80, i16 81, i16 75, i16 76, i16 77, i16 121, i16 71, i16 72, i16 73, i16 74, i16 148, i16 149, i16 202, i16 203, i16 0, i16 0, i16 105, i16 106, i16 108, i16 103, i16 54, i16 56, i16 127, i16 42, i16 29, i16 58, i16 127, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 14, i16 28, i16 15, i16 1, i16 2, i16 16, i16 30, i16 44, i16 0, i16 3, i16 17, i16 31, i16 45, i16 86, i16 0, i16 4, i16 18, i16 32, i16 46, i16 0, i16 5, i16 19, i16 33, i16 47, i16 57, i16 0, i16 6, i16 20, i16 34, i16 48, i16 0, i16 7, i16 21, i16 35, i16 49, i16 0, i16 8, i16 22, i16 36, i16 50, i16 0, i16 9, i16 23, i16 37, i16 51, i16 0, i16 10, i16 24, i16 38, i16 52, i16 0, i16 11, i16 25, i16 0, i16 39, i16 53, i16 0, i16 13, i16 27, i16 43, i16 0, i16 12, i16 26, i16 40, i16 0, i16 0, i16 0, i16 0], [128 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEC LK keyboard\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lkkbd_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s(): Got unknown type %d, code %d, value %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lkkbd_event\00", [20 x i8] zeroinitializer }, align 32
@lkkbd_event._entry_ptr = internal global ptr @lkkbd_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 61, i64 62]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"bell_volume\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 74, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"keyclick_volume\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 78, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"ctrlclick_volume\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 82, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"lk201_compose_is_alt\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 86, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"lkkbd_drv\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 710, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 721, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 714, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"lkkbd_serio_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 698, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 479, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 362, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 369, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 373, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 374, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 377, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 379, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 380, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 384, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 396, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 401, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 407, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 417, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 623, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"lkkbd_keycode\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 143, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 629, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 630, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [34 x i8] c"../drivers/input/keyboard/lkkbd.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 555, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_bell_volume232, ptr @__UNIQUE_ID_bell_volumetype231, ptr @__UNIQUE_ID_ctrlclick_volume236, ptr @__UNIQUE_ID_ctrlclick_volumetype235, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_keyclick_volume234, ptr @__UNIQUE_ID_keyclick_volumetype233, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_lk201_compose_is_alt238, ptr @__UNIQUE_ID_lk201_compose_is_alttype237, ptr @__exitcall_lkkbd_drv_exit, ptr @__initcall__kmod_lkkbd__239_721_lkkbd_drv_init6, ptr @__param_bell_volume, ptr @__param_ctrlclick_volume, ptr @__param_keyclick_volume, ptr @__param_lk201_compose_is_alt, ptr @lkkbd_detection_done._entry, ptr @lkkbd_detection_done._entry.10, ptr @lkkbd_detection_done._entry.13, ptr @lkkbd_detection_done._entry.16, ptr @lkkbd_detection_done._entry.19, ptr @lkkbd_detection_done._entry.22, ptr @lkkbd_detection_done._entry.25, ptr @lkkbd_detection_done._entry.28, ptr @lkkbd_detection_done._entry.31, ptr @lkkbd_detection_done._entry_ptr, ptr @lkkbd_detection_done._entry_ptr.12, ptr @lkkbd_detection_done._entry_ptr.15, ptr @lkkbd_detection_done._entry_ptr.18, ptr @lkkbd_detection_done._entry_ptr.21, ptr @lkkbd_detection_done._entry_ptr.24, ptr @lkkbd_detection_done._entry_ptr.27, ptr @lkkbd_detection_done._entry_ptr.30, ptr @lkkbd_detection_done._entry_ptr.33, ptr @lkkbd_drv_exit, ptr @lkkbd_event._entry, ptr @lkkbd_event._entry_ptr, ptr @lkkbd_interrupt._entry, ptr @lkkbd_interrupt._entry_ptr, ptr @bell_volume, ptr @keyclick_volume, ptr @ctrlclick_volume, ptr @lk201_compose_is_alt, ptr @lkkbd_drv, ptr @.str, ptr @.str.1, ptr @lkkbd_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @lkkbd_connect.__key, ptr @.str.34, ptr @lkkbd_keycode, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bell_volume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyclick_volume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrlclick_volume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lk201_compose_is_alt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_detection_done._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_keycode to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkkbd_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lkkbd_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @lkkbd_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lkkbd_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_unregister_driver(ptr noundef nonnull @lkkbd_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkkbd_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ignore_bytes = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ignore_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ignore_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end3, label %if.end8

do.end3:                                          ; preds = %entry
  %dec = add nsw i32 %5, -1
  %6 = ptrtoint ptr %ignore_bytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %ignore_bytes, align 4
  %sub = sub nsw i32 6, %5
  %arrayidx = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %data, ptr %arrayidx, align 1
  %8 = load i32, ptr %ignore_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.end3
  %arrayidx.i70 = getelementptr [256 x i16], ptr %1, i32 0, i32 177
  %9 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 127, ptr %arrayidx.i70, align 2
  %arrayidx1.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.then7
  %name.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @.str.5, i32 noundef 64) #8
  %13 = load i32, ptr @lk201_compose_is_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.end34.i_crit_edge, label %if.then.i

sw.bb.i.do.end34.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 56, ptr %arrayidx.i70, align 2
  br label %do.end34.i

sw.bb4.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %name5.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 6
  %call7.i = tail call i32 @strlcpy(ptr noundef %name5.i, ptr noundef nonnull @.str.6, i32 noundef 64) #8
  br label %do.end34.i

sw.default.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %name8.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 6
  %call10.i = tail call i32 @strlcpy(ptr noundef %name8.i, ptr noundef nonnull @.str.7, i32 noundef 64) #8
  %phys.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 7
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %phys.i) #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  %arrayidx24.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 0
  %15 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %16 to i32
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.i) #11
  %arrayidx24.1.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24.1.i, align 1
  %conv25.1.i = zext i8 %18 to i32
  %call26.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.1.i) #11
  %arrayidx24.2.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24.2.i, align 1
  %conv25.2.i = zext i8 %20 to i32
  %call26.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.2.i) #11
  %arrayidx24.3.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx24.3.i, align 1
  %conv25.3.i = zext i8 %22 to i32
  %call26.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.3.i) #11
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i, align 1
  %conv25.4.i = zext i8 %24 to i32
  %call26.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.4.i) #11
  %arrayidx24.5.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.5.i, align 1
  %conv25.5.i = zext i8 %26 to i32
  %call26.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv25.5.i) #11
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end34.i

do.end34.i:                                       ; preds = %sw.default.i, %sw.bb4.i, %if.then.i, %sw.bb.i.do.end34.i_crit_edge
  %phys36.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 7
  %name38.i = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 6
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %phys36.i, ptr noundef %name38.i) #11
  %arrayidx42.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx42.i, align 2
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %28, label %do.end63.i [
    i8 0, label %do.end34.i.cleanup_crit_edge
    i8 61, label %do.end47.i
    i8 62, label %do.end55.i
  ]

do.end34.i.cleanup_crit_edge:                     ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47.i:                                       ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %phys36.i) #11
  br label %sw.epilog71.i

do.end55.i:                                       ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %phys36.i) #11
  br label %sw.epilog71.i

do.end63.i:                                       ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i = zext i8 %28 to i32
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv43.i, ptr noundef %phys36.i) #11
  br label %sw.epilog71.i

sw.epilog71.i:                                    ; preds = %do.end63.i, %do.end55.i, %do.end47.i
  %30 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr.i = load i8, ptr %arrayidx42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %.pr.i)
  %cmp75.i = icmp eq i8 %.pr.i, 61
  br i1 %cmp75.i, label %land.lhs.true.i, label %sw.epilog71.i.cleanup_crit_edge

sw.epilog71.i.cleanup_crit_edge:                  ; preds = %sw.epilog71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.epilog71.i
  %arrayidx78.i = getelementptr %struct.lkkbd, ptr %1, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp80.not.i = icmp eq i8 %32, 0
  br i1 %cmp80.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.end85.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv79.i = zext i8 %32 to i32
  %arrayidx93.i = getelementptr [256 x i16], ptr %1, i32 0, i32 %conv79.i
  %33 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx93.i, align 2
  %conv94.i = zext i16 %34 to i32
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv79.i, i32 noundef %conv94.i) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %conv = zext i8 %data to i32
  %35 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %data, label %sw.default [
    i8 -77, label %if.end8.for.body_crit_edge
    i8 1, label %do.end17
    i8 -76, label %if.end8.cleanup_crit_edge
    i8 -75, label %if.end8.cleanup_crit_edge72
    i8 -74, label %if.end8.cleanup_crit_edge73
    i8 -73, label %if.end8.cleanup_crit_edge74
    i8 -72, label %if.end8.cleanup_crit_edge75
    i8 -71, label %if.end8.cleanup_crit_edge76
    i8 -70, label %if.end8.cleanup_crit_edge77
    i8 -69, label %if.end8.cleanup_crit_edge78
  ]

if.end8.cleanup_crit_edge78:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge77:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge76:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge75:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge74:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge73:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge72:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx12 = getelementptr [256 x i16], ptr %1, i32 0, i32 %i.071
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %37 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv13, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %id19 = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %ignore_bytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %ignore_bytes, align 4
  %39 = ptrtoint ptr %id19 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %id19, align 1
  %tq = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %tq) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end8
  %arrayidx30 = getelementptr [256 x i16], ptr %1, i32 0, i32 %conv
  %41 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp32.not = icmp eq i16 %42, 0
  br i1 %cmp32.not, label %do.end38, label %if.then34

if.then34:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = zext i16 %42 to i32
  %key = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 27
  %div3.i = lshr i32 %conv31, 5
  %arrayidx.i = getelementptr i32, ptr %key, i32 %div3.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv31, 31
  %45 = xor i32 %44, -1
  %46 = lshr i32 %45, %and.i
  %47 = and i32 %46, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv31, i32 noundef %47) #8
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

do.end38:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then34, %do.end17, %for.end, %if.end8.cleanup_crit_edge, %if.end8.cleanup_crit_edge72, %if.end8.cleanup_crit_edge73, %if.end8.cleanup_crit_edge74, %if.end8.cleanup_crit_edge75, %if.end8.cleanup_crit_edge76, %if.end8.cleanup_crit_edge77, %if.end8.cleanup_crit_edge78, %do.end85.i, %land.lhs.true.i.cleanup_crit_edge, %sw.epilog71.i.cleanup_crit_edge, %do.end34.i.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkkbd_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 688) #12
  %call1 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end:                                           ; preds = %entry
  %serio3 = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 8
  %dev = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %dev, align 4
  %tq = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %tq, i32 noundef 0) #8
  %3 = ptrtoint ptr %tq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %tq, align 4
  %lockdep_map = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @lkkbd_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7 = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lkkbd_reinit, ptr %func, align 8
  %7 = load i32, ptr @bell_volume, align 4
  %bell_volume = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %bell_volume to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bell_volume, align 4
  %9 = load i32, ptr @keyclick_volume, align 4
  %keyclick_volume = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %keyclick_volume to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %keyclick_volume, align 8
  %11 = load i32, ptr @ctrlclick_volume, align 4
  %ctrlclick_volume = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %ctrlclick_volume to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ctrlclick_volume, align 4
  %13 = call ptr @memcpy(ptr %call7.i.i, ptr @lkkbd_keycode, i32 512)
  %name = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 6
  %call10 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef 64) #8
  %phys = getelementptr inbounds %struct.lkkbd, ptr %call7.i.i, i32 0, i32 7
  %phys12 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %phys12)
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %call1, align 8
  %phys20 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %phys20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %phys, ptr %phys20, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 40, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 256, ptr %version, align 2
  %dev24 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev24, ptr %parent, align 8
  %event = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 34
  %21 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lkkbd_event, ptr %event, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %23 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %evbit, align 4
  %or.i124 = or i32 %24, 1441794
  store i32 %or.i124, ptr %evbit, align 4
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 10
  %25 = ptrtoint ptr %ledbit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ledbit, align 4
  %or.i128 = or i32 %26, 46
  store i32 %or.i128, ptr %ledbit, align 4
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 11
  %27 = ptrtoint ptr %sndbit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sndbit, align 4
  %or.i130 = or i32 %28, 3
  store i32 %or.i130, ptr %sndbit, align 4
  %keycode45 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 17
  %29 = ptrtoint ptr %keycode45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %keycode45, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 16
  %30 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 15
  %31 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256, ptr %keycodemax, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0134 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i16], ptr %call7.i.i, i32 0, i32 %i.0134
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %33 to i32
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  %or.i131 = or i32 %shl.i, %35
  store i32 %or.i131, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %36 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %keybit, align 4
  %and.i = and i32 %37, -2
  store i32 %and.i, ptr %keybit, align 4
  %driver_data.i.i132 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %38 = ptrtoint ptr %driver_data.i.i132 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %driver_data.i.i132, align 4
  %call50 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %for.end.fail2_crit_edge

for.end.fail2_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end53:                                         ; preds = %for.end
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %call55 = tail call i32 @input_register_device(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %fail3

if.end58:                                         ; preds = %if.end53
  %41 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serio3, align 8
  %write.i = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end58.cleanup_crit_edge, label %if.then.i

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %44(ptr noundef %42, i8 noundef zeroext -3) #8
  br label %cleanup

fail3:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_close(ptr noundef %serio) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %for.end.fail2_crit_edge
  %err.0 = phi i32 [ %call50, %for.end.fail2_crit_edge ], [ %call55, %fail3 ]
  %45 = ptrtoint ptr %driver_data.i.i132 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %driver_data.i.i132, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.then.i, %if.end58.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lkkbd_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.input_get_device.exit_crit_edge, label %cond.true.i

entry.input_get_device.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_get_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  %call.i = tail call ptr @get_device(ptr noundef %dev1.i) #8
  br label %input_get_device.exit

input_get_device.exit:                            ; preds = %cond.true.i, %entry.input_get_device.exit_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  tail call void @serio_close(ptr noundef %serio) #8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool.not.i10 = icmp eq ptr %8, null
  br i1 %tobool.not.i10, label %input_get_device.exit.input_put_device.exit_crit_edge, label %if.then.i

input_get_device.exit.input_put_device.exit_crit_edge: ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_put_device.exit

if.then.i:                                        ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i11 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i11) #8
  br label %input_put_device.exit

input_put_device.exit:                            ; preds = %if.then.i, %input_get_device.exit.input_put_device.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lkkbd_reinit(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -532
  %serio = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.serio_write.exit_crit_edge, label %if.then.i

entry.serio_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %1, i8 noundef zeroext -85) #8
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %entry.serio_write.exit_crit_edge
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 4
  %write.i34 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %write.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i34, align 8
  %tobool.not.i35 = icmp eq ptr %7, null
  br i1 %tobool.not.i35, label %serio_write.exit.serio_write.exit38_crit_edge, label %if.then.i37

serio_write.exit.serio_write.exit38_crit_edge:    ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit38

if.then.i37:                                      ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i36 = tail call i32 %7(ptr noundef %5, i8 noundef zeroext -45) #8
  br label %serio_write.exit38

serio_write.exit38:                               ; preds = %if.then.i37, %serio_write.exit.serio_write.exit38_crit_edge
  tail call fastcc void @lkkbd_toggle_leds(ptr noundef %add.ptr)
  %8 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serio, align 4
  %write.i39 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i39, align 8
  %tobool.not.i40 = icmp eq ptr %11, null
  br i1 %tobool.not.i40, label %serio_write.exit38.serio_write.exit43_crit_edge, label %if.then.i42

serio_write.exit38.serio_write.exit43_crit_edge:  ; preds = %serio_write.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit43

if.then.i42:                                      ; preds = %serio_write.exit38
  call void @__sanitizer_cov_trace_pc() #10
  %call.i41 = tail call i32 %11(ptr noundef %9, i8 noundef zeroext -23) #8
  br label %serio_write.exit43

serio_write.exit43:                               ; preds = %if.then.i42, %serio_write.exit38.serio_write.exit43_crit_edge
  %12 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serio, align 4
  %write.i44 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %write.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i44, align 8
  %tobool.not.i45 = icmp eq ptr %15, null
  br i1 %tobool.not.i45, label %serio_write.exit43.serio_write.exit48_crit_edge, label %if.then.i47

serio_write.exit43.serio_write.exit48_crit_edge:  ; preds = %serio_write.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48

if.then.i47:                                      ; preds = %serio_write.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46 = tail call i32 %15(ptr noundef %13, i8 noundef zeroext -114) #8
  br label %serio_write.exit48

serio_write.exit48:                               ; preds = %if.then.i47, %serio_write.exit43.serio_write.exit48_crit_edge
  %16 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serio, align 4
  %write.i44.1 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %write.i44.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i44.1, align 8
  %tobool.not.i45.1 = icmp eq ptr %19, null
  br i1 %tobool.not.i45.1, label %serio_write.exit48.serio_write.exit48.1_crit_edge, label %if.then.i47.1

serio_write.exit48.serio_write.exit48.1_crit_edge: ; preds = %serio_write.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.1

if.then.i47.1:                                    ; preds = %serio_write.exit48
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.1 = tail call i32 %19(ptr noundef %17, i8 noundef zeroext -106) #8
  br label %serio_write.exit48.1

serio_write.exit48.1:                             ; preds = %if.then.i47.1, %serio_write.exit48.serio_write.exit48.1_crit_edge
  %20 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serio, align 4
  %write.i44.2 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %write.i44.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i44.2, align 8
  %tobool.not.i45.2 = icmp eq ptr %23, null
  br i1 %tobool.not.i45.2, label %serio_write.exit48.1.serio_write.exit48.2_crit_edge, label %if.then.i47.2

serio_write.exit48.1.serio_write.exit48.2_crit_edge: ; preds = %serio_write.exit48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.2

if.then.i47.2:                                    ; preds = %serio_write.exit48.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.2 = tail call i32 %23(ptr noundef %21, i8 noundef zeroext -98) #8
  br label %serio_write.exit48.2

serio_write.exit48.2:                             ; preds = %if.then.i47.2, %serio_write.exit48.1.serio_write.exit48.2_crit_edge
  %24 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serio, align 4
  %write.i44.3 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %write.i44.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i44.3, align 8
  %tobool.not.i45.3 = icmp eq ptr %27, null
  br i1 %tobool.not.i45.3, label %serio_write.exit48.2.serio_write.exit48.3_crit_edge, label %if.then.i47.3

serio_write.exit48.2.serio_write.exit48.3_crit_edge: ; preds = %serio_write.exit48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.3

if.then.i47.3:                                    ; preds = %serio_write.exit48.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.3 = tail call i32 %27(ptr noundef %25, i8 noundef zeroext -90) #8
  br label %serio_write.exit48.3

serio_write.exit48.3:                             ; preds = %if.then.i47.3, %serio_write.exit48.2.serio_write.exit48.3_crit_edge
  %28 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serio, align 4
  %write.i44.4 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %write.i44.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i44.4, align 8
  %tobool.not.i45.4 = icmp eq ptr %31, null
  br i1 %tobool.not.i45.4, label %serio_write.exit48.3.serio_write.exit48.4_crit_edge, label %if.then.i47.4

serio_write.exit48.3.serio_write.exit48.4_crit_edge: ; preds = %serio_write.exit48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.4

if.then.i47.4:                                    ; preds = %serio_write.exit48.3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.4 = tail call i32 %31(ptr noundef %29, i8 noundef zeroext -82) #8
  br label %serio_write.exit48.4

serio_write.exit48.4:                             ; preds = %if.then.i47.4, %serio_write.exit48.3.serio_write.exit48.4_crit_edge
  %32 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serio, align 4
  %write.i44.5 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %write.i44.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i44.5, align 8
  %tobool.not.i45.5 = icmp eq ptr %35, null
  br i1 %tobool.not.i45.5, label %serio_write.exit48.4.serio_write.exit48.5_crit_edge, label %if.then.i47.5

serio_write.exit48.4.serio_write.exit48.5_crit_edge: ; preds = %serio_write.exit48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.5

if.then.i47.5:                                    ; preds = %serio_write.exit48.4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.5 = tail call i32 %35(ptr noundef %33, i8 noundef zeroext -74) #8
  br label %serio_write.exit48.5

serio_write.exit48.5:                             ; preds = %if.then.i47.5, %serio_write.exit48.4.serio_write.exit48.5_crit_edge
  %36 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serio, align 4
  %write.i44.6 = getelementptr inbounds %struct.serio, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %write.i44.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i44.6, align 8
  %tobool.not.i45.6 = icmp eq ptr %39, null
  br i1 %tobool.not.i45.6, label %serio_write.exit48.5.serio_write.exit48.6_crit_edge, label %if.then.i47.6

serio_write.exit48.5.serio_write.exit48.6_crit_edge: ; preds = %serio_write.exit48.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.6

if.then.i47.6:                                    ; preds = %serio_write.exit48.5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.6 = tail call i32 %39(ptr noundef %37, i8 noundef zeroext -66) #8
  br label %serio_write.exit48.6

serio_write.exit48.6:                             ; preds = %if.then.i47.6, %serio_write.exit48.5.serio_write.exit48.6_crit_edge
  %40 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serio, align 4
  %write.i44.7 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %write.i44.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i44.7, align 8
  %tobool.not.i45.7 = icmp eq ptr %43, null
  br i1 %tobool.not.i45.7, label %serio_write.exit48.6.serio_write.exit48.7_crit_edge, label %if.then.i47.7

serio_write.exit48.6.serio_write.exit48.7_crit_edge: ; preds = %serio_write.exit48.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.7

if.then.i47.7:                                    ; preds = %serio_write.exit48.6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.7 = tail call i32 %43(ptr noundef %41, i8 noundef zeroext -58) #8
  br label %serio_write.exit48.7

serio_write.exit48.7:                             ; preds = %if.then.i47.7, %serio_write.exit48.6.serio_write.exit48.7_crit_edge
  %44 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serio, align 4
  %write.i44.8 = getelementptr inbounds %struct.serio, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %write.i44.8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i44.8, align 8
  %tobool.not.i45.8 = icmp eq ptr %47, null
  br i1 %tobool.not.i45.8, label %serio_write.exit48.7.serio_write.exit48.8_crit_edge, label %if.then.i47.8

serio_write.exit48.7.serio_write.exit48.8_crit_edge: ; preds = %serio_write.exit48.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.8

if.then.i47.8:                                    ; preds = %serio_write.exit48.7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.8 = tail call i32 %47(ptr noundef %45, i8 noundef zeroext -50) #8
  br label %serio_write.exit48.8

serio_write.exit48.8:                             ; preds = %if.then.i47.8, %serio_write.exit48.7.serio_write.exit48.8_crit_edge
  %48 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serio, align 4
  %write.i44.9 = getelementptr inbounds %struct.serio, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %write.i44.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i44.9, align 8
  %tobool.not.i45.9 = icmp eq ptr %51, null
  br i1 %tobool.not.i45.9, label %serio_write.exit48.8.serio_write.exit48.9_crit_edge, label %if.then.i47.9

serio_write.exit48.8.serio_write.exit48.9_crit_edge: ; preds = %serio_write.exit48.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.9

if.then.i47.9:                                    ; preds = %serio_write.exit48.8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.9 = tail call i32 %51(ptr noundef %49, i8 noundef zeroext -42) #8
  br label %serio_write.exit48.9

serio_write.exit48.9:                             ; preds = %if.then.i47.9, %serio_write.exit48.8.serio_write.exit48.9_crit_edge
  %52 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %serio, align 4
  %write.i44.10 = getelementptr inbounds %struct.serio, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %write.i44.10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i44.10, align 8
  %tobool.not.i45.10 = icmp eq ptr %55, null
  br i1 %tobool.not.i45.10, label %serio_write.exit48.9.serio_write.exit48.10_crit_edge, label %if.then.i47.10

serio_write.exit48.9.serio_write.exit48.10_crit_edge: ; preds = %serio_write.exit48.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.10

if.then.i47.10:                                   ; preds = %serio_write.exit48.9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.10 = tail call i32 %55(ptr noundef %53, i8 noundef zeroext -34) #8
  br label %serio_write.exit48.10

serio_write.exit48.10:                            ; preds = %if.then.i47.10, %serio_write.exit48.9.serio_write.exit48.10_crit_edge
  %56 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %serio, align 4
  %write.i44.11 = getelementptr inbounds %struct.serio, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %write.i44.11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i44.11, align 8
  %tobool.not.i45.11 = icmp eq ptr %59, null
  br i1 %tobool.not.i45.11, label %serio_write.exit48.10.serio_write.exit48.11_crit_edge, label %if.then.i47.11

serio_write.exit48.10.serio_write.exit48.11_crit_edge: ; preds = %serio_write.exit48.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.11

if.then.i47.11:                                   ; preds = %serio_write.exit48.10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.11 = tail call i32 %59(ptr noundef %57, i8 noundef zeroext -26) #8
  br label %serio_write.exit48.11

serio_write.exit48.11:                            ; preds = %if.then.i47.11, %serio_write.exit48.10.serio_write.exit48.11_crit_edge
  %60 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %serio, align 4
  %write.i44.12 = getelementptr inbounds %struct.serio, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %write.i44.12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i44.12, align 8
  %tobool.not.i45.12 = icmp eq ptr %63, null
  br i1 %tobool.not.i45.12, label %serio_write.exit48.11.serio_write.exit48.12_crit_edge, label %if.then.i47.12

serio_write.exit48.11.serio_write.exit48.12_crit_edge: ; preds = %serio_write.exit48.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.12

if.then.i47.12:                                   ; preds = %serio_write.exit48.11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.12 = tail call i32 %63(ptr noundef %61, i8 noundef zeroext -18) #8
  br label %serio_write.exit48.12

serio_write.exit48.12:                            ; preds = %if.then.i47.12, %serio_write.exit48.11.serio_write.exit48.12_crit_edge
  %64 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %serio, align 4
  %write.i44.13 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %write.i44.13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i44.13, align 8
  %tobool.not.i45.13 = icmp eq ptr %67, null
  br i1 %tobool.not.i45.13, label %serio_write.exit48.12.serio_write.exit48.13_crit_edge, label %if.then.i47.13

serio_write.exit48.12.serio_write.exit48.13_crit_edge: ; preds = %serio_write.exit48.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit48.13

if.then.i47.13:                                   ; preds = %serio_write.exit48.12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46.13 = tail call i32 %67(ptr noundef %65, i8 noundef zeroext -10) #8
  br label %serio_write.exit48.13

serio_write.exit48.13:                            ; preds = %if.then.i47.13, %serio_write.exit48.12.serio_write.exit48.13_crit_edge
  %68 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %serio, align 4
  %write.i49 = getelementptr inbounds %struct.serio, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %write.i49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write.i49, align 8
  %tobool.not.i50 = icmp eq ptr %71, null
  br i1 %tobool.not.i50, label %serio_write.exit48.13.serio_write.exit53_crit_edge, label %if.then.i52

serio_write.exit48.13.serio_write.exit53_crit_edge: ; preds = %serio_write.exit48.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit53

if.then.i52:                                      ; preds = %serio_write.exit48.13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i51 = tail call i32 %71(ptr noundef %69, i8 noundef zeroext 35) #8
  br label %serio_write.exit53

serio_write.exit53:                               ; preds = %if.then.i52, %serio_write.exit48.13.serio_write.exit53_crit_edge
  %72 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %serio, align 4
  %write.i54 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %write.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write.i54, align 8
  %tobool.not.i55 = icmp eq ptr %75, null
  br i1 %tobool.not.i55, label %serio_write.exit53.serio_write.exit58_crit_edge, label %if.then.i57

serio_write.exit53.serio_write.exit58_crit_edge:  ; preds = %serio_write.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit58

if.then.i57:                                      ; preds = %serio_write.exit53
  call void @__sanitizer_cov_trace_pc() #10
  %bell_volume = getelementptr i8, ptr %work, i32 144
  %76 = ptrtoint ptr %bell_volume to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bell_volume, align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0) #8
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %79)
  %cmp25.i = icmp ugt i32 %79, 87
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %79)
  %cmp22.i = icmp ugt i32 %79, 74
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %79)
  %cmp19.i = icmp ugt i32 %79, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %79)
  %cmp16.i = icmp ugt i32 %79, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %79)
  %cmp13.i = icmp ugt i32 %79, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %79)
  %cmp10.i = icmp ugt i32 %79, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %79)
  %cmp7.i = icmp ugt i32 %79, 12
  %ret.1.op.i = select i1 %cmp7.i, i8 -122, i8 -121
  %ret.2.op.i = select i1 %cmp10.i, i8 -123, i8 %ret.1.op.i
  %ret.3.op.i = select i1 %cmp13.i, i8 -124, i8 %ret.2.op.i
  %ret.4.op.i = select i1 %cmp16.i, i8 -125, i8 %ret.3.op.i
  %ret.5.op.i = select i1 %cmp19.i, i8 -126, i8 %ret.4.op.i
  %ret.6.op.i = select i1 %cmp22.i, i8 -127, i8 %ret.5.op.i
  %or.i = select i1 %cmp25.i, i8 -128, i8 %ret.6.op.i
  %call.i56 = tail call i32 %75(ptr noundef %73, i8 noundef zeroext %or.i) #8
  br label %serio_write.exit58

serio_write.exit58:                               ; preds = %if.then.i57, %serio_write.exit53.serio_write.exit58_crit_edge
  %dev = getelementptr i8, ptr %work, i32 -8
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %snd = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 29
  %82 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %snd, align 4
  %and1.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  tail call fastcc void @lkkbd_toggle_keyclick(ptr noundef %add.ptr, i1 noundef zeroext %tobool)
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %snd14 = getelementptr inbounds %struct.input_dev, ptr %85, i32 0, i32 29
  %86 = ptrtoint ptr %snd14 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %snd14, align 4
  %88 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool17.not = icmp eq i32 %88, 0
  br i1 %tobool17.not, label %serio_write.exit58.if.end_crit_edge, label %if.then

serio_write.exit58.if.end_crit_edge:              ; preds = %serio_write.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %serio_write.exit58
  %89 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %serio, align 4
  %write.i59 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %write.i59 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write.i59, align 8
  %tobool.not.i60 = icmp eq ptr %92, null
  br i1 %tobool.not.i60, label %if.then.if.end_crit_edge, label %if.then.i62

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i62:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i61 = tail call i32 %92(ptr noundef %90, i8 noundef zeroext -89) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i62, %if.then.if.end_crit_edge, %serio_write.exit58.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkkbd_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %do.end [
    i32 17, label %sw.bb
    i32 18, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lkkbd_toggle_leds(ptr noundef %1)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %3 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %code, label %sw.bb1.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
  ]

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  tail call fastcc void @lkkbd_toggle_keyclick(ptr noundef %1, i1 noundef zeroext %tobool)
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  br i1 %cmp.not, label %sw.bb3.cleanup_crit_edge, label %if.then

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb3
  %serio = getelementptr inbounds %struct.lkkbd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %7(ptr noundef %5, i8 noundef zeroext -89) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %type, i32 noundef %code, i32 noundef %value) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i, %if.then.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb2, %sw.bb1.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ 0, %sw.bb3.cleanup_crit_edge ], [ -1, %sw.bb1.cleanup_crit_edge ], [ -1, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lkkbd_toggle_leds(ptr nocapture noundef readonly %lk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serio1 = getelementptr inbounds %struct.lkkbd, ptr %lk, i32 0, i32 4
  %0 = ptrtoint ptr %serio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio1, align 4
  %dev = getelementptr inbounds %struct.lkkbd, ptr %lk, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %led = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %led, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i8 0, i8 -124
  %.87 = select i1 %tobool.not, i8 -124, i8 0
  %7 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %led, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %10 = or i8 %., -126
  %11 = or i8 %.87, -126
  %leds_on.1 = select i1 %tobool11.not, i8 %., i8 %10
  %leds_off.1 = select i1 %tobool11.not, i8 %11, i8 %.87
  %12 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %led, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  %15 = or i8 %leds_on.1, -120
  %16 = or i8 %leds_off.1, -120
  %leds_on.2 = select i1 %tobool28.not, i8 %leds_on.1, i8 %15
  %leds_off.2 = select i1 %tobool28.not, i8 %16, i8 %leds_off.1
  %17 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %led, align 4
  %19 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool45.not = icmp eq i32 %19, 0
  %20 = or i8 %leds_on.2, -127
  %21 = or i8 %leds_off.2, -127
  %leds_on.3 = select i1 %tobool45.not, i8 %leds_on.2, i8 %20
  %leds_off.3 = select i1 %tobool45.not, i8 %21, i8 %leds_off.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %leds_on.3)
  %cmp.not = icmp eq i8 %leds_on.3, 0
  br i1 %cmp.not, label %entry.if.end62_crit_edge, label %if.then59

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %entry
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then59.if.end62_crit_edge, label %serio_write.exit

if.then59.if.end62_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

serio_write.exit:                                 ; preds = %if.then59
  %call.i = tail call i32 %23(ptr noundef %1, i8 noundef zeroext 19) #8
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %write.i, align 8
  %tobool.not.i95 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i95, label %serio_write.exit.if.end62_crit_edge, label %if.then.i97

serio_write.exit.if.end62_crit_edge:              ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then.i97:                                      ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i96 = tail call i32 %.pr(ptr noundef %1, i8 noundef zeroext %leds_on.3) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then.i97, %serio_write.exit.if.end62_crit_edge, %if.then59.if.end62_crit_edge, %entry.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %leds_off.3)
  %cmp64.not = icmp eq i8 %leds_off.3, 0
  br i1 %cmp64.not, label %if.end62.if.end69_crit_edge, label %if.then66

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then66:                                        ; preds = %if.end62
  %write.i99 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %write.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i99, align 8
  %tobool.not.i100 = icmp eq ptr %26, null
  br i1 %tobool.not.i100, label %if.then66.if.end69_crit_edge, label %serio_write.exit103

if.then66.if.end69_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

serio_write.exit103:                              ; preds = %if.then66
  %call.i101 = tail call i32 %26(ptr noundef %1, i8 noundef zeroext 17) #8
  %27 = ptrtoint ptr %write.i99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr110 = load ptr, ptr %write.i99, align 8
  %tobool.not.i105 = icmp eq ptr %.pr110, null
  br i1 %tobool.not.i105, label %serio_write.exit103.if.end69_crit_edge, label %if.then.i107

serio_write.exit103.if.end69_crit_edge:           ; preds = %serio_write.exit103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then.i107:                                     ; preds = %serio_write.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %call.i106 = tail call i32 %.pr110(ptr noundef %1, i8 noundef zeroext %leds_off.3) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then.i107, %serio_write.exit103.if.end69_crit_edge, %if.then66.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lkkbd_toggle_keyclick(ptr nocapture noundef readonly %lk, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serio1 = getelementptr inbounds %struct.lkkbd, ptr %lk, i32 0, i32 4
  %0 = ptrtoint ptr %serio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio1, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %on, label %do.end, label %do.end9

do.end:                                           ; preds = %entry
  br i1 %tobool.not.i, label %do.end.if.end_crit_edge, label %serio_write.exit

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

serio_write.exit:                                 ; preds = %do.end
  %call.i = tail call i32 %3(ptr noundef %1, i8 noundef zeroext 27) #8
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr61 = load ptr, ptr %write.i, align 8
  %tobool.not.i20 = icmp eq ptr %.pr61, null
  br i1 %tobool.not.i20, label %serio_write.exit.if.end_crit_edge, label %serio_write.exit23

serio_write.exit.if.end_crit_edge:                ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

serio_write.exit23:                               ; preds = %serio_write.exit
  %keyclick_volume = getelementptr inbounds %struct.lkkbd, ptr %lk, i32 0, i32 10
  %5 = ptrtoint ptr %keyclick_volume to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keyclick_volume, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %8)
  %cmp25.i = icmp ugt i32 %8, 87
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %8)
  %cmp22.i = icmp ugt i32 %8, 74
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %8)
  %cmp19.i = icmp ugt i32 %8, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %8)
  %cmp16.i = icmp ugt i32 %8, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %8)
  %cmp13.i = icmp ugt i32 %8, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %8)
  %cmp10.i = icmp ugt i32 %8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp7.i = icmp ugt i32 %8, 12
  %ret.1.op.i = select i1 %cmp7.i, i8 -122, i8 -121
  %ret.2.op.i = select i1 %cmp10.i, i8 -123, i8 %ret.1.op.i
  %ret.3.op.i = select i1 %cmp13.i, i8 -124, i8 %ret.2.op.i
  %ret.4.op.i = select i1 %cmp16.i, i8 -125, i8 %ret.3.op.i
  %ret.5.op.i = select i1 %cmp19.i, i8 -126, i8 %ret.4.op.i
  %ret.6.op.i = select i1 %cmp22.i, i8 -127, i8 %ret.5.op.i
  %or.i = select i1 %cmp25.i, i8 -128, i8 %ret.6.op.i
  %call.i21 = tail call i32 %.pr61(ptr noundef %1, i8 noundef zeroext %or.i) #8
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %write.i, align 8
  %tobool.not.i25 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i25, label %serio_write.exit23.if.end_crit_edge, label %serio_write.exit28

serio_write.exit23.if.end_crit_edge:              ; preds = %serio_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

serio_write.exit28:                               ; preds = %serio_write.exit23
  %call.i26 = tail call i32 %.pr(ptr noundef %1, i8 noundef zeroext -69) #8
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr63 = load ptr, ptr %write.i, align 8
  %tobool.not.i44 = icmp eq ptr %.pr63, null
  br i1 %tobool.not.i44, label %serio_write.exit28.if.end_crit_edge, label %if.then.i46

serio_write.exit28.if.end_crit_edge:              ; preds = %serio_write.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i46:                                      ; preds = %serio_write.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %ctrlclick_volume = getelementptr inbounds %struct.lkkbd, ptr %lk, i32 0, i32 11
  %11 = ptrtoint ptr %ctrlclick_volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrlclick_volume, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #8
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %14)
  %cmp25.i35 = icmp ugt i32 %14, 87
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %14)
  %cmp22.i34 = icmp ugt i32 %14, 74
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %14)
  %cmp19.i33 = icmp ugt i32 %14, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %14)
  %cmp16.i32 = icmp ugt i32 %14, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %14)
  %cmp13.i31 = icmp ugt i32 %14, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp10.i30 = icmp ugt i32 %14, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp7.i29 = icmp ugt i32 %14, 12
  %ret.1.op.i36 = select i1 %cmp7.i29, i8 -122, i8 -121
  %ret.2.op.i37 = select i1 %cmp10.i30, i8 -123, i8 %ret.1.op.i36
  %ret.3.op.i38 = select i1 %cmp13.i31, i8 -124, i8 %ret.2.op.i37
  %ret.4.op.i39 = select i1 %cmp16.i32, i8 -125, i8 %ret.3.op.i38
  %ret.5.op.i40 = select i1 %cmp19.i33, i8 -126, i8 %ret.4.op.i39
  %ret.6.op.i41 = select i1 %cmp22.i34, i8 -127, i8 %ret.5.op.i40
  %or.i42 = select i1 %cmp25.i35, i8 -128, i8 %ret.6.op.i41
  %call.i45 = tail call i32 %.pr63(ptr noundef %1, i8 noundef zeroext %or.i42) #8
  br label %if.end

do.end9:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.end9.if.end_crit_edge, label %serio_write.exit52

do.end9.if.end_crit_edge:                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

serio_write.exit52:                               ; preds = %do.end9
  %call.i50 = tail call i32 %3(ptr noundef %1, i8 noundef zeroext -103) #8
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr59 = load ptr, ptr %write.i, align 8
  %tobool.not.i54 = icmp eq ptr %.pr59, null
  br i1 %tobool.not.i54, label %serio_write.exit52.if.end_crit_edge, label %if.then.i56

serio_write.exit52.if.end_crit_edge:              ; preds = %serio_write.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i56:                                      ; preds = %serio_write.exit52
  call void @__sanitizer_cov_trace_pc() #10
  %call.i55 = tail call i32 %.pr59(ptr noundef %1, i8 noundef zeroext -71) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i56, %serio_write.exit52.if.end_crit_edge, %do.end9.if.end_crit_edge, %if.then.i46, %serio_write.exit28.if.end_crit_edge, %serio_write.exit23.if.end_crit_edge, %serio_write.exit.if.end_crit_edge, %do.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/lkkbd.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/lkkbd.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/lkkbd.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_bell_volume, !8, !"__param_bell_volume", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/lkkbd.c", i32 75, i32 1}
!9 = !{ptr @__UNIQUE_ID_bell_volumetype231, !8, !"__UNIQUE_ID_bell_volumetype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_bell_volume232, !11, !"__UNIQUE_ID_bell_volume232", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/lkkbd.c", i32 76, i32 1}
!12 = !{ptr @__param_keyclick_volume, !13, !"__param_keyclick_volume", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/lkkbd.c", i32 79, i32 1}
!14 = !{ptr @__UNIQUE_ID_keyclick_volumetype233, !13, !"__UNIQUE_ID_keyclick_volumetype233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_keyclick_volume234, !16, !"__UNIQUE_ID_keyclick_volume234", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/lkkbd.c", i32 80, i32 1}
!17 = !{ptr @__param_ctrlclick_volume, !18, !"__param_ctrlclick_volume", i1 false, i1 false}
!18 = !{!"../drivers/input/keyboard/lkkbd.c", i32 83, i32 1}
!19 = !{ptr @__UNIQUE_ID_ctrlclick_volumetype235, !18, !"__UNIQUE_ID_ctrlclick_volumetype235", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ctrlclick_volume236, !21, !"__UNIQUE_ID_ctrlclick_volume236", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/lkkbd.c", i32 84, i32 1}
!22 = !{ptr @__param_lk201_compose_is_alt, !23, !"__param_lk201_compose_is_alt", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/lkkbd.c", i32 87, i32 1}
!24 = !{ptr @__UNIQUE_ID_lk201_compose_is_alttype237, !23, !"__UNIQUE_ID_lk201_compose_is_alttype237", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_lk201_compose_is_alt238, !26, !"__UNIQUE_ID_lk201_compose_is_alt238", i1 false, i1 false}
!26 = !{!"../drivers/input/keyboard/lkkbd.c", i32 88, i32 1}
!27 = !{ptr @__initcall__kmod_lkkbd__239_721_lkkbd_drv_init6, !28, !"__initcall__kmod_lkkbd__239_721_lkkbd_drv_init6", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/lkkbd.c", i32 721, i32 1}
!29 = !{ptr @__exitcall_lkkbd_drv_exit, !28, !"__exitcall_lkkbd_drv_exit", i1 false, i1 false}
!30 = !{ptr @lk201_compose_is_alt, !31, !"lk201_compose_is_alt", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/lkkbd.c", i32 86, i32 12}
!32 = !{ptr @__param_str_bell_volume, !8, !"__param_str_bell_volume", i1 false, i1 false}
!33 = !{ptr @bell_volume, !34, !"bell_volume", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/lkkbd.c", i32 74, i32 12}
!35 = !{ptr @__param_str_keyclick_volume, !13, !"__param_str_keyclick_volume", i1 false, i1 false}
!36 = !{ptr @keyclick_volume, !37, !"keyclick_volume", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/lkkbd.c", i32 78, i32 12}
!38 = !{ptr @__param_str_ctrlclick_volume, !18, !"__param_str_ctrlclick_volume", i1 false, i1 false}
!39 = !{ptr @ctrlclick_volume, !40, !"ctrlclick_volume", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/lkkbd.c", i32 82, i32 12}
!41 = !{ptr @__param_str_lk201_compose_is_alt, !23, !"__param_str_lk201_compose_is_alt", i1 false, i1 false}
!42 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/lkkbd.c", i32 714, i32 17}
!45 = !{ptr @lkkbd_drv, !46, !"lkkbd_drv", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/lkkbd.c", i32 710, i32 28}
!47 = !{ptr @lkkbd_serio_ids, !48, !"lkkbd_serio_ids", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/lkkbd.c", i32 698, i32 37}
!49 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/lkkbd.c", i32 479, i32 4}
!51 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lkkbd_interrupt._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @lkkbd_interrupt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/lkkbd.c", i32 362, i32 21}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/lkkbd.c", i32 369, i32 21}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/lkkbd.c", i32 373, i32 21}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/lkkbd.c", i32 374, i32 3}
!63 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @lkkbd_detection_done._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @lkkbd_detection_done._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/lkkbd.c", i32 377, i32 3}
!68 = !{ptr @lkkbd_detection_done._entry.10, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @lkkbd_detection_done._entry_ptr.12, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/lkkbd.c", i32 379, i32 4}
!72 = !{ptr @lkkbd_detection_done._entry.13, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lkkbd_detection_done._entry_ptr.15, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/lkkbd.c", i32 380, i32 3}
!76 = !{ptr @lkkbd_detection_done._entry.16, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lkkbd_detection_done._entry_ptr.18, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/lkkbd.c", i32 384, i32 2}
!80 = !{ptr @lkkbd_detection_done._entry.19, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lkkbd_detection_done._entry_ptr.21, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/lkkbd.c", i32 396, i32 3}
!84 = !{ptr @lkkbd_detection_done._entry.22, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lkkbd_detection_done._entry_ptr.24, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/lkkbd.c", i32 401, i32 3}
!88 = !{ptr @lkkbd_detection_done._entry.25, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lkkbd_detection_done._entry_ptr.27, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/keyboard/lkkbd.c", i32 407, i32 3}
!92 = !{ptr @lkkbd_detection_done._entry.28, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lkkbd_detection_done._entry_ptr.30, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/keyboard/lkkbd.c", i32 417, i32 3}
!96 = !{ptr @lkkbd_detection_done._entry.31, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @lkkbd_detection_done._entry_ptr.33, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @lkkbd_connect.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/input/keyboard/lkkbd.c", i32 623, i32 2}
!100 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/keyboard/lkkbd.c", i32 629, i32 20}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/keyboard/lkkbd.c", i32 630, i32 39}
!105 = !{ptr @lkkbd_keycode, !106, !"lkkbd_keycode", i1 false, i1 false}
!106 = !{!"../drivers/input/keyboard/lkkbd.c", i32 143, i32 23}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/keyboard/lkkbd.c", i32 555, i32 3}
!109 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @lkkbd_event._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @lkkbd_event._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

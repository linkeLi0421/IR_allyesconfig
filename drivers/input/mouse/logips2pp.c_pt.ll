; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/logips2pp.c_pt.bc'
source_filename = "../drivers/input/mouse/logips2pp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ps2pp_info = type { i8, i8, i16 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@ps2pp_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"logips2pp: Detected unknown Logitech mouse model %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ps2pp_detect\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/mouse/logips2pp.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps2pp_detect._entry_ptr = internal global ptr @ps2pp_detect._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Logitech\00", [23 x i8] zeroinitializer }, align 32
@get_model_info.ps2pp_list = internal constant { [34 x %struct.ps2pp_info], [56 x i8] } { [34 x %struct.ps2pp_info] [%struct.ps2pp_info { i8 1, i8 0, i16 0 }, %struct.ps2pp_info { i8 12, i8 0, i16 4 }, %struct.ps2pp_info { i8 13, i8 0, i16 0 }, %struct.ps2pp_info { i8 15, i8 2, i16 63 }, %struct.ps2pp_info { i8 40, i8 0, i16 4 }, %struct.ps2pp_info { i8 41, i8 0, i16 4 }, %struct.ps2pp_info { i8 42, i8 0, i16 4 }, %struct.ps2pp_info { i8 43, i8 0, i16 4 }, %struct.ps2pp_info { i8 50, i8 0, i16 0 }, %struct.ps2pp_info { i8 51, i8 0, i16 0 }, %struct.ps2pp_info { i8 52, i8 1, i16 5 }, %struct.ps2pp_info { i8 53, i8 1, i16 1 }, %struct.ps2pp_info { i8 56, i8 1, i16 5 }, %struct.ps2pp_info { i8 61, i8 2, i16 61 }, %struct.ps2pp_info { i8 66, i8 2, i16 63 }, %struct.ps2pp_info { i8 72, i8 4, i16 0 }, %struct.ps2pp_info { i8 73, i8 4, i16 4 }, %struct.ps2pp_info { i8 75, i8 1, i16 1 }, %struct.ps2pp_info { i8 76, i8 1, i16 1 }, %struct.ps2pp_info { i8 79, i8 4, i16 1 }, %struct.ps2pp_info { i8 80, i8 1, i16 5 }, %struct.ps2pp_info { i8 81, i8 1, i16 1 }, %struct.ps2pp_info { i8 83, i8 1, i16 1 }, %struct.ps2pp_info { i8 85, i8 1, i16 1 }, %struct.ps2pp_info { i8 86, i8 1, i16 1 }, %struct.ps2pp_info { i8 87, i8 1, i16 1 }, %struct.ps2pp_info { i8 88, i8 1, i16 1 }, %struct.ps2pp_info { i8 96, i8 0, i16 0 }, %struct.ps2pp_info { i8 97, i8 3, i16 3 }, %struct.ps2pp_info { i8 99, i8 1, i16 1 }, %struct.ps2pp_info { i8 100, i8 2, i16 61 }, %struct.ps2pp_info { i8 111, i8 2, i16 5 }, %struct.ps2pp_info { i8 112, i8 2, i16 61 }, %struct.ps2pp_info { i8 114, i8 2, i16 29 }], [56 x i8] zeroinitializer }, align 32
@psmouse_attr_smartscroll = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @ps2pp_attr_show_smartscroll, ptr @ps2pp_attr_set_smartscroll, i8 1 }, [52 x i8] zeroinitializer }, align 32
@ps2pp_setup_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 343, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"logips2pp: failed to create smartscroll sysfs attribute, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ps2pp_setup_protocol\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ps2pp_setup_protocol._entry_ptr = internal global ptr @ps2pp_setup_protocol._entry, section ".printk_index", align 4
@ps2pp_process_byte.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps2pp_process_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"logips2pp: Received PS2++ packet #%x, but don't know how to handle.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smartscroll\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wheel Mouse\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MX Mouse\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TouchPad 3\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TrackMan\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mouse\00", [26 x i8] zeroinitializer }, align 32
@switch.table.ps2pp_detect = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 13, i64 14, i64 15]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 420, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 426, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"ps2pp_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 209, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"psmouse_attr_smartscroll\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 341, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 176, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 155, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 299, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 303, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 307, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 311, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [35 x i8] c"../drivers/input/mouse/logips2pp.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 321, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"switch.table.ps2pp_detect\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @ps2pp_detect._entry, ptr @ps2pp_detect._entry_ptr, ptr @ps2pp_setup_protocol._entry, ptr @ps2pp_setup_protocol._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @get_model_info.ps2pp_list, ptr @psmouse_attr_smartscroll, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.ps2pp_detect], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2pp_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_model_info.ps2pp_list to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_smartscroll to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2pp_setup_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ps2pp_detect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ps2pp_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #6
  %0 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %param, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 3)
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  %call2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %0, align 1
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #6
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %param, align 1
  %8 = lshr i8 %7, 4
  %and = and i8 %8, 7
  %shl = shl i8 %7, 3
  %and11 = and i8 %shl, 120
  %or = or i8 %and, %and11
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or)
  %tobool.not = icmp eq i8 %or, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 34
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [34 x %struct.ps2pp_info], ptr @get_model_info.ps2pp_list, i32 0, i32 %i.09.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %or)
  %cmp3.i = icmp eq i8 %12, %or
  br i1 %cmp3.i, label %get_model_info.exit, label %for.cond.i

get_model_info.exit:                              ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool16.not, label %get_model_info.exit.do.end_crit_edge, label %if.then17

get_model_info.exit.do.end_crit_edge:             ; preds = %get_model_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then17:                                        ; preds = %get_model_info.exit
  %13 = and i32 %i.09.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %13)
  %cmp = icmp eq i32 %13, 28
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then17
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %param, align 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %0, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 104, ptr %1, align 1
  %call25 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 12497) #6
  %17 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %param, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 11, ptr %1, align 1
  %call30 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 12497) #6
  %20 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %param, align 1
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 9, ptr %0, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -61, ptr %1, align 1
  %call35 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 12497) #6
  %23 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %param, align 1
  %call38 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 5073) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.then20.if.end90_crit_edge

if.then20.if.end90_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true:                                    ; preds = %if.then20
  %24 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %cmp42 = icmp eq i8 %25, 6
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true44:                                  ; preds = %land.lhs.true
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp47 = icmp eq i8 %27, 0
  br i1 %cmp47, label %land.lhs.true49, label %land.lhs.true44.if.end90_crit_edge

land.lhs.true44.if.end90_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true49:                                  ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %29)
  %cmp52 = icmp eq i8 %29, 20
  br label %if.end90

if.else:                                          ; preds = %if.then17
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %1, align 1
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %0, align 1
  %32 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %param, align 1
  %call.i = call i32 @ps2_sliced_command(ptr noundef %ps2dev1, i8 noundef zeroext 57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.ps2pp_cmd.exit_crit_edge

if.else.ps2pp_cmd.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps2pp_cmd.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1003) #6
  br label %ps2pp_cmd.exit

ps2pp_cmd.exit:                                   ; preds = %if.end.i, %if.else.ps2pp_cmd.exit_crit_edge
  %call.i150 = call i32 @ps2_sliced_command(ptr noundef %ps2dev1, i8 noundef zeroext -37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end.i153, label %ps2pp_cmd.exit.ps2pp_cmd.exit154_crit_edge

ps2pp_cmd.exit.ps2pp_cmd.exit154_crit_edge:       ; preds = %ps2pp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps2pp_cmd.exit154

if.end.i153:                                      ; preds = %ps2pp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i152 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1003) #6
  br label %ps2pp_cmd.exit154

ps2pp_cmd.exit154:                                ; preds = %if.end.i153, %ps2pp_cmd.exit.ps2pp_cmd.exit154_crit_edge
  %33 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %param, align 1
  %35 = and i8 %34, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %35)
  %cmp66 = icmp eq i8 %35, 72
  br i1 %cmp66, label %land.lhs.true68, label %ps2pp_cmd.exit154.if.end90_crit_edge

ps2pp_cmd.exit154.if.end90_crit_edge:             ; preds = %ps2pp_cmd.exit154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true68:                                  ; preds = %ps2pp_cmd.exit154
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %0, align 1
  %conv70 = zext i8 %37 to i32
  %and71 = and i32 %conv70, 243
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %and71)
  %cmp72 = icmp eq i32 %and71, 194
  br i1 %cmp72, label %land.lhs.true74, label %land.lhs.true68.if.end90_crit_edge

land.lhs.true68.if.end90_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true74:                                  ; preds = %land.lhs.true68
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %1, align 1
  %40 = and i8 %39, 3
  %and77 = zext i8 %40 to i32
  %41 = lshr i32 %conv70, 2
  %and81 = and i32 %41, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and81, i32 %and77)
  %cmp82 = icmp eq i32 %and81, %and77
  br i1 %cmp82, label %if.end90.thread, label %land.lhs.true74.if.end90_crit_edge

land.lhs.true74.if.end90_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.end:                                           ; preds = %get_model_info.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %42 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %43, i32 0, i32 18
  %conv89 = zext i8 %or to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv89) #9
  br label %if.end90

if.end90:                                         ; preds = %do.end, %land.lhs.true74.if.end90_crit_edge, %land.lhs.true68.if.end90_crit_edge, %ps2pp_cmd.exit154.if.end90_crit_edge, %land.lhs.true49, %land.lhs.true44.if.end90_crit_edge, %land.lhs.true.if.end90_crit_edge, %if.then20.if.end90_crit_edge
  %tobool16.not169 = phi i1 [ false, %if.then20.if.end90_crit_edge ], [ false, %land.lhs.true44.if.end90_crit_edge ], [ false, %land.lhs.true.if.end90_crit_edge ], [ false, %land.lhs.true74.if.end90_crit_edge ], [ false, %land.lhs.true68.if.end90_crit_edge ], [ false, %ps2pp_cmd.exit154.if.end90_crit_edge ], [ true, %do.end ], [ false, %land.lhs.true49 ]
  %retval.0.i166 = phi ptr [ %arrayidx.i, %if.then20.if.end90_crit_edge ], [ %arrayidx.i, %land.lhs.true44.if.end90_crit_edge ], [ %arrayidx.i, %land.lhs.true.if.end90_crit_edge ], [ %arrayidx.i, %land.lhs.true74.if.end90_crit_edge ], [ %arrayidx.i, %land.lhs.true68.if.end90_crit_edge ], [ %arrayidx.i, %ps2pp_cmd.exit154.if.end90_crit_edge ], [ null, %do.end ], [ %arrayidx.i, %land.lhs.true49 ]
  %use_ps2pp.0.off0 = phi i1 [ false, %if.then20.if.end90_crit_edge ], [ false, %land.lhs.true44.if.end90_crit_edge ], [ false, %land.lhs.true.if.end90_crit_edge ], [ false, %land.lhs.true74.if.end90_crit_edge ], [ false, %land.lhs.true68.if.end90_crit_edge ], [ false, %ps2pp_cmd.exit154.if.end90_crit_edge ], [ false, %do.end ], [ %cmp52, %land.lhs.true49 ]
  br i1 %set_properties, label %if.then92, label %if.end90.if.end112_crit_edge

if.end90.if.end112_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.end90.thread:                                  ; preds = %land.lhs.true74
  call fastcc void @ps2pp_set_smartscroll(ptr noundef %psmouse, i1 noundef zeroext false)
  br i1 %set_properties, label %if.then92.thread, label %if.end90.thread.if.end112.thread_crit_edge

if.end90.thread.if.end112.thread_crit_edge:       ; preds = %if.end90.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112.thread

if.then92.thread:                                 ; preds = %if.end90.thread
  call void @__sanitizer_cov_trace_pc() #8
  %vendor181 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %44 = ptrtoint ptr %vendor181 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.5, ptr %vendor181, align 4
  %conv93182 = zext i8 %or to i32
  %model94183 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %45 = ptrtoint ptr %model94183 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv93182, ptr %model94183, align 4
  br label %if.then96

if.then92:                                        ; preds = %if.end90
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %46 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.5, ptr %vendor, align 4
  %conv93 = zext i8 %or to i32
  %model94 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %47 = ptrtoint ptr %model94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv93, ptr %model94, align 4
  br i1 %use_ps2pp.0.off0, label %if.then92.if.then96_crit_edge, label %if.then92.if.end101_crit_edge

if.then92.if.end101_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then92.if.then96_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96

if.then96:                                        ; preds = %if.then92.if.then96_crit_edge, %if.then92.thread
  %tobool16.not169174188 = phi i1 [ false, %if.then92.thread ], [ %tobool16.not169, %if.then92.if.then96_crit_edge ]
  %retval.0.i166175186 = phi ptr [ %arrayidx.i, %if.then92.thread ], [ %retval.0.i166, %if.then92.if.then96_crit_edge ]
  %protocol_handler.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %48 = ptrtoint ptr %protocol_handler.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ps2pp_process_byte, ptr %protocol_handler.i, align 4
  %pktsize.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %49 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %pktsize.i, align 2
  %kind.i = getelementptr inbounds %struct.ps2pp_info, ptr %retval.0.i166175186, i32 0, i32 1
  %50 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %kind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.not.i = icmp eq i8 %51, 3
  br i1 %cmp.not.i, label %if.then96.if.end101_crit_edge, label %if.then.i

if.then96.if.end101_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then.i:                                        ; preds = %if.then96
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %52 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ps2pp_set_resolution, ptr %set_resolution.i, align 4
  %disconnect.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %53 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ps2pp_disconnect, ptr %disconnect.i, align 4
  %54 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %55, i32 0, i32 18
  %call.i156 = call i32 @device_create_file(ptr noundef %dev.i, ptr noundef nonnull @psmouse_attr_smartscroll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.then.i.if.end101_crit_edge, label %ps2pp_setup_protocol.exit

if.then.i.if.end101_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

ps2pp_setup_protocol.exit:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ps2dev1, align 4
  %dev5.i = getelementptr inbounds %struct.serio, ptr %57, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.6, i32 noundef %call.i156) #9
  br label %cleanup

if.end101:                                        ; preds = %if.then.i.if.end101_crit_edge, %if.then96.if.end101_crit_edge, %if.then92.if.end101_crit_edge
  %tobool16.not169174187 = phi i1 [ %tobool16.not169, %if.then92.if.end101_crit_edge ], [ %tobool16.not169174188, %if.then.i.if.end101_crit_edge ], [ %tobool16.not169174188, %if.then96.if.end101_crit_edge ]
  %use_ps2pp.0.off0177184 = phi i1 [ false, %if.then92.if.end101_crit_edge ], [ true, %if.then.i.if.end101_crit_edge ], [ true, %if.then96.if.end101_crit_edge ]
  %retval.0.i168 = phi ptr [ %retval.0.i166, %if.then92.if.end101_crit_edge ], [ %retval.0.i166175186, %if.then.i.if.end101_crit_edge ], [ %retval.0.i166175186, %if.then96.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp103 = icmp ugt i8 %10, 2
  br i1 %cmp103, label %if.then105, label %if.end101.if.end107_crit_edge

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %dev106 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %58 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev106, align 4
  call void @input_set_capability(ptr noundef %59, i32 noundef 1, i32 noundef 274) #6
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101.if.end107_crit_edge
  br i1 %tobool16.not169174187, label %if.end107.if.end112_crit_edge, label %if.then109

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then109:                                       ; preds = %if.end107
  %dev.i159 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %60 = ptrtoint ptr %dev.i159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i159, align 4
  %features.i = getelementptr inbounds %struct.ps2pp_info, ptr %retval.0.i168, i32 0, i32 2
  %62 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %features.i, align 2
  %64 = and i16 %63, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i160 = icmp eq i16 %64, 0
  br i1 %tobool.not.i160, label %if.then109.if.end.i162_crit_edge, label %if.then.i161

if.then109.if.end.i162_crit_edge:                 ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i162

if.then.i161:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef 275) #6
  br label %if.end.i162

if.end.i162:                                      ; preds = %if.then.i161, %if.then109.if.end.i162_crit_edge
  %65 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %features.i, align 2
  %67 = and i16 %66, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool4.not.i = icmp eq i16 %67, 0
  br i1 %tobool4.not.i, label %if.end.i162.if.end6.i_crit_edge, label %if.then5.i

if.end.i162.if.end6.i_crit_edge:                  ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef 276) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i162.if.end6.i_crit_edge
  %68 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %features.i, align 2
  %70 = and i16 %69, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool10.not.i = icmp eq i16 %70, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then11.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef 279) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end6.i.if.end12.i_crit_edge
  %71 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %features.i, align 2
  %73 = and i16 %72, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool16.not.i = icmp eq i16 %73, 0
  br i1 %tobool16.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then17.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef 277) #6
  call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef 278) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end12.i.if.end18.i_crit_edge
  %74 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %features.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool22.not.i = icmp eq i16 %76, 0
  br i1 %tobool22.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then23.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 2, i32 noundef 8) #6
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end24.i_crit_edge
  %77 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %features.i, align 2
  %79 = and i16 %78, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool28.not.i = icmp eq i16 %79, 0
  br i1 %tobool28.not.i, label %if.end24.i.if.end30.i_crit_edge, label %if.then29.i

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef %61, i32 noundef 2, i32 noundef 6) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end24.i.if.end30.i_crit_edge
  %kind.i163 = getelementptr inbounds %struct.ps2pp_info, ptr %retval.0.i168, i32 0, i32 1
  %80 = ptrtoint ptr %kind.i163 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %kind.i163, align 1
  %switch.tableidx = add i8 %81, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %82 = icmp ult i8 %switch.tableidx, 4
  br i1 %82, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end30.i
  br i1 %use_ps2pp.0.off0177184, label %sw.epilog.sink.split.i.thread, label %sw.default.i.cleanup_crit_edge

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.sink.split.i.thread:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %name40.i195 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %83 = ptrtoint ptr %name40.i195 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.18, ptr %name40.i195, align 4
  br label %if.end112.thread

switch.lookup:                                    ; preds = %if.end30.i
  %84 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ps2pp_detect, i32 0, i32 %84
  %85 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %name40.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %86 = ptrtoint ptr %name40.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %switch.load, ptr %name40.i, align 4
  br i1 %use_ps2pp.0.off0177184, label %switch.lookup.if.end112.thread_crit_edge, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup.if.end112.thread_crit_edge:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112.thread

if.end112:                                        ; preds = %if.end107.if.end112_crit_edge, %if.end90.if.end112_crit_edge
  %use_ps2pp.0.off0176 = phi i1 [ %use_ps2pp.0.off0177184, %if.end107.if.end112_crit_edge ], [ %use_ps2pp.0.off0, %if.end90.if.end112_crit_edge ]
  br i1 %use_ps2pp.0.off0176, label %if.end112.if.end112.thread_crit_edge, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end112.if.end112.thread_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112.thread

if.end112.thread:                                 ; preds = %if.end112.if.end112.thread_crit_edge, %switch.lookup.if.end112.thread_crit_edge, %sw.epilog.sink.split.i.thread, %if.end90.thread.if.end112.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end112.thread, %if.end112.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %sw.default.i.cleanup_crit_edge, %ps2pp_setup_protocol.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call.i156, %ps2pp_setup_protocol.exit ], [ 0, %if.end112.thread ], [ -6, %if.end112.cleanup_crit_edge ], [ -6, %switch.lookup.cleanup_crit_edge ], [ -6, %sw.default.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ps2pp_set_smartscroll(ptr noundef %psmouse, i1 noundef zeroext %smartscroll) unnamed_addr #0 align 64 {
entry:
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #6
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev1, i8 noundef zeroext 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ps2pp_cmd.exit_crit_edge

entry.ps2pp_cmd.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps2pp_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1003) #6
  br label %ps2pp_cmd.exit

ps2pp_cmd.exit:                                   ; preds = %if.end.i, %entry.ps2pp_cmd.exit_crit_edge
  %frombool = zext i1 %smartscroll to i8
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %param, align 4
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  %call5 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %param, align 4
  %call10 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2pp_process_byte(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %packet2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet2, align 1
  %conv4 = zext i8 %5 to i32
  %and = and i32 %conv4, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %and)
  %cmp5 = icmp eq i32 %and, 72
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx7 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %and9 = and i32 %conv8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %8 = lshr i32 %conv8, 4
  %and17 = and i32 %conv4, 48
  %or = or i32 %8, %and17
  %9 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %do.body [
    i32 13, label %sw.bb
    i32 14, label %sw.bb29
    i32 15, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx18 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %and20 = and i32 %conv19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  %cond = select i1 %tobool.not, i32 8, i32 6
  %shl.i = shl i32 %conv19, 28
  %shr.i = ashr exact i32 %shl.i, 28
  %sub = sub nsw i32 0, %shr.i
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef %cond, i32 noundef %sub) #6
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = lshr i8 %13, 4
  %.lobit131 = and i8 %14, 1
  %15 = zext i8 %.lobit131 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %15) #6
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %18 = lshr i8 %17, 5
  %.lobit132 = and i8 %18, 1
  %19 = zext i8 %.lobit132 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %19) #6
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30, align 1
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %23) #6
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx30, align 1
  %26 = lshr i8 %25, 1
  %.lobit = and i8 %26, 1
  %27 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %27) #6
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx30, align 1
  %30 = lshr i8 %29, 2
  %.lobit128 = and i8 %30, 1
  %31 = zext i8 %.lobit128 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 279, i32 noundef %31) #6
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx30, align 1
  %34 = lshr i8 %33, 3
  %.lobit129 = and i8 %34, 1
  %35 = zext i8 %.lobit129 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 278, i32 noundef %35) #6
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30, align 1
  %38 = lshr i8 %37, 4
  %.lobit130 = and i8 %38, 1
  %39 = zext i8 %.lobit130 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 277, i32 noundef %39) #6
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %41 to i32
  %and48 = and i32 %conv47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, i32 8, i32 6
  %42 = shl nuw i32 %conv47, 24
  %shl.i113 = ashr i32 %42, 28
  %sub55 = sub nsw i32 0, %shl.i113
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef %cond50, i32 noundef %sub55) #6
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx46, align 1
  %45 = or i8 %44, 8
  %46 = ptrtoint ptr %packet2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %packet2, align 1
  br label %sw.epilog

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2pp_process_byte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2pp_process_byte, %if.then65)) #6
          to label %sw.epilog [label %if.then65], !srcloc !47

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %47 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ps2dev, align 4
  %dev66 = getelementptr inbounds %struct.serio, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7, align 1
  %51 = lshr i8 %50, 4
  %52 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %packet2, align 1
  %54 = and i8 %53, 48
  %or73112 = or i8 %54, %51
  %or73 = zext i8 %or73112 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2pp_process_byte.__UNIQUE_ID_ddebug227, ptr noundef %dev66, ptr noundef nonnull @.str.11, i32 noundef %or73) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then65, %do.body, %sw.bb45, %sw.bb29, %sw.bb
  %55 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %packet2, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %1, i8 noundef zeroext %56) #6
  br label %if.end76

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @psmouse_report_standard_packet(ptr noundef %1, ptr noundef %packet2) #6
  br label %if.end76

if.end76:                                         ; preds = %if.else, %sw.epilog
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end76 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2pp_set_resolution(ptr noundef %psmouse, i32 noundef %resolution) #0 align 64 {
entry:
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %resolution)
  %cmp = icmp ugt i32 %resolution, 400
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #6
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %param, align 1
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %call3 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #6
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #6
  %resolution5 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 22
  %1 = ptrtoint ptr %resolution5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 800, ptr %resolution5, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @psmouse_set_resolution(ptr noundef %psmouse, i32 noundef %resolution) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2pp_disconnect(ptr nocapture noundef readonly %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @psmouse_attr_smartscroll) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_set_resolution(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2pp_attr_show_smartscroll(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smartscroll = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 25
  %0 = ptrtoint ptr %smartscroll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smartscroll, align 4, !range !48
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2pp_attr_set_smartscroll(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !49
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  call fastcc void @ps2pp_set_smartscroll(ptr noundef %psmouse, i1 noundef zeroext %tobool3)
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4 = icmp ne i32 %4, 0
  %smartscroll = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 25
  %frombool = zext i1 %tobool4 to i8
  %5 = ptrtoint ptr %smartscroll to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %smartscroll, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/logips2pp.c", i32 420, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ps2pp_detect._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ps2pp_detect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/logips2pp.c", i32 426, i32 21}
!10 = !{ptr @get_model_info.ps2pp_list, !11, !"ps2pp_list", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/logips2pp.c", i32 209, i32 33}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/logips2pp.c", i32 341, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ps2pp_setup_protocol._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ps2pp_setup_protocol._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/logips2pp.c", i32 87, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ps2pp_process_byte.__UNIQUE_ID_ddebug227, !19, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/logips2pp.c", i32 176, i32 1}
!25 = !{ptr @psmouse_attr_smartscroll, !24, !"psmouse_attr_smartscroll", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/logips2pp.c", i32 155, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/logips2pp.c", i32 299, i32 19}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/logips2pp.c", i32 303, i32 19}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/logips2pp.c", i32 307, i32 19}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/logips2pp.c", i32 311, i32 19}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/logips2pp.c", i32 321, i32 20}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2149042671, i64 2149042676, i64 2149042689, i64 2149042733, i64 2149042767, i64 2149042788}
!48 = !{i8 0, i8 2}
!49 = !{!"auto-init"}

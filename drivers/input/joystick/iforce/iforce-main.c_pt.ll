; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/iforce/iforce-main.c_pt.bc'
source_filename = "../drivers/input/joystick/iforce/iforce-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iforce_init_device\22, \22a\22\09"
module asm "\09.weak\09__crc_iforce_init_device\09\09\09\09"
module asm "\09.long\09__crc_iforce_init_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iforce_init_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iforce_init_device\22\09\09\09\09\09"
module asm "__kstrtabns_iforce_init_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iforce_device = type { i16, i16, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iforce = type { ptr, ptr, ptr, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i32], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.iforce_xport_ops = type { ptr, ptr, ptr, ptr }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [87 x i8] c"iforce.author=Vojtech Pavlik <vojtech@ucw.cz>, Johann Deneux <johann.deneux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [60 x i8] c"iforce.description=Core I-Force joysticks and wheels driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [49 x i8] c"iforce.file=drivers/input/joystick/iforce/iforce\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [19 x i8] c"iforce.license=GPL\00", section ".modinfo", align 1
@iforce_init_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&iforce->wait\00", [18 x i8] zeroinitializer }, align 32
@iforce_init_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&iforce->xmit_lock\00", [45 x i8] zeroinitializer }, align 32
@iforce_init_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&iforce->mem_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown I-Force device\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I-Force device effect memory\00", [35 x i8] zeroinitializer }, align 32
@iforce_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 266, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout waiting for response from device.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iforce_init_device\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/input/joystick/iforce/iforce-main.c\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr = internal global ptr @iforce_init_device._entry, section ".printk_index", align 4
@iforce_init_device._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 278, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device does not respond to id packet M\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr.15 = internal global ptr @iforce_init_device._entry.12, section ".printk_index", align 4
@iforce_init_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 283, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device does not respond to id packet P\0A\00", [56 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr.18 = internal global ptr @iforce_init_device._entry.16, section ".printk_index", align 4
@iforce_init_device._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.9, i32 288, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device does not respond to id packet B\0A\00", [56 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr.21 = internal global ptr @iforce_init_device._entry.19, section ".printk_index", align 4
@iforce_init_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 293, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device does not respond to id packet N\0A\00", [56 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr.24 = internal global ptr @iforce_init_device._entry.22, section ".printk_index", align 4
@iforce_init_device._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.9, i32 298, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Limiting number of effects to %d (device reports %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@iforce_init_device._entry_ptr.27 = internal global ptr @iforce_init_device._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@iforce_device = internal global { [15 x %struct.iforce_device], [84 x i8] } { [15 x %struct.iforce_device] [%struct.iforce_device { i16 1103, i16 -24548, ptr @.str.33, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1133, i16 -15743, ptr @.str.34, ptr @btn_joystick, ptr @abs_joystick, ptr @ff_iforce }, %struct.iforce_device { i16 1133, i16 -15727, ptr @.str.35, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1519, i16 522, ptr @.str.36, ptr @btn_joystick_avb, ptr @abs_avb_pegasus, ptr @ff_iforce }, %struct.iforce_device { i16 1519, i16 -30588, ptr @.str.37, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1519, i16 -30584, ptr @.str.38, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1564, i16 -16220, ptr @.str.39, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1564, i16 -16252, ptr @.str.39, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1699, i16 -252, ptr @.str.40, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1784, i16 1, ptr @.str.41, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1784, i16 1, ptr @.str.42, ptr @btn_joystick, ptr @abs_joystick_rudder, ptr @ff_iforce }, %struct.iforce_device { i16 1784, i16 4, ptr @.str.43, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 1784, i16 -23806, ptr @.str.44, ptr @btn_joystick, ptr @abs_joystick, ptr @ff_iforce }, %struct.iforce_device { i16 1750, i16 10684, ptr @.str.45, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce }, %struct.iforce_device { i16 0, i16 0, ptr @.str.46, ptr @btn_joystick, ptr @abs_joystick, ptr @ff_iforce }], [84 x i8] zeroinitializer }, align 32
@__kstrtab_iforce_init_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iforce_init_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iforce_init_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iforce_init_device to i32), ptr @__kstrtab_iforce_init_device, ptr @__kstrtabns_iforce_init_device }, section "___ksymtab+iforce_init_device", align 4
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\04\00", [30 x i8] zeroinitializer }, align 32
@iforce_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 195, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Device still owns effects\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iforce_close\00", [19 x i8] zeroinitializer }, align 32
@iforce_close._entry_ptr = internal global ptr @iforce_close._entry, section ".printk_index", align 4
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thrustmaster Motor Sport GT\00", [36 x i8] zeroinitializer }, align 32
@btn_wheel = internal global { [9 x i16], [46 x i8] } { [9 x i16] [i16 336, i16 337, i16 294, i16 295, i16 296, i16 297, i16 298, i16 299, i16 -1], [46 x i8] zeroinitializer }, align 32
@abs_wheel = internal global { [6 x i16], [20 x i8] } { [6 x i16] [i16 8, i16 9, i16 10, i16 16, i16 17, i16 -1], [20 x i8] zeroinitializer }, align 32
@ff_iforce = internal global { [12 x i16], [40 x i8] } { [12 x i16] [i16 81, i16 82, i16 83, i16 85, i16 88, i16 89, i16 90, i16 91, i16 92, i16 96, i16 97, i16 -1], [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Logitech WingMan Force\00", [41 x i8] zeroinitializer }, align 32
@btn_joystick = internal global { [14 x i16], [36 x i8] } { [14 x i16] [i16 288, i16 291, i16 289, i16 292, i16 294, i16 295, i16 296, i16 297, i16 298, i16 304, i16 305, i16 306, i16 303, i16 -1], [36 x i8] zeroinitializer }, align 32
@abs_joystick = internal global { [6 x i16], [20 x i8] } { [6 x i16] [i16 0, i16 1, i16 6, i16 16, i16 17, i16 -1], [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Logitech WingMan Formula Force\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVB Top Shot Pegasus\00", [43 x i8] zeroinitializer }, align 32
@btn_joystick_avb = internal global { [10 x i16], [44 x i8] } { [10 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297, i16 303, i16 -1], [44 x i8] zeroinitializer }, align 32
@abs_avb_pegasus = internal global { [9 x i16], [46 x i8] } { [9 x i16] [i16 0, i16 1, i16 6, i16 7, i16 16, i16 17, i16 18, i16 19, i16 -1], [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AVB Mag Turbo Force\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AVB Top Shot Force Feedback Racing Wheel\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACT LABS Force RS\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Saitek R440 Force Wheel\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Guillemot Race Leader Force Feedback\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Guillemot Jet Leader Force Feedback\00", [60 x i8] zeroinitializer }, align 32
@abs_joystick_rudder = internal global { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 1, i16 6, i16 7, i16 16, i16 17, i16 -1], [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Guillemot Force Feedback Racing Wheel\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Guillemot Jet Leader 3D\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Trust Force Feedback Race Master\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown I-Force Device [%04x:%04x]\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 0, i64 1, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 16, i64 81, i64 82, i64 83, i64 85]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 225, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 226, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 227, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 240, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 248, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 265, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 278, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 283, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 288, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 293, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 297, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 308, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"iforce_device\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 47, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 178, i32 45 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 193, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 201, i32 45 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 48, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"btn_wheel\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 25, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"abs_wheel\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 39, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"ff_iforce\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 42, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 49, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"btn_joystick\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 16, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"abs_joystick\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 29, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 50, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 51, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"btn_joystick_avb\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 21, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"abs_avb_pegasus\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 35, i32 21 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 52, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 53, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 54, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 56, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 57, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 58, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"abs_joystick_rudder\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 32, i32 21 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 59, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 60, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 61, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [47 x i8] c"../drivers/input/joystick/iforce/iforce-main.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 62, i32 20 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab_iforce_init_device, ptr @iforce_close._entry, ptr @iforce_close._entry_ptr, ptr @iforce_init_device._entry, ptr @iforce_init_device._entry.12, ptr @iforce_init_device._entry.16, ptr @iforce_init_device._entry.19, ptr @iforce_init_device._entry.22, ptr @iforce_init_device._entry.25, ptr @iforce_init_device._entry_ptr, ptr @iforce_init_device._entry_ptr.15, ptr @iforce_init_device._entry_ptr.18, ptr @iforce_init_device._entry_ptr.21, ptr @iforce_init_device._entry_ptr.24, ptr @iforce_init_device._entry_ptr.27, ptr @iforce_init_device.__key, ptr @.str, ptr @iforce_init_device.__key.1, ptr @.str.2, ptr @iforce_init_device.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @iforce_device, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @btn_wheel, ptr @abs_wheel, ptr @ff_iforce, ptr @.str.34, ptr @btn_joystick, ptr @abs_joystick, ptr @.str.35, ptr @.str.36, ptr @btn_joystick_avb, ptr @abs_avb_pegasus, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @abs_joystick_rudder, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_init_device._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_device to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btn_wheel to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abs_wheel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_iforce to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btn_joystick to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abs_joystick to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btn_joystick_avb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abs_avb_pegasus to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abs_joystick_rudder to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_init_device(ptr noundef %parent, i16 noundef zeroext %bustype, ptr noundef %iforce) #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %buf = alloca [16 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !117
  %call = tail call ptr @input_allocate_device() #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %wait = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @iforce_init_device.__key) #5
  %xmit_lock = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %xmit_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @iforce_init_device.__key.1, i16 noundef signext 3) #5
  %mem_mutex = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mem_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @iforce_init_device.__key.3) #5
  %xmit_data = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 5
  %xmit = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4
  %3 = ptrtoint ptr %xmit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xmit_data, ptr %xmit, align 4
  %4 = ptrtoint ptr %iforce to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %iforce, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bustype, ptr %id, align 4
  %dev10 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40
  %parent11 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent, ptr %parent11, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %iforce, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.5, ptr %call, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @iforce_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %10 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @iforce_close, ptr %close, align 4
  %device_memory = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8
  %name12 = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.6, ptr %name12, align 4
  %12 = ptrtoint ptr %device_memory to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %device_memory, align 4
  %end = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 200, ptr %end, align 4
  %flags = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %flags, align 4
  %parent17 = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %parent17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %parent17, align 4
  %child = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %child, align 4
  %sibling = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 6
  %17 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sibling, align 4
  %xport_ops.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %i.0339 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i = getelementptr inbounds %struct.iforce_xport_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %get_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_id.i, align 4
  %call.i = call i32 %21(ptr noundef %iforce, i8 noundef zeroext 79, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end31, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0339, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end29, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end29:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.7) #8
  br label %fail

if.end31:                                         ; preds = %for.body
  %22 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i319 = getelementptr inbounds %struct.iforce_xport_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %get_id.i319 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_id.i319, align 4
  %call.i320 = call i32 %25(ptr noundef %iforce, i8 noundef zeroext 77, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool34.not = icmp eq i32 %call.i320, 0
  br i1 %tobool34.not, label %if.end31.if.then36_crit_edge, label %lor.lhs.false

if.end31.if.then36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end31
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp35 = icmp ult i32 %27, 3
  br i1 %cmp35, label %lor.lhs.false.if.then36_crit_edge, label %do.end42

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end31.if.then36_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %0, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #5
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %vendor, align 2
  br label %if.end45

do.end42:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iforce, align 4
  %dev44 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.13) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.then36
  %34 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i322 = getelementptr inbounds %struct.iforce_xport_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %get_id.i322 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_id.i322, align 4
  %call.i323 = call i32 %37(ptr noundef %iforce, i8 noundef zeroext 80, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool48.not = icmp eq i32 %call.i323, 0
  br i1 %tobool48.not, label %if.end45.if.then51_crit_edge, label %lor.lhs.false49

if.end45.if.then51_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

lor.lhs.false49:                                  ; preds = %if.end45
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp50 = icmp ult i32 %39, 3
  br i1 %cmp50, label %lor.lhs.false49.if.then51_crit_edge, label %do.end59

lor.lhs.false49.if.then51_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false49.if.then51_crit_edge, %if.end45.if.then51_crit_edge
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %0, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41) #5
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %product, align 4
  br label %if.end62

do.end59:                                         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iforce, align 4
  %dev61 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.17) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.then51
  %46 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i325 = getelementptr inbounds %struct.iforce_xport_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %get_id.i325 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_id.i325, align 4
  %call.i326 = call i32 %49(ptr noundef %iforce, i8 noundef zeroext 66, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool65.not = icmp eq i32 %call.i326, 0
  br i1 %tobool65.not, label %if.end62.if.then68_crit_edge, label %lor.lhs.false66

if.end62.if.then68_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then68

lor.lhs.false66:                                  ; preds = %if.end62
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp67 = icmp ult i32 %51, 3
  br i1 %cmp67, label %lor.lhs.false66.if.then68_crit_edge, label %do.end77

lor.lhs.false66.if.then68_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false66.if.then68_crit_edge, %if.end62.if.then68_crit_edge
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %0, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #5
  %conv = zext i16 %54 to i32
  %55 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv, ptr %end, align 4
  br label %if.end80

do.end77:                                         ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iforce, align 4
  %dev79 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev79, ptr noundef nonnull @.str.20) #8
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.then68
  %58 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i328 = getelementptr inbounds %struct.iforce_xport_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %get_id.i328 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_id.i328, align 4
  %call.i329 = call i32 %61(ptr noundef %iforce, i8 noundef zeroext 78, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool83.not = icmp eq i32 %call.i329, 0
  br i1 %tobool83.not, label %if.end80.if.end95_crit_edge, label %lor.lhs.false84

if.end80.if.end95_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

lor.lhs.false84:                                  ; preds = %if.end80
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp85 = icmp ult i32 %63, 2
  br i1 %cmp85, label %lor.lhs.false84.if.end95_crit_edge, label %if.end95.thread

lor.lhs.false84.if.end95_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.end95.thread:                                  ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iforce, align 4
  %dev94 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev94, ptr noundef nonnull @.str.23) #8
  br label %if.end104

if.end95:                                         ; preds = %lor.lhs.false84.if.end95_crit_edge, %if.end80.if.end95_crit_edge
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %0, align 1
  %conv88 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %67)
  %cmp96 = icmp ugt i8 %67, 32
  br i1 %cmp96, label %do.end101, label %if.end95.if.end104_crit_edge

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end101:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iforce, align 4
  %dev103 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev103, ptr noundef nonnull @.str.26, i32 noundef 32, i32 noundef %conv88) #8
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end95.if.end104_crit_edge, %if.end95.thread
  %ff_effects.1 = phi i32 [ 32, %do.end101 ], [ %conv88, %if.end95.if.end104_crit_edge ], [ 0, %if.end95.thread ]
  %70 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i331 = getelementptr inbounds %struct.iforce_xport_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %get_id.i331 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_id.i331, align 4
  %call.i332 = call i32 %73(ptr noundef %iforce, i8 noundef zeroext 67, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %tobool112.not = icmp eq i32 %call.i332, 0
  br i1 %tobool112.not, label %if.then113, label %if.end104.for.inc117_crit_edge

if.end104.for.inc117_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117

if.then113:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  %76 = trunc i32 %75 to i16
  %conv114 = or i16 %76, -256
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.28, i16 noundef zeroext %conv114, ptr noundef nonnull %buf) #5
  br label %for.inc117

for.inc117:                                       ; preds = %if.then113, %if.end104.for.inc117_crit_edge
  %77 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i331.1 = getelementptr inbounds %struct.iforce_xport_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %get_id.i331.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %get_id.i331.1, align 4
  %call.i332.1 = call i32 %80(ptr noundef %iforce, i8 noundef zeroext 69, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332.1)
  %tobool112.not.1 = icmp eq i32 %call.i332.1, 0
  br i1 %tobool112.not.1, label %if.then113.1, label %for.inc117.for.inc117.1_crit_edge

for.inc117.for.inc117.1_crit_edge:                ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.1

if.then113.1:                                     ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %83 = trunc i32 %82 to i16
  %conv114.1 = or i16 %83, -256
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.28, i16 noundef zeroext %conv114.1, ptr noundef nonnull %buf) #5
  br label %for.inc117.1

for.inc117.1:                                     ; preds = %if.then113.1, %for.inc117.for.inc117.1_crit_edge
  %84 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i331.2 = getelementptr inbounds %struct.iforce_xport_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %get_id.i331.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %get_id.i331.2, align 4
  %call.i332.2 = call i32 %87(ptr noundef %iforce, i8 noundef zeroext 79, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332.2)
  %tobool112.not.2 = icmp eq i32 %call.i332.2, 0
  br i1 %tobool112.not.2, label %if.then113.2, label %for.inc117.1.for.inc117.2_crit_edge

for.inc117.1.for.inc117.2_crit_edge:              ; preds = %for.inc117.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.2

if.then113.2:                                     ; preds = %for.inc117.1
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %90 = trunc i32 %89 to i16
  %conv114.2 = or i16 %90, -256
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.28, i16 noundef zeroext %conv114.2, ptr noundef nonnull %buf) #5
  br label %for.inc117.2

for.inc117.2:                                     ; preds = %if.then113.2, %for.inc117.1.for.inc117.2_crit_edge
  %91 = ptrtoint ptr %xport_ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xport_ops.i, align 4
  %get_id.i331.3 = getelementptr inbounds %struct.iforce_xport_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %get_id.i331.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %get_id.i331.3, align 4
  %call.i332.3 = call i32 %94(ptr noundef %iforce, i8 noundef zeroext 86, ptr noundef nonnull %buf, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332.3)
  %tobool112.not.3 = icmp eq i32 %call.i332.3, 0
  br i1 %tobool112.not.3, label %if.then113.3, label %for.inc117.2.for.inc117.3_crit_edge

for.inc117.2.for.inc117.3_crit_edge:              ; preds = %for.inc117.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.3

if.then113.3:                                     ; preds = %for.inc117.2
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %97 = trunc i32 %96 to i16
  %conv114.3 = or i16 %97, -256
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.28, i16 noundef zeroext %conv114.3, ptr noundef nonnull %buf) #5
  br label %for.inc117.3

for.inc117.3:                                     ; preds = %if.then113.3, %for.inc117.2.for.inc117.3_crit_edge
  %98 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #5
  %100 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %101 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %101, align 1, !annotation !117
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %data.i, align 1
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %100, align 1
  %call3.i = call i32 @iforce_send_packet(ptr noundef %99, i16 noundef zeroext 16386, ptr noundef nonnull %data.i) #5
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 4, ptr %data.i, align 1
  %106 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %100, align 1
  %call7.i = call i32 @iforce_send_packet(ptr noundef %99, i16 noundef zeroext 16386, ptr noundef nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #5
  %107 = load i16, ptr @iforce_device, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool122.not341 = icmp eq i16 %107, 0
  br i1 %tobool122.not341, label %for.inc117.3.for.end143_crit_edge, label %for.body123.lr.ph

for.inc117.3.for.end143_crit_edge:                ; preds = %for.inc117.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end143

for.body123.lr.ph:                                ; preds = %for.inc117.3
  %vendor128 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %vendor128 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %vendor128, align 2
  %product135 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  br label %for.body123

for.body123:                                      ; preds = %for.inc141.for.body123_crit_edge, %for.body123.lr.ph
  %110 = phi i16 [ %107, %for.body123.lr.ph ], [ %116, %for.inc141.for.body123_crit_edge ]
  %i.2342 = phi i32 [ 0, %for.body123.lr.ph ], [ %inc142, %for.inc141.for.body123_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %109)
  %cmp130 = icmp eq i16 %110, %109
  br i1 %cmp130, label %land.lhs.true, label %for.body123.for.inc141_crit_edge

for.body123.for.inc141_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc141

land.lhs.true:                                    ; preds = %for.body123
  %idproduct = getelementptr [15 x %struct.iforce_device], ptr @iforce_device, i32 0, i32 %i.2342, i32 1
  %111 = ptrtoint ptr %idproduct to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %idproduct, align 2
  %113 = ptrtoint ptr %product135 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %product135, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp137 = icmp eq i16 %112, %114
  br i1 %cmp137, label %land.lhs.true.for.end143_crit_edge, label %land.lhs.true.for.inc141_crit_edge

land.lhs.true.for.inc141_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc141

land.lhs.true.for.end143_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end143

for.inc141:                                       ; preds = %land.lhs.true.for.inc141_crit_edge, %for.body123.for.inc141_crit_edge
  %inc142 = add i32 %i.2342, 1
  %arrayidx121 = getelementptr [15 x %struct.iforce_device], ptr @iforce_device, i32 0, i32 %inc142
  %115 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx121, align 4
  %tobool122.not = icmp eq i16 %116, 0
  br i1 %tobool122.not, label %for.inc141.for.end143_crit_edge, label %for.inc141.for.body123_crit_edge

for.inc141.for.body123_crit_edge:                 ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body123

for.inc141.for.end143_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end143

for.end143:                                       ; preds = %for.inc141.for.end143_crit_edge, %land.lhs.true.for.end143_crit_edge, %for.inc117.3.for.end143_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.inc117.3.for.end143_crit_edge ], [ %i.2342, %land.lhs.true.for.end143_crit_edge ], [ %inc142, %for.inc141.for.end143_crit_edge ]
  %add.ptr144 = getelementptr %struct.iforce_device, ptr @iforce_device, i32 %i.2.lcssa
  %type = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 1
  %117 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr144, ptr %type, align 4
  %name146 = getelementptr %struct.iforce_device, ptr @iforce_device, i32 %i.2.lcssa, i32 2
  %118 = ptrtoint ptr %name146 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name146, align 4
  %120 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %call, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %121 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 8388618, ptr %evbit, align 8
  %122 = load ptr, ptr %type, align 4
  %btn345 = getelementptr inbounds %struct.iforce_device, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %btn345 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %btn345, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %124, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %126)
  %cmp153346 = icmp sgt i16 %126, -1
  br i1 %cmp153346, label %for.body155.lr.ph, label %for.end143.for.cond164.preheader_crit_edge

for.end143.for.cond164.preheader_crit_edge:       ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond164.preheader

for.body155.lr.ph:                                ; preds = %for.end143
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 6
  br label %for.body155

for.cond164.preheader:                            ; preds = %for.body155.for.cond164.preheader_crit_edge, %for.end143.for.cond164.preheader_crit_edge
  %127 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %type, align 4
  %abs348 = getelementptr inbounds %struct.iforce_device, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %abs348 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %abs348, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %132)
  %cmp168350 = icmp sgt i16 %132, -1
  br i1 %cmp168350, label %for.body170.lr.ph, label %for.cond164.preheader.for.end186_crit_edge

for.cond164.preheader.for.end186_crit_edge:       ; preds = %for.cond164.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.body170.lr.ph:                                ; preds = %for.cond164.preheader
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 12
  br label %for.body170

for.body155:                                      ; preds = %for.body155.for.body155_crit_edge, %for.body155.lr.ph
  %133 = phi i16 [ %126, %for.body155.lr.ph ], [ %139, %for.body155.for.body155_crit_edge ]
  %i.3347 = phi i32 [ 0, %for.body155.lr.ph ], [ %inc162, %for.body155.for.body155_crit_edge ]
  %conv152336 = zext i16 %133 to i32
  call void @_set_bit(i32 noundef %conv152336, ptr noundef %keybit) #5
  %inc162 = add i32 %i.3347, 1
  %134 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %type, align 4
  %btn = getelementptr inbounds %struct.iforce_device, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %btn, align 4
  %arrayidx151 = getelementptr i16, ptr %137, i32 %inc162
  %138 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx151, align 2
  %cmp153 = icmp sgt i16 %139, -1
  br i1 %cmp153, label %for.body155.for.body155_crit_edge, label %for.body155.for.cond164.preheader_crit_edge

for.body155.for.cond164.preheader_crit_edge:      ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond164.preheader

for.body155.for.body155_crit_edge:                ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body155

for.body170:                                      ; preds = %sw.epilog.for.body170_crit_edge, %for.body170.lr.ph
  %conv167352.in = phi i16 [ %132, %for.body170.lr.ph ], [ %146, %sw.epilog.for.body170_crit_edge ]
  %i.4351 = phi i32 [ 0, %for.body170.lr.ph ], [ %inc185, %sw.epilog.for.body170_crit_edge ]
  %conv167352356 = zext i16 %conv167352.in to i32
  %140 = zext i16 %conv167352.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values)
  switch i16 %conv167352.in, label %for.body170.sw.epilog_crit_edge [
    i16 0, label %for.body170.sw.bb_crit_edge
    i16 1, label %for.body170.sw.bb_crit_edge357
    i16 8, label %for.body170.sw.bb_crit_edge358
    i16 6, label %for.body170.sw.bb178_crit_edge
    i16 9, label %for.body170.sw.bb178_crit_edge359
    i16 10, label %for.body170.sw.bb178_crit_edge360
    i16 7, label %sw.bb180
    i16 16, label %for.body170.sw.bb182_crit_edge
    i16 17, label %for.body170.sw.bb182_crit_edge361
    i16 18, label %for.body170.sw.bb182_crit_edge362
    i16 19, label %for.body170.sw.bb182_crit_edge363
  ]

for.body170.sw.bb182_crit_edge363:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb182

for.body170.sw.bb182_crit_edge362:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb182

for.body170.sw.bb182_crit_edge361:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb182

for.body170.sw.bb182_crit_edge:                   ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb182

for.body170.sw.bb178_crit_edge360:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb178

for.body170.sw.bb178_crit_edge359:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb178

for.body170.sw.bb178_crit_edge:                   ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb178

for.body170.sw.bb_crit_edge358:                   ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body170.sw.bb_crit_edge357:                   ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body170.sw.bb_crit_edge:                      ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body170.sw.epilog_crit_edge:                  ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body170.sw.bb_crit_edge, %for.body170.sw.bb_crit_edge357, %for.body170.sw.bb_crit_edge358
  call void @input_set_abs_params(ptr noundef %call, i32 noundef %conv167352356, i32 noundef -1920, i32 noundef 1920, i32 noundef 16, i32 noundef 128) #5
  call void @_set_bit(i32 noundef %conv167352356, ptr noundef %ffbit) #5
  br label %sw.epilog

sw.bb178:                                         ; preds = %for.body170.sw.bb178_crit_edge, %for.body170.sw.bb178_crit_edge359, %for.body170.sw.bb178_crit_edge360
  call void @input_set_abs_params(ptr noundef %call, i32 noundef %conv167352356, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.bb180:                                         ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #7
  call void @input_set_abs_params(ptr noundef %call, i32 noundef 7, i32 noundef -128, i32 noundef 127, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.bb182:                                         ; preds = %for.body170.sw.bb182_crit_edge, %for.body170.sw.bb182_crit_edge361, %for.body170.sw.bb182_crit_edge362, %for.body170.sw.bb182_crit_edge363
  call void @input_set_abs_params(ptr noundef %call, i32 noundef %conv167352356, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb182, %sw.bb180, %sw.bb178, %sw.bb, %for.body170.sw.epilog_crit_edge
  %inc185 = add i32 %i.4351, 1
  %141 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %type, align 4
  %abs = getelementptr inbounds %struct.iforce_device, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %abs, align 4
  %arrayidx166 = getelementptr i16, ptr %144, i32 %inc185
  %145 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx166, align 2
  %cmp168 = icmp sgt i16 %146, -1
  br i1 %cmp168, label %sw.epilog.for.body170_crit_edge, label %sw.epilog.for.end186_crit_edge

sw.epilog.for.end186_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

sw.epilog.for.body170_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body170

for.end186:                                       ; preds = %sw.epilog.for.end186_crit_edge, %for.cond164.preheader.for.end186_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ff_effects.1)
  %tobool187.not = icmp eq i32 %ff_effects.1, 0
  br i1 %tobool187.not, label %for.end186.if.end211_crit_edge, label %for.cond189.preheader

for.end186.if.end211_crit_edge:                   ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end211

for.cond189.preheader:                            ; preds = %for.end186
  %147 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %type, align 4
  %ff191353 = getelementptr inbounds %struct.iforce_device, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %ff191353 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ff191353, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %150, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %152)
  %cmp194354 = icmp sgt i16 %152, -1
  br i1 %cmp194354, label %for.body196.lr.ph, label %for.cond189.preheader.for.end205_crit_edge

for.cond189.preheader.for.end205_crit_edge:       ; preds = %for.cond189.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end205

for.body196.lr.ph:                                ; preds = %for.cond189.preheader
  %ffbit201 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 12
  br label %for.body196

for.body196:                                      ; preds = %for.body196.for.body196_crit_edge, %for.body196.lr.ph
  %153 = phi i16 [ %152, %for.body196.lr.ph ], [ %159, %for.body196.for.body196_crit_edge ]
  %i.5355 = phi i32 [ 0, %for.body196.lr.ph ], [ %inc204, %for.body196.for.body196_crit_edge ]
  %conv193337 = zext i16 %153 to i32
  call void @_set_bit(i32 noundef %conv193337, ptr noundef %ffbit201) #5
  %inc204 = add i32 %i.5355, 1
  %154 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %type, align 4
  %ff191 = getelementptr inbounds %struct.iforce_device, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %ff191 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ff191, align 4
  %arrayidx192 = getelementptr i16, ptr %157, i32 %inc204
  %158 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx192, align 2
  %cmp194 = icmp sgt i16 %159, -1
  br i1 %cmp194, label %for.body196.for.body196_crit_edge, label %for.body196.for.end205_crit_edge

for.body196.for.end205_crit_edge:                 ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end205

for.body196.for.body196_crit_edge:                ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body196

for.end205:                                       ; preds = %for.body196.for.end205_crit_edge, %for.cond189.preheader.for.end205_crit_edge
  %call206 = call i32 @input_ff_create(ptr noundef %call, i32 noundef %ff_effects.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end209, label %for.end205.fail_crit_edge

for.end205.fail_crit_edge:                        ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end209:                                        ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  %ff210 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 20
  %160 = ptrtoint ptr %ff210 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ff210, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @iforce_upload_effect, ptr %161, align 4
  %erase = getelementptr inbounds %struct.ff_device, ptr %161, i32 0, i32 1
  %163 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @iforce_erase_effect, ptr %erase, align 4
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %161, i32 0, i32 3
  %164 = ptrtoint ptr %set_gain to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @iforce_set_gain, ptr %set_gain, align 4
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %161, i32 0, i32 4
  %165 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @iforce_set_autocenter, ptr %set_autocenter, align 4
  %playback = getelementptr inbounds %struct.ff_device, ptr %161, i32 0, i32 2
  %166 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @iforce_playback, ptr %playback, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.end209, %for.end186.if.end211_crit_edge
  %167 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %iforce, align 4
  %call213 = call i32 @input_register_device(ptr noundef %168) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end211.cleanup_crit_edge, label %if.end211.fail_crit_edge

if.end211.fail_crit_edge:                         ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end211.cleanup_crit_edge:                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail:                                             ; preds = %if.end211.fail_crit_edge, %for.end205.fail_crit_edge, %do.end29
  %error.0 = phi i32 [ -19, %do.end29 ], [ %call206, %for.end205.fail_crit_edge ], [ %call213, %if.end211.fail_crit_edge ]
  call void @input_free_device(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end211.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end211.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xport_ops = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %xport_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport_ops, align 4
  %start_io = getelementptr inbounds %struct.iforce_xport_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_io, align 4
  %call1 = tail call i32 %5(ptr noundef %1) #5
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %evbit, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @iforce_send_packet(ptr noundef %1, i16 noundef zeroext 16897, ptr noundef nonnull @.str.29) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_close(ptr noundef %dev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %for.cond.preheader

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

for.cond.preheader:                               ; preds = %entry
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ff, align 8
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %max_effects to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_effects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp58 = icmp sgt i32 %8, 0
  br i1 %cmp58, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flags = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %i.059, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #8
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call7 = tail call i32 @iforce_send_packet(ptr noundef %1, i16 noundef zeroext 16897, ptr noundef nonnull @.str.32) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 204) #5
  %xmit_flags = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i50 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i50)
  %tobool16.not = icmp eq i32 %and1.i50, 0
  br i1 %tobool16.not, label %for.end.if.end34_crit_edge, label %if.then17

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then17:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wait = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 7
  %call2060 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %15 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i5161 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i5161)
  %tobool24.not62 = icmp eq i32 %and1.i5161, 0
  br i1 %tobool24.not62, label %if.then17.for.end30_crit_edge, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  br label %if.end26

if.then17.for.end30_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.then17.if.end26_crit_edge
  %call2063 = phi i32 [ %call20, %cleanup.if.end26_crit_edge ], [ %call2060, %if.then17.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2063)
  %tobool27.not = icmp eq i32 %call2063, 0
  br i1 %tobool27.not, label %cleanup, label %if.end26.__out_crit_edge

if.end26.__out_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end26
  call void @schedule() #5
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %17 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i51 = and i32 %18, 1
  %tobool24.not = icmp eq i32 %and1.i51, 0
  br i1 %tobool24.not, label %cleanup.for.end30_crit_edge, label %cleanup.if.end26_crit_edge

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

cleanup.for.end30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %cleanup.for.end30_crit_edge, %if.then17.for.end30_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end30, %if.end26.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end34

if.end34:                                         ; preds = %__out, %for.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %xport_ops = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %xport_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xport_ops, align 4
  %stop_io = getelementptr inbounds %struct.iforce_xport_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %stop_io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_io, align 4
  call void %22(ptr noundef %1) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iforce_dump_packet(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #5
  %2 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !117
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %data, align 1
  %6 = lshr i16 %magnitude, 9
  %conv1 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %2, align 1
  %call3 = call i32 @iforce_send_packet(ptr noundef %1, i16 noundef zeroext 16386, ptr noundef nonnull %data) #5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %data, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %2, align 1
  %call7 = call i32 @iforce_send_packet(ptr noundef %1, i16 noundef zeroext 16386, ptr noundef nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_upload_effect(ptr nocapture noundef readonly %dev, ptr noundef %effect, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 2
  %idxprom = sext i16 %3 to i32
  %flags = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or.i = or i32 %5, 4
  store i32 %or.i, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %10 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %effect, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %11, label %if.end7.cleanup_crit_edge [
    i16 81, label %sw.bb
    i16 82, label %sw.bb9
    i16 83, label %if.end7.sw.bb11_crit_edge
    i16 85, label %if.end7.sw.bb11_crit_edge32
  ]

if.end7.sw.bb11_crit_edge32:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end7.sw.bb11_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @iforce_upload_periodic(ptr noundef %1, ptr noundef %effect, ptr noundef %old) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @iforce_upload_constant(ptr noundef %1, ptr noundef %effect, ptr noundef %old) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7.sw.bb11_crit_edge, %if.end7.sw.bb11_crit_edge32
  %call12 = tail call i32 @iforce_upload_condition(ptr noundef %1, ptr noundef %effect, ptr noundef %old) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb
  %ret.0 = phi i32 [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 0
  br i1 %cmp, label %if.then14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.then14 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_erase_effect(ptr nocapture noundef readonly %dev, i32 noundef %effect_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %effect_id, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %effect_id
  %call2 = tail call i32 @release_resource(ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mod2_chunk = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %effect_id, i32 1
  %call9 = tail call i32 @release_resource(ptr noundef %mod2_chunk) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.if.end10_crit_edge ], [ %call9, %if.then8 ], [ 0, %land.lhs.true.if.end10_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_set_gain(ptr nocapture noundef readonly %dev, i16 noundef zeroext %gain) #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #5
  %2 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !117
  %4 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !117
  %6 = lshr i16 %gain, 9
  %conv1 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %data, align 1
  %call2 = call i32 @iforce_send_packet(ptr noundef %1, i16 noundef zeroext 17153, ptr noundef nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp sgt i32 %value, 0
  %flags = getelementptr %struct.iforce, ptr %1, i32 0, i32 9, i32 %effect_id, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv = trunc i32 %effect_id to i16
  %call3 = tail call i32 @iforce_control_playback(ptr noundef %1, i16 noundef zeroext %conv, i32 noundef %value) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_send_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_upload_periodic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_upload_constant(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_upload_condition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_control_playback(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @iforce_init_device.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 225, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @iforce_init_device.__key.1, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 226, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iforce_init_device.__key.3, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 227, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 240, i32 20}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 248, i32 31}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 265, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iforce_init_device._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @iforce_init_device._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 278, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iforce_init_device._entry.12, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @iforce_init_device._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 283, i32 3}
!35 = !{ptr @iforce_init_device._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iforce_init_device._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 288, i32 3}
!39 = !{ptr @iforce_init_device._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iforce_init_device._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 293, i32 3}
!43 = !{ptr @iforce_init_device._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @iforce_init_device._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 297, i32 3}
!47 = !{ptr @iforce_init_device._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @iforce_init_device._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 308, i32 31}
!51 = !{ptr @__ksymtab_iforce_init_device, !52, !"__ksymtab_iforce_init_device", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 398, i32 1}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 178, i32 45}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 193, i32 5}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iforce_close._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @iforce_close._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 201, i32 45}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 48, i32 20}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 49, i32 20}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 50, i32 20}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 51, i32 20}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 52, i32 20}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 53, i32 20}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 54, i32 20}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 56, i32 20}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 57, i32 20}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 58, i32 20}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 59, i32 20}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 60, i32 20}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 61, i32 20}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 62, i32 20}
!90 = !{ptr @iforce_device, !91, !"iforce_device", i1 false, i1 false}
!91 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 47, i32 29}
!92 = !{ptr @btn_wheel, !93, !"btn_wheel", i1 false, i1 false}
!93 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 25, i32 21}
!94 = !{ptr @abs_wheel, !95, !"abs_wheel", i1 false, i1 false}
!95 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 39, i32 21}
!96 = !{ptr @ff_iforce, !97, !"ff_iforce", i1 false, i1 false}
!97 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 42, i32 21}
!98 = !{ptr @btn_joystick, !99, !"btn_joystick", i1 false, i1 false}
!99 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 16, i32 21}
!100 = !{ptr @abs_joystick, !101, !"abs_joystick", i1 false, i1 false}
!101 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 29, i32 21}
!102 = !{ptr @btn_joystick_avb, !103, !"btn_joystick_avb", i1 false, i1 false}
!103 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 21, i32 21}
!104 = !{ptr @abs_avb_pegasus, !105, !"abs_avb_pegasus", i1 false, i1 false}
!105 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 35, i32 21}
!106 = !{ptr @abs_joystick_rudder, !107, !"abs_joystick_rudder", i1 false, i1 false}
!107 = !{!"../drivers/input/joystick/iforce/iforce-main.c", i32 32, i32 21}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}

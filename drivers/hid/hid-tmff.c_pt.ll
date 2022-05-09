; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-tmff.c_pt.bc'
source_filename = "../drivers/hid/hid-tmff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.tmff_device = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_tmff__223_266_tm_driver_init6 = internal global ptr @tm_driver_init, section ".initcall6.init", align 4
@tm_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @tm_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @tm_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tm_driver_exit = internal global ptr @tm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [35 x i8] c"hid_tmff.file=drivers/hid/hid-tmff\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"hid_tmff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_tmff\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thrustmaster\00", [19 x i8] zeroinitializer }, align 32
@tm_devices = internal constant { [11 x %struct.hid_device_id], [48 x i8] } { [11 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45824, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45828, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45856, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45859, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45860, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46597, i32 ptrtoint (ptr @ff_joystick to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46673, i32 ptrtoint (ptr @ff_rumble to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46675, i32 ptrtoint (ptr @ff_joystick to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46676, i32 ptrtoint (ptr @ff_joystick to i32) }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46682, i32 ptrtoint (ptr @ff_joystick to i32) }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ff_rumble = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 80, i16 -1], [28 x i8] zeroinitializer }, align 32
@ff_joystick = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 82, i16 -1], [28 x i8] zeroinitializer }, align 32
@tm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tm_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-tmff.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tm_probe._entry_ptr = internal global ptr @tm_probe._entry, section ".printk_index", align 4
@tm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@tm_probe._entry_ptr.9 = internal global ptr @tm_probe._entry.7, section ".printk_index", align 4
@tmff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmff_init\00", [22 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr = internal global ptr @tmff_init._entry, section ".printk_index", align 4
@tmff_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 153, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ignoring FF field with report_count < 2\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.15 = internal global ptr @tmff_init._entry.12, section ".printk_index", align 4
@tmff_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.4, i32 159, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ignoring FF field with logical_maximum == logical_minimum\0A\00", [37 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.18 = internal global ptr @tmff_init._entry.16, section ".printk_index", align 4
@tmff_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.4, i32 164, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ignoring FF field in other report\0A\00", [61 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.21 = internal global ptr @tmff_init._entry.19, section ".printk_index", align 4
@tmff_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.4, i32 169, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ignoring duplicate FF field\0A\00", [35 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.24 = internal global ptr @tmff_init._entry.22, section ".printk_index", align 4
@tmff_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.4, i32 183, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ignoring unknown output usage %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.27 = internal global ptr @tmff_init._entry.25, section ".printk_index", align 4
@tmff_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't find FF field in output reports\0A\00", [57 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.30 = internal global ptr @tmff_init._entry.28, section ".printk_index", align 4
@tmff_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.11, ptr @.str.4, i32 199, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"force feedback for ThrustMaster devices by Zinx Verituse <zinx@epicsol.org>\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tmff_init._entry_ptr.34 = internal global ptr @tmff_init._entry.31, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@tmff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: (x, y)=(%04x, %04x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmff_play\00", [22 x i8] zeroinitializer }, align 32
@tmff_play._entry_ptr = internal global ptr @tmff_play._entry, section ".printk_index", align 4
@tmff_play._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: (left,right)=(%08x, %08x)\0A\00", [63 x i8] zeroinitializer }, align 32
@tmff_play._entry_ptr.39 = internal global ptr @tmff_play._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 80, i64 82]
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"tm_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 261, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 266, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 262, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"tm_devices\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 236, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"ff_rumble\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 27, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"ff_joystick\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 32, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 219, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 225, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 129, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 153, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 159, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 164, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 169, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 182, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 190, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 199, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 91, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [26 x i8] c"../drivers/hid/hid-tmff.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 109, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_tm_driver_exit, ptr @__initcall__kmod_hid_tmff__223_266_tm_driver_init6, ptr @tm_driver_exit, ptr @tm_probe._entry, ptr @tm_probe._entry.7, ptr @tm_probe._entry_ptr, ptr @tm_probe._entry_ptr.9, ptr @tmff_init._entry, ptr @tmff_init._entry.12, ptr @tmff_init._entry.16, ptr @tmff_init._entry.19, ptr @tmff_init._entry.22, ptr @tmff_init._entry.25, ptr @tmff_init._entry.28, ptr @tmff_init._entry.31, ptr @tmff_init._entry_ptr, ptr @tmff_init._entry_ptr.15, ptr @tmff_init._entry_ptr.18, ptr @tmff_init._entry_ptr.21, ptr @tmff_init._entry_ptr.24, ptr @tmff_init._entry_ptr.27, ptr @tmff_init._entry_ptr.30, ptr @tmff_init._entry_ptr.34, ptr @tmff_play._entry, ptr @tmff_play._entry.37, ptr @tmff_play._entry_ptr, ptr @tmff_play._entry_ptr.39, ptr @tm_driver, ptr @.str, ptr @.str.1, ptr @tm_devices, ptr @ff_rumble, ptr @ff_joystick, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_devices to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_rumble to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_joystick to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmff_play._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @tm_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @tm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %3 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %input.i = getelementptr inbounds %struct.hid_input, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #10
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %report_list6.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %report_list6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %report.07.i = load ptr, ptr %report_list6.i, align 4
  %cmp.not8.i = icmp eq ptr %report.07.i, %report_list6.i
  br i1 %cmp.not8.i, label %if.end5.i.for.end80.i_crit_edge, label %for.cond11.preheader.lr.ph.i

if.end5.i.for.end80.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80.i

for.cond11.preheader.lr.ph.i:                     ; preds = %if.end5.i
  %dev67.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %ff_field.i = getelementptr inbounds %struct.tmff_device, ptr %call7.i.i.i, i32 0, i32 1
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 12
  br label %for.cond11.preheader.i

for.cond.loopexit.i:                              ; preds = %cleanup.i.for.cond.loopexit.i_crit_edge, %for.cond11.preheader.i.for.cond.loopexit.i_crit_edge
  %9 = ptrtoint ptr %report.09.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %report.0.i = load ptr, ptr %report.09.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list6.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end80.i_crit_edge, label %for.cond.loopexit.i.for.cond11.preheader.i_crit_edge

for.cond.loopexit.i.for.cond11.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond11.preheader.i

for.cond.loopexit.i.for.end80.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80.i

for.cond11.preheader.i:                           ; preds = %for.cond.loopexit.i.for.cond11.preheader.i_crit_edge, %for.cond11.preheader.lr.ph.i
  %report.09.i = phi ptr [ %report.07.i, %for.cond11.preheader.lr.ph.i ], [ %report.0.i, %for.cond.loopexit.i.for.cond11.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.09.i, i32 0, i32 6
  %10 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp125.not.i = icmp eq i32 %11, 0
  br i1 %cmp125.not.i, label %for.cond11.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond11.preheader.i.for.body13.i_crit_edge

for.cond11.preheader.i.for.body13.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body13.i

for.cond11.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

for.body13.i:                                     ; preds = %cleanup.i.for.body13.i_crit_edge, %for.cond11.preheader.i.for.body13.i_crit_edge
  %fieldnum.06.i = phi i32 [ %inc72.i, %cleanup.i.for.body13.i_crit_edge ], [ 0, %for.cond11.preheader.i.for.body13.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.hid_report, ptr %report.09.i, i32 0, i32 5, i32 %fieldnum.06.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.i = icmp eq i32 %15, 0
  br i1 %cmp16.i, label %for.body13.i.cleanup.i_crit_edge, label %if.end18.i

for.body13.i.cleanup.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end18.i:                                       ; preds = %for.body13.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usage.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65723, i32 %19)
  %cond.i = icmp eq i32 %19, 65723
  br i1 %cond.i, label %sw.bb.i, label %do.end66.i

sw.bb.i:                                          ; preds = %if.end18.i
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp21.i = icmp ult i32 %21, 2
  br i1 %cmp21.i, label %do.end25.i, label %if.end27.i

do.end25.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67.i, ptr noundef nonnull @.str.13) #9
  br label %cleanup.i

if.end27.i:                                       ; preds = %sw.bb.i
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 12
  %22 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_maximum.i, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 11
  %24 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp28.i = icmp eq i32 %23, %25
  br i1 %cmp28.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67.i, ptr noundef nonnull @.str.17) #9
  br label %cleanup.i

if.end34.i:                                       ; preds = %if.end27.i
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i.i, align 8
  %tobool36.not.i = icmp eq ptr %27, null
  %cmp38.not.i = icmp eq ptr %27, %report.09.i
  %or.cond.i = select i1 %tobool36.not.i, i1 true, i1 %cmp38.not.i
  br i1 %or.cond.i, label %if.end44.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67.i, ptr noundef nonnull @.str.20) #9
  br label %cleanup.i

if.end44.i:                                       ; preds = %if.end34.i
  %28 = ptrtoint ptr %ff_field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ff_field.i, align 4
  %tobool45.not.i = icmp eq ptr %29, null
  %cmp48.not.i = icmp eq ptr %29, %13
  %or.cond1.i = select i1 %tobool45.not.i, i1 true, i1 %cmp48.not.i
  br i1 %or.cond1.i, label %if.end54.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67.i, ptr noundef nonnull @.str.23) #9
  br label %cleanup.i

if.end54.i:                                       ; preds = %if.end44.i
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %report.09.i, ptr %call7.i.i.i, align 8
  %31 = ptrtoint ptr %ff_field.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %13, ptr %ff_field.i, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp593.i = icmp sgt i16 %33, -1
  br i1 %cmp593.i, label %if.end54.i.for.body61.i_crit_edge, label %if.end54.i.cleanup.i_crit_edge

if.end54.i.cleanup.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end54.i.for.body61.i_crit_edge:                ; preds = %if.end54.i
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.body61.i.for.body61.i_crit_edge, %if.end54.i.for.body61.i_crit_edge
  %34 = phi i16 [ %36, %for.body61.i.for.body61.i_crit_edge ], [ %33, %if.end54.i.for.body61.i_crit_edge ]
  %i.04.i = phi i32 [ %inc.i, %for.body61.i.for.body61.i_crit_edge ], [ 0, %if.end54.i.for.body61.i_crit_edge ]
  %conv2.i = zext i16 %34 to i32
  tail call void @_set_bit(i32 noundef %conv2.i, ptr noundef %ffbit.i) #6
  %inc.i = add i32 %i.04.i, 1
  %arrayidx58.i = getelementptr i16, ptr %2, i32 %inc.i
  %35 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx58.i, align 2
  %cmp59.i = icmp sgt i16 %36, -1
  br i1 %cmp59.i, label %for.body61.i.for.body61.i_crit_edge, label %for.body61.i.cleanup.i_crit_edge

for.body61.i.cleanup.i_crit_edge:                 ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.body61.i.for.body61.i_crit_edge:              ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body61.i

do.end66.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67.i, ptr noundef nonnull @.str.26, i32 noundef %19) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end66.i, %for.body61.i.cleanup.i_crit_edge, %if.end54.i.cleanup.i_crit_edge, %do.end52.i, %do.end42.i, %do.end32.i, %do.end25.i, %for.body13.i.cleanup.i_crit_edge
  %inc72.i = add nuw i32 %fieldnum.06.i, 1
  %37 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxfield.i, align 4
  %cmp12.i = icmp ult i32 %inc72.i, %38
  br i1 %cmp12.i, label %cleanup.i.for.body13.i_crit_edge, label %cleanup.i.for.cond.loopexit.i_crit_edge

cleanup.i.for.cond.loopexit.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

cleanup.i.for.body13.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i

for.end80.i:                                      ; preds = %for.cond.loopexit.i.for.end80.i_crit_edge, %if.end5.i.for.end80.i_crit_edge
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i.i, align 8
  %tobool82.not.i = icmp eq ptr %40, null
  br i1 %tobool82.not.i, label %do.end86.i, label %if.end88.i

do.end86.i:                                       ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev87.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87.i, ptr noundef nonnull @.str.29) #9
  br label %fail.i

if.end88.i:                                       ; preds = %for.end80.i
  %call89.i = tail call i32 @input_ff_create_memless(ptr noundef %6, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @tmff_play) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %do.end95.i, label %if.end88.i.fail.i_crit_edge

if.end88.i.fail.i_crit_edge:                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

do.end95.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev96.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev96.i, ptr noundef nonnull @.str.32) #9
  br label %cleanup

fail.i:                                           ; preds = %if.end88.i.fail.i_crit_edge, %do.end86.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail.i, %do.end95.i, %if.end.i.cleanup_crit_edge, %do.end.i, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call1, %do.end6 ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end95.i ], [ 0, %fail.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ff_field1 = getelementptr inbounds %struct.tmff_device, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ff_field1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ff_field1, align 4
  %4 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %effect, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.sw.epilog_crit_edge [
    i16 82, label %sw.bb
    i16 80, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  %conv2 = sext i16 %8 to i32
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logical_minimum, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_maximum, align 4
  %add.i = add nsw i32 %conv2, 128
  %sub.i = sub i32 %12, %10
  %mul.i = mul i32 %sub.i, %add.i
  %div.i = sdiv i32 %mul.i, 255
  %add1.i = add i32 %div.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %10)
  %cmp.i = icmp slt i32 %add1.i, %10
  %13 = tail call i32 @llvm.smin.i32(i32 %add1.i, i32 %12) #6
  %retval.0.i = select i1 %cmp.i, i32 %10, i32 %13
  %end_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %end_level to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %end_level, align 2
  %conv5 = sext i16 %15 to i32
  %add.i74 = add nsw i32 %conv5, 128
  %mul.i76 = mul i32 %add.i74, %sub.i
  %div.i77 = sdiv i32 %mul.i76, 255
  %add1.i78 = add i32 %div.i77, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i78, i32 %10)
  %cmp.i79 = icmp slt i32 %add1.i78, %10
  %16 = tail call i32 @llvm.smin.i32(i32 %add1.i78, i32 %12) #6
  %retval.0.i80 = select i1 %cmp.i79, i32 %10, i32 %16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %17 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %do.end

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i, i32 noundef %retval.0.i80) #9
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %entry
  %u16 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %weak_magnitude, align 2
  %conv17 = zext i16 %19 to i32
  %logical_minimum18 = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %logical_minimum18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %logical_minimum18, align 4
  %logical_maximum19 = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %logical_maximum19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_maximum19, align 4
  %sub.i81 = sub i32 %23, %21
  %mul.i82 = mul i32 %sub.i81, %conv17
  %div.i83 = udiv i32 %mul.i82, 65535
  %add.i84 = add i32 %div.i83, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i84, i32 %21)
  %cmp.i85 = icmp slt i32 %add.i84, %21
  %24 = tail call i32 @llvm.smin.i32(i32 %add.i84, i32 %23) #6
  %retval.0.i86 = select i1 %cmp.i85, i32 %21, i32 %24
  %25 = ptrtoint ptr %u16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %u16, align 4
  %conv22 = zext i16 %26 to i32
  %mul.i88 = mul i32 %sub.i81, %conv22
  %div.i89 = udiv i32 %mul.i88, 65535
  %add.i90 = add i32 %div.i89, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i90, i32 %21)
  %cmp.i91 = icmp slt i32 %add.i90, %21
  %27 = tail call i32 @llvm.smin.i32(i32 %add.i90, i32 %23) #6
  %retval.0.i92 = select i1 %cmp.i91, i32 %21, i32 %27
  %product = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45856, i32 %29)
  %cmp = icmp eq i32 %29, 45856
  %spec.select = select i1 %cmp, i32 %retval.0.i92, i32 %retval.0.i86
  %spec.select73 = select i1 %cmp, i32 %retval.0.i86, i32 %retval.0.i92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %30 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool33.not = icmp eq i32 %30, 0
  br i1 %tobool33.not, label %sw.bb15.sw.epilog.sink.split_crit_edge, label %do.end37

sw.bb15.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end37:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4, i32 noundef %spec.select, i32 noundef %spec.select73) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end37, %sw.bb15.sw.epilog.sink.split_crit_edge, %do.end, %sw.bb.sw.epilog.sink.split_crit_edge
  %spec.select.sink = phi i32 [ %retval.0.i, %do.end ], [ %retval.0.i, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %spec.select, %do.end37 ], [ %spec.select, %sw.bb15.sw.epilog.sink.split_crit_edge ]
  %spec.select73.sink = phi i32 [ %retval.0.i80, %do.end ], [ %retval.0.i80, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %spec.select73, %do.end37 ], [ %spec.select73, %sw.bb15.sw.epilog.sink.split_crit_edge ]
  %value = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 10
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.sink, ptr %32, align 4
  %34 = load ptr, ptr %value, align 4
  %arrayidx46 = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select73.sink, ptr %arrayidx46, align 4
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %37, i32 noundef 9) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_hid_tmff__223_266_tm_driver_init6, !1, !"__initcall__kmod_hid_tmff__223_266_tm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-tmff.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_tm_driver_exit, !1, !"__exitcall_tm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-tmff.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-tmff.c", i32 262, i32 10}
!9 = !{ptr @tm_driver, !10, !"tm_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-tmff.c", i32 261, i32 26}
!11 = !{ptr @tm_devices, !12, !"tm_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-tmff.c", i32 236, i32 35}
!13 = !{ptr @ff_rumble, !14, !"ff_rumble", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-tmff.c", i32 27, i32 27}
!15 = !{ptr @ff_joystick, !16, !"ff_joystick", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-tmff.c", i32 32, i32 27}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-tmff.c", i32 219, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-tmff.c", i32 225, i32 3}
!27 = !{ptr @tm_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tm_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-tmff.c", i32 129, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tmff_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tmff_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-tmff.c", i32 153, i32 6}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tmff_init._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tmff_init._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-tmff.c", i32 159, i32 6}
!41 = !{ptr @tmff_init._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tmff_init._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-tmff.c", i32 164, i32 6}
!45 = !{ptr @tmff_init._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tmff_init._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-tmff.c", i32 169, i32 6}
!49 = !{ptr @tmff_init._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tmff_init._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-tmff.c", i32 182, i32 5}
!53 = !{ptr @tmff_init._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tmff_init._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-tmff.c", i32 190, i32 3}
!57 = !{ptr @tmff_init._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tmff_init._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-tmff.c", i32 199, i32 2}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tmff_init._entry.31, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tmff_init._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-tmff.c", i32 91, i32 3}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tmff_play._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @tmff_play._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-tmff.c", i32 109, i32 3}
!71 = !{ptr @tmff_play._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tmff_play._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

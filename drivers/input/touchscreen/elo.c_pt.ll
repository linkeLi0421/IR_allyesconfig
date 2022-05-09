; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/elo.c_pt.bc'
source_filename = "../drivers/input/touchscreen/elo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.elo = type { ptr, ptr, %struct.mutex, %struct.completion, i32, i32, i8, i8, [10 x i8], [8 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [43 x i8] c"elo.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [46 x i8] c"elo.description=Elo serial touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"elo.file=drivers/input/touchscreen/elo\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [16 x i8] c"elo.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_elo__234_406_elo_drv_init6 = internal global ptr @elo_drv_init, section ".initcall6.init", align 4
@elo_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @elo_serio_ids, i8 0, ptr null, ptr @elo_interrupt, ptr @elo_connect, ptr null, ptr null, ptr @elo_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_elo_drv_exit = internal global ptr @elo_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"elo\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Elo serial touchscreen driver\00", [34 x i8] zeroinitializer }, align 32
@elo_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 41 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@elo_process_data_10.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elo_process_data_10\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/touchscreen/elo.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsynchronized data: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@elo_process_data_10.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad checksum: 0x%02x, expected 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@elo_process_data_10.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unexpected packet: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@elo_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&elo->cmd_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Elo Serial TouchScreen\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@elo_setup_10.elo_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Accu\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dura\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Intelli\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Carroll\00", [24 x i8] zeroinitializer }, align 32
@elo_setup_10._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 277, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%sTouch touchscreen, fw: %02x.%02x, features: 0x%02x, controller: 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elo_setup_10\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elo_setup_10._entry_ptr = internal global ptr @elo_setup_10._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 84]
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"elo_drv\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 395, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 406, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 399, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"elo_serio_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 383, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 84, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 91, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 321, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 323, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 325, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"elo_types\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 45 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 53 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 260, i32 64 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [35 x i8] c"../drivers/input/touchscreen/elo.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 274, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_elo_drv_exit, ptr @__initcall__kmod_elo__234_406_elo_drv_init6, ptr @elo_drv_exit, ptr @elo_setup_10._entry, ptr @elo_setup_10._entry_ptr, ptr @elo_drv, ptr @.str, ptr @.str.1, ptr @elo_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @elo_connect.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @elo_setup_10.elo_types, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elo_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elo_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elo_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elo_setup_10.elo_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elo_setup_10._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elo_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @elo_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elo_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_unregister_driver(ptr noundef nonnull @elo_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elo_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.elo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge15
    i32 3, label %sw.bb2
  ]

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elo_process_data_10(ptr noundef %1, i8 noundef zeroext %data)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %data2.i = getelementptr inbounds %struct.elo, ptr %1, i32 0, i32 8
  %idx.i = getelementptr inbounds %struct.elo, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  %arrayidx.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %data, ptr %arrayidx.i, align 1
  %10 = load i32, ptr %idx.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %idx.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %10, label %sw.bb1.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb51.i
    i32 5, label %sw.bb56.i
  ]

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %data)
  %cmp.not.i = icmp ugt i8 %data, -65
  br i1 %cmp.not.i, label %sw.bb.i.sw.epilog_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6.i:                                         ; preds = %sw.bb1
  %12 = and i8 %data, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp9.not.i = icmp eq i8 %12, -128
  br i1 %cmp9.not.i, label %sw.bb6.i.sw.epilog_crit_edge, label %sw.bb6.i.sw.epilog.sink.split.i_crit_edge

sw.bb6.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb6.i.sw.epilog_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14.i:                                        ; preds = %sw.bb1
  %13 = and i8 %data, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %cmp17.not.i = icmp eq i8 %13, 64
  br i1 %cmp17.not.i, label %sw.bb14.i.sw.epilog_crit_edge, label %sw.bb14.i.sw.epilog.sink.split.i_crit_edge

sw.bb14.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb14.i.sw.epilog_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %data)
  %tobool.not.i = icmp ult i8 %data, 64
  br i1 %tobool.not.i, label %if.end27.i, label %sw.bb22.i.sw.epilog.sink.split.i_crit_edge

sw.bb22.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.end27.i:                                       ; preds = %sw.bb22.i
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data2.i, align 2
  %16 = and i8 %15, 63
  %and31.i = zext i8 %16 to i32
  %shl.i = shl nuw nsw i32 %and31.i, 6
  %arrayidx33.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx33.i, align 1
  %19 = and i8 %18, 63
  %and35.i = zext i8 %19 to i32
  %or.i = or i32 %shl.i, %and35.i
  tail call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 0, i32 noundef %or.i) #6
  %arrayidx37.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx37.i, align 2
  %22 = and i8 %21, 63
  %and39.i = zext i8 %22 to i32
  %shl40.i = shl nuw nsw i32 %and39.i, 6
  %arrayidx42.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx42.i, align 1
  %25 = and i8 %24, 63
  %and44.i = zext i8 %25 to i32
  %or45.i = or i32 %shl40.i, %and44.i
  tail call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 1, i32 noundef %or45.i) #6
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp46.i = icmp eq i32 %27, 2
  br i1 %cmp46.i, label %if.end27.i.sw.epilog.sink.split.sink.split.sink.split.i_crit_edge, label %if.end27.i.sw.epilog_crit_edge

if.end27.i.sw.epilog_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end27.i.sw.epilog.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.sink.split.i

sw.bb51.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data)
  %tobool52.not.i = icmp eq i8 %data, 0
  br i1 %tobool52.not.i, label %sw.bb51.i.sw.epilog_crit_edge, label %sw.bb51.i.sw.epilog.sink.split.sink.split.i_crit_edge

sw.bb51.i.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.i

sw.bb51.i.sw.epilog_crit_edge:                    ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb56.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %data)
  %cmp59.i = icmp ult i8 %data, 16
  br i1 %cmp59.i, label %if.then61.i, label %sw.bb56.i.sw.epilog.sink.split.sink.split.i_crit_edge

sw.bb56.i.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.i

if.then61.i:                                      ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx63.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 5
  %28 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %29 to i32
  tail call void @input_event(ptr noundef %6, i32 noundef 3, i32 noundef 24, i32 noundef %conv64.i) #6
  %30 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool67.i = icmp ne i8 %31, 0
  %lnot.ext.i.i = zext i1 %tobool67.i to i32
  br label %sw.epilog.sink.split.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.sink.split.i:     ; preds = %if.then61.i, %if.end27.i.sw.epilog.sink.split.sink.split.sink.split.i_crit_edge
  %lnot.ext.i.sink.i = phi i32 [ %lnot.ext.i.i, %if.then61.i ], [ 1, %if.end27.i.sw.epilog.sink.split.sink.split.sink.split.i_crit_edge ]
  tail call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i.sink.i) #6
  br label %sw.epilog.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.i:                ; preds = %sw.epilog.sink.split.sink.split.sink.split.i, %sw.bb56.i.sw.epilog.sink.split.sink.split.i_crit_edge, %sw.bb51.i.sw.epilog.sink.split.sink.split.i_crit_edge
  tail call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.epilog.sink.split.sink.split.i, %sw.bb22.i.sw.epilog.sink.split.i_crit_edge, %sw.bb14.i.sw.epilog.sink.split.i_crit_edge, %sw.bb6.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %32 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %idx.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %idx.i8 = getelementptr inbounds %struct.elo, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %idx.i8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx.i8, align 4
  %arrayidx.i9 = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 %36
  %37 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %data, ptr %arrayidx.i9, align 1
  %38 = load i32, ptr %idx.i8, align 4
  %inc.i10 = add i32 %38, 1
  store i32 %inc.i10, ptr %idx.i8, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %38, label %sw.bb2.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i12
    i32 2, label %sw.bb6.i13
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i12:                                        ; preds = %sw.bb2
  %40 = and i8 %data, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp.not.i11 = icmp eq i8 %40, 1
  br i1 %cmp.not.i11, label %sw.bb.i12.sw.epilog_crit_edge, label %sw.bb.i12.sw.epilog.sink.split.i14_crit_edge

sw.bb.i12.sw.epilog.sink.split.i14_crit_edge:     ; preds = %sw.bb.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i14

sw.bb.i12.sw.epilog_crit_edge:                    ; preds = %sw.bb.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6.i13:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8.i, align 1
  %43 = xor i8 %42, -1
  %44 = lshr i8 %43, 7
  %.not.i = zext i8 %44 to i32
  tail call void @input_event(ptr noundef %34, i32 noundef 1, i32 noundef 330, i32 noundef %.not.i) #6
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.i, align 1
  %conv13.i = zext i8 %46 to i32
  tail call void @input_event(ptr noundef %34, i32 noundef 3, i32 noundef 0, i32 noundef %conv13.i) #6
  %arrayidx15.i = getelementptr %struct.elo, ptr %1, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx15.i, align 2
  %conv16.i = zext i8 %48 to i32
  tail call void @input_event(ptr noundef %34, i32 noundef 3, i32 noundef 1, i32 noundef %conv16.i) #6
  tail call void @input_event(ptr noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog.sink.split.i14

sw.epilog.sink.split.i14:                         ; preds = %sw.bb6.i13, %sw.bb.i12.sw.epilog.sink.split.i14_crit_edge
  %49 = ptrtoint ptr %idx.i8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %idx.i8, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split.i14, %sw.bb.i12.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.epilog.sink.split.i, %sw.bb51.i.sw.epilog_crit_edge, %if.end27.i.sw.epilog_crit_edge, %sw.bb14.i.sw.epilog_crit_edge, %sw.bb6.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elo_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #9
  %call1 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end:                                           ; preds = %entry
  %serio3 = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 4
  %id4 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id4, align 1
  %conv = zext i8 %3 to i32
  %id5 = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %id5, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i.i, align 8
  %expected_packet = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %expected_packet to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 84, ptr %expected_packet, align 4
  %cmd_mutex = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @elo_connect.__key) #6
  %cmd_done = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %phys = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 10
  %phys6 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %phys6)
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.9, ptr %call1, align 8
  %phys11 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %phys11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %phys, ptr %phys11, align 4
  %id12 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %10 = ptrtoint ptr %id12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 19, ptr %id12, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 41, ptr %vendor, align 2
  %12 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id5, align 4
  %conv15 = trunc i32 %13 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %version, align 2
  %dev18 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev18, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %17 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %evbit, align 8
  %arrayidx20 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %arrayidx20, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call21 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end24:                                         ; preds = %if.end
  %20 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id5, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %21, label %if.end24.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %if.end24.sw.bb31_crit_edge
    i32 3, label %sw.bb32
  ]

if.end24.sw.bb31_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #6
  %25 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serio3, align 4
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @_ctype, i32 0, i32 105) to i32))
  %27 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @_ctype, i32 0, i32 105), align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.not.i.i.i = icmp eq i8 %28, 0
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 105, i8 73
  %29 = ptrtoint ptr %expected_packet to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.select.i.i.i, ptr %expected_packet, align 4
  %30 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cmd_done, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %31 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serio3, align 4
  %lock.i45.i.i = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i45.i.i) #6
  %33 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serio3, align 4
  %write.i.i.i = getelementptr inbounds %struct.serio, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %sw.bb.elo_setup_10.exit_crit_edge, label %serio_write.exit.i.i

sw.bb.elo_setup_10.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit.i.i:                             ; preds = %sw.bb
  %call.i.i.i = tail call i32 %36(ptr noundef %34, i8 noundef zeroext 85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.preheader.i.i, label %serio_write.exit.i.i.elo_setup_10.exit_crit_edge

serio_write.exit.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.body.preheader.i.i:                           ; preds = %serio_write.exit.i.i
  %37 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serio3, align 4
  %write.i46.i.i = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %write.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i46.i.i, align 8
  %tobool.not.i47.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i47.i.i, label %for.body.preheader.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.i.i

for.body.preheader.i.i.elo_setup_10.exit_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.i.i:                           ; preds = %for.body.preheader.i.i
  %call.i48.i.i = tail call i32 %40(ptr noundef %38, i8 noundef zeroext 105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i48.i.i, 0
  br i1 %tobool10.not.i.i, label %for.inc.i.i, label %serio_write.exit51.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.i.i:                                      ; preds = %serio_write.exit51.i.i
  %41 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serio3, align 4
  %write.i46.1.i.i = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %write.i46.1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i46.1.i.i, align 8
  %tobool.not.i47.1.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i47.1.i.i, label %for.inc.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.1.i.i

for.inc.i.i.elo_setup_10.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.1.i.i:                         ; preds = %for.inc.i.i
  %call.i48.1.i.i = tail call i32 %44(ptr noundef %42, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.1.i.i)
  %tobool10.not.1.i.i = icmp eq i32 %call.i48.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %for.inc.1.i.i, label %serio_write.exit51.1.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.1.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.1.i.i:                                    ; preds = %serio_write.exit51.1.i.i
  %45 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serio3, align 4
  %write.i46.2.i.i = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %write.i46.2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i46.2.i.i, align 8
  %tobool.not.i47.2.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i47.2.i.i, label %for.inc.1.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.2.i.i

for.inc.1.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.2.i.i:                         ; preds = %for.inc.1.i.i
  %call.i48.2.i.i = tail call i32 %48(ptr noundef %46, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.2.i.i)
  %tobool10.not.2.i.i = icmp eq i32 %call.i48.2.i.i, 0
  br i1 %tobool10.not.2.i.i, label %for.inc.2.i.i, label %serio_write.exit51.2.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.2.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.2.i.i:                                    ; preds = %serio_write.exit51.2.i.i
  %49 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serio3, align 4
  %write.i46.3.i.i = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %write.i46.3.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i46.3.i.i, align 8
  %tobool.not.i47.3.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i47.3.i.i, label %for.inc.2.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.3.i.i

for.inc.2.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.3.i.i:                         ; preds = %for.inc.2.i.i
  %call.i48.3.i.i = tail call i32 %52(ptr noundef %50, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.3.i.i)
  %tobool10.not.3.i.i = icmp eq i32 %call.i48.3.i.i, 0
  br i1 %tobool10.not.3.i.i, label %for.inc.3.i.i, label %serio_write.exit51.3.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.3.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.3.i.i:                                    ; preds = %serio_write.exit51.3.i.i
  %53 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serio3, align 4
  %write.i46.4.i.i = getelementptr inbounds %struct.serio, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %write.i46.4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i46.4.i.i, align 8
  %tobool.not.i47.4.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i47.4.i.i, label %for.inc.3.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.4.i.i

for.inc.3.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.4.i.i:                         ; preds = %for.inc.3.i.i
  %call.i48.4.i.i = tail call i32 %56(ptr noundef %54, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.4.i.i)
  %tobool10.not.4.i.i = icmp eq i32 %call.i48.4.i.i, 0
  br i1 %tobool10.not.4.i.i, label %for.inc.4.i.i, label %serio_write.exit51.4.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.4.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.4.i.i:                                    ; preds = %serio_write.exit51.4.i.i
  %57 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serio3, align 4
  %write.i46.5.i.i = getelementptr inbounds %struct.serio, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %write.i46.5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i46.5.i.i, align 8
  %tobool.not.i47.5.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i47.5.i.i, label %for.inc.4.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.5.i.i

for.inc.4.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.5.i.i:                         ; preds = %for.inc.4.i.i
  %call.i48.5.i.i = tail call i32 %60(ptr noundef %58, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.5.i.i)
  %tobool10.not.5.i.i = icmp eq i32 %call.i48.5.i.i, 0
  br i1 %tobool10.not.5.i.i, label %for.inc.5.i.i, label %serio_write.exit51.5.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.5.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.5.i.i:                                    ; preds = %serio_write.exit51.5.i.i
  %61 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serio3, align 4
  %write.i46.6.i.i = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %write.i46.6.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i46.6.i.i, align 8
  %tobool.not.i47.6.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i47.6.i.i, label %for.inc.5.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.6.i.i

for.inc.5.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.6.i.i:                         ; preds = %for.inc.5.i.i
  %call.i48.6.i.i = tail call i32 %64(ptr noundef %62, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.6.i.i)
  %tobool10.not.6.i.i = icmp eq i32 %call.i48.6.i.i, 0
  br i1 %tobool10.not.6.i.i, label %for.inc.6.i.i, label %serio_write.exit51.6.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.6.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.6.i.i:                                    ; preds = %serio_write.exit51.6.i.i
  %65 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %serio3, align 4
  %write.i46.7.i.i = getelementptr inbounds %struct.serio, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %write.i46.7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i46.7.i.i, align 8
  %tobool.not.i47.7.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i47.7.i.i, label %for.inc.6.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit51.7.i.i

for.inc.6.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit51.7.i.i:                         ; preds = %for.inc.6.i.i
  %call.i48.7.i.i = tail call i32 %68(ptr noundef %66, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.7.i.i)
  %tobool10.not.7.i.i = icmp eq i32 %call.i48.7.i.i, 0
  br i1 %tobool10.not.7.i.i, label %for.inc.7.i.i, label %serio_write.exit51.7.i.i.elo_setup_10.exit_crit_edge

serio_write.exit51.7.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit51.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

for.inc.7.i.i:                                    ; preds = %serio_write.exit51.7.i.i
  %69 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %serio3, align 4
  %write.i52.i.i = getelementptr inbounds %struct.serio, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %write.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write.i52.i.i, align 8
  %tobool.not.i53.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i53.i.i, label %for.inc.7.i.i.elo_setup_10.exit_crit_edge, label %serio_write.exit57.i.i

for.inc.7.i.i.elo_setup_10.exit_crit_edge:        ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

serio_write.exit57.i.i:                           ; preds = %for.inc.7.i.i
  %call.i54.i.i = tail call i32 %72(ptr noundef %70, i8 noundef zeroext 104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i54.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %serio_write.exit57.i.i.elo_setup_10.exit_crit_edge

serio_write.exit57.i.i.elo_setup_10.exit_crit_edge: ; preds = %serio_write.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

if.end17.i.i:                                     ; preds = %serio_write.exit57.i.i
  %call19.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #6
  %73 = ptrtoint ptr %expected_packet to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %expected_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %74)
  %cmp22.i.i = icmp eq i8 %74, 84
  br i1 %cmp22.i.i, label %if.end.i, label %if.end17.i.i.elo_setup_10.exit_crit_edge

if.end17.i.i.elo_setup_10.exit_crit_edge:         ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit

if.end.i:                                         ; preds = %if.end17.i.i
  %response.i.i = getelementptr inbounds %struct.elo, ptr %call7.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %response.i.i, align 8
  %packet.sroa.6.0.extract.shift.i = lshr i64 %76, 48
  %packet.sroa.6.0.extract.trunc.i = trunc i64 %packet.sroa.6.0.extract.shift.i to i32
  %packet.sroa.9.0.extract.shift.i = lshr i64 %76, 32
  %packet.sroa.12.0.extract.shift.i = lshr i64 %76, 24
  %packet.sroa.12.0.extract.trunc.i = trunc i64 %packet.sroa.12.0.extract.shift.i to i32
  %packet.sroa.15.0.extract.shift.i = lshr i64 %76, 16
  %packet.sroa.15.0.extract.trunc.i = trunc i64 %packet.sroa.15.0.extract.shift.i to i32
  %packet.sroa.19.0.extract.trunc.i = trunc i64 %76 to i32
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #6
  %77 = trunc i64 %packet.sroa.15.0.extract.shift.i to i16
  %conv.i = shl i16 %77, 8
  %78 = trunc i64 %packet.sroa.12.0.extract.shift.i to i16
  %conv3.i = and i16 %78, 255
  %or.i = or i16 %conv.i, %conv3.i
  %version.i = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 3
  %79 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %or.i, ptr %version.i, align 2
  tail call void @input_set_abs_params(ptr noundef %24, i32 noundef 0, i32 noundef 96, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef %24, i32 noundef 1, i32 noundef 96, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #6
  %80 = and i64 %76, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %tobool7.not.i = icmp eq i64 %80, 0
  br i1 %tobool7.not.i, label %if.end.i.elo_setup_10.exit.thread_crit_edge, label %if.then8.i

if.end.i.elo_setup_10.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elo_setup_10.exit.thread

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef %24, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  br label %elo_setup_10.exit.thread

elo_setup_10.exit.thread:                         ; preds = %if.then8.i, %if.end.i.elo_setup_10.exit.thread_crit_edge
  %81 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %serio3, align 4
  %dev10.i = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 18
  %83 = and i32 %packet.sroa.6.0.extract.trunc.i, 3
  %arrayidx14.i = getelementptr [4 x ptr], ptr @elo_setup_10.elo_types, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx14.i, align 4
  %conv16.i = and i32 %packet.sroa.15.0.extract.trunc.i, 255
  %conv18.i = and i32 %packet.sroa.12.0.extract.trunc.i, 255
  %86 = trunc i64 %packet.sroa.9.0.extract.shift.i to i32
  %conv20.i = and i32 %86, 255
  %conv22.i = and i32 %packet.sroa.19.0.extract.trunc.i, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.15, ptr noundef %85, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #10
  br label %sw.epilog

elo_setup_10.exit:                                ; preds = %if.end17.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit57.i.i.elo_setup_10.exit_crit_edge, %for.inc.7.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.7.i.i.elo_setup_10.exit_crit_edge, %for.inc.6.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.6.i.i.elo_setup_10.exit_crit_edge, %for.inc.5.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.5.i.i.elo_setup_10.exit_crit_edge, %for.inc.4.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.4.i.i.elo_setup_10.exit_crit_edge, %for.inc.3.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.3.i.i.elo_setup_10.exit_crit_edge, %for.inc.2.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.2.i.i.elo_setup_10.exit_crit_edge, %for.inc.1.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.1.i.i.elo_setup_10.exit_crit_edge, %for.inc.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit51.i.i.elo_setup_10.exit_crit_edge, %for.body.preheader.i.i.elo_setup_10.exit_crit_edge, %serio_write.exit.i.i.elo_setup_10.exit_crit_edge, %sw.bb.elo_setup_10.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #6
  br label %fail3

sw.bb30:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 24, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #6
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb30, %if.end24.sw.bb31_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 96, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 96, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb31, %elo_setup_10.exit.thread, %if.end24.sw.epilog_crit_edge
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %call34 = tail call i32 @input_register_device(ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.fail3_crit_edge

sw.epilog.fail3_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail3:                                            ; preds = %sw.epilog.fail3_crit_edge, %elo_setup_10.exit
  %err.0 = phi i32 [ %call34, %sw.epilog.fail3_crit_edge ], [ -5, %elo_setup_10.exit ]
  tail call void @serio_close(ptr noundef %serio) #6
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.1 = phi i32 [ %call21, %if.end.fail2_crit_edge ], [ %err.0, %fail3 ]
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.2 = phi i32 [ %err.1, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elo_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.input_get_device.exit_crit_edge, label %cond.true.i

entry.input_get_device.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_get_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  %call.i = tail call ptr @get_device(ptr noundef %dev1.i) #6
  br label %input_get_device.exit

input_get_device.exit:                            ; preds = %cond.true.i, %entry.input_get_device.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %5) #6
  tail call void @serio_close(ptr noundef %serio) #6
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool.not.i10 = icmp eq ptr %8, null
  br i1 %tobool.not.i10, label %input_get_device.exit.input_put_device.exit_crit_edge, label %if.then.i

input_get_device.exit.input_put_device.exit_crit_edge: ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_put_device.exit

if.then.i:                                        ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i11 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i11) #6
  br label %input_put_device.exit

input_put_device.exit:                            ; preds = %if.then.i, %input_get_device.exit.input_put_device.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elo_process_data_10(ptr noundef %elo, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %elo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elo, align 4
  %idx = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx, align 1
  %5 = load i32, ptr %idx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %idx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %csum = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 7
  %7 = ptrtoint ptr %csum to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %csum, align 1
  %conv = zext i8 %data to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %data)
  %cmp.not = icmp eq i8 %data, 85
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %do.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elo_process_data_10.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elo_process_data_10, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !64

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %serio = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 1
  %8 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serio, align 4
  %dev8 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elo_process_data_10.__UNIQUE_ID_ddebug231, ptr noundef %dev8, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idx, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idx, align 4
  %conv14 = zext i8 %data to i32
  %csum15 = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 7
  %12 = ptrtoint ptr %csum15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %csum15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %data)
  %cmp17.not = icmp eq i8 %13, %data
  br i1 %cmp17.not, label %if.end41, label %do.body20

do.body20:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elo_process_data_10.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elo_process_data_10, %if.then32)) #6
          to label %sw.epilog [label %if.then32], !srcloc !64

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %serio33 = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 1
  %14 = ptrtoint ptr %serio33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serio33, align 4
  %dev34 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %csum15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %csum15, align 1
  %conv37 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elo_process_data_10.__UNIQUE_ID_ddebug232, ptr noundef %dev34, ptr noundef nonnull @.str.5, i32 noundef %conv14, i32 noundef %conv37) #6
  br label %sw.epilog

if.end41:                                         ; preds = %sw.bb12
  %arrayidx43 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx43, align 1
  %expected_packet = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 6
  %20 = ptrtoint ptr %expected_packet to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %expected_packet, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp46.not = icmp eq i8 %19, %21
  br i1 %cmp46.not, label %if.end77, label %if.then48

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %19)
  %cmp52.not = icmp eq i8 %19, 84
  br i1 %cmp52.not, label %if.then48.sw.epilog_crit_edge, label %do.body55

if.then48.sw.epilog_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elo_process_data_10.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elo_process_data_10, %if.then67)) #6
          to label %sw.epilog [label %if.then67], !srcloc !64

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %serio68 = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 1
  %22 = ptrtoint ptr %serio68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serio68, align 4
  %dev69 = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx43, align 1
  %conv72 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elo_process_data_10.__UNIQUE_ID_ddebug233, ptr noundef %dev69, ptr noundef nonnull @.str.6, i32 noundef %conv72) #6
  br label %sw.epilog

if.end77:                                         ; preds = %if.end41
  %26 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %19, label %if.else136 [
    i8 84, label %if.then89
    i8 65, label %if.then127
  ], !prof !65

if.then89:                                        ; preds = %if.end77
  %arrayidx91 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx91, align 2
  %conv92 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv92, 8
  %arrayidx94 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %30 to i32
  %or = or i32 %shl, %conv95
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %or) #6
  %arrayidx97 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx97, align 2
  %conv98 = zext i8 %32 to i32
  %shl99 = shl nuw nsw i32 %conv98, 8
  %arrayidx101 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %34 to i32
  %or103 = or i32 %shl99, %conv102
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %or103) #6
  %arrayidx105 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx105, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool107.not = icmp sgt i8 %36, -1
  br i1 %tobool107.not, label %if.then89.if.end117_crit_edge, label %if.then108

if.then89.if.end117_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then108:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx110 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 8
  %37 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx110, align 2
  %conv111 = zext i8 %38 to i32
  %shl112 = shl nuw nsw i32 %conv111, 8
  %arrayidx114 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 7
  %39 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %40 to i32
  %or116 = or i32 %shl112, %conv115
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %or116) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.then89.if.end117_crit_edge
  %41 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx105, align 2
  %43 = and i8 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.i = icmp ne i8 %43, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

if.then127:                                       ; preds = %if.end77
  %arrayidx129 = getelementptr %struct.elo, ptr %elo, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx129, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %45)
  %cmp131 = icmp eq i8 %45, 48
  br i1 %cmp131, label %if.then133, label %if.then127.if.end135_crit_edge

if.then127.if.end135_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then133:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %expected_packet to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 84, ptr %expected_packet, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then127.if.end135_crit_edge
  %cmd_done = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_done) #6
  br label %sw.epilog

if.else136:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %response = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 9
  %47 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %arrayidx43, align 1
  %49 = ptrtoint ptr %response to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %response, align 4
  %50 = ptrtoint ptr %expected_packet to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 65, ptr %expected_packet, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else136, %if.end135, %if.end117, %if.then67, %do.body55, %if.then48.sw.epilog_crit_edge, %if.then32, %do.body20, %do.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %csum143 = getelementptr inbounds %struct.elo, ptr %elo, i32 0, i32 7
  %51 = ptrtoint ptr %csum143 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %csum143, align 1
  %add = add i8 %52, %data
  store i8 %add, ptr %csum143, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/elo.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/elo.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/elo.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_elo__234_406_elo_drv_init6, !8, !"__initcall__kmod_elo__234_406_elo_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/elo.c", i32 406, i32 1}
!9 = !{ptr @__exitcall_elo_drv_exit, !8, !"__exitcall_elo_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/touchscreen/elo.c", i32 399, i32 17}
!13 = !{ptr @elo_drv, !14, !"elo_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/elo.c", i32 395, i32 28}
!15 = !{ptr @elo_serio_ids, !16, !"elo_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/elo.c", i32 383, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/elo.c", i32 75, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @elo_process_data_10.__UNIQUE_ID_ddebug231, !18, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/elo.c", i32 84, i32 4}
!24 = !{ptr @elo_process_data_10.__UNIQUE_ID_ddebug232, !23, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/elo.c", i32 91, i32 5}
!27 = !{ptr @elo_process_data_10.__UNIQUE_ID_ddebug233, !26, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!28 = !{ptr @elo_connect.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/elo.c", i32 321, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/elo.c", i32 323, i32 41}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/elo.c", i32 325, i32 20}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/elo.c", i32 260, i32 37}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/elo.c", i32 260, i32 45}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/elo.c", i32 260, i32 53}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/elo.c", i32 260, i32 64}
!46 = !{ptr @elo_setup_10.elo_types, !47, !"elo_types", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/elo.c", i32 260, i32 21}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/elo.c", i32 274, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @elo_setup_10._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @elo_setup_10._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148699855, i64 2148699860, i64 2148699873, i64 2148699917, i64 2148699951, i64 2148699972}
!65 = !{!"branch_weights", i32 1, i32 4000, i32 1}

; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wacom_w8001.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wacom_w8001.c"
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
%struct.w8001 = type { ptr, ptr, ptr, %struct.completion, i32, i32, i8, [13 x i8], [13 x i8], [42 x i8], i32, i32, i16, i16, i16, i16, [64 x i8], [64 x i8], i32, %struct.mutex }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author227 = internal constant [57 x i8] c"wacom_w8001.author=Jaya Kumar <jayakumar.lkml@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [62 x i8] c"wacom_w8001.description=Wacom W8001 serial touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [55 x i8] c"wacom_w8001.file=drivers/input/touchscreen/wacom_w8001\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [24 x i8] c"wacom_w8001.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_wacom_w8001__232_709_w8001_drv_init6 = internal global ptr @w8001_drv_init, section ".initcall6.init", align 4
@w8001_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @w8001_serio_ids, i8 0, ptr null, ptr @w8001_interrupt, ptr @w8001_connect, ptr null, ptr null, ptr @w8001_disconnect, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_w8001_drv_exit = internal global ptr @w8001_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wacom_w8001\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wacom W8001 serial touchscreen driver\00", [58 x i8] zeroinitializer }, align 32
@w8001_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 57 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w8001\00", [26 x i8] zeroinitializer }, align 32
@w8001_interrupt.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w8001_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/wacom_w8001.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"w8001: unsynchronized data: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@w8001_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&w8001->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wacom Serial\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" Pen\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Finger\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Penabled\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" 1FG\00", [27 x i8] zeroinitializer }, align 32
@w8001_setup_touch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 526, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w8001_setup_touch\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w8001_setup_touch._entry_ptr = internal global ptr @w8001_setup_touch._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" 2FG\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" Touchscreen\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 6, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 321, i64 325]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"w8001_drv\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 698, i32 28 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 709, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 702, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"w8001_serio_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 686, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 700, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 292, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 612, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 614, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 628, i32 20 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 639, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 655, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 87, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 458, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 508, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 525, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 539, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [43 x i8] c"../drivers/input/touchscreen/wacom_w8001.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 547, i32 20 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_w8001_drv_exit, ptr @__initcall__kmod_wacom_w8001__232_709_w8001_drv_init6, ptr @w8001_drv_exit, ptr @w8001_setup_touch._entry, ptr @w8001_setup_touch._entry_ptr, ptr @w8001_drv, ptr @.str, ptr @.str.1, ptr @w8001_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @w8001_connect.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w8001_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w8001_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w8001_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w8001_setup_touch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w8001_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @w8001_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w8001_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_unregister_driver(ptr noundef nonnull @w8001_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w8001_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data1 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 8
  %idx = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx, align 1
  %5 = load i32, ptr %idx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %idx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %entry.sw.bb12_crit_edge
    i32 6, label %entry.sw.bb12_crit_edge194
    i32 8, label %sw.bb37
    i32 10, label %sw.bb67
    i32 12, label %sw.bb82
  ]

entry.sw.bb12_crit_edge194:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.bb:                                            ; preds = %entry
  %conv = zext i8 %data to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w8001_interrupt.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w8001_interrupt, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !62

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w8001_interrupt.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idx, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge194
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data1, align 2
  %10 = and i8 %9, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %10)
  %cmp19.not = icmp eq i8 %10, -112
  br i1 %cmp19.not, label %if.end22, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22:                                         ; preds = %sw.bb12
  %pktlen = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pktlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %inc)
  %cmp24 = icmp eq i32 %12, %inc
  br i1 %cmp24, label %if.then26, label %if.end22.sw.epilog_crit_edge

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then26:                                        ; preds = %if.end22
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idx, align 4
  %type = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %16)
  %switch = icmp eq i32 %16, 320
  br i1 %switch, label %if.then26.sw.epilog_crit_edge, label %if.then33

if.then26.sw.epilog_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then33:                                        ; preds = %if.then26
  %arrayidx.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 7
  %arrayidx1.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %20 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %arrayidx4.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %22 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 7
  %arrayidx7.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %24 to i32
  %or9.i = or i32 %shl6.i, %conv8.i
  %25 = and i8 %9, 1
  %touch_dev.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %touch_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %touch_dev.i, align 4
  %max_pen_x.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %max_pen_x.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_pen_x.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i.i, label %if.then33.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then33.if.end.i.i_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then33
  %max_touch_x.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %max_touch_x.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_touch_x.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool2.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = zext i16 %31 to i32
  %mul.i.i = mul nuw nsw i32 %or.i, %conv.i.i
  %div.i.i = udiv i32 %mul.i.i, %conv1.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then33.if.end.i.i_crit_edge
  %x.0.i = phi i32 [ %or.i, %if.then33.if.end.i.i_crit_edge ], [ %or.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %div.i.i, %if.then.i.i ]
  %max_pen_y.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %max_pen_y.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_pen_y.i.i, align 2
  %conv7.i.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool8.not.i.i = icmp eq i16 %33, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.report_single_touch.exit_crit_edge, label %land.lhs.true9.i.i

if.end.i.i.report_single_touch.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %report_single_touch.exit

land.lhs.true9.i.i:                               ; preds = %if.end.i.i
  %max_touch_y.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %max_touch_y.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_touch_y.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool11.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.report_single_touch.exit_crit_edge, label %if.then12.i.i

land.lhs.true9.i.i.report_single_touch.exit_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %report_single_touch.exit

if.then12.i.i:                                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i.i = zext i16 %35 to i32
  %mul15.i.i = mul nuw nsw i32 %or9.i, %conv7.i.i
  %div18.i.i = udiv i32 %mul15.i.i, %conv10.i.i
  br label %report_single_touch.exit

report_single_touch.exit:                         ; preds = %if.then12.i.i, %land.lhs.true9.i.i.report_single_touch.exit_crit_edge, %if.end.i.i.report_single_touch.exit_crit_edge
  %y.0.i = phi i32 [ %or9.i, %if.end.i.i.report_single_touch.exit_crit_edge ], [ %or9.i, %land.lhs.true9.i.i.report_single_touch.exit_crit_edge ], [ %div18.i.i, %if.then12.i.i ]
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 0, i32 noundef %x.0.i) #8
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 1, i32 noundef %y.0.i) #8
  %36 = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 330, i32 noundef %36) #8
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 325
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i, ptr %type, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %38 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data1, align 2
  %and41 = and i8 %39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41)
  %cmp44.not = icmp ne i8 %and41, 0
  %40 = and i8 %39, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %40)
  %cmp60 = icmp eq i8 %40, -112
  %or.cond = or i1 %cmp44.not, %cmp60
  br i1 %or.cond, label %sw.bb37.sw.epilog_crit_edge, label %if.end63, !prof !63

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end63:                                         ; preds = %sw.bb37
  %41 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %idx, align 4
  %42 = and i8 %39, 32
  %43 = and i8 %39, 1
  %44 = and i8 %39, 4
  %arrayidx14.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx14.i, align 1
  %and16.i = zext i8 %46 to i32
  %shl.i128 = shl nuw nsw i32 %and16.i, 9
  %arrayidx18.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx18.i, align 1
  %49 = and i8 %48, 127
  %and20.i = zext i8 %49 to i32
  %shl21.i = shl nuw nsw i32 %and20.i, 2
  %arrayidx25.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 6
  %50 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx25.i, align 1
  %52 = lshr i8 %51, 5
  %53 = and i8 %52, 3
  %54 = zext i8 %53 to i32
  %arrayidx32.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 3
  %55 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx32.i, align 1
  %and34.i = zext i8 %56 to i32
  %shl35.i = shl nuw nsw i32 %and34.i, 9
  %arrayidx37.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 4
  %57 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx37.i, align 1
  %59 = and i8 %58, 127
  %and39.i = zext i8 %59 to i32
  %shl40.i = shl nuw nsw i32 %and39.i, 2
  %60 = lshr i8 %51, 3
  %61 = and i8 %60, 3
  %62 = zext i8 %61 to i32
  %arrayidx53.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 5
  %63 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx53.i, align 1
  %65 = and i8 %64, 127
  %conv56.i = zext i8 %65 to i32
  %66 = and i8 %51, 7
  %and59.i = zext i8 %66 to i32
  %shl60.i = shl nuw nsw i32 %and59.i, 7
  %or63.i = or i32 %shl60.i, %conv56.i
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %type.i132 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %type.i132 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type.i132, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %70, label %sw.default.i [
    i32 321, label %sw.bb.i
    i32 325, label %if.end63.sw.bb2.i_crit_edge
    i32 0, label %if.end63.sw.bb2.i_crit_edge195
  ]

if.end63.sw.bb2.i_crit_edge195:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end63.sw.bb2.i_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i134 = icmp eq i8 %44, 0
  br i1 %tobool.not.i134, label %if.then.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 24, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 330, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 331, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 332, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 321, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %72 = ptrtoint ptr %type.i132 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 320, ptr %type.i132, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end63.sw.bb2.i_crit_edge, %if.end63.sw.bb2.i_crit_edge195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool4.not.i = icmp eq i8 %44, 0
  %cond.i135 = select i1 %tobool4.not.i, i32 320, i32 321
  %73 = ptrtoint ptr %type.i132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cond.i135, ptr %type.i132, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %.lobit193 = lshr exact i8 %44, 2
  %74 = zext i8 %.lobit193 to i32
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 332, i32 noundef %74) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %if.then.i, %sw.bb.i.sw.epilog.i_crit_edge
  %shl.i128.masked = and i32 %shl.i128, 65024
  %or.i130.masked = or i32 %shl21.i, %shl.i128.masked
  %conv8.i139 = or i32 %or.i130.masked, %54
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 0, i32 noundef %conv8.i139) #8
  %shl35.i.masked = and i32 %shl35.i, 65024
  %or43.i.masked = or i32 %shl40.i, %shl35.i.masked
  %conv9.i = or i32 %or43.i.masked, %62
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 1, i32 noundef %conv9.i) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 24, i32 noundef %or63.i) #8
  %75 = zext i8 %43 to i32
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 330, i32 noundef %75) #8
  %76 = lshr i8 %39, 1
  %.lobit = and i8 %76, 1
  %77 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef 331, i32 noundef %77) #8
  %78 = ptrtoint ptr %type.i132 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type.i132, align 4
  %.lobit192 = lshr exact i8 %42, 5
  %80 = zext i8 %.lobit192 to i32
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef %79, i32 noundef %80) #8
  tail call void @input_event(ptr noundef %68, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool16.not.i = icmp eq i8 %42, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %sw.epilog.i.sw.epilog_crit_edge

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then17.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %type.i132 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %type.i132, align 4
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %82 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %data1, align 2
  %84 = and i8 %83, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %84)
  %cmp74 = icmp eq i8 %84, -112
  br i1 %cmp74, label %sw.bb67.sw.epilog_crit_edge, label %if.end77

sw.bb67.sw.epilog_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end77:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %idx, align 4
  %response = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 7
  %86 = call ptr @memcpy(ptr %response, ptr %data1, i32 13)
  %response_type = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %response_type to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 32, ptr %response_type, align 4
  %cmd_done = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_done) #8
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  %88 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %idx, align 4
  %touch_dev.i144 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %touch_dev.i144 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %touch_dev.i144, align 4
  %max_pen_x.i.i145 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 14
  %max_touch_x.i.i146 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 12
  %max_pen_y.i.i147 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 15
  %max_touch_y.i.i148 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 13
  %91 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %data1, align 1
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.i = icmp ne i8 %93, 0
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 47, i32 noundef 0) #8
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %90, i32 noundef 0, i1 noundef zeroext %tobool.i) #8
  br i1 %tobool.i, label %if.then.i157, label %sw.bb82.if.end.i_crit_edge

sw.bb82.if.end.i_crit_edge:                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i157:                                     ; preds = %sw.bb82
  %arrayidx4.i149 = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %arrayidx4.i149 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx4.i149, align 1
  %conv5.i150 = zext i8 %95 to i32
  %shl6.i151 = shl nuw nsw i32 %conv5.i150, 7
  %arrayidx9.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 2
  %96 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i152 = zext i8 %97 to i32
  %or.i153 = or i32 %shl6.i151, %conv10.i152
  %arrayidx13.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 3
  %98 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %99 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 7
  %arrayidx18.i154 = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 4
  %100 = ptrtoint ptr %arrayidx18.i154 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx18.i154, align 1
  %conv19.i = zext i8 %101 to i32
  %or20.i = or i32 %shl15.i, %conv19.i
  %102 = ptrtoint ptr %max_pen_x.i.i145 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %max_pen_x.i.i145, align 4
  %conv.i.i155 = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.not.i.i156 = icmp eq i16 %103, 0
  br i1 %tobool.not.i.i156, label %if.then.i157.if.end.i.i167_crit_edge, label %land.lhs.true.i.i159

if.then.i157.if.end.i.i167_crit_edge:             ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i167

land.lhs.true.i.i159:                             ; preds = %if.then.i157
  %104 = ptrtoint ptr %max_touch_x.i.i146 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %max_touch_x.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool2.not.i.i158 = icmp eq i16 %105, 0
  br i1 %tobool2.not.i.i158, label %land.lhs.true.i.i159.if.end.i.i167_crit_edge, label %if.then.i.i163

land.lhs.true.i.i159.if.end.i.i167_crit_edge:     ; preds = %land.lhs.true.i.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i167

if.then.i.i163:                                   ; preds = %land.lhs.true.i.i159
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i160 = zext i16 %105 to i32
  %mul.i.i161 = mul nuw nsw i32 %or.i153, %conv.i.i155
  %div.i.i162 = udiv i32 %mul.i.i161, %conv1.i.i160
  br label %if.end.i.i167

if.end.i.i167:                                    ; preds = %if.then.i.i163, %land.lhs.true.i.i159.if.end.i.i167_crit_edge, %if.then.i157.if.end.i.i167_crit_edge
  %x.0.i164 = phi i32 [ %or.i153, %if.then.i157.if.end.i.i167_crit_edge ], [ %or.i153, %land.lhs.true.i.i159.if.end.i.i167_crit_edge ], [ %div.i.i162, %if.then.i.i163 ]
  %106 = ptrtoint ptr %max_pen_y.i.i147 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %max_pen_y.i.i147, align 2
  %conv7.i.i165 = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool8.not.i.i166 = icmp eq i16 %107, 0
  br i1 %tobool8.not.i.i166, label %if.end.i.i167.scale_touch_coordinates.exit.i_crit_edge, label %land.lhs.true9.i.i169

if.end.i.i167.scale_touch_coordinates.exit.i_crit_edge: ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_touch_coordinates.exit.i

land.lhs.true9.i.i169:                            ; preds = %if.end.i.i167
  %108 = ptrtoint ptr %max_touch_y.i.i148 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %max_touch_y.i.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool11.not.i.i168 = icmp eq i16 %109, 0
  br i1 %tobool11.not.i.i168, label %land.lhs.true9.i.i169.scale_touch_coordinates.exit.i_crit_edge, label %if.then12.i.i173

land.lhs.true9.i.i169.scale_touch_coordinates.exit.i_crit_edge: ; preds = %land.lhs.true9.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_touch_coordinates.exit.i

if.then12.i.i173:                                 ; preds = %land.lhs.true9.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i.i170 = zext i16 %109 to i32
  %mul15.i.i171 = mul nuw nsw i32 %or20.i, %conv7.i.i165
  %div18.i.i172 = udiv i32 %mul15.i.i171, %conv10.i.i170
  br label %scale_touch_coordinates.exit.i

scale_touch_coordinates.exit.i:                   ; preds = %if.then12.i.i173, %land.lhs.true9.i.i169.scale_touch_coordinates.exit.i_crit_edge, %if.end.i.i167.scale_touch_coordinates.exit.i_crit_edge
  %y.0.i174 = phi i32 [ %or20.i, %if.end.i.i167.scale_touch_coordinates.exit.i_crit_edge ], [ %or20.i, %land.lhs.true9.i.i169.scale_touch_coordinates.exit.i_crit_edge ], [ %div18.i.i172, %if.then12.i.i173 ]
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 53, i32 noundef %x.0.i164) #8
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 54, i32 noundef %y.0.i174) #8
  br label %if.end.i

if.end.i:                                         ; preds = %scale_touch_coordinates.exit.i, %sw.bb82.if.end.i_crit_edge
  %count.1.i = phi i32 [ 1, %scale_touch_coordinates.exit.i ], [ 0, %sw.bb82.if.end.i_crit_edge ]
  %110 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %data1, align 1
  %112 = and i8 %111, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.1.i = icmp ne i8 %112, 0
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 47, i32 noundef 1) #8
  %call.1.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %90, i32 noundef 0, i1 noundef zeroext %tobool.1.i) #8
  br i1 %tobool.1.i, label %if.then.1.i, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  %arrayidx4.1.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 7
  %113 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %114 to i32
  %shl6.1.i = shl nuw nsw i32 %conv5.1.i, 7
  %arrayidx9.1.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 8
  %115 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx9.1.i, align 1
  %conv10.1.i = zext i8 %116 to i32
  %or.1.i = or i32 %shl6.1.i, %conv10.1.i
  %arrayidx13.1.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 9
  %117 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx13.1.i, align 1
  %conv14.1.i = zext i8 %118 to i32
  %shl15.1.i = shl nuw nsw i32 %conv14.1.i, 7
  %arrayidx18.1.i = getelementptr %struct.w8001, ptr %1, i32 0, i32 8, i32 10
  %119 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx18.1.i, align 1
  %conv19.1.i = zext i8 %120 to i32
  %or20.1.i = or i32 %shl15.1.i, %conv19.1.i
  %121 = ptrtoint ptr %max_pen_x.i.i145 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %max_pen_x.i.i145, align 4
  %conv.i.1.i = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i.1.i = icmp eq i16 %122, 0
  br i1 %tobool.not.i.1.i, label %if.then.1.i.if.end.i.1.i_crit_edge, label %land.lhs.true.i.1.i

if.then.1.i.if.end.i.1.i_crit_edge:               ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.1.i

land.lhs.true.i.1.i:                              ; preds = %if.then.1.i
  %123 = ptrtoint ptr %max_touch_x.i.i146 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %max_touch_x.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool2.not.i.1.i = icmp eq i16 %124, 0
  br i1 %tobool2.not.i.1.i, label %land.lhs.true.i.1.i.if.end.i.1.i_crit_edge, label %if.then.i.1.i

land.lhs.true.i.1.i.if.end.i.1.i_crit_edge:       ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.1.i

if.then.i.1.i:                                    ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.1.i = zext i16 %124 to i32
  %mul.i.1.i = mul nuw nsw i32 %or.1.i, %conv.i.1.i
  %div.i.1.i = udiv i32 %mul.i.1.i, %conv1.i.1.i
  br label %if.end.i.1.i

if.end.i.1.i:                                     ; preds = %if.then.i.1.i, %land.lhs.true.i.1.i.if.end.i.1.i_crit_edge, %if.then.1.i.if.end.i.1.i_crit_edge
  %x.0.1.i = phi i32 [ %or.1.i, %if.then.1.i.if.end.i.1.i_crit_edge ], [ %or.1.i, %land.lhs.true.i.1.i.if.end.i.1.i_crit_edge ], [ %div.i.1.i, %if.then.i.1.i ]
  %125 = ptrtoint ptr %max_pen_y.i.i147 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %max_pen_y.i.i147, align 2
  %conv7.i.1.i = zext i16 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool8.not.i.1.i = icmp eq i16 %126, 0
  br i1 %tobool8.not.i.1.i, label %if.end.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge, label %land.lhs.true9.i.1.i

if.end.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_touch_coordinates.exit.1.i

land.lhs.true9.i.1.i:                             ; preds = %if.end.i.1.i
  %127 = ptrtoint ptr %max_touch_y.i.i148 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %max_touch_y.i.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool11.not.i.1.i = icmp eq i16 %128, 0
  br i1 %tobool11.not.i.1.i, label %land.lhs.true9.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge, label %if.then12.i.1.i

land.lhs.true9.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge: ; preds = %land.lhs.true9.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_touch_coordinates.exit.1.i

if.then12.i.1.i:                                  ; preds = %land.lhs.true9.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i.1.i = zext i16 %128 to i32
  %mul15.i.1.i = mul nuw nsw i32 %or20.1.i, %conv7.i.1.i
  %div18.i.1.i = udiv i32 %mul15.i.1.i, %conv10.i.1.i
  br label %scale_touch_coordinates.exit.1.i

scale_touch_coordinates.exit.1.i:                 ; preds = %if.then12.i.1.i, %land.lhs.true9.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge, %if.end.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge
  %y.0.1.i = phi i32 [ %or20.1.i, %if.end.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge ], [ %or20.1.i, %land.lhs.true9.i.1.i.scale_touch_coordinates.exit.1.i_crit_edge ], [ %div18.i.1.i, %if.then12.i.1.i ]
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 53, i32 noundef %x.0.1.i) #8
  tail call void @input_event(ptr noundef %90, i32 noundef 3, i32 noundef 54, i32 noundef %y.0.1.i) #8
  %inc.1.i = add nuw nsw i32 %count.1.i, 1
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %scale_touch_coordinates.exit.1.i, %if.end.i.if.end.1.i_crit_edge
  %count.1.1.i = phi i32 [ %inc.1.i, %scale_touch_coordinates.exit.1.i ], [ %count.1.i, %if.end.i.if.end.1.i_crit_edge ]
  %type.i175 = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 10
  %129 = ptrtoint ptr %type.i175 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %type.i175, align 4
  %131 = and i32 %130, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %131)
  %switch.i = icmp eq i32 %131, 320
  br i1 %switch.i, label %if.end.1.i.parse_multi_touch.exit_crit_edge, label %if.then27.i

if.end.1.i.parse_multi_touch.exit_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_multi_touch.exit

if.then27.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.1.1.i)
  %cmp28.i = icmp eq i32 %count.1.1.i, 1
  %cond.i176 = select i1 %cmp28.i, i32 325, i32 0
  %132 = ptrtoint ptr %type.i175 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %cond.i176, ptr %type.i175, align 4
  tail call void @input_mt_report_pointer_emulation(ptr noundef %90, i1 noundef zeroext true) #8
  br label %parse_multi_touch.exit

parse_multi_touch.exit:                           ; preds = %if.then27.i, %if.end.1.i.parse_multi_touch.exit_crit_edge
  tail call void @input_event(ptr noundef %90, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %touch_dev = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 1
  %133 = ptrtoint ptr %touch_dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %touch_dev, align 4
  %tobool84.not = icmp eq ptr %134, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp87 = icmp sgt i32 %inc, 8
  %or.cond124 = select i1 %tobool84.not, i1 %cmp87, i1 false
  br i1 %or.cond124, label %if.then89, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then89:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %idx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then89, %sw.default.sw.epilog_crit_edge, %parse_multi_touch.exit, %if.end77, %sw.bb67.sw.epilog_crit_edge, %if.then17.i, %sw.epilog.i.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %report_single_touch.exit, %if.then26.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %do.end, %sw.bb.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w8001_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  %basename = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %basename) #8
  %0 = call ptr @memset(ptr %basename, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 388) #11
  %call1 = tail call ptr @input_allocate_device() #8
  %call2 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call2, null
  %or.cond123 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond123, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end:                                           ; preds = %entry
  %serio6 = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %serio6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serio, ptr %serio6, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %touch_dev = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %touch_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %touch_dev, align 4
  %mutex = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @w8001_connect.__key) #8
  %cmd_done = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %phys = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 9
  %phys7 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 42, ptr noundef nonnull @.str.7, ptr noundef %phys7)
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end13:                                         ; preds = %if.end
  %response_type.i.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %response_type.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %response_type.i.i, align 4
  %8 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %9 = ptrtoint ptr %serio6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serio6, align 8
  %write.i.i.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.end13.fail3_crit_edge, label %w8001_command.exit.i

if.end13.fail3_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

w8001_command.exit.i:                             ; preds = %if.end13
  %call.i.i.i = tail call i32 %12(ptr noundef %10, i8 noundef zeroext 48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end17, label %w8001_command.exit.i.fail3_crit_edge

w8001_command.exit.i.fail3_crit_edge:             ; preds = %w8001_command.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

if.end17:                                         ; preds = %w8001_command.exit.i
  tail call void @msleep(i32 noundef 250) #8
  %call19 = call i32 @strlcpy(ptr noundef nonnull %basename, ptr noundef nonnull @.str.8, i32 noundef 64) #8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %response_type.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %response_type.i.i, align 4
  %16 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmd_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %17 = ptrtoint ptr %serio6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serio6, align 8
  %write.i.i.i129 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %write.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i.i129, align 8
  %tobool.not.i.i.i130 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i130, label %if.end17.w8001_setup_pen.exit_crit_edge, label %serio_write.exit.i.i

if.end17.w8001_setup_pen.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_pen.exit

serio_write.exit.i.i:                             ; preds = %if.end17
  %call.i.i.i131 = call i32 %20(ptr noundef %18, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i131)
  %cmp.i.i = icmp eq i32 %call.i.i.i131, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %serio_write.exit.i.i.w8001_setup_pen.exit_crit_edge

serio_write.exit.i.i.w8001_setup_pen.exit_crit_edge: ; preds = %serio_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_pen.exit

if.then.i.i:                                      ; preds = %serio_write.exit.i.i
  %call2.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #8
  %21 = ptrtoint ptr %response_type.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %response_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp4.not.i.i = icmp eq i8 %22, 32
  br i1 %cmp4.not.i.i, label %if.end.i132, label %if.then.i.i.w8001_setup_pen.exit_crit_edge

if.then.i.i.w8001_setup_pen.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_pen.exit

if.end.i132:                                      ; preds = %if.then.i.i
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %evbit.i, align 4
  %or.i1.i = or i32 %24, 10
  store i32 %or.i1.i, ptr %evbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %14, i32 0, i32 6, i32 10
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %or.i10.i = or i32 %26, 7171
  store i32 %or.i10.i, ptr %add.ptr.i.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 4
  %27 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %propbit.i, align 4
  %or.i11.i = or i32 %28, 2
  store i32 %or.i11.i, ptr %propbit.i, align 4
  %arrayidx14.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx14.i.i, align 2
  %and16.i.i = zext i8 %30 to i16
  %shl.i.i = shl i16 %and16.i.i, 9
  %arrayidx18.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx18.i.i, align 1
  %33 = and i8 %32, 127
  %and20.i.i = zext i8 %33 to i16
  %shl21.i.i = shl nuw nsw i16 %and20.i.i, 2
  %or.i12.i = or i16 %shl21.i.i, %shl.i.i
  %arrayidx25.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 6
  %34 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx25.i.i, align 1
  %36 = lshr i8 %35, 5
  %37 = and i8 %36, 3
  %38 = zext i8 %37 to i16
  %or30.i.i = or i16 %or.i12.i, %38
  %arrayidx32.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx32.i.i, align 8
  %and34.i.i = zext i8 %40 to i16
  %shl35.i.i = shl i16 %and34.i.i, 9
  %arrayidx37.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 4
  %41 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx37.i.i, align 1
  %43 = and i8 %42, 127
  %and39.i.i = zext i8 %43 to i16
  %shl40.i.i = shl nuw nsw i16 %and39.i.i, 2
  %or43.i.i = or i16 %shl40.i.i, %shl35.i.i
  %44 = lshr i8 %35, 3
  %45 = and i8 %44, 3
  %46 = zext i8 %45 to i16
  %or51.i.i = or i16 %or43.i.i, %46
  %arrayidx53.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 5
  %47 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx53.i.i, align 2
  %49 = and i8 %48, 127
  %conv56.i.i = zext i8 %49 to i32
  %50 = and i8 %35, 7
  %and59.i.i = zext i8 %50 to i32
  %shl60.i.i = shl nuw nsw i32 %and59.i.i, 7
  %or63.i.i = or i32 %shl60.i.i, %conv56.i.i
  %arrayidx65.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 7
  %51 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx65.i.i, align 4
  %53 = and i8 %52, 127
  %arrayidx69.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx69.i.i, align 1
  %56 = and i8 %55, 127
  %max_pen_x.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 14
  %57 = ptrtoint ptr %max_pen_x.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or30.i.i, ptr %max_pen_x.i, align 8
  %max_pen_y.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %max_pen_y.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or51.i.i, ptr %max_pen_y.i, align 2
  %conv.i = zext i16 %or30.i.i to i32
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #8
  %conv16.i = zext i16 %or51.i.i to i32
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 1, i32 noundef 0, i32 noundef %conv16.i, i32 noundef 0, i32 noundef 0) #8
  call void @input_alloc_absinfo(ptr noundef %14) #8
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 26
  %59 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.end.i132.input_abs_set_res.exit.i_crit_edge, label %if.then.i13.i

if.end.i132.input_abs_set_res.exit.i_crit_edge:   ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit.i

if.then.i13.i:                                    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i13.i, %if.end.i132.input_abs_set_res.exit.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef %14) #8
  %62 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i15.i = icmp eq ptr %63, null
  br i1 %tobool.not.i15.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit18.i_crit_edge, label %if.then.i17.i

input_abs_set_res.exit.i.input_abs_set_res.exit18.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit18.i

if.then.i17.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i16.i = getelementptr %struct.input_absinfo, ptr %63, i32 1, i32 5
  %64 = ptrtoint ptr %resolution.i16.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 100, ptr %resolution.i16.i, align 4
  br label %input_abs_set_res.exit18.i

input_abs_set_res.exit18.i:                       ; preds = %if.then.i17.i, %input_abs_set_res.exit.i.input_abs_set_res.exit18.i_crit_edge
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 24, i32 noundef 0, i32 noundef %or63.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool19.not.i = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool21.not.i = icmp eq i8 %56, 0
  %or.cond.i = select i1 %tobool19.not.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %input_abs_set_res.exit18.i.if.end27.i_crit_edge, label %if.then22.i

input_abs_set_res.exit18.i.if.end27.i_crit_edge:  ; preds = %input_abs_set_res.exit18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then22.i:                                      ; preds = %input_abs_set_res.exit18.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv18.i = zext i8 %53 to i32
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 26, i32 noundef 0, i32 noundef %conv18.i, i32 noundef 0, i32 noundef 0) #8
  %conv26.i = zext i8 %56 to i32
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 27, i32 noundef 0, i32 noundef %conv26.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %input_abs_set_res.exit18.i.if.end27.i_crit_edge
  %id.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 144, ptr %id.i, align 4
  %call28.i = call i32 @strlcat(ptr noundef nonnull %basename, ptr noundef nonnull @.str.12, i32 noundef 64) #8
  br label %w8001_setup_pen.exit

w8001_setup_pen.exit:                             ; preds = %if.end27.i, %if.then.i.i.w8001_setup_pen.exit_crit_edge, %serio_write.exit.i.i.w8001_setup_pen.exit_crit_edge, %if.end17.w8001_setup_pen.exit_crit_edge
  %retval.0.i133 = phi i32 [ 0, %if.end27.i ], [ -1, %if.end17.w8001_setup_pen.exit_crit_edge ], [ -5, %if.then.i.i.w8001_setup_pen.exit_crit_edge ], [ %call.i.i.i131, %serio_write.exit.i.i.w8001_setup_pen.exit_crit_edge ]
  %66 = ptrtoint ptr %touch_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %touch_dev, align 4
  %68 = ptrtoint ptr %response_type.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %response_type.i.i, align 4
  %69 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %cmd_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %70 = ptrtoint ptr %serio6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %serio6, align 8
  %write.i.i.i138 = getelementptr inbounds %struct.serio, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %write.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write.i.i.i138, align 8
  %tobool.not.i.i.i139 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i139, label %w8001_setup_pen.exit.w8001_setup_touch.exit_crit_edge, label %serio_write.exit.i.i142

w8001_setup_pen.exit.w8001_setup_touch.exit_crit_edge: ; preds = %w8001_setup_pen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_touch.exit

serio_write.exit.i.i142:                          ; preds = %w8001_setup_pen.exit
  %call.i.i.i140 = call i32 %73(ptr noundef %71, i8 noundef zeroext 37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i140)
  %cmp.i.i141 = icmp eq i32 %call.i.i.i140, 0
  br i1 %cmp.i.i141, label %if.then.i.i145, label %serio_write.exit.i.i142.w8001_setup_touch.exit_crit_edge

serio_write.exit.i.i142.w8001_setup_touch.exit_crit_edge: ; preds = %serio_write.exit.i.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_touch.exit

if.then.i.i145:                                   ; preds = %serio_write.exit.i.i142
  %call2.i.i143 = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #8
  %74 = ptrtoint ptr %response_type.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %response_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %75)
  %cmp4.not.i.i144 = icmp eq i8 %75, 32
  br i1 %cmp4.not.i.i144, label %if.end.i146, label %if.then.i.i145.w8001_setup_touch.exit_crit_edge

if.then.i.i145.w8001_setup_touch.exit_crit_edge:  ; preds = %if.then.i.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_touch.exit

if.end.i146:                                      ; preds = %if.then.i.i145
  %arrayidx.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.not.i = icmp eq i8 %77, 0
  br i1 %tobool1.not.i, label %if.end.i146.w8001_setup_touch.exit_crit_edge, label %if.end3.i

if.end.i146.w8001_setup_touch.exit_crit_edge:     ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_touch.exit

if.end3.i:                                        ; preds = %if.end.i146
  %evbit.i147 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 5
  %78 = ptrtoint ptr %evbit.i147 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %evbit.i147, align 4
  %or.i1.i148 = or i32 %79, 10
  store i32 %or.i1.i148, ptr %evbit.i147, align 4
  %add.ptr.i.i149 = getelementptr %struct.input_dev, ptr %67, i32 0, i32 6, i32 10
  %80 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i149, align 4
  %or.i2.i = or i32 %81, 1024
  store i32 %or.i2.i, ptr %add.ptr.i.i149, align 4
  %propbit.i150 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 4
  %82 = ptrtoint ptr %propbit.i150 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %propbit.i150, align 4
  %or.i3.i = or i32 %83, 2
  store i32 %or.i3.i, ptr %propbit.i150, align 4
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i, align 2
  %arrayidx1.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 2
  %86 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx1.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 3
  %88 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx4.i.i, align 8
  %conv5.i.i = zext i8 %89 to i16
  %shl.i.i151 = shl i16 %conv5.i.i, 9
  %arrayidx7.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 4
  %90 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %91 to i16
  %shl9.i.i = shl nuw nsw i16 %conv8.i.i, 2
  %92 = lshr i8 %87, 5
  %93 = and i8 %92, 3
  %and15.i.i = zext i8 %93 to i16
  %or.i6.i = or i16 %shl.i.i151, %and15.i.i
  %or18.i.i = or i16 %or.i6.i, %shl9.i.i
  %arrayidx20.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 5
  %94 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx20.i.i, align 2
  %conv21.i.i = zext i8 %95 to i16
  %shl22.i.i = shl i16 %conv21.i.i, 9
  %arrayidx24.i.i = getelementptr %struct.w8001, ptr %call7.i.i, i32 0, i32 7, i32 6
  %96 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %97 to i16
  %shl26.i.i = shl nuw nsw i16 %conv25.i.i, 2
  %98 = lshr i8 %87, 3
  %99 = and i8 %98, 3
  %and34.i.i152 = zext i8 %99 to i16
  %or29.i.i = or i16 %shl22.i.i, %and34.i.i152
  %or37.i.i = or i16 %or29.i.i, %shl26.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or18.i.i)
  %tobool.not.i.i153 = icmp eq i16 %or18.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or37.i.i)
  %tobool41.not.i.i = icmp eq i16 %or37.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i153, i1 %tobool41.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i7.i, label %if.end3.i.parse_touchquery.exit.i_crit_edge

if.end3.i.parse_touchquery.exit.i_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_touchquery.exit.i

if.then.i7.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool45.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool45.not.i.i, label %if.then.i7.i.parse_touchquery.exit.i_crit_edge, label %if.then46.i.i

if.then.i7.i.parse_touchquery.exit.i_crit_edge:   ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_touchquery.exit.i

if.then46.i.i:                                    ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv48.i.i = zext i8 %85 to i32
  %shl49.i.i = shl nuw i32 1, %conv48.i.i
  %conv50.i.i = trunc i32 %shl49.i.i to i16
  br label %parse_touchquery.exit.i

parse_touchquery.exit.i:                          ; preds = %if.then46.i.i, %if.then.i7.i.parse_touchquery.exit.i_crit_edge, %if.end3.i.parse_touchquery.exit.i_crit_edge
  %touch.sroa.22.0.i = phi i8 [ %85, %if.end3.i.parse_touchquery.exit.i_crit_edge ], [ 10, %if.then46.i.i ], [ 10, %if.then.i7.i.parse_touchquery.exit.i_crit_edge ]
  %touch.sroa.13.1.i = phi i16 [ %or37.i.i, %if.end3.i.parse_touchquery.exit.i_crit_edge ], [ %conv50.i.i, %if.then46.i.i ], [ 1024, %if.then.i7.i.parse_touchquery.exit.i_crit_edge ]
  %touch.sroa.0.1.i = phi i16 [ %or18.i.i, %if.end3.i.parse_touchquery.exit.i_crit_edge ], [ %conv50.i.i, %if.then46.i.i ], [ 1024, %if.then.i7.i.parse_touchquery.exit.i_crit_edge ]
  %max_touch_x.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 12
  %100 = ptrtoint ptr %max_touch_x.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %touch.sroa.0.1.i, ptr %max_touch_x.i, align 4
  %max_touch_y.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 13
  %101 = ptrtoint ptr %max_touch_y.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %touch.sroa.13.1.i, ptr %max_touch_y.i, align 2
  %max_pen_x.i154 = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 14
  %102 = ptrtoint ptr %max_pen_x.i154 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %max_pen_x.i154, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool10.not.i = icmp eq i16 %103, 0
  br i1 %tobool10.not.i, label %parse_touchquery.exit.i.if.end18.i_crit_edge, label %land.lhs.true.i

parse_touchquery.exit.i.if.end18.i_crit_edge:     ; preds = %parse_touchquery.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %parse_touchquery.exit.i
  %max_pen_y.i155 = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 15
  %104 = ptrtoint ptr %max_pen_y.i155 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %max_pen_y.i155, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool12.not.i = icmp eq i16 %105, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %land.lhs.true.i.if.end18.i_crit_edge, %parse_touchquery.exit.i.if.end18.i_crit_edge
  %touch.sroa.22.1.i = phi i8 [ %touch.sroa.22.0.i, %parse_touchquery.exit.i.if.end18.i_crit_edge ], [ %touch.sroa.22.0.i, %land.lhs.true.i.if.end18.i_crit_edge ], [ 100, %if.then13.i ]
  %touch.sroa.13.2.i = phi i16 [ %touch.sroa.13.1.i, %parse_touchquery.exit.i.if.end18.i_crit_edge ], [ %touch.sroa.13.1.i, %land.lhs.true.i.if.end18.i_crit_edge ], [ %105, %if.then13.i ]
  %touch.sroa.0.2.i = phi i16 [ %touch.sroa.0.1.i, %parse_touchquery.exit.i.if.end18.i_crit_edge ], [ %touch.sroa.0.1.i, %land.lhs.true.i.if.end18.i_crit_edge ], [ %103, %if.then13.i ]
  %conv20.i = zext i16 %touch.sroa.0.2.i to i32
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 0, i32 noundef 0, i32 noundef %conv20.i, i32 noundef 0, i32 noundef 0) #8
  %conv22.i = zext i16 %touch.sroa.13.2.i to i32
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 1, i32 noundef 0, i32 noundef %conv22.i, i32 noundef 0, i32 noundef 0) #8
  %conv24.i = zext i8 %touch.sroa.22.1.i to i32
  call void @input_alloc_absinfo(ptr noundef %67) #8
  %absinfo.i.i156 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 26
  %106 = ptrtoint ptr %absinfo.i.i156 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %absinfo.i.i156, align 8
  %tobool.not.i8.i = icmp eq ptr %107, null
  br i1 %tobool.not.i8.i, label %if.end18.i.input_abs_set_res.exit.i158_crit_edge, label %if.then.i9.i

if.end18.i.input_abs_set_res.exit.i158_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit.i158

if.then.i9.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i.i157 = getelementptr %struct.input_absinfo, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %resolution.i.i157 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv24.i, ptr %resolution.i.i157, align 4
  br label %input_abs_set_res.exit.i158

input_abs_set_res.exit.i158:                      ; preds = %if.then.i9.i, %if.end18.i.input_abs_set_res.exit.i158_crit_edge
  call void @input_alloc_absinfo(ptr noundef %67) #8
  %109 = ptrtoint ptr %absinfo.i.i156 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %absinfo.i.i156, align 8
  %tobool.not.i12.i = icmp eq ptr %110, null
  br i1 %tobool.not.i12.i, label %input_abs_set_res.exit.i158.input_abs_set_res.exit16.i_crit_edge, label %if.then.i14.i

input_abs_set_res.exit.i158.input_abs_set_res.exit16.i_crit_edge: ; preds = %input_abs_set_res.exit.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit16.i

if.then.i14.i:                                    ; preds = %input_abs_set_res.exit.i158
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i13.i = getelementptr %struct.input_absinfo, ptr %110, i32 1, i32 5
  %111 = ptrtoint ptr %resolution.i13.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv24.i, ptr %resolution.i13.i, align 4
  br label %input_abs_set_res.exit16.i

input_abs_set_res.exit16.i:                       ; preds = %if.then.i14.i, %input_abs_set_res.exit.i158.input_abs_set_res.exit16.i_crit_edge
  %trunc.i = trunc i8 %87 to i3
  %112 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.21)
  switch i3 %trunc.i, label %input_abs_set_res.exit16.i.w8001_setup_touch.exit.thread_crit_edge [
    i3 0, label %input_abs_set_res.exit16.i.sw.bb.i_crit_edge
    i3 2, label %input_abs_set_res.exit16.i.sw.bb.i_crit_edge191
    i3 1, label %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge
    i3 3, label %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge192
    i3 -4, label %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge193
    i3 -3, label %sw.bb33.i
  ]

input_abs_set_res.exit16.i.sw.bb29.i_crit_edge193: ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29.i

input_abs_set_res.exit16.i.sw.bb29.i_crit_edge192: ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29.i

input_abs_set_res.exit16.i.sw.bb29.i_crit_edge:   ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29.i

input_abs_set_res.exit16.i.sw.bb.i_crit_edge191:  ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

input_abs_set_res.exit16.i.sw.bb.i_crit_edge:     ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

input_abs_set_res.exit16.i.w8001_setup_touch.exit.thread_crit_edge: ; preds = %input_abs_set_res.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w8001_setup_touch.exit.thread

sw.bb.i:                                          ; preds = %input_abs_set_res.exit16.i.sw.bb.i_crit_edge, %input_abs_set_res.exit16.i.sw.bb.i_crit_edge191
  %pktlen.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 11
  %113 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 5, ptr %pktlen.i, align 8
  %id.i159 = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %id.i159 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 147, ptr %id.i159, align 4
  %call28.i160 = call i32 @strlcat(ptr noundef nonnull %basename, ptr noundef nonnull @.str.13, i32 noundef 64) #8
  br label %w8001_setup_touch.exit.thread

sw.bb29.i:                                        ; preds = %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge, %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge192, %input_abs_set_res.exit16.i.sw.bb29.i_crit_edge193
  %pktlen30.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 11
  %115 = ptrtoint ptr %pktlen30.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 7, ptr %pktlen30.i, align 8
  %call31.i = call i32 @strlcat(ptr noundef nonnull %basename, ptr noundef nonnull @.str.13, i32 noundef 64) #8
  %id32.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %id32.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 154, ptr %id32.i, align 4
  br label %w8001_setup_touch.exit.thread

sw.bb33.i:                                        ; preds = %input_abs_set_res.exit16.i
  %pktlen34.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 11
  %117 = ptrtoint ptr %pktlen34.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 13, ptr %pktlen34.i, align 8
  %118 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i.i149, align 4
  %or.i5.i = or i32 %119, 8192
  store i32 %or.i5.i, ptr %add.ptr.i.i149, align 4
  %call37.i = call i32 @input_mt_init_slots(ptr noundef %67, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end41.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %serio6 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %serio6, align 8
  %dev40.i = getelementptr inbounds %struct.serio, ptr %121, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i, ptr noundef nonnull @.str.14, i32 noundef %call37.i) #12
  br label %w8001_setup_touch.exit

if.end41.i:                                       ; preds = %sw.bb33.i
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 53, i32 noundef 0, i32 noundef %conv20.i, i32 noundef 0, i32 noundef 0) #8
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 54, i32 noundef 0, i32 noundef %conv22.i, i32 noundef 0, i32 noundef 0) #8
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #8
  call void @input_alloc_absinfo(ptr noundef %67) #8
  %122 = ptrtoint ptr %absinfo.i.i156 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %absinfo.i.i156, align 8
  %tobool.not.i18.i = icmp eq ptr %123, null
  br i1 %tobool.not.i18.i, label %if.end41.i.input_abs_set_res.exit22.i_crit_edge, label %if.then.i20.i

if.end41.i.input_abs_set_res.exit22.i_crit_edge:  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit22.i

if.then.i20.i:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i19.i = getelementptr %struct.input_absinfo, ptr %123, i32 53, i32 5
  %124 = ptrtoint ptr %resolution.i19.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv24.i, ptr %resolution.i19.i, align 4
  br label %input_abs_set_res.exit22.i

input_abs_set_res.exit22.i:                       ; preds = %if.then.i20.i, %if.end41.i.input_abs_set_res.exit22.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef %67) #8
  %125 = ptrtoint ptr %absinfo.i.i156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %absinfo.i.i156, align 8
  %tobool.not.i24.i = icmp eq ptr %126, null
  br i1 %tobool.not.i24.i, label %input_abs_set_res.exit22.i.input_abs_set_res.exit28.i_crit_edge, label %if.then.i26.i

input_abs_set_res.exit22.i.input_abs_set_res.exit28.i_crit_edge: ; preds = %input_abs_set_res.exit22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit28.i

if.then.i26.i:                                    ; preds = %input_abs_set_res.exit22.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i25.i = getelementptr %struct.input_absinfo, ptr %126, i32 54, i32 5
  %127 = ptrtoint ptr %resolution.i25.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv24.i, ptr %resolution.i25.i, align 4
  br label %input_abs_set_res.exit28.i

input_abs_set_res.exit28.i:                       ; preds = %if.then.i26.i, %input_abs_set_res.exit22.i.input_abs_set_res.exit28.i_crit_edge
  %call50.i = call i32 @strlcat(ptr noundef nonnull %basename, ptr noundef nonnull @.str.18, i32 noundef 64) #8
  %128 = ptrtoint ptr %max_pen_x.i154 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %max_pen_x.i154, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool53.not.i = icmp eq i16 %129, 0
  br i1 %tobool53.not.i, label %input_abs_set_res.exit28.i.if.else.i_crit_edge, label %land.lhs.true54.i

input_abs_set_res.exit28.i.if.else.i_crit_edge:   ; preds = %input_abs_set_res.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true54.i:                                ; preds = %input_abs_set_res.exit28.i
  %max_pen_y55.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 15
  %130 = ptrtoint ptr %max_pen_y55.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %max_pen_y55.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool57.not.i = icmp eq i16 %131, 0
  br i1 %tobool57.not.i, label %land.lhs.true54.i.if.else.i_crit_edge, label %if.then58.i

land.lhs.true54.i.if.else.i_crit_edge:            ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then58.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  %id59.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %132 = ptrtoint ptr %id59.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 227, ptr %id59.i, align 4
  br label %w8001_setup_touch.exit.thread

if.else.i:                                        ; preds = %land.lhs.true54.i.if.else.i_crit_edge, %input_abs_set_res.exit28.i.if.else.i_crit_edge
  %id60.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %133 = ptrtoint ptr %id60.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 226, ptr %id60.i, align 4
  br label %w8001_setup_touch.exit.thread

w8001_setup_touch.exit.thread:                    ; preds = %if.else.i, %if.then58.i, %sw.bb29.i, %sw.bb.i, %input_abs_set_res.exit16.i.w8001_setup_touch.exit.thread_crit_edge
  %call62.i = call i32 @strlcat(ptr noundef nonnull %basename, ptr noundef nonnull @.str.19, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i133)
  %tobool24.not181 = icmp eq i32 %retval.0.i133, 0
  br i1 %tobool24.not181, label %w8001_setup_touch.exit.thread.if.then29_crit_edge, label %if.else.thread

w8001_setup_touch.exit.thread.if.then29_crit_edge: ; preds = %w8001_setup_touch.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.else.thread:                                   ; preds = %w8001_setup_touch.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_free_device(ptr noundef nonnull %call1) #8
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.then46

w8001_setup_touch.exit:                           ; preds = %do.end.i, %if.end.i146.w8001_setup_touch.exit_crit_edge, %if.then.i.i145.w8001_setup_touch.exit_crit_edge, %serio_write.exit.i.i142.w8001_setup_touch.exit_crit_edge, %w8001_setup_pen.exit.w8001_setup_touch.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i133)
  %tobool24.not = icmp eq i32 %retval.0.i133, 0
  br i1 %tobool24.not, label %w8001_setup_touch.exit.if.then29_crit_edge, label %w8001_setup_touch.exit.fail3_crit_edge

w8001_setup_touch.exit.fail3_crit_edge:           ; preds = %w8001_setup_touch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

w8001_setup_touch.exit.if.then29_crit_edge:       ; preds = %w8001_setup_touch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %w8001_setup_touch.exit.if.then29_crit_edge, %w8001_setup_touch.exit.thread.if.then29_crit_edge
  %tobool25.not185188 = phi i1 [ true, %w8001_setup_touch.exit.thread.if.then29_crit_edge ], [ false, %w8001_setup_touch.exit.if.then29_crit_edge ]
  %pen_name = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 16
  %call32 = call i32 @strlcpy(ptr noundef %pen_name, ptr noundef nonnull %basename, i32 noundef 64) #8
  %call35 = call i32 @strlcat(ptr noundef %pen_name, ptr noundef nonnull @.str.9, i32 noundef 64) #8
  %135 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %pen_name, ptr %call1, align 8
  %phys1.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %136 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %phys, ptr %phys1.i, align 4
  %id.i162 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %137 = ptrtoint ptr %id.i162 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 19, ptr %id.i162, align 4
  %id2.i = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %id2.i, align 4
  %conv.i163 = trunc i32 %139 to i16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %140 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i163, ptr %product.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %141 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1386, ptr %vendor.i, align 2
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %142 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 256, ptr %version.i, align 2
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %143 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @w8001_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %144 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @w8001_close, ptr %close.i, align 4
  %dev6.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %145 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %dev6.i, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %146 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %147 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call7.i.i, align 8
  %call39 = call i32 @input_register_device(ptr noundef %148) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end44, label %if.then29.fail3_crit_edge

if.then29.fail3_crit_edge:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

if.end44:                                         ; preds = %if.then29
  br i1 %tobool25.not185188, label %if.end44.if.then46_crit_edge, label %if.else61

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.else.thread
  %input_dev_pen.0189 = phi ptr [ %call1, %if.end44.if.then46_crit_edge ], [ null, %if.else.thread ]
  %touch_name = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 17
  %call49 = call i32 @strlcpy(ptr noundef %touch_name, ptr noundef nonnull %basename, i32 noundef 64) #8
  %call52 = call i32 @strlcat(ptr noundef %touch_name, ptr noundef nonnull @.str.10, i32 noundef 64) #8
  %149 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %touch_name, ptr %call2, align 8
  %phys1.i165 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 1
  %150 = ptrtoint ptr %phys1.i165 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %phys, ptr %phys1.i165, align 4
  %id.i166 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %151 = ptrtoint ptr %id.i166 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 19, ptr %id.i166, align 4
  %id2.i167 = getelementptr inbounds %struct.w8001, ptr %call7.i.i, i32 0, i32 4
  %152 = ptrtoint ptr %id2.i167 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %id2.i167, align 4
  %conv.i168 = trunc i32 %153 to i16
  %product.i169 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 2
  %154 = ptrtoint ptr %product.i169 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i168, ptr %product.i169, align 4
  %vendor.i170 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 1
  %155 = ptrtoint ptr %vendor.i170 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 1386, ptr %vendor.i170, align 2
  %version.i171 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 3
  %156 = ptrtoint ptr %version.i171 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 256, ptr %version.i171, align 2
  %open.i172 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %157 = ptrtoint ptr %open.i172 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @w8001_open, ptr %open.i172, align 8
  %close.i173 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %158 = ptrtoint ptr %close.i173 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @w8001_close, ptr %close.i173, align 4
  %dev6.i174 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent.i175 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %159 = ptrtoint ptr %parent.i175 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %dev6.i174, ptr %parent.i175, align 8
  %driver_data.i.i.i176 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %160 = ptrtoint ptr %driver_data.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call7.i.i, ptr %driver_data.i.i.i176, align 4
  %161 = ptrtoint ptr %touch_dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %touch_dev, align 4
  %call57 = call i32 @input_register_device(ptr noundef %162) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then46.cleanup_crit_edge, label %fail4

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else61:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_free_device(ptr noundef nonnull %call2) #8
  %163 = ptrtoint ptr %touch_dev to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %touch_dev, align 4
  br label %cleanup

fail4:                                            ; preds = %if.then46
  %164 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call7.i.i, align 8
  %tobool65.not = icmp eq ptr %165, null
  br i1 %tobool65.not, label %fail4.fail3_crit_edge, label %if.then66

fail4.fail3_crit_edge:                            ; preds = %fail4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail3

if.then66:                                        ; preds = %fail4
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_unregister_device(ptr noundef nonnull %165) #8
  br label %fail3

fail3:                                            ; preds = %if.then66, %fail4.fail3_crit_edge, %if.then29.fail3_crit_edge, %w8001_setup_touch.exit.fail3_crit_edge, %w8001_command.exit.i.fail3_crit_edge, %if.end13.fail3_crit_edge
  %input_dev_pen.1 = phi ptr [ %input_dev_pen.0189, %if.then66 ], [ %input_dev_pen.0189, %fail4.fail3_crit_edge ], [ %call1, %if.then29.fail3_crit_edge ], [ %call1, %w8001_setup_touch.exit.fail3_crit_edge ], [ %call1, %w8001_command.exit.i.fail3_crit_edge ], [ %call1, %if.end13.fail3_crit_edge ]
  %err.0 = phi i32 [ %call57, %if.then66 ], [ %call57, %fail4.fail3_crit_edge ], [ %call39, %if.then29.fail3_crit_edge ], [ -6, %w8001_setup_touch.exit.fail3_crit_edge ], [ %call.i.i.i, %w8001_command.exit.i.fail3_crit_edge ], [ -1, %if.end13.fail3_crit_edge ]
  call void @serio_close(ptr noundef %serio) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %input_dev_pen.2 = phi ptr [ %call1, %if.end.fail2_crit_edge ], [ %input_dev_pen.1, %fail3 ]
  %err.1 = phi i32 [ %call10, %if.end.fail2_crit_edge ], [ %err.0, %fail3 ]
  %166 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %input_dev_pen.3 = phi ptr [ %input_dev_pen.2, %fail2 ], [ %call1, %entry.fail1_crit_edge ]
  %err.2 = phi i32 [ %err.1, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  call void @input_free_device(ptr noundef %input_dev_pen.3) #8
  call void @input_free_device(ptr noundef %call2) #8
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.else61, %if.then46.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %if.then46.cleanup_crit_edge ], [ 0, %if.else61 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %basename) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w8001_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %touch_dev = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %touch_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %touch_dev, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %5) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w8001_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 19
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_count = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %response_type.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %response_type.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %response_type.i, align 4
  %cmd_done.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %serio.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serio.i, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then2.if.then5_crit_edge, label %w8001_command.exit

if.then2.if.then5_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

w8001_command.exit:                               ; preds = %if.then2
  %call.i.i = tail call i32 %9(ptr noundef %7, i8 noundef zeroext 49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %w8001_command.exit.if.end8_crit_edge, label %w8001_command.exit.if.then5_crit_edge

w8001_command.exit.if.then5_crit_edge:            ; preds = %w8001_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

w8001_command.exit.if.end8_crit_edge:             ; preds = %w8001_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %w8001_command.exit.if.then5_crit_edge, %if.then2.if.then5_crit_edge
  %rc.0.i20 = phi i32 [ %call.i.i, %w8001_command.exit.if.then5_crit_edge ], [ -1, %if.then2.if.then5_crit_edge ]
  %10 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %open_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %open_count, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %w8001_command.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %err.0 = phi i32 [ %rc.0.i20, %if.then5 ], [ 0, %w8001_command.exit.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w8001_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %open_count = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %response_type.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %response_type.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %response_type.i, align 4
  %cmd_done.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %serio.i = getelementptr inbounds %struct.w8001, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serio.i, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %serio_write.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

serio_write.exit.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %9(ptr noundef %7, i8 noundef zeroext 48) #8
  br label %if.end

if.end:                                           ; preds = %serio_write.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_wacom_w8001__232_709_w8001_drv_init6, !8, !"__initcall__kmod_wacom_w8001__232_709_w8001_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 709, i32 1}
!9 = !{ptr @__exitcall_w8001_drv_exit, !8, !"__exitcall_w8001_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 702, i32 17}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 700, i32 11}
!15 = !{ptr @w8001_drv, !16, !"w8001_drv", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 698, i32 28}
!17 = !{ptr @w8001_serio_ids, !18, !"w8001_serio_ids", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 686, i32 37}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 292, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @w8001_interrupt.__UNIQUE_ID_ddebug231, !20, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!24 = !{ptr @w8001_connect.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 612, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 614, i32 45}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 628, i32 20}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 639, i32 28}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 655, i32 30}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 458, i32 20}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 508, i32 21}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 525, i32 4}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @w8001_setup_touch._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @w8001_setup_touch._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 539, i32 21}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/wacom_w8001.c", i32 547, i32 20}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148708322, i64 2148708327, i64 2148708340, i64 2148708384, i64 2148708418, i64 2148708439}
!63 = !{!"branch_weights", i32 2002, i32 2000}

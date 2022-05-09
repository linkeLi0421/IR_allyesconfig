; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-scom.c_pt.bc'
source_filename = "../drivers/fsi/fsi-scom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.scom_device = type { %struct.list_head, ptr, %struct.device, %struct.cdev, %struct.mutex, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scom_access = type { i64, i64, i64, i32, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__initcall__kmod_fsi_scom__227_629_scom_init6 = internal global ptr @scom_init, section ".initcall6.init", align 4
@__exitcall_scom_exit = internal global ptr @scom_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [35 x i8] c"fsi_scom.file=drivers/fsi/fsi-scom\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [21 x i8] c"fsi_scom.license=GPL\00", section ".modinfo", align 1
@scom_drv = internal global { %struct.fsi_driver, [48 x i8] } { %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @scom_probe, ptr null, ptr @scom_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @scom_ids }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scom\00", [27 x i8] zeroinitializer }, align 32
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@scom_ids = internal constant { [2 x %struct.fsi_device_id], [28 x i8] } { [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 5, i8 0 }, %struct.fsi_device_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@scom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&scom->lock\00", [20 x i8] zeroinitializer }, align 32
@fsi_cdev_type = external dso_local constant %struct.device_type, align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scom%d\00", [25 x i8] zeroinitializer }, align 32
@scom_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @scom_llseek, ptr @scom_read, ptr @scom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scom_ioctl, ptr null, ptr null, i32 0, ptr @scom_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@scom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 575, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error %d creating char device %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scom_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/fsi/fsi-scom.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scom_probe._entry_ptr = internal global ptr @scom_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scom_read.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsi_scom\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scom_read\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_scom fail:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@scom_read.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.11, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"copy to user failed:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@scom_write.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scom_write\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"copy from user failed:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@scom_write.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.5, ptr @.str.17, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"put_scom failed with:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.scom_read = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -6, i32 -5, i32 -5, i32 -110, i32 -5, i32 -5, i32 -19], [36 x i8] zeroinitializer }, align 32
@switch.table.scom_write = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -6, i32 -5, i32 -5, i32 -110, i32 -5, i32 -5, i32 -19], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1074033411, i64 2147775232, i64 3223352065, i64 3223352066]
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"scom_drv\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 609, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 612, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"scom_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 601, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 550, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 570, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"scom_fops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 523, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 574, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 341, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 347, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 174, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 365, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [26 x i8] c"../drivers/fsi/fsi-scom.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 376, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"switch.table.scom_read\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"switch.table.scom_write\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_scom_exit, ptr @__initcall__kmod_fsi_scom__227_629_scom_init6, ptr @scom_probe._entry, ptr @scom_probe._entry_ptr, ptr @scom_drv, ptr @.str, ptr @scom_ids, ptr @scom_probe.__key, ptr @.str.1, ptr @.str.2, ptr @scom_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.scom_read, ptr @switch.table.scom_write], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scom_drv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scom_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scom_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scom_write to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsi_driver_register(ptr noundef nonnull @scom_drv) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scom_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fsi_driver_unregister(ptr noundef nonnull @scom_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_probe(ptr noundef %dev) #0 align 64 {
entry:
  %didx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %didx) #8
  %0 = ptrtoint ptr %didx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %didx, align 4, !annotation !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1200) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @scom_probe.__key) #8
  %call1 = tail call ptr @get_device(ptr noundef %dev) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fsi_dev5 = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fsi_dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %fsi_dev5, align 8
  %dev6 = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2
  %type = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fsi_cdev_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @scom_free, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev6) #8
  %devt = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2, i32 29
  %call11 = call i32 @fsi_get_new_minor(ptr noundef %dev, i32 noundef 2, ptr noundef %devt, ptr noundef nonnull %didx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end14:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %didx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %didx, align 4
  %call16 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev6, ptr noundef nonnull @.str.2, i32 noundef %8) #8
  %cdev = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 3
  call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @scom_fops) #8
  %call19 = call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end14.cleanup_crit_edge, label %do.end24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.scom_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end24.dev_name.exit_crit_edge

do.end24.dev_name.exit_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.end24.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call19, ptr noundef %retval.0.i) #12
  %13 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devt, align 8
  call void @fsi_free_minor(i32 noundef %14) #8
  br label %err

err:                                              ; preds = %dev_name.exit, %if.end4.err_crit_edge
  %rc.0 = phi i32 [ %call11, %if.end4.err_crit_edge ], [ %call19, %dev_name.exit ]
  call void @put_device(ptr noundef %dev6) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ -19, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %didx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dead = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dead, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %cdev = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 3
  %dev2 = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev2) #8
  %devt = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 2, i32 29
  %3 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devt, align 8
  tail call void @fsi_free_minor(i32 noundef %4) #8
  tail call void @put_device(ptr noundef %dev2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scom_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %fsi_dev = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev, align 8
  tail call void @put_device(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_get_new_minor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i64 @scom_llseek(ptr nocapture noundef writeonly %file, i64 noundef %offset, i32 noundef %whence) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %entry.return_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %1 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %offset, ptr %f_pos, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i64 [ %offset, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_read(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %offset) #0 align 64 {
entry:
  %dummy.i11.i = alloca i32, align 4
  %dummy.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fsi_dev = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi_dev, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %val, align 8, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.not = icmp eq i32 %len, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dead = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dead, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end3.thread

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %do.body

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status.i, align 4, !annotation !60
  %call.i = call fastcc i32 @raw_get_scom(ptr noundef %1, ptr noundef nonnull %val, i64 noundef %8, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -19
  br i1 %cmp.i, label %if.else.if.end3.thread61_crit_edge, label %if.end.i

if.else.if.end3.thread61_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.thread61

if.end.i:                                         ; preds = %if.else
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %12 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %dummy.i.i, align 4
  %and.i.i = and i32 %11, 84934656
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i56_crit_edge, label %if.then.i.i55

if.end.i.if.end.i.i56_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i56

if.then.i.i55:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsi_dev, align 8
  %call.i.i54 = call i32 @fsi_device_write(ptr noundef %14, i32 noundef 24, ptr noundef nonnull %dummy.i.i, i32 noundef 4) #8
  br label %if.end.i.i56

if.end.i.i56:                                     ; preds = %if.then.i.i55, %if.end.i.if.end.i.i56_crit_edge
  %and1.i.i = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i56.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end.i.i56.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i56
  %and5.i.i = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %and9.i.i = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end3.i, label %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

handle_fsi2pib_status.exit.thread.i:              ; preds = %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge, %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge, %if.end.i.i56.handle_fsi2pib_status.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -16, %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge ], [ -5, %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge ], [ -1, %if.end.i.i56.handle_fsi2pib_status.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  br label %if.end3.thread61

if.end3.i:                                        ; preds = %if.end8.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %and.i = lshr i32 %11, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  %15 = ptrtoint ptr %dummy.i11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dummy.i11.i, align 4
  %trunc.i = trunc i32 %and.i to i3
  %16 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i3 %trunc.i, label %if.end6.i.i [
    i3 0, label %if.end13
    i3 1, label %if.end3.i.if.end3.thread65_crit_edge
  ]

if.end3.i.if.end3.thread65_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.thread65

if.end6.i.i:                                      ; preds = %if.end3.i
  %17 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fsi_dev, align 8
  %call.i13.i = call i32 @fsi_device_write(ptr noundef %18, i32 noundef 24, ptr noundef nonnull %dummy.i11.i, i32 noundef 4) #8
  %switch.tableidx = xor i3 %trunc.i, -4
  %19 = sext i3 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %.not = icmp eq i3 %switch.tableidx, -1
  br i1 %.not, label %if.end6.i.i.if.end3.thread65_crit_edge, label %switch.lookup

if.end6.i.i.if.end3.thread65_crit_edge:           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.thread65

if.end3.thread61:                                 ; preds = %handle_fsi2pib_status.exit.thread.i, %if.else.if.end3.thread61_crit_edge
  %retval.0.i57.ph = phi i32 [ %retval.0.i.ph.i, %handle_fsi2pib_status.exit.thread.i ], [ -19, %if.else.if.end3.thread61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %do.body

switch.lookup:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = zext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.scom_read, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end3.thread65

if.end3.thread65:                                 ; preds = %switch.lookup, %if.end6.i.i.if.end3.thread65_crit_edge, %if.end3.i.if.end3.thread65_crit_edge
  %retval.0.i14.i.ph = phi i32 [ -16, %if.end3.i.if.end3.thread65_crit_edge ], [ %switch.load, %switch.lookup ], [ -5, %if.end6.i.i.if.end3.thread65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %do.body

do.body:                                          ; preds = %if.end3.thread65, %if.end3.thread61, %if.end3.thread
  %rc.060 = phi i32 [ -19, %if.end3.thread ], [ %retval.0.i57.ph, %if.end3.thread61 ], [ %retval.0.i14.i.ph, %if.end3.thread65 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scom_read.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scom_read, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !62

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scom_read.__UNIQUE_ID_ddebug223, ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %rc.060) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end13.do.body17_crit_edge, label %if.end.i.i

if.end13.do.body17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end.i.i:                                       ; preds = %if.end13
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #13, !srcloc !63
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.body17_crit_edge

if.end.i.i.do.body17_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %val, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool15.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool15.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.body17_crit_edge

copy_to_user.exit.do.body17_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body17:                                        ; preds = %copy_to_user.exit.do.body17_crit_edge, %if.end.i.i.do.body17_crit_edge, %if.end13.do.body17_crit_edge
  %n.addr.0.i71 = phi i32 [ %call.i12.i.i, %copy_to_user.exit.do.body17_crit_edge ], [ 8, %if.end13.do.body17_crit_edge ], [ 8, %if.end.i.i.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scom_read.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scom_read, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !62

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scom_read.__UNIQUE_ID_ddebug224, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %n.addr.0.i71) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %copy_to_user.exit.cleanup_crit_edge, %if.then11, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %rc.060, %if.then11 ], [ %rc.060, %do.body ], [ %n.addr.0.i71, %if.then29 ], [ 8, %copy_to_user.exit.cleanup_crit_edge ], [ %n.addr.0.i71, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_write(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %offset) #0 align 64 {
entry:
  %dummy.i11.i = alloca i32, align 4
  %dummy.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fsi_dev = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi_dev, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %val, align 8, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.not = icmp eq i32 %len, 8
  br i1 %cmp.not, label %if.end59.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !65

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 8) #8
  %6 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !66
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !65

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i57 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i57
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i57)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scom_write.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scom_write, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !62

if.then7:                                         ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scom_write.__UNIQUE_ID_ddebug225, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %res.0.i.i57) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %lock = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dead = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dead, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.else, label %if.end9.do.body17_crit_edge

if.end9.do.body17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.else:                                          ; preds = %if.end9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %val, align 8
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %status.i, align 4, !annotation !60
  %call.i = call fastcc i32 @raw_put_scom(ptr noundef %1, i64 noundef %13, i64 noundef %15, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -19
  br i1 %cmp.i, label %if.else.if.end13.thread65_crit_edge, label %if.end.i

if.else.if.end13.thread65_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread65

if.end.i:                                         ; preds = %if.else
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %19 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dummy.i.i, align 4
  %and.i.i = and i32 %18, 84934656
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i53_crit_edge, label %if.then.i.i52

if.end.i.if.end.i.i53_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i53

if.then.i.i52:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fsi_dev, align 8
  %call.i.i51 = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 24, ptr noundef nonnull %dummy.i.i, i32 noundef 4) #8
  br label %if.end.i.i53

if.end.i.i53:                                     ; preds = %if.then.i.i52, %if.end.i.if.end.i.i53_crit_edge
  %and1.i.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i53.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end.i.i53.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i53
  %and5.i.i = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %and9.i.i = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end3.i, label %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge

if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_fsi2pib_status.exit.thread.i

handle_fsi2pib_status.exit.thread.i:              ; preds = %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge, %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge, %if.end.i.i53.handle_fsi2pib_status.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -16, %if.end8.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge ], [ -5, %if.end4.i.i.handle_fsi2pib_status.exit.thread.i_crit_edge ], [ -1, %if.end.i.i53.handle_fsi2pib_status.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  br label %if.end13.thread65

if.end3.i:                                        ; preds = %if.end8.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %and.i = lshr i32 %18, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  %22 = ptrtoint ptr %dummy.i11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %dummy.i11.i, align 4
  %trunc.i = trunc i32 %and.i to i3
  %23 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i3 %trunc.i, label %if.end6.i.i [
    i3 0, label %if.end13
    i3 1, label %if.end3.i.if.end13.thread69_crit_edge
  ]

if.end3.i.if.end13.thread69_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread69

if.end6.i.i:                                      ; preds = %if.end3.i
  %24 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fsi_dev, align 8
  %call.i13.i = call i32 @fsi_device_write(ptr noundef %25, i32 noundef 24, ptr noundef nonnull %dummy.i11.i, i32 noundef 4) #8
  %switch.tableidx = xor i3 %trunc.i, -4
  %26 = sext i3 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %.not = icmp eq i3 %switch.tableidx, -1
  br i1 %.not, label %if.end6.i.i.if.end13.thread69_crit_edge, label %switch.lookup

if.end6.i.i.if.end13.thread69_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread69

if.end13.thread65:                                ; preds = %handle_fsi2pib_status.exit.thread.i, %if.else.if.end13.thread65_crit_edge
  %retval.0.i54.ph = phi i32 [ %retval.0.i.ph.i, %handle_fsi2pib_status.exit.thread.i ], [ -19, %if.else.if.end13.thread65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br label %do.body17

switch.lookup:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = zext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.scom_write, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end13.thread69

if.end13.thread69:                                ; preds = %switch.lookup, %if.end6.i.i.if.end13.thread69_crit_edge, %if.end3.i.if.end13.thread69_crit_edge
  %retval.0.i14.i.ph = phi i32 [ -16, %if.end3.i.if.end13.thread69_crit_edge ], [ %switch.load, %switch.lookup ], [ -5, %if.end6.i.i.if.end13.thread69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br label %do.body17

if.end13:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

do.body17:                                        ; preds = %if.end13.thread69, %if.end13.thread65, %if.end9.do.body17_crit_edge
  %rc.064 = phi i32 [ %retval.0.i54.ph, %if.end13.thread65 ], [ %retval.0.i14.i.ph, %if.end13.thread69 ], [ -19, %if.end9.do.body17_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scom_write.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scom_write, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !62

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scom_write.__UNIQUE_ID_ddebug226, ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %rc.064) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %if.end13, %if.then7, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7 ], [ %rc.064, %if.then29 ], [ 8, %if.end13 ], [ -22, %if.then11.i.i ], [ %rc.064, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scom_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %dummy.i = alloca i32, align 4
  %prev_data.i = alloca i64, align 8
  %acc.i22 = alloca %struct.scom_access, align 8
  %status.i23 = alloca i32, align 4
  %acc.i = alloca %struct.scom_access, align 8
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %lock = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dead = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dead, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 -2147192064, label %sw.bb
    i32 -1071615231, label %sw.bb2
    i32 -1071615230, label %sw.bb4
    i32 1074033411, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 482) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !66
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 1, i32 -1226833921) #8, !srcloc !69
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %acc.i) #8
  %10 = call ptr @memset(ptr %acc.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i, align 4, !annotation !60
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %sw.bb2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb2.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb2
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !65

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acc.i, i32 noundef 32) #8
  %13 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !66
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %acc.i, ptr noundef %2, i32 noundef 32) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !65

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb2.if.then11.i.i.i_crit_edge
  %res.0.i.i25.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %sw.bb2.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i25.i
  %add.ptr.i.i.i = getelementptr i8, ptr %acc.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i25.i)
  br label %scom_raw_read.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %data.i = getelementptr inbounds %struct.scom_access, ptr %acc.i, i32 0, i32 1
  %17 = ptrtoint ptr %acc.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %acc.i, align 8
  %call1.i = call fastcc i32 @raw_get_scom(ptr noundef %1, ptr noundef %data.i, i64 noundef %18, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.scom_raw_read.exit_crit_edge

if.end.i.scom_raw_read.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_raw_read.exit

if.end4.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 4
  %and.i.i21 = lshr i32 %20, 12
  %21 = trunc i32 %and.i.i21 to i8
  %conv.i.i = and i8 %21, 7
  %pib_status.i.i = getelementptr inbounds %struct.scom_access, ptr %acc.i, i32 0, i32 4
  %22 = ptrtoint ptr %pib_status.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i, ptr %pib_status.i.i, align 4
  %intf_errors.i.i = getelementptr inbounds %struct.scom_access, ptr %acc.i, i32 0, i32 3
  %23 = ptrtoint ptr %intf_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %intf_errors.i.i, align 8
  %and1.i.i = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end4.i.if.end22.sink.split.i.i_crit_edge

if.end4.i.if.end22.sink.split.i.i_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end4.i
  %and3.i.i = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else8.i.i, label %if.else.i.i.if.end22.sink.split.i.i_crit_edge

if.else.i.i.if.end22.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %and9.i.i = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else14.i.i, label %if.else8.i.i.if.end22.sink.split.i.i_crit_edge

if.else8.i.i.if.end22.sink.split.i.i_crit_edge:   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i

if.else14.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool16.not.i.i = icmp sgt i32 %20, -1
  br i1 %tobool16.not.i.i, label %if.else14.i.i.if.end59.i.i16.i_crit_edge, label %if.else14.i.i.if.end22.sink.split.i.i_crit_edge

if.else14.i.i.if.end22.sink.split.i.i_crit_edge:  ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i

if.else14.i.i.if.end59.i.i16.i_crit_edge:         ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i16.i

if.end22.sink.split.i.i:                          ; preds = %if.else14.i.i.if.end22.sink.split.i.i_crit_edge, %if.else8.i.i.if.end22.sink.split.i.i_crit_edge, %if.else.i.i.if.end22.sink.split.i.i_crit_edge, %if.end4.i.if.end22.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.end4.i.if.end22.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end22.sink.split.i.i_crit_edge ], [ 4, %if.else8.i.i.if.end22.sink.split.i.i_crit_edge ], [ -2147483648, %if.else14.i.i.if.end22.sink.split.i.i_crit_edge ]
  %24 = ptrtoint ptr %intf_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i.i, ptr %intf_errors.i.i, align 8
  br label %if.end59.i.i16.i

if.end59.i.i16.i:                                 ; preds = %if.end22.sink.split.i.i, %if.else14.i.i.if.end59.i.i16.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i17.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i17.i, label %if.end59.i.i16.i.scom_raw_read.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i16.i.scom_raw_read.exit_crit_edge:    ; preds = %if.end59.i.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_raw_read.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i21.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %acc.i, i32 noundef 32) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %acc.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool6.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 0, i32 -14
  br label %scom_raw_read.exit

scom_raw_read.exit:                               ; preds = %copy_to_user.exit.i, %if.end59.i.i16.i.scom_raw_read.exit_crit_edge, %if.end.i.scom_raw_read.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i.scom_raw_read.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i16.i.scom_raw_read.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %acc.i) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prev_data.i) #8
  %25 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %prev_data.i, align 8, !annotation !60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %acc.i22) #8
  %26 = call ptr @memset(ptr %acc.i22, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i23) #8
  %27 = ptrtoint ptr %status.i23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %status.i23, align 4, !annotation !60
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i.i24 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i24, label %sw.bb4.if.then11.i.i.i38_crit_edge, label %land.lhs.true.i.i.i27

sw.bb4.if.then11.i.i.i38_crit_edge:               ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i38

land.lhs.true.i.i.i27:                            ; preds = %sw.bb4
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #13
  %asmresult.i.i.i25 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i25)
  %cmp.i6.i.i26 = icmp eq i32 %asmresult.i.i.i25, 0
  br i1 %cmp.i6.i.i26, label %if.end.i.i.i35, label %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge, !prof !65

land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge: ; preds = %land.lhs.true.i.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i38

if.end.i.i.i35:                                   ; preds = %land.lhs.true.i.i.i27
  %call.i.i.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acc.i22, i32 noundef 32) #8
  %29 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i.i.i29 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i29 to ptr
  %cpu_domain.i.i.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i30) #7, !srcloc !66
  %and.i.i.i.i.i31 = and i32 %31, -13
  %or.i.i.i.i.i32 = or i32 %and.i.i.i.i.i31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i32) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %call1.i.i.i.i33 = call i32 @arm_copy_from_user(ptr noundef nonnull %acc.i22, ptr noundef %2, i32 noundef 32) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i33)
  %tobool4.not.i.i.i34 = icmp eq i32 %call1.i.i.i.i33, 0
  br i1 %tobool4.not.i.i.i34, label %if.end.i40, label %if.end.i.i.i35.if.then11.i.i.i38_crit_edge, !prof !65

if.end.i.i.i35.if.then11.i.i.i38_crit_edge:       ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i38

if.then11.i.i.i38:                                ; preds = %if.end.i.i.i35.if.then11.i.i.i38_crit_edge, %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge, %sw.bb4.if.then11.i.i.i38_crit_edge
  %res.0.i.i48.i = phi i32 [ %call1.i.i.i.i33, %if.end.i.i.i35.if.then11.i.i.i38_crit_edge ], [ 32, %sw.bb4.if.then11.i.i.i38_crit_edge ], [ 32, %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge ]
  %sub.i.i.i36 = sub i32 32, %res.0.i.i48.i
  %add.ptr.i.i.i37 = getelementptr i8, ptr %acc.i22, i32 %sub.i.i.i36
  %32 = call ptr @memset(ptr %add.ptr.i.i.i37, i32 0, i32 %res.0.i.i48.i)
  br label %scom_raw_write.exit

if.end.i40:                                       ; preds = %if.end.i.i.i35
  %mask1.i = getelementptr inbounds %struct.scom_access, ptr %acc.i22, i32 0, i32 2
  %33 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mask1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool2.not.i39 = icmp eq i64 %34, 0
  br i1 %tobool2.not.i39, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i40
  %35 = ptrtoint ptr %acc.i22 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %acc.i22, align 8
  %call4.i = call fastcc i32 @raw_get_scom(ptr noundef %1, ptr noundef nonnull %prev_data.i, i64 noundef %36, ptr noundef nonnull %status.i23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then3.i.scom_raw_write.exit_crit_edge

if.then3.i.scom_raw_write.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_raw_write.exit

if.end7.i:                                        ; preds = %if.then3.i
  %37 = ptrtoint ptr %status.i23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i23, align 4
  %and.i = and i32 %38, 84963328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.fail.i_crit_edge

if.end7.i.fail.i_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mask1.i, align 8
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %prev_data.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end10.i
  %mask.0.i = phi i64 [ %40, %if.end10.i ], [ -1, %if.else.i ]
  %42 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %prev_data.i, align 8
  %neg.i = xor i64 %mask.0.i, -1
  %and13.i = and i64 %43, %neg.i
  %data14.i = getelementptr inbounds %struct.scom_access, ptr %acc.i22, i32 0, i32 1
  %44 = ptrtoint ptr %data14.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data14.i, align 8
  %and15.i = and i64 %45, %mask.0.i
  %or.i = or i64 %and15.i, %and13.i
  %46 = ptrtoint ptr %acc.i22 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %acc.i22, align 8
  %call17.i = call fastcc i32 @raw_put_scom(ptr noundef %1, i64 noundef %or.i, i64 noundef %47, ptr noundef nonnull %status.i23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %failthread-pre-split.i, label %if.end12.i.scom_raw_write.exit_crit_edge

if.end12.i.scom_raw_write.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_raw_write.exit

failthread-pre-split.i:                           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %status.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load i32, ptr %status.i23, align 4
  br label %fail.i

fail.i:                                           ; preds = %failthread-pre-split.i, %if.end7.i.fail.i_crit_edge
  %49 = phi i32 [ %.pr.i, %failthread-pre-split.i ], [ %38, %if.end7.i.fail.i_crit_edge ]
  %and.i.i41 = lshr i32 %49, 12
  %50 = trunc i32 %and.i.i41 to i8
  %conv.i.i42 = and i8 %50, 7
  %pib_status.i.i43 = getelementptr inbounds %struct.scom_access, ptr %acc.i22, i32 0, i32 4
  %51 = ptrtoint ptr %pib_status.i.i43 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i.i42, ptr %pib_status.i.i43, align 4
  %intf_errors.i.i44 = getelementptr inbounds %struct.scom_access, ptr %acc.i22, i32 0, i32 3
  %52 = ptrtoint ptr %intf_errors.i.i44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %intf_errors.i.i44, align 8
  %and1.i.i45 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and1.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.else.i.i49, label %fail.i.if.end22.sink.split.i.i56_crit_edge

fail.i.if.end22.sink.split.i.i56_crit_edge:       ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i56

if.else.i.i49:                                    ; preds = %fail.i
  %and3.i.i47 = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i47)
  %tobool4.not.i.i48 = icmp eq i32 %and3.i.i47, 0
  br i1 %tobool4.not.i.i48, label %if.else8.i.i52, label %if.else.i.i49.if.end22.sink.split.i.i56_crit_edge

if.else.i.i49.if.end22.sink.split.i.i56_crit_edge: ; preds = %if.else.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i56

if.else8.i.i52:                                   ; preds = %if.else.i.i49
  %and9.i.i50 = and i32 %49, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i50)
  %tobool10.not.i.i51 = icmp eq i32 %and9.i.i50, 0
  br i1 %tobool10.not.i.i51, label %if.else14.i.i54, label %if.else8.i.i52.if.end22.sink.split.i.i56_crit_edge

if.else8.i.i52.if.end22.sink.split.i.i56_crit_edge: ; preds = %if.else8.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i56

if.else14.i.i54:                                  ; preds = %if.else8.i.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool16.not.i.i53 = icmp sgt i32 %49, -1
  br i1 %tobool16.not.i.i53, label %if.else14.i.i54.if.end59.i.i39.i_crit_edge, label %if.else14.i.i54.if.end22.sink.split.i.i56_crit_edge

if.else14.i.i54.if.end22.sink.split.i.i56_crit_edge: ; preds = %if.else14.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i.i56

if.else14.i.i54.if.end59.i.i39.i_crit_edge:       ; preds = %if.else14.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i39.i

if.end22.sink.split.i.i56:                        ; preds = %if.else14.i.i54.if.end22.sink.split.i.i56_crit_edge, %if.else8.i.i52.if.end22.sink.split.i.i56_crit_edge, %if.else.i.i49.if.end22.sink.split.i.i56_crit_edge, %fail.i.if.end22.sink.split.i.i56_crit_edge
  %.sink.i.i55 = phi i32 [ 2, %fail.i.if.end22.sink.split.i.i56_crit_edge ], [ 1, %if.else.i.i49.if.end22.sink.split.i.i56_crit_edge ], [ 4, %if.else8.i.i52.if.end22.sink.split.i.i56_crit_edge ], [ -2147483648, %if.else14.i.i54.if.end22.sink.split.i.i56_crit_edge ]
  %53 = ptrtoint ptr %intf_errors.i.i44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink.i.i55, ptr %intf_errors.i.i44, align 8
  br label %if.end59.i.i39.i

if.end59.i.i39.i:                                 ; preds = %if.end22.sink.split.i.i56, %if.else14.i.i54.if.end59.i.i39.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i40.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i40.i, label %if.end59.i.i39.i.scom_raw_write.exit_crit_edge, label %copy_to_user.exit.i59

if.end59.i.i39.i.scom_raw_write.exit_crit_edge:   ; preds = %if.end59.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_raw_write.exit

copy_to_user.exit.i59:                            ; preds = %if.end59.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i44.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %acc.i22, i32 noundef 32) #8
  %call.i12.i.i.i57 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %acc.i22, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i57)
  %tobool22.not.i = icmp eq i32 %call.i12.i.i.i57, 0
  %spec.select.i58 = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %scom_raw_write.exit

scom_raw_write.exit:                              ; preds = %copy_to_user.exit.i59, %if.end59.i.i39.i.scom_raw_write.exit_crit_edge, %if.end12.i.scom_raw_write.exit_crit_edge, %if.then3.i.scom_raw_write.exit_crit_edge, %if.then11.i.i.i38
  %retval.0.i60 = phi i32 [ %call4.i, %if.then3.i.scom_raw_write.exit_crit_edge ], [ %call17.i, %if.end12.i.scom_raw_write.exit_crit_edge ], [ -14, %if.then11.i.i.i38 ], [ -14, %if.end59.i.i39.i.scom_raw_write.exit_crit_edge ], [ %spec.select.i58, %copy_to_user.exit.i59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i23) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %acc.i22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prev_data.i) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %54 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %dummy.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 468) #8
  %55 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i61 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i61 to ptr
  %cpu_domain.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i62) #7, !srcloc !66
  %and.i.i63 = and i32 %57, -13
  %or.i.i64 = or i32 %and.i.i63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i64) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %58 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #8, !srcloc !70
  %asmresult.i = extractvalue { i32, i32 } %58, 0
  %asmresult1.i = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i66, label %sw.bb6.scom_reset.exit_crit_edge

sw.bb6.scom_reset.exit_crit_edge:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_reset.exit

if.end.i66:                                       ; preds = %sw.bb6
  %and.i65 = and i32 %asmresult1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool3.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool3.not.i, label %if.end.i66.land.lhs.true.i_crit_edge, label %if.end6.i

if.end.i66.land.lhs.true.i_crit_edge:             ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end6.i:                                        ; preds = %if.end.i66
  %fsi_dev.i = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fsi_dev.i, align 8
  %call5.i = call i32 @fsi_device_write(ptr noundef %60, i32 noundef 28, ptr noundef nonnull %dummy.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.land.lhs.true.i_crit_edge, label %if.end6.i.scom_reset.exit_crit_edge

if.end6.i.scom_reset.exit_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_reset.exit

if.end6.i.land.lhs.true.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end6.i.land.lhs.true.i_crit_edge, %if.end.i66.land.lhs.true.i_crit_edge
  %and8.i = and i32 %asmresult1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.scom_reset.exit_crit_edge, label %if.then10.i

land.lhs.true.i.scom_reset.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scom_reset.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsi_dev11.i = getelementptr inbounds %struct.scom_device, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %fsi_dev11.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fsi_dev11.i, align 8
  %call12.i = call i32 @fsi_device_write(ptr noundef %62, i32 noundef 24, ptr noundef nonnull %dummy.i, i32 noundef 4) #8
  br label %scom_reset.exit

scom_reset.exit:                                  ; preds = %if.then10.i, %land.lhs.true.i.scom_reset.exit_crit_edge, %if.end6.i.scom_reset.exit_crit_edge, %sw.bb6.scom_reset.exit_crit_edge
  %retval.0.i67 = phi i32 [ -14, %sw.bb6.scom_reset.exit_crit_edge ], [ %call5.i, %if.end6.i.scom_reset.exit_crit_edge ], [ %call12.i, %if.then10.i ], [ 0, %land.lhs.true.i.scom_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %scom_reset.exit, %scom_raw_write.exit, %scom_raw_read.exit, %sw.bb, %if.end.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -25, %if.end.sw.epilog_crit_edge ], [ %retval.0.i67, %scom_reset.exit ], [ %retval.0.i60, %scom_raw_write.exit ], [ %retval.0.i, %scom_raw_read.exit ], [ %9, %sw.bb ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %rc.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scom_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -944
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_get_scom(ptr nocapture noundef readonly %scom, ptr nocapture noundef %value, i64 noundef %addr, ptr nocapture noundef %status) unnamed_addr #0 align 64 {
entry:
  %ind_data.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %addr)
  %tobool.not = icmp sgt i64 %addr, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i64 %addr, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ind_data.i) #8
  %and1.i = and i64 %addr, 4503595332403200
  %or.i = or i64 %and1.i, -9223372036854775808
  %0 = ptrtoint ptr %ind_data.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %or.i, ptr %ind_data.i, align 8
  %1 = trunc i64 %addr to i32
  %conv.i = and i32 %1, 2147483647
  %call.i = tail call fastcc i32 @__put_scom(ptr noundef %scom, i64 noundef %or.i, i32 noundef %conv.i, ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.get_indirect_scom_form0.exit_crit_edge

if.end.get_indirect_scom_form0.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and2.i = and i32 %3, 84963328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %lor.lhs.false.i.get_indirect_scom_form0.exit_crit_edge

lor.lhs.false.i.get_indirect_scom_form0.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %retries.040.i = phi i32 [ %inc.i, %if.end22.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %call6.i = call fastcc i32 @__get_scom(ptr noundef %scom, ptr noundef nonnull %ind_data.i, i32 noundef %1, ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %for.body.i.get_indirect_scom_form0.exit_crit_edge

for.body.i.get_indirect_scom_form0.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

lor.lhs.false8.i:                                 ; preds = %for.body.i
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and9.i = and i32 %5, 84963328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false8.i.get_indirect_scom_form0.exit_crit_edge

lor.lhs.false8.i.get_indirect_scom_form0.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

if.end12.i:                                       ; preds = %lor.lhs.false8.i
  %6 = ptrtoint ptr %ind_data.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ind_data.i, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 28
  %conv14.i = and i32 %9, 7
  %shl.i = shl nuw nsw i32 %conv14.i, 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl.i, ptr %status, align 4
  %and15.i = and i64 %7, 65535
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %and15.i, ptr %value, align 8
  %and16.i = and i64 %7, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv14.i)
  %cmp19.not.i = icmp eq i32 %conv14.i, 1
  %or.cond.i = select i1 %tobool17.not.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i, label %if.end22.i, label %if.end12.i.get_indirect_scom_form0.exit_crit_edge

if.end12.i.get_indirect_scom_form0.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

if.end22.i:                                       ; preds = %if.end12.i
  tail call void @msleep(i32 noundef 1) #8
  %inc.i = add nuw nsw i32 %retries.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end22.i.get_indirect_scom_form0.exit_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end22.i.get_indirect_scom_form0.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_indirect_scom_form0.exit

get_indirect_scom_form0.exit:                     ; preds = %if.end22.i.get_indirect_scom_form0.exit_crit_edge, %if.end12.i.get_indirect_scom_form0.exit_crit_edge, %lor.lhs.false8.i.get_indirect_scom_form0.exit_crit_edge, %for.body.i.get_indirect_scom_form0.exit_crit_edge, %lor.lhs.false.i.get_indirect_scom_form0.exit_crit_edge, %if.end.get_indirect_scom_form0.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.get_indirect_scom_form0.exit_crit_edge ], [ %call.i, %if.end.get_indirect_scom_form0.exit_crit_edge ], [ 0, %lor.lhs.false8.i.get_indirect_scom_form0.exit_crit_edge ], [ %call6.i, %for.body.i.get_indirect_scom_form0.exit_crit_edge ], [ 0, %if.end12.i.get_indirect_scom_form0.exit_crit_edge ], [ 0, %if.end22.i.get_indirect_scom_form0.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ind_data.i) #8
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %addr to i32
  %call4 = tail call fastcc i32 @__get_scom(ptr noundef %scom, ptr noundef %value, i32 noundef %conv, ptr noundef %status)
  br label %return

return:                                           ; preds = %if.else, %get_indirect_scom_form0.exit, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %get_indirect_scom_form0.exit ], [ %call4, %if.else ], [ -6, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_scom(ptr nocapture noundef readonly %scom_dev, ptr nocapture noundef %value, i32 noundef %addr, ptr nocapture noundef writeonly %status) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %raw_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_status) #8
  %0 = ptrtoint ptr %raw_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %raw_status, align 4, !annotation !60
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %value, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %data, align 4
  %fsi_dev = getelementptr inbounds %struct.scom_device, ptr %scom_dev, i32 0, i32 1
  %3 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsi_dev, align 8
  %call = call i32 @fsi_device_write(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsi_dev, align 8
  %call2 = call i32 @fsi_device_read(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %raw_status, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fsi_dev, align 8
  %call7 = call i32 @fsi_device_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %conv = zext i32 %10 to i64
  %shl = shl nuw i64 %conv, 32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value, align 8
  %or11 = or i64 %shl, %12
  store i64 %or11, ptr %value, align 8
  %13 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsi_dev, align 8
  %call13 = call i32 @fsi_device_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %conv17 = zext i32 %16 to i64
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %value, align 8
  %or18 = or i64 %18, %conv17
  store i64 %or18, ptr %value, align 8
  %19 = ptrtoint ptr %raw_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %raw_status, align 4
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__put_scom(ptr nocapture noundef readonly %scom_dev, i64 noundef %value, i32 noundef %addr, ptr nocapture noundef writeonly %status) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %raw_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_status) #8
  %0 = ptrtoint ptr %raw_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %raw_status, align 4, !annotation !60
  %shr = lshr i64 %value, 32
  %conv = trunc i64 %shr to i32
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %data, align 4
  %fsi_dev = getelementptr inbounds %struct.scom_device, ptr %scom_dev, i32 0, i32 1
  %2 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi_dev, align 8
  %call = call i32 @fsi_device_write(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = trunc i64 %value to i32
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %data, align 4
  %5 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsi_dev, align 8
  %call4 = call i32 @fsi_device_write(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %or = or i32 %addr, -2147483648
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %data, align 4
  %8 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsi_dev, align 8
  %call9 = call i32 @fsi_device_write(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fsi_dev, align 8
  %call14 = call i32 @fsi_device_read(ptr noundef %11, i32 noundef 28, ptr noundef nonnull %raw_status, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %raw_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raw_status, align 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_put_scom(ptr nocapture noundef readonly %scom, i64 noundef %value, i64 noundef %addr, ptr nocapture noundef %status) unnamed_addr #0 align 64 {
entry:
  %ind_data.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %addr)
  %tobool.not = icmp sgt i64 %addr, -1
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i64 %addr, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370496, i64 %value)
  %tobool.not.i = icmp ult i64 %value, 4503599627370496
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = shl i64 %addr, 20
  %shl.i = and i64 %and2.i, -4503599627370496
  %or.i = or i64 %shl.i, %value
  %conv.i = trunc i64 %addr to i32
  %call.i = tail call fastcc i32 @__put_scom(ptr noundef %scom, i64 noundef %or.i, i32 noundef %conv.i, ptr noundef %status) #8
  br label %return

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ind_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %value)
  %tobool.not.i17 = icmp ult i64 %value, 65536
  br i1 %tobool.not.i17, label %if.end.i22, label %if.else.put_indirect_scom_form0.exit_crit_edge

if.else.put_indirect_scom_form0.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

if.end.i22:                                       ; preds = %if.else
  %and2.i18 = and i64 %addr, 4503595332403200
  %or.i19 = or i64 %and2.i18, %value
  %0 = ptrtoint ptr %ind_data.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %or.i19, ptr %ind_data.i, align 8
  %1 = trunc i64 %addr to i32
  %conv.i20 = and i32 %1, 2147483647
  %call.i21 = tail call fastcc i32 @__put_scom(ptr noundef %scom, i64 noundef %or.i19, i32 noundef %conv.i20, ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool3.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i22.put_indirect_scom_form0.exit_crit_edge

if.end.i22.put_indirect_scom_form0.exit_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

lor.lhs.false.i:                                  ; preds = %if.end.i22
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and4.i = and i32 %3, 84963328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %lor.lhs.false.i.put_indirect_scom_form0.exit_crit_edge

lor.lhs.false.i.put_indirect_scom_form0.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %retries.044.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %call10.i = call fastcc i32 @__get_scom(ptr noundef %scom, ptr noundef nonnull %ind_data.i, i32 noundef %1, ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %for.body.i.put_indirect_scom_form0.exit_crit_edge

for.body.i.put_indirect_scom_form0.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

lor.lhs.false12.i:                                ; preds = %for.body.i
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and13.i = and i32 %5, 84963328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %lor.lhs.false12.i.put_indirect_scom_form0.exit_crit_edge

lor.lhs.false12.i.put_indirect_scom_form0.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %6 = ptrtoint ptr %ind_data.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ind_data.i, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 28
  %conv18.i = and i32 %9, 7
  %shl.i23 = shl nuw nsw i32 %conv18.i, 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl.i23, ptr %status, align 4
  %and19.i = and i64 %7, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv18.i)
  %cmp22.not.i = icmp eq i32 %conv18.i, 1
  %or.cond.i = select i1 %tobool20.not.i, i1 %cmp22.not.i, i1 false
  br i1 %or.cond.i, label %if.end25.i, label %if.end16.i.put_indirect_scom_form0.exit_crit_edge

if.end16.i.put_indirect_scom_form0.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

if.end25.i:                                       ; preds = %if.end16.i
  tail call void @msleep(i32 noundef 1) #8
  %inc.i = add nuw nsw i32 %retries.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end25.i.put_indirect_scom_form0.exit_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end25.i.put_indirect_scom_form0.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_indirect_scom_form0.exit

put_indirect_scom_form0.exit:                     ; preds = %if.end25.i.put_indirect_scom_form0.exit_crit_edge, %if.end16.i.put_indirect_scom_form0.exit_crit_edge, %lor.lhs.false12.i.put_indirect_scom_form0.exit_crit_edge, %for.body.i.put_indirect_scom_form0.exit_crit_edge, %lor.lhs.false.i.put_indirect_scom_form0.exit_crit_edge, %if.end.i22.put_indirect_scom_form0.exit_crit_edge, %if.else.put_indirect_scom_form0.exit_crit_edge
  %retval.0.i24 = phi i32 [ -22, %if.else.put_indirect_scom_form0.exit_crit_edge ], [ 0, %lor.lhs.false.i.put_indirect_scom_form0.exit_crit_edge ], [ %call.i21, %if.end.i22.put_indirect_scom_form0.exit_crit_edge ], [ 0, %lor.lhs.false12.i.put_indirect_scom_form0.exit_crit_edge ], [ %call10.i, %for.body.i.put_indirect_scom_form0.exit_crit_edge ], [ 0, %if.end16.i.put_indirect_scom_form0.exit_crit_edge ], [ 0, %if.end25.i.put_indirect_scom_form0.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ind_data.i) #8
  br label %return

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %addr to i32
  %call6 = tail call fastcc i32 @__put_scom(ptr noundef %scom, i64 noundef %value, i32 noundef %conv, ptr noundef %status)
  br label %return

return:                                           ; preds = %if.else5, %put_indirect_scom_form0.exit, %if.end.i, %if.then3.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %put_indirect_scom_form0.exit ], [ %call6, %if.else5 ], [ %call.i, %if.end.i ], [ -22, %if.then3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_fsi_scom__227_629_scom_init6, !1, !"__initcall__kmod_fsi_scom__227_629_scom_init6", i1 false, i1 false}
!1 = !{!"../drivers/fsi/fsi-scom.c", i32 629, i32 1}
!2 = !{ptr @__exitcall_scom_exit, !3, !"__exitcall_scom_exit", i1 false, i1 false}
!3 = !{!"../drivers/fsi/fsi-scom.c", i32 630, i32 1}
!4 = !{ptr @__UNIQUE_ID_file228, !5, !"__UNIQUE_ID_file228", i1 false, i1 false}
!5 = !{!"../drivers/fsi/fsi-scom.c", i32 631, i32 1}
!6 = !{ptr @__UNIQUE_ID_license229, !5, !"__UNIQUE_ID_license229", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/fsi/fsi-scom.c", i32 612, i32 11}
!9 = !{ptr @scom_drv, !10, !"scom_drv", i1 false, i1 false}
!10 = !{!"../drivers/fsi/fsi-scom.c", i32 609, i32 26}
!11 = !{ptr @scom_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/fsi/fsi-scom.c", i32 550, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/fsi/fsi-scom.c", i32 570, i32 27}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fsi/fsi-scom.c", i32 574, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @scom_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @scom_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @scom_fops, !25, !"scom_fops", i1 false, i1 false}
!25 = !{!"../drivers/fsi/fsi-scom.c", i32 523, i32 37}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/fsi/fsi-scom.c", i32 341, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @scom_read.__UNIQUE_ID_ddebug223, !27, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/fsi/fsi-scom.c", i32 347, i32 3}
!33 = !{ptr @scom_read.__UNIQUE_ID_ddebug224, !32, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/fsi/fsi-scom.c", i32 365, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @scom_write.__UNIQUE_ID_ddebug225, !42, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/fsi/fsi-scom.c", i32 376, i32 3}
!47 = !{ptr @scom_write.__UNIQUE_ID_ddebug226, !46, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!48 = !{ptr @scom_ids, !49, !"scom_ids", i1 false, i1 false}
!49 = !{!"../drivers/fsi/fsi-scom.c", i32 601, i32 35}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148292810, i64 2148292815, i64 2148292828, i64 2148292872, i64 2148292906, i64 2148292927}
!63 = !{i64 2152668030, i64 2152668055}
!64 = !{i64 2152667349, i64 2152667374}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 5162904}
!67 = !{i64 5163101}
!68 = !{i64 2152648334}
!69 = !{i64 2153433007, i64 2153433287, i64 2153433621, i64 2153433955}
!70 = !{i64 2153423398, i64 2153423678, i64 2153424012, i64 2153424346}

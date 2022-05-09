; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-wiimote-debug.c_pt.bc'
source_filename = "../drivers/hid/hid-wiimote-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wiimote_debug = type { ptr, ptr, ptr }
%struct.wiimote_data = type { ptr, ptr, %struct.work_struct, [4 x ptr], ptr, ptr, ptr, %struct.power_supply_desc, ptr, %struct.timer_list, ptr, %union.anon.69, %struct.wiimote_queue, %struct.wiimote_state, %struct.work_struct }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.69 = type { ptr }
%struct.wiimote_queue = type { %struct.spinlock, %struct.work_struct, i8, i8, [32 x %struct.wiimote_buf] }
%struct.wiimote_buf = type { [16384 x i8], i32 }
%struct.wiimote_state = type { %struct.spinlock, i32, [2 x i8], i8, i8, i8, i8, %struct.mutex, %struct.completion, i32, i32, i8, i8, ptr, i8, [4 x [3 x i16]], [4 x i16], [7 x i8], i8 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@wiidebug_eeprom_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wiidebug_eeprom_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drm\00", [28 x i8] zeroinitializer }, align 32
@wiidebug_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wiidebug_drm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wiidebug_drm_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wiidebug_drmmap = internal constant { [65 x ptr], [92 x i8] } { [65 x ptr] [ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null], [92 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"K\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KA\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KE\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KAI\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KEE\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KAE\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KIE\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"KAIE\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SKAI1\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SKAI2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 184, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"wiidebug_eeprom_fops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 75, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 189, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"wiidebug_drm_fops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 163, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 230, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 214, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 174, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"wiidebug_drmmap\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 82, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 83, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 84, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 85, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 86, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 87, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 88, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 89, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 90, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 91, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 92, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 93, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 94, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 112, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [35 x i8] c"../drivers/hid/hid-wiimote-debug.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 114, i32 16 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @wiidebug_eeprom_fops, ptr @.str.1, ptr @wiidebug_drm_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wiidebug_drmmap, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiidebug_eeprom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiidebug_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiidebug_drmmap to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wiidebug_init(ptr noundef %wdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdata, align 4
  %debug_dir = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug_dir, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %5, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @wiidebug_eeprom_fops) #7
  %eeprom = getelementptr inbounds %struct.wiimote_debug, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %eeprom, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %debug_dir10 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %debug_dir10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debug_dir10, align 4
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %12, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @wiidebug_drm_fops) #7
  %drm = getelementptr inbounds %struct.wiimote_debug, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %drm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %drm, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %err_drm, label %do.body16

do.body16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %debug = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 10
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %debug, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call18) #7
  br label %cleanup

err_drm:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom, align 4
  tail call void @debugfs_remove(ptr noundef %16) #7
  br label %err

err:                                              ; preds = %err_drm, %if.end.err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body16 ], [ -12, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiidebug_deinit(ptr noundef %wdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 10
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debug, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #7
  %drm = getelementptr inbounds %struct.wiimote_debug, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm, align 4
  tail call void @debugfs_remove(ptr noundef %4) #7
  %eeprom = getelementptr inbounds %struct.wiimote_debug, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eeprom, align 4
  tail call void @debugfs_remove(ptr noundef %6) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiidebug_eeprom_read(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  %4 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %6)
  %cmp2 = icmp sgt i64 %6, 16777215
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sync.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %if.end4
  %7 = tail call i32 @llvm.umin.i32(i32 %s, i32 16)
  %state = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %conv16 = trunc i32 %7 to i8
  %cmd_read_size = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 14
  %8 = ptrtoint ptr %cmd_read_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv16, ptr %cmd_read_size, align 4
  %cmd_read_buf = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 13
  %9 = ptrtoint ptr %cmd_read_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %cmd_read_buf, align 4
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %12 = trunc i64 %11 to i32
  %conv19 = and i32 %12, 65535
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 8
  %13 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ready.i, align 4
  %cmd2.i = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 9
  %14 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 23, ptr %cmd2.i, align 4
  %opt4.i = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13, i32 10
  %15 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv19, ptr %opt4.i, align 4
  %16 = load i64, ptr %off, align 8
  %conv20 = trunc i64 %16 to i32
  %conv21 = trunc i32 %7 to i16
  call void @wiiproto_req_rmem(ptr noundef %3, i1 noundef zeroext true, i32 noundef %conv20, i16 noundef zeroext %conv21) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call13) #7
  %call.i99 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i = icmp slt i32 %call.i99, 0
  br i1 %cmp.i, label %do.body10.do.body32_crit_edge, label %if.else.i

do.body10.do.body32_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.else.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp1.i = icmp eq i32 %call.i99, 0
  br i1 %cmp1.i, label %if.else.i.do.body32_crit_edge, label %if.else3.i

if.else.i.do.body32_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.else3.i:                                       ; preds = %if.else.i
  %17 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.not.i = icmp eq i32 %18, 0
  br i1 %cmp5.not.i, label %if.then26, label %if.else3.i.do.body32_crit_edge

if.else3.i.do.body32_crit_edge:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.then26:                                        ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %cmd_read_size to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd_read_size, align 4
  %conv29 = zext i8 %20 to i16
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %if.else3.i.do.body32_crit_edge, %if.else.i.do.body32_crit_edge, %do.body10.do.body32_crit_edge
  %tobool25.not104 = phi i1 [ true, %if.then26 ], [ false, %do.body10.do.body32_crit_edge ], [ false, %if.else.i.do.body32_crit_edge ], [ false, %if.else3.i.do.body32_crit_edge ]
  %retval.0.i103 = phi i32 [ 0, %if.then26 ], [ -512, %do.body10.do.body32_crit_edge ], [ -5, %if.else.i.do.body32_crit_edge ], [ -5, %if.else3.i.do.body32_crit_edge ]
  %size.0 = phi i16 [ %conv29, %if.then26 ], [ 0, %do.body10.do.body32_crit_edge ], [ 0, %if.else.i.do.body32_crit_edge ], [ 0, %if.else3.i.do.body32_crit_edge ]
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %21 = ptrtoint ptr %cmd_read_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cmd_read_buf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call41) #7
  call void @mutex_unlock(ptr noundef %sync.i) #7
  br i1 %tobool25.not104, label %if.else, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %do.body32
  %conv52 = zext i16 %size.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size.0)
  %cmp53 = icmp eq i16 %size.0, 0
  br i1 %cmp53, label %if.else.cleanup_crit_edge, label %if.end57

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %size.0)
  %cmp1.i.i = icmp ugt i16 %size.0, 16
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !55

if.then3.i.i:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef %conv52) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end57
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %conv52, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %conv52, i32 -1226833920) #11, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %conv52) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %u, ptr noundef nonnull %buf, i32 noundef %conv52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  br i1 %phi.cmp, label %if.end63, label %if.then2.i.i.cleanup_crit_edge

if.then2.i.i.cleanup_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv64 = zext i16 %size.0 to i64
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %off, align 8
  %add = add i64 %24, %conv64
  store i64 %add, ptr %off, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then2.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %if.then3.i.i, %if.else.cleanup_crit_edge, %do.body32.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv52, %if.end63 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -512, %if.end4.cleanup_crit_edge ], [ %retval.0.i103, %do.body32.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -14, %if.then2.i.i.cleanup_crit_edge ], [ -14, %if.then3.i.i ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_rmem(ptr noundef, i1 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiidebug_drm_write(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef readnone %off) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  %4 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.umin.i32(i32 %s, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %5, i32 -1226833920) #11, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #7
  %7 = call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !59
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %u, i32 noundef %5) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i64 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %5, %if.end.if.then11.i.i_crit_edge ], [ %5, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %5, %res.0.i.i64
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i64)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %i.069 = phi i32 [ 0, %if.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx5 = getelementptr [65 x ptr], ptr @wiidebug_drmmap, i32 0, i32 %i.069
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %call11 = call i32 @strcasecmp(ptr noundef nonnull %buf, ptr noundef nonnull %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.do.body20_crit_edge, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8.do.body20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %if.then16, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then16:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @simple_strtoul(ptr noundef nonnull %buf, ptr noundef null, i32 noundef 16) #7
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %if.end8.do.body20_crit_edge
  %i.1 = phi i32 [ %call18, %if.then16 ], [ %i.069, %if.end8.do.body20_crit_edge ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %15, i32 0, i32 13
  %call24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %flags29 = getelementptr inbounds %struct.wiimote_data, ptr %17, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags29, align 4
  %and = and i32 %19, -32769
  store i32 %and, ptr %flags29, align 4
  %20 = load ptr, ptr %3, align 4
  %conv31 = trunc i32 %i.1 to i8
  call void @wiiproto_req_drm(ptr noundef %20, i8 noundef zeroext %conv31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp32.not = icmp eq i32 %i.1, 0
  br i1 %cmp32.not, label %do.body20.if.end38_crit_edge, label %if.then34

do.body20.if.end38_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %flags37 = getelementptr inbounds %struct.wiimote_data, ptr %22, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags37, align 4
  %or = or i32 %24, 32768
  store i32 %or, ptr %flags37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %do.body20.if.end38_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %state40 = getelementptr inbounds %struct.wiimote_data, ptr %26, i32 0, i32 13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state40, i32 noundef %call24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiidebug_drm_open(ptr nocapture noundef readonly %i, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %f, ptr noundef nonnull @wiidebug_drm_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_drm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiidebug_drm_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %3, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %state6 = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13
  %drm7 = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %drm7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drm7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state6, i32 noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp12 = icmp ult i8 %7, 64
  br i1 %cmp12, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %7 to i32
  %arrayidx = getelementptr [65 x ptr], ptr @wiidebug_drmmap, i32 0, i32 %conv11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %str.0 = phi ptr [ %9, %if.then ], [ null, %entry.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %str.0, null
  %spec.store.select = select i1 %tobool.not, ptr @.str.17, ptr %str.0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.18, ptr noundef %spec.store.select) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 184, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 189, i32 33}
!4 = !{ptr @wiidebug_eeprom_fops, !5, !"wiidebug_eeprom_fops", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 75, i32 37}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!13 = !{ptr @wiidebug_drm_fops, !14, !"wiidebug_drm_fops", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 163, i32 37}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 83, i32 24}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 84, i32 25}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 85, i32 26}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 86, i32 26}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 87, i32 27}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 88, i32 27}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 89, i32 27}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 90, i32 27}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 91, i32 28}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 92, i32 25}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 93, i32 29}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 94, i32 29}
!39 = !{ptr @wiidebug_drmmap, !40, !"wiidebug_drmmap", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 82, i32 20}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 112, i32 9}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-wiimote-debug.c", i32 114, i32 16}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2152179827, i64 2152179852}
!57 = !{i64 2152179146, i64 2152179171}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 4674701}
!60 = !{i64 4674898}
!61 = !{i64 2152160131}

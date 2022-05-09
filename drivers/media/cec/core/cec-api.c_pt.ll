; ModuleID = '/llk/IR_all_yes/drivers/media/cec/core/cec-api.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cec_fh = type { %struct.list_head, %struct.list_head, ptr, i8, i8, %struct.wait_queue_head, %struct.mutex, [8 x %struct.list_head], [8 x i16], i32, [2 x %struct.cec_event_entry], %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cec_event_entry = type { %struct.list_head, %struct.cec_event }
%struct.cec_event = type { i64, i32, i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.72 }
%union.anon.72 = type { [16 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_caps = type { [32 x i8], [32 x i8], i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cec_msg_entry = type { %struct.list_head, %struct.cec_msg }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.cec_event_state_change = type { i16, i16, i16 }
%struct.cec_pin = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.hrtimer, i64, i32, i16, i8, i8, i8, i32, %struct.cec_msg, i32, i8, i32, i8, %struct.cec_msg, i32, i8, i32, i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.cec_msg, i8, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, [128 x i64], [128 x i8], i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, [257 x i64], [257 x [8 x i8]] }
%struct.cec_pin_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cec_devnode_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cec_poll, ptr @cec_ioctl, ptr @cec_ioctl, ptr null, i32 0, ptr @cec_open, ptr null, ptr @cec_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/cec/core/cec-api.c\00", [63 x i8] zeroinitializer }, align 32
@cec_debug = external dso_local local_unnamed_addr global i32, align 4
@cec_s_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cec-%s: %s: invalid mode bits set\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cec_s_mode\00", [21 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr = internal global ptr @cec_s_mode._entry, section ".printk_index", align 4
@cec_s_mode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016cec-%s: %s: unknown mode\0A\00", [36 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr.8 = internal global ptr @cec_s_mode._entry.6, section ".printk_index", align 4
@cec_s_mode._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cec-%s: %s: MONITOR_ALL not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr.11 = internal global ptr @cec_s_mode._entry.9, section ".printk_index", align 4
@cec_s_mode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cec-%s: %s: MONITOR_PIN not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr.14 = internal global ptr @cec_s_mode._entry.12, section ".printk_index", align 4
@cec_s_mode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cec-%s: %s: cannot transmit\0A\00", [33 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr.17 = internal global ptr @cec_s_mode._entry.15, section ".printk_index", align 4
@cec_s_mode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cec-%s: %s: monitor modes require NO_INITIATOR\0A\00", [46 x i8] zeroinitializer }, align 32
@cec_s_mode._entry_ptr.20 = internal global ptr @cec_s_mode._entry.18, section ".printk_index", align 4
@cec_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fh->lock\00", [22 x i8] zeroinitializer }, align 32
@cec_open.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fh->wait\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1073897730, i64 1074028809, i64 2147639553, i64 2147770632, i64 2151964938, i64 2153537795, i64 3224920325, i64 3224920326, i64 3226231040, i64 3226493191, i64 3227279620]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"cec_devnode_fops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 705, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 174, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 273, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 380, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 389, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 395, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 401, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 410, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 416, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 577, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [36 x i8] c"../drivers/media/cec/core/cec-api.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 578, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @cec_s_mode._entry, ptr @cec_s_mode._entry.12, ptr @cec_s_mode._entry.15, ptr @cec_s_mode._entry.18, ptr @cec_s_mode._entry.6, ptr @cec_s_mode._entry.9, ptr @cec_s_mode._entry_ptr, ptr @cec_s_mode._entry_ptr.11, ptr @cec_s_mode._entry_ptr.14, ptr @cec_s_mode._entry_ptr.17, ptr @cec_s_mode._entry_ptr.20, ptr @cec_s_mode._entry_ptr.8, ptr @cec_devnode_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @cec_open.__key, ptr @.str.21, ptr @cec_open.__key.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_s_mode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_open.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_poll(ptr noundef %filp, ptr noundef %poll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %adap1 = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap1, align 8
  %wait = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %poll, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %wait, ptr noundef nonnull %poll) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %tobool.not.i27 = icmp eq ptr %3, null
  br i1 %tobool.not.i27, label %poll_wait.exit.cleanup_crit_edge, label %cec_is_registered.exit

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cec_is_registered.exit:                           ; preds = %poll_wait.exit
  %registered.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %registered.i, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %cec_is_registered.exit.cleanup_crit_edge, label %if.end

cec_is_registered.exit.cleanup_crit_edge:         ; preds = %cec_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cec_is_registered.exit
  %lock = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %is_configured = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %is_configured to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_configured, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %transmit_queue_sz = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %transmit_queue_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transmit_queue_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp = icmp ult i32 %11, 18
  %spec.select = select i1 %cmp, i32 260, i32 0
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end.if.end3_crit_edge
  %res.0 = phi i32 [ 0, %if.end.if.end3_crit_edge ], [ %spec.select, %land.lhs.true ]
  %queued_msgs = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %queued_msgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queued_msgs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  %or6 = or i32 %res.0, 65
  %spec.select26 = select i1 %tobool4.not, i32 %res.0, i32 %or6
  %total_queued_events = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %total_queued_events to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_queued_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  %or10 = or i32 %spec.select26, 2
  %res.2 = select i1 %tobool8.not, i32 %spec.select26, i32 %or10
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %cec_is_registered.exit.cleanup_crit_edge, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.2, %if.end3 ], [ 26, %cec_is_registered.exit.cleanup_crit_edge ], [ 26, %poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %mode.i246 = alloca i32, align 4
  %ev.i = alloca %struct.cec_event, align 8
  %mode.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry78.i.i = alloca %struct.wait_queue_entry, align 4
  %msg.i191 = alloca %struct.cec_msg, align 8
  %msg.i = alloca %struct.cec_msg, align 8
  %log_addrs.i93 = alloca %struct.cec_log_addrs, align 4
  %log_addrs.i = alloca %struct.cec_log_addrs, align 4
  %phys_addr.i74 = alloca i16, align 2
  %phys_addr.i = alloca i16, align 2
  %caps.i = alloca %struct.cec_caps, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %adap1 = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap1, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = inttoptr i32 %arg to ptr
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %cec_is_registered.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cec_is_registered.exit:                           ; preds = %entry
  %registered.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %registered.i, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.i.not = icmp eq i8 %8, 0
  br i1 %tobool1.i.not, label %cec_is_registered.exit.cleanup_crit_edge, label %if.end

cec_is_registered.exit.cleanup_crit_edge:         ; preds = %cec_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cec_is_registered.exit
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 -1068736256, label %sw.bb
    i32 -2147327743, label %sw.bb3
    i32 1073897730, label %sw.bb5
    i32 -2141429501, label %sw.bb8
    i32 -1067687676, label %sw.bb10
    i32 -2143002358, label %sw.bb13
    i32 -1070046971, label %sw.bb15
    i32 -1070046970, label %sw.bb18
    i32 -1068474105, label %sw.bb21
    i32 -2147196664, label %sw.bb24
    i32 1074028809, label %sw.bb26
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %caps.i) #7
  %10 = call ptr @memset(ptr %caps.i, i32 0, i32 76)
  %parent.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %driver1.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i = call i32 @strscpy(ptr noundef nonnull %caps.i, ptr noundef %16, i32 noundef 32) #7
  %name2.i = getelementptr inbounds %struct.cec_caps, ptr %caps.i, i32 0, i32 1
  %name4.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call6.i = call i32 @strscpy(ptr noundef %name2.i, ptr noundef %name4.i, i32 noundef 32) #7
  %available_log_addrs.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 17
  %17 = ptrtoint ptr %available_log_addrs.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %available_log_addrs.i, align 4
  %conv.i = zext i8 %18 to i32
  %available_log_addrs7.i = getelementptr inbounds %struct.cec_caps, ptr %caps.i, i32 0, i32 2
  %19 = ptrtoint ptr %available_log_addrs7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %available_log_addrs7.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %20 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %capabilities.i, align 8
  %capabilities8.i = getelementptr inbounds %struct.cec_caps, ptr %caps.i, i32 0, i32 3
  %22 = ptrtoint ptr %capabilities8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %capabilities8.i, align 4
  %version.i = getelementptr inbounds %struct.cec_caps, ptr %caps.i, i32 0, i32 4
  %23 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 332032, ptr %version.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb.cec_adap_g_caps.exit_crit_edge, label %if.end.i.i.i

sw.bb.cec_adap_g_caps.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_caps.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 76, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cec_adap_g_caps.exit_crit_edge

if.end.i.i.i.cec_adap_g_caps.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_caps.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %caps.i, i32 noundef 76) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %caps.i, i32 noundef 76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i64 = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i64, i32 0, i32 -14
  br label %cec_adap_g_caps.exit

cec_adap_g_caps.exit:                             ; preds = %copy_to_user.exit.i, %if.end.i.i.i.cec_adap_g_caps.exit_crit_edge, %sw.bb.cec_adap_g_caps.exit_crit_edge
  %25 = phi i32 [ -14, %sw.bb.cec_adap_g_caps.exit_crit_edge ], [ -14, %if.end.i.i.i.cec_adap_g_caps.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %caps.i) #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phys_addr.i) #7
  %lock.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %phys_addr1.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %phys_addr1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %phys_addr1.i, align 2
  %28 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %phys_addr.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i65 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i65, label %sw.bb3.cec_adap_g_phys_addr.exit_crit_edge, label %if.end.i.i.i68

sw.bb3.cec_adap_g_phys_addr.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_phys_addr.exit

if.end.i.i.i68:                                   ; preds = %sw.bb3
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 2, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i66 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i66)
  %cmp.i6.i.i67 = icmp eq i32 %asmresult.i.i.i66, 0
  br i1 %cmp.i6.i.i67, label %copy_to_user.exit.i73, label %if.end.i.i.i68.cec_adap_g_phys_addr.exit_crit_edge

if.end.i.i.i68.cec_adap_g_phys_addr.exit_crit_edge: ; preds = %if.end.i.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_phys_addr.exit

copy_to_user.exit.i73:                            ; preds = %if.end.i.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i69 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %phys_addr.i, i32 noundef 2) #7
  %call.i12.i.i.i70 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %phys_addr.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i12.i.i.i70, 0
  %spec.select.i72 = select i1 %tobool.not.i71, i32 0, i32 -14
  br label %cec_adap_g_phys_addr.exit

cec_adap_g_phys_addr.exit:                        ; preds = %copy_to_user.exit.i73, %if.end.i.i.i68.cec_adap_g_phys_addr.exit_crit_edge, %sw.bb3.cec_adap_g_phys_addr.exit_crit_edge
  %30 = phi i32 [ -14, %sw.bb3.cec_adap_g_phys_addr.exit_crit_edge ], [ -14, %if.end.i.i.i68.cec_adap_g_phys_addr.exit_crit_edge ], [ %spec.select.i72, %copy_to_user.exit.i73 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phys_addr.i) #7
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phys_addr.i74) #7
  %31 = ptrtoint ptr %phys_addr.i74 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %phys_addr.i74, align 2, !annotation !54
  %capabilities.i75 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %32 = ptrtoint ptr %capabilities.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %capabilities.i75, align 8
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %sw.bb5.cec_adap_s_phys_addr.exit_crit_edge, label %if.end59.i.i.i

sw.bb5.cec_adap_s_phys_addr.exit_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_phys_addr.exit

if.end59.i.i.i:                                   ; preds = %sw.bb5
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i77 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i77, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 2, i32 -1226833920) #10, !srcloc !55
  %asmresult.i.i.i78 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i78)
  %cmp.i6.i.i79 = icmp eq i32 %asmresult.i.i.i78, 0
  br i1 %cmp.i6.i.i79, label %if.end.i.i.i81, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !56

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i81:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %phys_addr.i74, i32 noundef 2) #7
  %35 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !57
  %and.i.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %phys_addr.i74, ptr noundef %6, i32 noundef 2) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i81.if.then11.i.i.i_crit_edge, !prof !56

if.end.i.i.i81.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i81.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i25.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i81.if.then11.i.i.i_crit_edge ], [ 2, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 2, %res.0.i.i25.i
  %add.ptr.i.i.i = getelementptr i8, ptr %phys_addr.i74, i32 %sub.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i25.i)
  br label %cec_adap_s_phys_addr.exit

if.end3.i:                                        ; preds = %if.end.i.i.i81
  %39 = ptrtoint ptr %phys_addr.i74 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %phys_addr.i74, align 2
  %conv.i.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i.i = icmp eq i16 %40, -1
  br i1 %cmp.i.i, label %if.end3.i.if.end7.i_crit_edge, label %for.body.preheader.i.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.body.preheader.i.i:                           ; preds = %if.end3.i
  %and.i.i = and i32 %conv.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.preheader.i.i.for.cond12.i.i_crit_edge

for.body.preheader.i.i.for.cond12.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.i.i

for.inc.i.i:                                      ; preds = %for.body.preheader.i.i
  %and.1.i.i = and i32 %conv.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.for.cond12.i.i_crit_edge

for.inc.i.i.for.cond12.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %and.2.i.i = and i32 %conv.i.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.for.cond12.i.i_crit_edge

for.inc.1.i.i.for.cond12.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %and.3.i.i = and i32 %conv.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.if.end7.i_crit_edge, label %for.inc.2.i.i.for.cond12.i.i_crit_edge

for.inc.2.i.i.for.cond12.i.i_crit_edge:           ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.i.i

for.inc.2.i.i.if.end7.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.cond12.i.i:                                   ; preds = %for.inc.2.i.i.for.cond12.i.i_crit_edge, %for.inc.1.i.i.for.cond12.i.i_crit_edge, %for.inc.i.i.for.cond12.i.i_crit_edge, %for.body.preheader.i.i.for.cond12.i.i_crit_edge
  %cmp13.i.i = phi i1 [ false, %for.inc.2.i.i.for.cond12.i.i_crit_edge ], [ true, %for.inc.1.i.i.for.cond12.i.i_crit_edge ], [ true, %for.inc.i.i.for.cond12.i.i_crit_edge ], [ true, %for.body.preheader.i.i.for.cond12.i.i_crit_edge ]
  %cmp13.i.i.1 = phi i1 [ false, %for.inc.2.i.i.for.cond12.i.i_crit_edge ], [ false, %for.inc.1.i.i.for.cond12.i.i_crit_edge ], [ true, %for.inc.i.i.for.cond12.i.i_crit_edge ], [ true, %for.body.preheader.i.i.for.cond12.i.i_crit_edge ]
  %i.1.in.i.i.ph = phi i32 [ 12, %for.inc.2.i.i.for.cond12.i.i_crit_edge ], [ 8, %for.inc.1.i.i.for.cond12.i.i_crit_edge ], [ 4, %for.inc.i.i.for.cond12.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.for.cond12.i.i_crit_edge ]
  br i1 %cmp13.i.i, label %for.body15.i.i, label %for.cond12.i.i.if.end7.i_crit_edge

for.cond12.i.i.if.end7.i_crit_edge:               ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.body15.i.i:                                   ; preds = %for.cond12.i.i
  %shl17.i.i = shl nuw nsw i32 240, %i.1.in.i.i.ph
  %and18.i.i = and i32 %shl17.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %cmp19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %cmp19.i.i, label %for.body15.i.i.cec_adap_s_phys_addr.exit_crit_edge, label %for.cond12.i.i.1

for.body15.i.i.cec_adap_s_phys_addr.exit_crit_edge: ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_phys_addr.exit

for.cond12.i.i.1:                                 ; preds = %for.body15.i.i
  br i1 %cmp13.i.i.1, label %for.body15.i.i.1, label %for.cond12.i.i.1.if.end7.i_crit_edge

for.cond12.i.i.1.if.end7.i_crit_edge:             ; preds = %for.cond12.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.body15.i.i.1:                                 ; preds = %for.cond12.i.i.1
  %shl17.i.i.1 = shl i32 3840, %i.1.in.i.i.ph
  %and18.i.i.1 = and i32 %shl17.i.i.1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.1)
  %cmp19.i.i.1 = icmp eq i32 %and18.i.i.1, 0
  br i1 %cmp19.i.i.1, label %for.body15.i.i.1.cec_adap_s_phys_addr.exit_crit_edge, label %for.cond12.i.i.2

for.body15.i.i.1.cec_adap_s_phys_addr.exit_crit_edge: ; preds = %for.body15.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_phys_addr.exit

for.cond12.i.i.2:                                 ; preds = %for.body15.i.i.1
  br i1 %tobool.not.i.i, label %for.cond12.i.i.2.if.end7.i_crit_edge, label %for.body15.i.i.2

for.cond12.i.i.2.if.end7.i_crit_edge:             ; preds = %for.cond12.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.body15.i.i.2:                                 ; preds = %for.cond12.i.i.2
  %shl17.i.i.2 = shl i32 61440, %i.1.in.i.i.ph
  %and18.i.i.2 = and i32 %shl17.i.i.2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.2)
  %cmp19.i.i.2 = icmp eq i32 %and18.i.i.2, 0
  br i1 %cmp19.i.i.2, label %for.body15.i.i.2.cec_adap_s_phys_addr.exit_crit_edge, label %for.body15.i.i.2.if.end7.i_crit_edge

for.body15.i.i.2.if.end7.i_crit_edge:             ; preds = %for.body15.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.body15.i.i.2.cec_adap_s_phys_addr.exit_crit_edge: ; preds = %for.body15.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_phys_addr.exit

if.end7.i:                                        ; preds = %for.body15.i.i.2.if.end7.i_crit_edge, %for.cond12.i.i.2.if.end7.i_crit_edge, %for.cond12.i.i.1.if.end7.i_crit_edge, %for.cond12.i.i.if.end7.i_crit_edge, %for.inc.2.i.i.if.end7.i_crit_edge, %if.end3.i.if.end7.i_crit_edge
  %lock.i82 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i82, i32 noundef 0) #7
  %cec_initiator.i.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 29
  %41 = ptrtoint ptr %cec_initiator.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cec_initiator.i.i, align 8
  %tobool.not.i20.i = icmp ne ptr %42, null
  %cmp.i21.i = icmp eq ptr %42, %1
  %spec.select.i.i = and i1 %cmp.i21.i, %tobool.not.i20.i
  %cec_follower.i.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %43 = ptrtoint ptr %cec_follower.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cec_follower.i.i, align 4
  %tobool2.not.i.i = icmp ne ptr %44, null
  %cmp5.i.i = icmp eq ptr %44, %1
  %45 = and i1 %tobool2.not.i.i, %cmp5.i.i
  %brmerge.i.i = select i1 %spec.select.i.i, i1 true, i1 %45
  %brmerge22.i.i = or i1 %tobool.not.i20.i, %brmerge.i.i
  br i1 %brmerge22.i.i, label %cec_is_busy.exit.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.end7.i
  %mode_initiator.i.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %mode_initiator.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mode_initiator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp12.i.i = icmp eq i8 %47, 0
  br i1 %cmp12.i.i, label %lor.rhs.i.i.if.end11.i_crit_edge, label %lor.rhs.i.i.if.else.i_crit_edge

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

lor.rhs.i.i.if.end11.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

cec_is_busy.exit.i:                               ; preds = %if.end7.i
  br i1 %brmerge.i.i, label %cec_is_busy.exit.i.if.else.i_crit_edge, label %cec_is_busy.exit.i.if.end11.i_crit_edge

cec_is_busy.exit.i.if.end11.i_crit_edge:          ; preds = %cec_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

cec_is_busy.exit.i.if.else.i_crit_edge:           ; preds = %cec_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %cec_is_busy.exit.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %48 = ptrtoint ptr %phys_addr.i74 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %phys_addr.i74, align 2
  call void @__cec_s_phys_addr(ptr noundef %3, i16 noundef zeroext %49, i1 noundef zeroext %tobool.not) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %cec_is_busy.exit.i.if.end11.i_crit_edge, %lor.rhs.i.i.if.end11.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.else.i ], [ -16, %cec_is_busy.exit.i.if.end11.i_crit_edge ], [ -16, %lor.rhs.i.i.if.end11.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i82) #7
  br label %cec_adap_s_phys_addr.exit

cec_adap_s_phys_addr.exit:                        ; preds = %if.end11.i, %for.body15.i.i.2.cec_adap_s_phys_addr.exit_crit_edge, %for.body15.i.i.1.cec_adap_s_phys_addr.exit_crit_edge, %for.body15.i.i.cec_adap_s_phys_addr.exit_crit_edge, %if.then11.i.i.i, %sw.bb5.cec_adap_s_phys_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %if.end11.i ], [ -25, %sw.bb5.cec_adap_s_phys_addr.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -22, %for.body15.i.i.2.cec_adap_s_phys_addr.exit_crit_edge ], [ -22, %for.body15.i.i.1.cec_adap_s_phys_addr.exit_crit_edge ], [ -22, %for.body15.i.i.cec_adap_s_phys_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phys_addr.i74) #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %log_addrs.i) #7
  %lock.i83 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i83, i32 noundef 0) #7
  %log_addrs1.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 31
  %50 = call ptr @memcpy(ptr %log_addrs.i, ptr %log_addrs1.i, i32 92)
  %is_configured.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 21
  %51 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_configured.i, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i84 = icmp eq i8 %52, 0
  br i1 %tobool.not.i84, label %if.then.i, label %sw.bb8.if.end.i_crit_edge

sw.bb8.if.end.i_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %log_addrs.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %log_addrs.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb8.if.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i83) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i85 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i85, label %if.end.i.cec_adap_g_log_addrs.exit_crit_edge, label %if.end.i.i.i88

if.end.i.cec_adap_g_log_addrs.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_log_addrs.exit

if.end.i.i.i88:                                   ; preds = %if.end.i
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 92, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i86 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i86)
  %cmp.i6.i.i87 = icmp eq i32 %asmresult.i.i.i86, 0
  br i1 %cmp.i6.i.i87, label %copy_to_user.exit.i92, label %if.end.i.i.i88.cec_adap_g_log_addrs.exit_crit_edge

if.end.i.i.i88.cec_adap_g_log_addrs.exit_crit_edge: ; preds = %if.end.i.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_g_log_addrs.exit

copy_to_user.exit.i92:                            ; preds = %if.end.i.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i89 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %log_addrs.i, i32 noundef 92) #7
  %call.i12.i.i.i90 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %log_addrs.i, i32 noundef 92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i90)
  %tobool3.not.i = icmp eq i32 %call.i12.i.i.i90, 0
  %spec.select.i91 = select i1 %tobool3.not.i, i32 0, i32 -14
  br label %cec_adap_g_log_addrs.exit

cec_adap_g_log_addrs.exit:                        ; preds = %copy_to_user.exit.i92, %if.end.i.i.i88.cec_adap_g_log_addrs.exit_crit_edge, %if.end.i.cec_adap_g_log_addrs.exit_crit_edge
  %55 = phi i32 [ -14, %if.end.i.cec_adap_g_log_addrs.exit_crit_edge ], [ -14, %if.end.i.i.i88.cec_adap_g_log_addrs.exit_crit_edge ], [ %spec.select.i91, %copy_to_user.exit.i92 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %log_addrs.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %log_addrs.i93) #7
  %56 = call ptr @memset(ptr %log_addrs.i93, i32 255, i32 92)
  %capabilities.i94 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %57 = ptrtoint ptr %capabilities.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %capabilities.i94, align 8
  %and.i95 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %sw.bb10.cec_adap_s_log_addrs.exit_crit_edge, label %if.end59.i.i.i98

sw.bb10.cec_adap_s_log_addrs.exit_crit_edge:      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_log_addrs.exit

if.end59.i.i.i98:                                 ; preds = %sw.bb10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i97 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i97, label %if.end59.i.i.i98.if.then11.i.i.i112_crit_edge, label %land.lhs.true.i.i.i101

if.end59.i.i.i98.if.then11.i.i.i112_crit_edge:    ; preds = %if.end59.i.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i112

land.lhs.true.i.i.i101:                           ; preds = %if.end59.i.i.i98
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 92, i32 -1226833920) #10
  %asmresult.i.i.i99 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i99)
  %cmp.i6.i.i100 = icmp eq i32 %asmresult.i.i.i99, 0
  br i1 %cmp.i6.i.i100, label %if.end.i.i.i109, label %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge, !prof !56

land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge: ; preds = %land.lhs.true.i.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i112

if.end.i.i.i109:                                  ; preds = %land.lhs.true.i.i.i101
  %call.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %log_addrs.i93, i32 noundef 92) #7
  %60 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i103 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i103 to ptr
  %cpu_domain.i.i.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i104) #3, !srcloc !57
  %and.i.i.i.i.i105 = and i32 %62, -13
  %or.i.i.i.i.i106 = or i32 %and.i.i.i.i.i105, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i106) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i.i107 = call i32 @arm_copy_from_user(ptr noundef nonnull %log_addrs.i93, ptr noundef %6, i32 noundef 92) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i107)
  %tobool4.not.i.i.i108 = icmp eq i32 %call1.i.i.i.i107, 0
  br i1 %tobool4.not.i.i.i108, label %if.end3.i114, label %if.end.i.i.i109.if.then11.i.i.i112_crit_edge, !prof !56

if.end.i.i.i109.if.then11.i.i.i112_crit_edge:     ; preds = %if.end.i.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i112

if.then11.i.i.i112:                               ; preds = %if.end.i.i.i109.if.then11.i.i.i112_crit_edge, %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge, %if.end59.i.i.i98.if.then11.i.i.i112_crit_edge
  %res.0.i.i49.i = phi i32 [ %call1.i.i.i.i107, %if.end.i.i.i109.if.then11.i.i.i112_crit_edge ], [ 92, %if.end59.i.i.i98.if.then11.i.i.i112_crit_edge ], [ 92, %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge ]
  %sub.i.i.i110 = sub i32 92, %res.0.i.i49.i
  %add.ptr.i.i.i111 = getelementptr i8, ptr %log_addrs.i93, i32 %sub.i.i.i110
  %63 = call ptr @memset(ptr %add.ptr.i.i.i111, i32 0, i32 %res.0.i.i49.i)
  br label %cec_adap_s_log_addrs.exit

if.end3.i114:                                     ; preds = %if.end.i.i.i109
  %flags.i = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs.i93, i32 0, i32 5
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i, align 4
  %and4.i = and i32 %65, 7
  store i32 %and4.i, ptr %flags.i, align 4
  %lock.i113 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i113, i32 noundef 0) #7
  %is_configuring.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 20
  %66 = ptrtoint ptr %is_configuring.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_configuring.i, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool5.not.i = icmp eq i8 %67, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end3.i114.if.end17.thread.i_crit_edge

if.end3.i114.if.end17.thread.i_crit_edge:         ; preds = %if.end3.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread.i

land.lhs.true.i:                                  ; preds = %if.end3.i114
  %num_log_addrs.i = getelementptr inbounds %struct.cec_log_addrs, ptr %log_addrs.i93, i32 0, i32 3
  %68 = ptrtoint ptr %num_log_addrs.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_log_addrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool6.not.i = icmp eq i8 %69, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.land.lhs.true8.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.land.lhs.true8.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true8.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %is_configured.i115 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 21
  %70 = ptrtoint ptr %is_configured.i115 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_configured.i115, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool7.not.i = icmp eq i8 %71, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.land.lhs.true8.i_crit_edge, label %lor.lhs.false.i.if.end17.thread.i_crit_edge

lor.lhs.false.i.if.end17.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread.i

lor.lhs.false.i.land.lhs.true8.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true8.i_crit_edge, %land.lhs.true.i.land.lhs.true8.i_crit_edge
  %cec_initiator.i.i116 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 29
  %72 = ptrtoint ptr %cec_initiator.i.i116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cec_initiator.i.i116, align 8
  %tobool.not.i.i117 = icmp ne ptr %73, null
  %cmp.i.i118 = icmp eq ptr %73, %1
  %spec.select.i.i119 = and i1 %cmp.i.i118, %tobool.not.i.i117
  %cec_follower.i.i120 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %74 = ptrtoint ptr %cec_follower.i.i120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cec_follower.i.i120, align 4
  %tobool2.not.i.i121 = icmp ne ptr %75, null
  %cmp5.i.i122 = icmp eq ptr %75, %1
  %76 = and i1 %tobool2.not.i.i121, %cmp5.i.i122
  %brmerge.i.i123 = select i1 %spec.select.i.i119, i1 true, i1 %76
  %brmerge22.i.i124 = or i1 %tobool.not.i.i117, %brmerge.i.i123
  br i1 %brmerge22.i.i124, label %cec_is_busy.exit.i128, label %lor.rhs.i.i127

lor.rhs.i.i127:                                   ; preds = %land.lhs.true8.i
  %mode_initiator.i.i125 = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %mode_initiator.i.i125 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mode_initiator.i.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp12.i.i126 = icmp eq i8 %78, 0
  br i1 %cmp12.i.i126, label %lor.rhs.i.i127.if.end17.thread.i_crit_edge, label %lor.rhs.i.i127.if.then10.i_crit_edge

lor.rhs.i.i127.if.then10.i_crit_edge:             ; preds = %lor.rhs.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

lor.rhs.i.i127.if.end17.thread.i_crit_edge:       ; preds = %lor.rhs.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread.i

cec_is_busy.exit.i128:                            ; preds = %land.lhs.true8.i
  br i1 %brmerge.i.i123, label %cec_is_busy.exit.i128.if.then10.i_crit_edge, label %cec_is_busy.exit.i128.if.end17.thread.i_crit_edge

cec_is_busy.exit.i128.if.end17.thread.i_crit_edge: ; preds = %cec_is_busy.exit.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread.i

cec_is_busy.exit.i128.if.then10.i_crit_edge:      ; preds = %cec_is_busy.exit.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.then10.i:                                      ; preds = %cec_is_busy.exit.i128.if.then10.i_crit_edge, %lor.rhs.i.i127.if.then10.i_crit_edge
  %call12.i = call i32 @__cec_s_log_addrs(ptr noundef nonnull %3, ptr noundef nonnull %log_addrs.i93, i1 noundef zeroext %tobool.not) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end59.i.i40.i, label %if.then10.i.if.end17.thread.i_crit_edge

if.then10.i.if.end17.thread.i_crit_edge:          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread.i

if.end17.thread.i:                                ; preds = %if.then10.i.if.end17.thread.i_crit_edge, %cec_is_busy.exit.i128.if.end17.thread.i_crit_edge, %lor.rhs.i.i127.if.end17.thread.i_crit_edge, %lor.lhs.false.i.if.end17.thread.i_crit_edge, %if.end3.i114.if.end17.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -16, %lor.rhs.i.i127.if.end17.thread.i_crit_edge ], [ %call12.i, %if.then10.i.if.end17.thread.i_crit_edge ], [ -16, %cec_is_busy.exit.i128.if.end17.thread.i_crit_edge ], [ -16, %lor.lhs.false.i.if.end17.thread.i_crit_edge ], [ -16, %if.end3.i114.if.end17.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i113) #7
  br label %cec_adap_s_log_addrs.exit

if.end59.i.i40.i:                                 ; preds = %if.then10.i
  %log_addrs15.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 31
  %79 = call ptr @memcpy(ptr %log_addrs.i93, ptr %log_addrs15.i, i32 92)
  call void @mutex_unlock(ptr noundef %lock.i113) #7
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i41.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i41.i, label %if.end59.i.i40.i.cec_adap_s_log_addrs.exit_crit_edge, label %copy_to_user.exit.i131

if.end59.i.i40.i.cec_adap_s_log_addrs.exit_crit_edge: ; preds = %if.end59.i.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_adap_s_log_addrs.exit

copy_to_user.exit.i131:                           ; preds = %if.end59.i.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i45.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %log_addrs.i93, i32 noundef 92) #7
  %call.i12.i.i.i129 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %log_addrs.i93, i32 noundef 92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i129)
  %tobool23.not.i = icmp eq i32 %call.i12.i.i.i129, 0
  %spec.select.i130 = select i1 %tobool23.not.i, i32 0, i32 -14
  br label %cec_adap_s_log_addrs.exit

cec_adap_s_log_addrs.exit:                        ; preds = %copy_to_user.exit.i131, %if.end59.i.i40.i.cec_adap_s_log_addrs.exit_crit_edge, %if.end17.thread.i, %if.then11.i.i.i112, %sw.bb10.cec_adap_s_log_addrs.exit_crit_edge
  %retval.0.i132 = phi i32 [ -25, %sw.bb10.cec_adap_s_log_addrs.exit_crit_edge ], [ %err.0.ph.i, %if.end17.thread.i ], [ -14, %if.then11.i.i.i112 ], [ -14, %if.end59.i.i40.i.cec_adap_s_log_addrs.exit_crit_edge ], [ %spec.select.i130, %copy_to_user.exit.i131 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %log_addrs.i93) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %capabilities.i133 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %80 = ptrtoint ptr %capabilities.i133 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %capabilities.i133, align 8
  %and.i134 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.not.i135 = icmp eq i32 %and.i134, 0
  br i1 %tobool.not.i135, label %sw.bb13.cleanup_crit_edge, label %if.end.i137

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i137:                                      ; preds = %sw.bb13
  %lock.i136 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i136, i32 noundef 0) #7
  %conn_info.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i138 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i138, label %if.end.i137.copy_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i142

if.end.i137.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread.i

if.end.i.i.i142:                                  ; preds = %if.end.i137
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 68, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i140 = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i140)
  %cmp.i6.i.i141 = icmp eq i32 %asmresult.i.i.i140, 0
  br i1 %cmp.i6.i.i141, label %copy_to_user.exit.i146, label %if.end.i.i.i142.copy_to_user.exit.thread.i_crit_edge

if.end.i.i.i142.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.i146:                           ; preds = %if.end.i.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i143 = tail call zeroext i1 @__kasan_check_read(ptr noundef %conn_info.i, i32 noundef 68) #7
  %call.i12.i.i.i144 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %conn_info.i, i32 noundef 68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i144)
  %tobool1.not.i = icmp eq i32 %call.i12.i.i.i144, 0
  %spec.select.i145 = select i1 %tobool1.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i146, %if.end.i.i.i142.copy_to_user.exit.thread.i_crit_edge, %if.end.i137.copy_to_user.exit.thread.i_crit_edge
  %83 = phi i32 [ -14, %if.end.i137.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.end.i.i.i142.copy_to_user.exit.thread.i_crit_edge ], [ %spec.select.i145, %copy_to_user.exit.i146 ]
  tail call void @mutex_unlock(ptr noundef %lock.i136) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %84 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %capabilities.i148 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %85 = ptrtoint ptr %capabilities.i148 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %capabilities.i148, align 8
  %and.i149 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %sw.bb15.cec_transmit.exit_crit_edge, label %if.end59.i.i.i152

sw.bb15.cec_transmit.exit_crit_edge:              ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_transmit.exit

if.end59.i.i.i152:                                ; preds = %sw.bb15
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i151 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i151, label %if.end59.i.i.i152.if.then11.i.i.i166_crit_edge, label %land.lhs.true.i.i.i155

if.end59.i.i.i152.if.then11.i.i.i166_crit_edge:   ; preds = %if.end59.i.i.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i166

land.lhs.true.i.i.i155:                           ; preds = %if.end59.i.i.i152
  %87 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 56, i32 -1226833920) #10
  %asmresult.i.i.i153 = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i153)
  %cmp.i6.i.i154 = icmp eq i32 %asmresult.i.i.i153, 0
  br i1 %cmp.i6.i.i154, label %if.end.i.i.i163, label %land.lhs.true.i.i.i155.if.then11.i.i.i166_crit_edge, !prof !56

land.lhs.true.i.i.i155.if.then11.i.i.i166_crit_edge: ; preds = %land.lhs.true.i.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i166

if.end.i.i.i163:                                  ; preds = %land.lhs.true.i.i.i155
  %call.i.i.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg.i, i32 noundef 56) #7
  %88 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i157 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i.i157 to ptr
  %cpu_domain.i.i.i.i.i.i158 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i158) #3, !srcloc !57
  %and.i.i.i.i.i159 = and i32 %90, -13
  %or.i.i.i.i.i160 = or i32 %and.i.i.i.i.i159, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i160) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i.i161 = call i32 @arm_copy_from_user(ptr noundef nonnull %msg.i, ptr noundef %6, i32 noundef 56) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i161)
  %tobool4.not.i.i.i162 = icmp eq i32 %call1.i.i.i.i161, 0
  br i1 %tobool4.not.i.i.i162, label %if.end3.i169, label %if.end.i.i.i163.if.then11.i.i.i166_crit_edge, !prof !56

if.end.i.i.i163.if.then11.i.i.i166_crit_edge:     ; preds = %if.end.i.i.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i166

if.then11.i.i.i166:                               ; preds = %if.end.i.i.i163.if.then11.i.i.i166_crit_edge, %land.lhs.true.i.i.i155.if.then11.i.i.i166_crit_edge, %if.end59.i.i.i152.if.then11.i.i.i166_crit_edge
  %res.0.i.i47.i = phi i32 [ %call1.i.i.i.i161, %if.end.i.i.i163.if.then11.i.i.i166_crit_edge ], [ 56, %if.end59.i.i.i152.if.then11.i.i.i166_crit_edge ], [ 56, %land.lhs.true.i.i.i155.if.then11.i.i.i166_crit_edge ]
  %sub.i.i.i164 = sub i32 56, %res.0.i.i47.i
  %add.ptr.i.i.i165 = getelementptr i8, ptr %msg.i, i32 %sub.i.i.i164
  %91 = call ptr @memset(ptr %add.ptr.i.i.i165, i32 0, i32 %res.0.i.i47.i)
  br label %cec_transmit.exit

if.end3.i169:                                     ; preds = %if.end.i.i.i163
  %lock.i167 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i167, i32 noundef 0) #7
  %num_log_addrs.i168 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 31, i32 3
  %92 = ptrtoint ptr %num_log_addrs.i168 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_log_addrs.i168, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp.i = icmp eq i8 %93, 0
  br i1 %cmp.i, label %if.end3.i169.if.end16.thread.i_crit_edge, label %if.else.i172

if.end3.i169.if.end16.thread.i_crit_edge:         ; preds = %if.end3.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread.i

if.else.i172:                                     ; preds = %if.end3.i169
  %is_configuring.i170 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 20
  %94 = ptrtoint ptr %is_configuring.i170 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_configuring.i170, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool6.not.i171 = icmp eq i8 %95, 0
  br i1 %tobool6.not.i171, label %if.else8.i, label %if.else.i172.if.end16.thread.i_crit_edge

if.else.i172.if.end16.thread.i_crit_edge:         ; preds = %if.else.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread.i

if.else8.i:                                       ; preds = %if.else.i172
  %cec_initiator.i.i173 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 29
  %96 = ptrtoint ptr %cec_initiator.i.i173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cec_initiator.i.i173, align 8
  %tobool.not.i.i174 = icmp ne ptr %97, null
  %cmp.i.i175 = icmp eq ptr %97, %1
  %spec.select.i.i176 = and i1 %cmp.i.i175, %tobool.not.i.i174
  %cec_follower.i.i177 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %98 = ptrtoint ptr %cec_follower.i.i177 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cec_follower.i.i177, align 4
  %tobool2.not.i.i178 = icmp ne ptr %99, null
  %cmp5.i.i179 = icmp eq ptr %99, %1
  %100 = and i1 %tobool2.not.i.i178, %cmp5.i.i179
  %brmerge.i.i180 = select i1 %spec.select.i.i176, i1 true, i1 %100
  %brmerge22.i.i181 = or i1 %tobool.not.i.i174, %brmerge.i.i180
  br i1 %brmerge22.i.i181, label %cec_is_busy.exit.i185, label %lor.rhs.i.i184

lor.rhs.i.i184:                                   ; preds = %if.else8.i
  %mode_initiator.i.i182 = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 3
  %101 = ptrtoint ptr %mode_initiator.i.i182 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %mode_initiator.i.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp12.i.i183 = icmp eq i8 %102, 0
  br i1 %cmp12.i.i183, label %lor.rhs.i.i184.if.end16.thread.i_crit_edge, label %lor.rhs.i.i184.if.end16.i_crit_edge

lor.rhs.i.i184.if.end16.i_crit_edge:              ; preds = %lor.rhs.i.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

lor.rhs.i.i184.if.end16.thread.i_crit_edge:       ; preds = %lor.rhs.i.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread.i

cec_is_busy.exit.i185:                            ; preds = %if.else8.i
  br i1 %brmerge.i.i180, label %cec_is_busy.exit.i185.if.end16.i_crit_edge, label %cec_is_busy.exit.i185.if.end16.thread.i_crit_edge

cec_is_busy.exit.i185.if.end16.thread.i_crit_edge: ; preds = %cec_is_busy.exit.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread.i

cec_is_busy.exit.i185.if.end16.i_crit_edge:       ; preds = %cec_is_busy.exit.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.thread.i:                                ; preds = %cec_is_busy.exit.i185.if.end16.thread.i_crit_edge, %lor.rhs.i.i184.if.end16.thread.i_crit_edge, %if.else.i172.if.end16.thread.i_crit_edge, %if.end3.i169.if.end16.thread.i_crit_edge
  %err.0.ph.i186 = phi i32 [ -16, %lor.rhs.i.i184.if.end16.thread.i_crit_edge ], [ -16, %cec_is_busy.exit.i185.if.end16.thread.i_crit_edge ], [ -64, %if.else.i172.if.end16.thread.i_crit_edge ], [ -1, %if.end3.i169.if.end16.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i167) #7
  br label %cec_transmit.exit

if.end16.i:                                       ; preds = %cec_is_busy.exit.i185.if.end16.i_crit_edge, %lor.rhs.i.i184.if.end16.i_crit_edge
  %call13.i = call i32 @cec_transmit_msg_fh(ptr noundef nonnull %3, ptr noundef nonnull %msg.i, ptr noundef %1, i1 noundef zeroext %tobool.not) #7
  call void @mutex_unlock(ptr noundef %lock.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool18.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool18.not.i, label %if.end59.i.i38.i, label %if.end16.i.cec_transmit.exit_crit_edge

if.end16.i.cec_transmit.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_transmit.exit

if.end59.i.i38.i:                                 ; preds = %if.end16.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i39.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i39.i, label %if.end59.i.i38.i.cec_transmit.exit_crit_edge, label %copy_to_user.exit.i189

if.end59.i.i38.i.cec_transmit.exit_crit_edge:     ; preds = %if.end59.i.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_transmit.exit

copy_to_user.exit.i189:                           ; preds = %if.end59.i.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i43.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msg.i, i32 noundef 56) #7
  %call.i12.i.i.i187 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %msg.i, i32 noundef 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i187)
  %tobool22.not.i = icmp eq i32 %call.i12.i.i.i187, 0
  %spec.select.i188 = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %cec_transmit.exit

cec_transmit.exit:                                ; preds = %copy_to_user.exit.i189, %if.end59.i.i38.i.cec_transmit.exit_crit_edge, %if.end16.i.cec_transmit.exit_crit_edge, %if.end16.thread.i, %if.then11.i.i.i166, %sw.bb15.cec_transmit.exit_crit_edge
  %retval.0.i190 = phi i32 [ -25, %sw.bb15.cec_transmit.exit_crit_edge ], [ %call13.i, %if.end16.i.cec_transmit.exit_crit_edge ], [ %err.0.ph.i186, %if.end16.thread.i ], [ -14, %if.then11.i.i.i166 ], [ -14, %if.end59.i.i38.i.cec_transmit.exit_crit_edge ], [ %spec.select.i188, %copy_to_user.exit.i189 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i191) #7
  %103 = call ptr @memset(ptr %msg.i191, i32 0, i32 56)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i192 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i192, label %sw.bb18.if.then11.i.i.i206_crit_edge, label %land.lhs.true.i.i.i195

sw.bb18.if.then11.i.i.i206_crit_edge:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i206

land.lhs.true.i.i.i195:                           ; preds = %sw.bb18
  %104 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 56, i32 -1226833920) #10
  %asmresult.i.i.i193 = extractvalue { i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i193)
  %cmp.i6.i.i194 = icmp eq i32 %asmresult.i.i.i193, 0
  br i1 %cmp.i6.i.i194, label %if.end.i.i.i203, label %land.lhs.true.i.i.i195.if.then11.i.i.i206_crit_edge, !prof !56

land.lhs.true.i.i.i195.if.then11.i.i.i206_crit_edge: ; preds = %land.lhs.true.i.i.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i206

if.end.i.i.i203:                                  ; preds = %land.lhs.true.i.i.i195
  %call.i.i.i.i196 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg.i191, i32 noundef 56) #7
  %105 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i197 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i.i.i197 to ptr
  %cpu_domain.i.i.i.i.i.i198 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 4
  %107 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i198) #3, !srcloc !57
  %and.i.i.i.i.i199 = and i32 %107, -13
  %or.i.i.i.i.i200 = or i32 %and.i.i.i.i.i199, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i200) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i.i201 = call i32 @arm_copy_from_user(ptr noundef nonnull %msg.i191, ptr noundef %6, i32 noundef 56) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i201)
  %tobool4.not.i.i.i202 = icmp eq i32 %call1.i.i.i.i201, 0
  br i1 %tobool4.not.i.i.i202, label %if.end.i207, label %if.end.i.i.i203.if.then11.i.i.i206_crit_edge, !prof !56

if.end.i.i.i203.if.then11.i.i.i206_crit_edge:     ; preds = %if.end.i.i.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i206

if.then11.i.i.i206:                               ; preds = %if.end.i.i.i203.if.then11.i.i.i206_crit_edge, %land.lhs.true.i.i.i195.if.then11.i.i.i206_crit_edge, %sw.bb18.if.then11.i.i.i206_crit_edge
  %res.0.i.i17.i = phi i32 [ %call1.i.i.i.i201, %if.end.i.i.i203.if.then11.i.i.i206_crit_edge ], [ 56, %sw.bb18.if.then11.i.i.i206_crit_edge ], [ 56, %land.lhs.true.i.i.i195.if.then11.i.i.i206_crit_edge ]
  %sub.i.i.i204 = sub i32 56, %res.0.i.i17.i
  %add.ptr.i.i.i205 = getelementptr i8, ptr %msg.i191, i32 %sub.i.i.i204
  %108 = call ptr @memset(ptr %add.ptr.i.i.i205, i32 0, i32 %res.0.i.i17.i)
  br label %cec_receive.exit

if.end.i207:                                      ; preds = %if.end.i.i.i203
  %timeout1.i.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i191, i32 0, i32 3
  %109 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %timeout1.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 6
  %queued_msgs.i.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 12
  %wait.i.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond101.i.i.do.body.i.i_crit_edge, %if.end.i207
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %111 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i208 = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i208, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  %msgs.i.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 11
  %113 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %msgs.i.i, align 8
  %call.i.i.i11.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %114) #7
  br i1 %call.i.i.i11.i, label %if.end.i.i.i.i, label %if.then.i.i.if.end5.i_crit_edge

if.then.i.i.if.end5.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i.i, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %114, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %if.end5.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br i1 %tobool.not, label %if.end10.i.i, label %if.end.i.i.cec_receive.exit_crit_edge

if.end.i.i.cec_receive.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_receive.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  %121 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %timeout1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool12.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool12.not.i.i, label %if.else67.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end10.i.i
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %122) #7
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 275) #7
  %123 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool20.not.i.i = icmp eq i32 %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool23.not.i.i = icmp eq i32 %call2.i.i.i, 0
  %spec.select = select i1 %tobool23.not.i.i, i32 1, i32 %call2.i.i.i
  %__ret.0.i.i = select i1 %tobool20.not.i.i, i32 %call2.i.i.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i.i)
  %tobool28.not.i.i = icmp eq i32 %__ret.0.i.i, 0
  %not.tobool20.not.i.i = xor i1 %tobool20.not.i.i, true
  %125 = select i1 %not.tobool20.not.i.i, i1 true, i1 %tobool28.not.i.i
  br i1 %125, label %if.else.i.i.i.if.end60.i.i_crit_edge, label %if.then30.i.i

if.else.i.i.i.if.end60.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i

if.then30.i.i:                                    ; preds = %if.else.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  %126 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  %127 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %timeout1.i.i, align 4
  %call2.i147.i.i = call i32 @__msecs_to_jiffies(i32 noundef %128) #7
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #7
  %call34174.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #7
  %129 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool37.not175.i.i = icmp eq i32 %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147.i.i)
  %tobool41.not176.i.i = icmp eq i32 %call2.i147.i.i, 0
  %spec.select285 = select i1 %tobool41.not176.i.i, i32 1, i32 %call2.i147.i.i
  %__ret31.1178.i.i = select i1 %tobool37.not175.i.i, i32 %call2.i147.i.i, i32 %spec.select285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1178.i.i)
  %tobool47.not179.i.i = icmp eq i32 %__ret31.1178.i.i, 0
  %not.tobool37.not180.i.i = xor i1 %tobool37.not175.i.i, true
  %131 = select i1 %not.tobool37.not180.i.i, i1 true, i1 %tobool47.not179.i.i
  br i1 %131, label %if.then30.i.i.for.end.i.i_crit_edge, label %if.then30.i.i.if.end53.i.i_crit_edge

if.then30.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then30.i.i
  br label %if.end53.i.i

if.then30.i.i.for.end.i.i_crit_edge:              ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end53.i.i:                                     ; preds = %cleanup.i.i.if.end53.i.i_crit_edge, %if.then30.i.i.if.end53.i.i_crit_edge
  %__ret31.1182.i.i = phi i32 [ %__ret31.1.i.i, %cleanup.i.i.if.end53.i.i_crit_edge ], [ %__ret31.1178.i.i, %if.then30.i.i.if.end53.i.i_crit_edge ]
  %call34181.i.i = phi i32 [ %call34.i.i, %cleanup.i.i.if.end53.i.i_crit_edge ], [ %call34174.i.i, %if.then30.i.i.if.end53.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34181.i.i)
  %tobool54.not.i.i = icmp eq i32 %call34181.i.i, 0
  br i1 %tobool54.not.i.i, label %cleanup.i.i, label %if.end53.i.i.__out.i.i_crit_edge

if.end53.i.i.__out.i.i_crit_edge:                 ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i.i

cleanup.i.i:                                      ; preds = %if.end53.i.i
  %call57.i.i = call i32 @schedule_timeout(i32 noundef %__ret31.1182.i.i) #7
  %call34.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #7
  %132 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool37.not.i.i = icmp eq i32 %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool41.not.i.i = icmp eq i32 %call57.i.i, 0
  %spec.store.select107.i.i = select i1 %tobool41.not.i.i, i32 1, i32 %call57.i.i
  %__ret31.1.i.i = select i1 %tobool37.not.i.i, i32 %call57.i.i, i32 %spec.store.select107.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1.i.i)
  %tobool47.not.i.i = icmp eq i32 %__ret31.1.i.i, 0
  %not.tobool37.not.i.i = xor i1 %tobool37.not.i.i, true
  %134 = select i1 %not.tobool37.not.i.i, i1 true, i1 %tobool47.not.i.i
  br i1 %134, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.if.end53.i.i_crit_edge

cleanup.i.i.if.end53.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then30.i.i.for.end.i.i_crit_edge
  %__ret31.1.lcssa.i.i = phi i32 [ %__ret31.1178.i.i, %if.then30.i.i.for.end.i.i_crit_edge ], [ %__ret31.1.i.i, %cleanup.i.i.for.end.i.i_crit_edge ]
  call void @finish_wait(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #7
  br label %__out.i.i

__out.i.i:                                        ; preds = %for.end.i.i, %if.end53.i.i.__out.i.i_crit_edge
  %__ret31.2153.i.i = phi i32 [ %__ret31.1.lcssa.i.i, %for.end.i.i ], [ %call34181.i.i, %if.end53.i.i.__out.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %__out.i.i, %if.else.i.i.i.if.end60.i.i_crit_edge
  %__ret.1.i.i = phi i32 [ %__ret.0.i.i, %if.else.i.i.i.if.end60.i.i_crit_edge ], [ %__ret31.2153.i.i, %__out.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i.i)
  %cmp.i.i210 = icmp eq i32 %__ret.1.i.i, 0
  %135 = call i32 @llvm.smin.i32(i32 %__ret.1.i.i, i32 0) #7
  br i1 %cmp.i.i210, label %if.end60.i.i.cec_receive.exit_crit_edge, label %if.end60.i.i.do.cond101.i.i_crit_edge

if.end60.i.i.do.cond101.i.i_crit_edge:            ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond101.i.i

if.end60.i.i.cec_receive.exit_crit_edge:          ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_receive.exit

if.else67.i.i:                                    ; preds = %if.end10.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 283) #7
  %136 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool76.not.i.i = icmp eq i32 %137, 0
  br i1 %tobool76.not.i.i, label %if.then77.i.i, label %if.else67.i.i.do.cond101.i.i_crit_edge

if.else67.i.i.do.cond101.i.i_crit_edge:           ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond101.i.i

if.then77.i.i:                                    ; preds = %if.else67.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry78.i.i) #7
  %138 = call ptr @memset(ptr %__wq_entry78.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry78.i.i, i32 noundef 0) #7
  %call83184.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry78.i.i, i32 noundef 1) #7
  %139 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %queued_msgs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool85.not185.i.i = icmp eq i32 %140, 0
  br i1 %tobool85.not185.i.i, label %if.then77.i.i.if.end87.i.i_crit_edge, label %if.then77.i.i.for.end94.i.i_crit_edge

if.then77.i.i.for.end94.i.i_crit_edge:            ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94.i.i

if.then77.i.i.if.end87.i.i_crit_edge:             ; preds = %if.then77.i.i
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %cleanup91.i.i.if.end87.i.i_crit_edge, %if.then77.i.i.if.end87.i.i_crit_edge
  %call83186.i.i = phi i32 [ %call83.i.i, %cleanup91.i.i.if.end87.i.i_crit_edge ], [ %call83184.i.i, %if.then77.i.i.if.end87.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83186.i.i)
  %tobool88.not.i.i = icmp eq i32 %call83186.i.i, 0
  br i1 %tobool88.not.i.i, label %cleanup91.i.i, label %if.end87.i.i.__out96.i.i_crit_edge

if.end87.i.i.__out96.i.i_crit_edge:               ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out96.i.i

cleanup91.i.i:                                    ; preds = %if.end87.i.i
  call void @schedule() #7
  %call83.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry78.i.i, i32 noundef 1) #7
  %141 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %queued_msgs.i.i, align 8
  %tobool85.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool85.not.i.i, label %cleanup91.i.i.if.end87.i.i_crit_edge, label %cleanup91.i.i.for.end94.i.i_crit_edge

cleanup91.i.i.for.end94.i.i_crit_edge:            ; preds = %cleanup91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94.i.i

cleanup91.i.i.if.end87.i.i_crit_edge:             ; preds = %cleanup91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i.i

for.end94.i.i:                                    ; preds = %cleanup91.i.i.for.end94.i.i_crit_edge, %if.then77.i.i.for.end94.i.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry78.i.i) #7
  br label %__out96.i.i

__out96.i.i:                                      ; preds = %for.end94.i.i, %if.end87.i.i.__out96.i.i_crit_edge
  %__ret79.1160.i.i = phi i32 [ 0, %for.end94.i.i ], [ %call83186.i.i, %if.end87.i.i.__out96.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry78.i.i) #7
  br label %do.cond101.i.i

do.cond101.i.i:                                   ; preds = %__out96.i.i, %if.else67.i.i.do.cond101.i.i_crit_edge, %if.end60.i.i.do.cond101.i.i_crit_edge
  %res.0.i.i = phi i32 [ 0, %if.else67.i.i.do.cond101.i.i_crit_edge ], [ %__ret79.1160.i.i, %__out96.i.i ], [ %135, %if.end60.i.i.do.cond101.i.i_crit_edge ]
  %tobool102.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool102.not.i.i, label %do.cond101.i.i.do.body.i.i_crit_edge, label %do.cond101.i.i.cec_receive.exit_crit_edge

do.cond101.i.i.cec_receive.exit_crit_edge:        ; preds = %do.cond101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_receive.exit

do.cond101.i.i.do.body.i.i_crit_edge:             ; preds = %do.cond101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end5.i:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.end5.i_crit_edge
  %143 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %114, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %msg3.i.i = getelementptr inbounds %struct.cec_msg_entry, ptr %114, i32 0, i32 1
  %145 = call ptr @memcpy(ptr %msg.i191, ptr %msg3.i.i, i32 56)
  call void @kfree(ptr noundef %114) #7
  %146 = ptrtoint ptr %queued_msgs.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %queued_msgs.i.i, align 8
  %dec.i.i = add i32 %147, -1
  store i32 %dec.i.i, ptr %queued_msgs.i.i, align 8
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  %148 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %110, ptr %timeout1.i.i, align 4
  %flags.i211 = getelementptr inbounds %struct.cec_msg, ptr %msg.i191, i32 0, i32 5
  %149 = ptrtoint ptr %flags.i211 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %flags.i211, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i5.i, label %if.end5.i.cec_receive.exit_crit_edge, label %copy_to_user.exit.i214

if.end5.i.cec_receive.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_receive.exit

copy_to_user.exit.i214:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msg.i191, i32 noundef 56) #7
  %call.i12.i.i.i212 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %msg.i191, i32 noundef 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i212)
  %tobool7.not.i213 = icmp eq i32 %call.i12.i.i.i212, 0
  %spec.select25.i = select i1 %tobool7.not.i213, i32 0, i32 -14
  br label %cec_receive.exit

cec_receive.exit:                                 ; preds = %copy_to_user.exit.i214, %if.end5.i.cec_receive.exit_crit_edge, %do.cond101.i.i.cec_receive.exit_crit_edge, %if.end60.i.i.cec_receive.exit_crit_edge, %if.end.i.i.cec_receive.exit_crit_edge, %if.then11.i.i.i206
  %retval.0.i215 = phi i32 [ -14, %if.then11.i.i.i206 ], [ -14, %if.end5.i.cec_receive.exit_crit_edge ], [ %spec.select25.i, %copy_to_user.exit.i214 ], [ -11, %if.end.i.i.cec_receive.exit_crit_edge ], [ %res.0.i.i, %do.cond101.i.i.cec_receive.exit_crit_edge ], [ -110, %if.end60.i.i.cec_receive.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i191) #7
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %lock.i216 = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i216, i32 noundef 0) #7
  %total_queued_events.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 9
  %150 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %total_queued_events.i, align 8
  %152 = or i32 %151, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %while.body.lr.ph.i, label %sw.bb21.for.cond22.preheader.i_crit_edge

sw.bb21.for.cond22.preheader.i_crit_edge:         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond22.preheader.i

while.body.lr.ph.i:                               ; preds = %sw.bb21
  %wait.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 5
  br label %while.body.i

for.cond22.preheader.i:                           ; preds = %if.end20.i.for.cond22.preheader.i_crit_edge, %sw.bb21.for.cond22.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 0
  %154 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp29.not.i = icmp eq ptr %155, %arrayidx.i
  %tobool31.not19.i = icmp eq ptr %155, null
  %tobool31.not.i = or i1 %cmp29.not.i, %tobool31.not19.i
  br i1 %tobool31.not.i, label %for.cond22.preheader.i.if.end38.i_crit_edge, label %if.then35.i

for.cond22.preheader.i.if.end38.i_crit_edge:      ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @mutex_unlock(ptr noundef %lock.i216) #7
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 321) #7
  %156 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %total_queued_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool7.not.i217 = icmp eq i32 %157, 0
  br i1 %tobool7.not.i217, label %if.then.i218, label %while.body.i.if.end20.i_crit_edge

while.body.i.if.end20.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then.i218:                                     ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %158 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call23.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %159 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %total_queued_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool10.not24.i = icmp eq i32 %160, 0
  br i1 %tobool10.not24.i, label %if.then.i218.if.end.i219_crit_edge, label %if.then.i218.if.end16.thread13.i_crit_edge

if.then.i218.if.end16.thread13.i_crit_edge:       ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread13.i

if.then.i218.if.end.i219_crit_edge:               ; preds = %if.then.i218
  br label %if.end.i219

if.end.i219:                                      ; preds = %cleanup.i.if.end.i219_crit_edge, %if.then.i218.if.end.i219_crit_edge
  %call25.i = phi i32 [ %call.i220, %cleanup.i.if.end.i219_crit_edge ], [ %call23.i, %if.then.i218.if.end.i219_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool12.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool12.not.i, label %cleanup.i, label %if.end16.i221

cleanup.i:                                        ; preds = %if.end.i219
  call void @schedule() #7
  %call.i220 = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %161 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %total_queued_events.i, align 8
  %tobool10.not.i = icmp eq i32 %162, 0
  br i1 %tobool10.not.i, label %cleanup.i.if.end.i219_crit_edge, label %cleanup.i.if.end16.thread13.i_crit_edge

cleanup.i.if.end16.thread13.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.thread13.i

cleanup.i.if.end.i219_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i219

if.end16.thread13.i:                              ; preds = %cleanup.i.if.end16.thread13.i_crit_edge, %if.then.i218.if.end16.thread13.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end20.i

if.end16.i221:                                    ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.thread13.i, %while.body.i.if.end20.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i216, i32 noundef 0) #7
  %163 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %total_queued_events.i, align 8
  %tobool.not.i222 = icmp eq i32 %164, 0
  br i1 %tobool.not.i222, label %if.end20.i.while.body.i_crit_edge, label %if.end20.i.for.cond22.preheader.i_crit_edge

if.end20.i.for.cond22.preheader.i_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond22.preheader.i

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then35.i:                                      ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %ev32.i = getelementptr inbounds %struct.cec_event_entry, ptr %155, i32 0, i32 1
  %165 = ptrtoint ptr %ev32.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %ev32.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %for.cond22.preheader.i.if.end38.i_crit_edge
  %ev_idx.1.i = phi i32 [ 0, %if.then35.i ], [ -1, %for.cond22.preheader.i.if.end38.i_crit_edge ]
  %ts.1.i = phi i64 [ %166, %if.then35.i ], [ -1, %for.cond22.preheader.i.if.end38.i_crit_edge ]
  %ev.1.i = phi ptr [ %155, %if.then35.i ], [ null, %for.cond22.preheader.i.if.end38.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 1
  %167 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp29.not.1.i = icmp eq ptr %168, %arrayidx.1.i
  %tobool31.not19.1.i = icmp eq ptr %168, null
  %tobool31.not.1.i = or i1 %cmp29.not.1.i, %tobool31.not19.1.i
  br i1 %tobool31.not.1.i, label %if.end38.i.if.end38.1.i_crit_edge, label %land.lhs.true.1.i

if.end38.i.if.end38.1.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.1.i

land.lhs.true.1.i:                                ; preds = %if.end38.i
  %ev32.1.i = getelementptr inbounds %struct.cec_event_entry, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %ev32.1.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %ev32.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %170, i64 %ts.1.i)
  %cmp34.not.1.i = icmp ugt i64 %170, %ts.1.i
  br i1 %cmp34.not.1.i, label %land.lhs.true.1.i.if.end38.1.i_crit_edge, label %if.then35.1.i

land.lhs.true.1.i.if.end38.1.i_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.1.i

if.then35.1.i:                                    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.1.i

if.end38.1.i:                                     ; preds = %if.then35.1.i, %land.lhs.true.1.i.if.end38.1.i_crit_edge, %if.end38.i.if.end38.1.i_crit_edge
  %ev_idx.1.1.i = phi i32 [ 1, %if.then35.1.i ], [ %ev_idx.1.i, %land.lhs.true.1.i.if.end38.1.i_crit_edge ], [ %ev_idx.1.i, %if.end38.i.if.end38.1.i_crit_edge ]
  %ts.1.1.i = phi i64 [ %170, %if.then35.1.i ], [ %ts.1.i, %land.lhs.true.1.i.if.end38.1.i_crit_edge ], [ %ts.1.i, %if.end38.i.if.end38.1.i_crit_edge ]
  %ev.1.1.i = phi ptr [ %168, %if.then35.1.i ], [ %ev.1.i, %land.lhs.true.1.i.if.end38.1.i_crit_edge ], [ %ev.1.i, %if.end38.i.if.end38.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 2
  %171 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp29.not.2.i = icmp eq ptr %172, %arrayidx.2.i
  %tobool31.not19.2.i = icmp eq ptr %172, null
  %tobool31.not.2.i = or i1 %cmp29.not.2.i, %tobool31.not19.2.i
  br i1 %tobool31.not.2.i, label %if.end38.1.i.if.end38.2.i_crit_edge, label %land.lhs.true.2.i

if.end38.1.i.if.end38.2.i_crit_edge:              ; preds = %if.end38.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.2.i

land.lhs.true.2.i:                                ; preds = %if.end38.1.i
  %ev32.2.i = getelementptr inbounds %struct.cec_event_entry, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %ev32.2.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %ev32.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %ts.1.1.i)
  %cmp34.not.2.i = icmp ugt i64 %174, %ts.1.1.i
  br i1 %cmp34.not.2.i, label %land.lhs.true.2.i.if.end38.2.i_crit_edge, label %if.then35.2.i

land.lhs.true.2.i.if.end38.2.i_crit_edge:         ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.2.i

if.then35.2.i:                                    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.2.i

if.end38.2.i:                                     ; preds = %if.then35.2.i, %land.lhs.true.2.i.if.end38.2.i_crit_edge, %if.end38.1.i.if.end38.2.i_crit_edge
  %ev_idx.1.2.i = phi i32 [ 2, %if.then35.2.i ], [ %ev_idx.1.1.i, %land.lhs.true.2.i.if.end38.2.i_crit_edge ], [ %ev_idx.1.1.i, %if.end38.1.i.if.end38.2.i_crit_edge ]
  %ts.1.2.i = phi i64 [ %174, %if.then35.2.i ], [ %ts.1.1.i, %land.lhs.true.2.i.if.end38.2.i_crit_edge ], [ %ts.1.1.i, %if.end38.1.i.if.end38.2.i_crit_edge ]
  %ev.1.2.i = phi ptr [ %172, %if.then35.2.i ], [ %ev.1.1.i, %land.lhs.true.2.i.if.end38.2.i_crit_edge ], [ %ev.1.1.i, %if.end38.1.i.if.end38.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 3
  %175 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp29.not.3.i = icmp eq ptr %176, %arrayidx.3.i
  %tobool31.not19.3.i = icmp eq ptr %176, null
  %tobool31.not.3.i = or i1 %cmp29.not.3.i, %tobool31.not19.3.i
  br i1 %tobool31.not.3.i, label %if.end38.2.i.if.end38.3.i_crit_edge, label %land.lhs.true.3.i

if.end38.2.i.if.end38.3.i_crit_edge:              ; preds = %if.end38.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3.i

land.lhs.true.3.i:                                ; preds = %if.end38.2.i
  %ev32.3.i = getelementptr inbounds %struct.cec_event_entry, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %ev32.3.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %ev32.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %178, i64 %ts.1.2.i)
  %cmp34.not.3.i = icmp ugt i64 %178, %ts.1.2.i
  br i1 %cmp34.not.3.i, label %land.lhs.true.3.i.if.end38.3.i_crit_edge, label %if.then35.3.i

land.lhs.true.3.i.if.end38.3.i_crit_edge:         ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3.i

if.then35.3.i:                                    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3.i

if.end38.3.i:                                     ; preds = %if.then35.3.i, %land.lhs.true.3.i.if.end38.3.i_crit_edge, %if.end38.2.i.if.end38.3.i_crit_edge
  %ev_idx.1.3.i = phi i32 [ 3, %if.then35.3.i ], [ %ev_idx.1.2.i, %land.lhs.true.3.i.if.end38.3.i_crit_edge ], [ %ev_idx.1.2.i, %if.end38.2.i.if.end38.3.i_crit_edge ]
  %ts.1.3.i = phi i64 [ %178, %if.then35.3.i ], [ %ts.1.2.i, %land.lhs.true.3.i.if.end38.3.i_crit_edge ], [ %ts.1.2.i, %if.end38.2.i.if.end38.3.i_crit_edge ]
  %ev.1.3.i = phi ptr [ %176, %if.then35.3.i ], [ %ev.1.2.i, %land.lhs.true.3.i.if.end38.3.i_crit_edge ], [ %ev.1.2.i, %if.end38.2.i.if.end38.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 4
  %179 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %arrayidx.4.i, align 4
  %cmp29.not.4.i = icmp eq ptr %180, %arrayidx.4.i
  %tobool31.not19.4.i = icmp eq ptr %180, null
  %tobool31.not.4.i = or i1 %cmp29.not.4.i, %tobool31.not19.4.i
  br i1 %tobool31.not.4.i, label %if.end38.3.i.if.end38.4.i_crit_edge, label %land.lhs.true.4.i

if.end38.3.i.if.end38.4.i_crit_edge:              ; preds = %if.end38.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.4.i

land.lhs.true.4.i:                                ; preds = %if.end38.3.i
  %ev32.4.i = getelementptr inbounds %struct.cec_event_entry, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %ev32.4.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %ev32.4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %ts.1.3.i)
  %cmp34.not.4.i = icmp ugt i64 %182, %ts.1.3.i
  br i1 %cmp34.not.4.i, label %land.lhs.true.4.i.if.end38.4.i_crit_edge, label %if.then35.4.i

land.lhs.true.4.i.if.end38.4.i_crit_edge:         ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.4.i

if.then35.4.i:                                    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.4.i

if.end38.4.i:                                     ; preds = %if.then35.4.i, %land.lhs.true.4.i.if.end38.4.i_crit_edge, %if.end38.3.i.if.end38.4.i_crit_edge
  %ev_idx.1.4.i = phi i32 [ 4, %if.then35.4.i ], [ %ev_idx.1.3.i, %land.lhs.true.4.i.if.end38.4.i_crit_edge ], [ %ev_idx.1.3.i, %if.end38.3.i.if.end38.4.i_crit_edge ]
  %ts.1.4.i = phi i64 [ %182, %if.then35.4.i ], [ %ts.1.3.i, %land.lhs.true.4.i.if.end38.4.i_crit_edge ], [ %ts.1.3.i, %if.end38.3.i.if.end38.4.i_crit_edge ]
  %ev.1.4.i = phi ptr [ %180, %if.then35.4.i ], [ %ev.1.3.i, %land.lhs.true.4.i.if.end38.4.i_crit_edge ], [ %ev.1.3.i, %if.end38.3.i.if.end38.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 5
  %183 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile ptr, ptr %arrayidx.5.i, align 4
  %cmp29.not.5.i = icmp eq ptr %184, %arrayidx.5.i
  %tobool31.not19.5.i = icmp eq ptr %184, null
  %tobool31.not.5.i = or i1 %cmp29.not.5.i, %tobool31.not19.5.i
  br i1 %tobool31.not.5.i, label %if.end38.4.i.if.end38.5.i_crit_edge, label %land.lhs.true.5.i

if.end38.4.i.if.end38.5.i_crit_edge:              ; preds = %if.end38.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.5.i

land.lhs.true.5.i:                                ; preds = %if.end38.4.i
  %ev32.5.i = getelementptr inbounds %struct.cec_event_entry, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %ev32.5.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %ev32.5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %186, i64 %ts.1.4.i)
  %cmp34.not.5.i = icmp ugt i64 %186, %ts.1.4.i
  br i1 %cmp34.not.5.i, label %land.lhs.true.5.i.if.end38.5.i_crit_edge, label %if.then35.5.i

land.lhs.true.5.i.if.end38.5.i_crit_edge:         ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.5.i

if.then35.5.i:                                    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.5.i

if.end38.5.i:                                     ; preds = %if.then35.5.i, %land.lhs.true.5.i.if.end38.5.i_crit_edge, %if.end38.4.i.if.end38.5.i_crit_edge
  %ev_idx.1.5.i = phi i32 [ 5, %if.then35.5.i ], [ %ev_idx.1.4.i, %land.lhs.true.5.i.if.end38.5.i_crit_edge ], [ %ev_idx.1.4.i, %if.end38.4.i.if.end38.5.i_crit_edge ]
  %ts.1.5.i = phi i64 [ %186, %if.then35.5.i ], [ %ts.1.4.i, %land.lhs.true.5.i.if.end38.5.i_crit_edge ], [ %ts.1.4.i, %if.end38.4.i.if.end38.5.i_crit_edge ]
  %ev.1.5.i = phi ptr [ %184, %if.then35.5.i ], [ %ev.1.4.i, %land.lhs.true.5.i.if.end38.5.i_crit_edge ], [ %ev.1.4.i, %if.end38.4.i.if.end38.5.i_crit_edge ]
  %arrayidx.6.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 6
  %187 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %arrayidx.6.i, align 4
  %cmp29.not.6.i = icmp eq ptr %188, %arrayidx.6.i
  %tobool31.not19.6.i = icmp eq ptr %188, null
  %tobool31.not.6.i = or i1 %cmp29.not.6.i, %tobool31.not19.6.i
  br i1 %tobool31.not.6.i, label %if.end38.5.i.if.end38.6.i_crit_edge, label %land.lhs.true.6.i

if.end38.5.i.if.end38.6.i_crit_edge:              ; preds = %if.end38.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.6.i

land.lhs.true.6.i:                                ; preds = %if.end38.5.i
  %ev32.6.i = getelementptr inbounds %struct.cec_event_entry, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %ev32.6.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %ev32.6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %190, i64 %ts.1.5.i)
  %cmp34.not.6.i = icmp ugt i64 %190, %ts.1.5.i
  br i1 %cmp34.not.6.i, label %land.lhs.true.6.i.if.end38.6.i_crit_edge, label %if.then35.6.i

land.lhs.true.6.i.if.end38.6.i_crit_edge:         ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.6.i

if.then35.6.i:                                    ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.6.i

if.end38.6.i:                                     ; preds = %if.then35.6.i, %land.lhs.true.6.i.if.end38.6.i_crit_edge, %if.end38.5.i.if.end38.6.i_crit_edge
  %ev_idx.1.6.i = phi i32 [ 6, %if.then35.6.i ], [ %ev_idx.1.5.i, %land.lhs.true.6.i.if.end38.6.i_crit_edge ], [ %ev_idx.1.5.i, %if.end38.5.i.if.end38.6.i_crit_edge ]
  %ts.1.6.i = phi i64 [ %190, %if.then35.6.i ], [ %ts.1.5.i, %land.lhs.true.6.i.if.end38.6.i_crit_edge ], [ %ts.1.5.i, %if.end38.5.i.if.end38.6.i_crit_edge ]
  %ev.1.6.i = phi ptr [ %188, %if.then35.6.i ], [ %ev.1.5.i, %land.lhs.true.6.i.if.end38.6.i_crit_edge ], [ %ev.1.5.i, %if.end38.5.i.if.end38.6.i_crit_edge ]
  %arrayidx.7.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 7
  %191 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile ptr, ptr %arrayidx.7.i, align 4
  %cmp29.not.7.i = icmp eq ptr %192, %arrayidx.7.i
  %tobool31.not19.7.i = icmp eq ptr %192, null
  %tobool31.not.7.i = or i1 %cmp29.not.7.i, %tobool31.not19.7.i
  br i1 %tobool31.not.7.i, label %if.end38.6.i.if.end38.7.i_crit_edge, label %land.lhs.true.7.i

if.end38.6.i.if.end38.7.i_crit_edge:              ; preds = %if.end38.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.7.i

land.lhs.true.7.i:                                ; preds = %if.end38.6.i
  %ev32.7.i = getelementptr inbounds %struct.cec_event_entry, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %ev32.7.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %ev32.7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %194, i64 %ts.1.6.i)
  %cmp34.not.7.i = icmp ugt i64 %194, %ts.1.6.i
  br i1 %cmp34.not.7.i, label %land.lhs.true.7.i.if.end38.7.i_crit_edge, label %land.lhs.true.7.i.if.end42.i_crit_edge

land.lhs.true.7.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.lhs.true.7.i.if.end38.7.i_crit_edge:         ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.7.i

if.end38.7.i:                                     ; preds = %land.lhs.true.7.i.if.end38.7.i_crit_edge, %if.end38.6.i.if.end38.7.i_crit_edge
  %tobool40.not.i = icmp eq ptr %ev.1.6.i, null
  br i1 %tobool40.not.i, label %if.end38.7.i.unlock.i_crit_edge, label %if.end38.7.i.if.end42.i_crit_edge

if.end38.7.i.if.end42.i_crit_edge:                ; preds = %if.end38.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.end38.7.i.unlock.i_crit_edge:                  ; preds = %if.end38.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

if.end42.i:                                       ; preds = %if.end38.7.i.if.end42.i_crit_edge, %land.lhs.true.7.i.if.end42.i_crit_edge
  %ev.1.737.i = phi ptr [ %ev.1.6.i, %if.end38.7.i.if.end42.i_crit_edge ], [ %192, %land.lhs.true.7.i.if.end42.i_crit_edge ]
  %ev_idx.1.736.i = phi i32 [ %ev_idx.1.6.i, %if.end38.7.i.if.end42.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end42.i_crit_edge ]
  %call.i.i2.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ev.1.737.i) #7
  br i1 %call.i.i2.i, label %if.end.i.i3.i, label %if.end42.i.list_del.exit.i_crit_edge

if.end42.i.list_del.exit.i_crit_edge:             ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i3.i:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i223 = getelementptr inbounds %struct.list_head, ptr %ev.1.737.i, i32 0, i32 1
  %195 = ptrtoint ptr %prev.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev.i.i.i223, align 4
  %197 = ptrtoint ptr %ev.1.737.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ev.1.737.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %196, ptr %prev1.i.i.i.i, align 4
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %198, ptr %196, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i3.i, %if.end42.i.list_del.exit.i_crit_edge
  %201 = ptrtoint ptr %ev.1.737.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr inttoptr (i32 256 to ptr), ptr %ev.1.737.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ev.1.737.i, i32 0, i32 1
  %202 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %ev43.i = getelementptr inbounds %struct.cec_event_entry, ptr %ev.1.737.i, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i226 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i226, label %list_del.exit.i.copy_to_user.exit.thread.i234_crit_edge, label %if.end.i.i.i230

list_del.exit.i.copy_to_user.exit.thread.i234_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread.i234

if.end.i.i.i230:                                  ; preds = %list_del.exit.i
  %203 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 80, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i228 = extractvalue { i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i228)
  %cmp.i6.i.i229 = icmp eq i32 %asmresult.i.i.i228, 0
  br i1 %cmp.i6.i.i229, label %copy_to_user.exit.i233, label %if.end.i.i.i230.copy_to_user.exit.thread.i234_crit_edge

if.end.i.i.i230.copy_to_user.exit.thread.i234_crit_edge: ; preds = %if.end.i.i.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread.i234

copy_to_user.exit.i233:                           ; preds = %if.end.i.i.i230
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i231 = call zeroext i1 @__kasan_check_read(ptr noundef %ev43.i, i32 noundef 80) #7
  %call.i12.i.i.i232 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %ev43.i, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i232)
  %tobool45.not.i = icmp eq i32 %call.i12.i.i.i232, 0
  %spec.select18.i = select i1 %tobool45.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i234

copy_to_user.exit.thread.i234:                    ; preds = %copy_to_user.exit.i233, %if.end.i.i.i230.copy_to_user.exit.thread.i234_crit_edge, %list_del.exit.i.copy_to_user.exit.thread.i234_crit_edge
  %204 = phi i32 [ -14, %list_del.exit.i.copy_to_user.exit.thread.i234_crit_edge ], [ -14, %if.end.i.i.i230.copy_to_user.exit.thread.i234_crit_edge ], [ %spec.select18.i, %copy_to_user.exit.i233 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ev_idx.1.736.i)
  %cmp48.i = icmp ugt i32 %ev_idx.1.736.i, 1
  br i1 %cmp48.i, label %if.then49.i, label %copy_to_user.exit.thread.i234.if.end50.i_crit_edge

copy_to_user.exit.thread.i234.if.end50.i_crit_edge: ; preds = %copy_to_user.exit.thread.i234
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then49.i:                                      ; preds = %copy_to_user.exit.thread.i234
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %ev.1.737.i) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %copy_to_user.exit.thread.i234.if.end50.i_crit_edge
  %arrayidx51.i = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 8, i32 %ev_idx.1.736.i
  %205 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx51.i, align 2
  %dec.i = add i16 %206, -1
  store i16 %dec.i, ptr %arrayidx51.i, align 2
  %207 = ptrtoint ptr %total_queued_events.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %total_queued_events.i, align 8
  %dec53.i = add i32 %208, -1
  store i32 %dec53.i, ptr %total_queued_events.i, align 8
  br label %unlock.i

unlock.i:                                         ; preds = %if.end50.i, %if.end38.7.i.unlock.i_crit_edge
  %err.2.i = phi i32 [ %204, %if.end50.i ], [ -11, %if.end38.7.i.unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i216) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #7
  %mode_initiator.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 3
  %209 = ptrtoint ptr %mode_initiator.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %mode_initiator.i, align 4
  %mode_follower.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 4
  %211 = ptrtoint ptr %mode_follower.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %mode_follower.i, align 1
  %or1.i = or i8 %212, %210
  %or.i = zext i8 %or1.i to i32
  %213 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %or.i, ptr %mode.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i.i236 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i236, label %sw.bb24.cec_g_mode.exit_crit_edge, label %if.end.i.i.i239

sw.bb24.cec_g_mode.exit_crit_edge:                ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_g_mode.exit

if.end.i.i.i239:                                  ; preds = %sw.bb24
  %214 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i.i237 = extractvalue { i32, i32 } %214, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i237)
  %cmp.i6.i.i238 = icmp eq i32 %asmresult.i.i.i237, 0
  br i1 %cmp.i6.i.i238, label %copy_to_user.exit.i244, label %if.end.i.i.i239.cec_g_mode.exit_crit_edge

if.end.i.i.i239.cec_g_mode.exit_crit_edge:        ; preds = %if.end.i.i.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_g_mode.exit

copy_to_user.exit.i244:                           ; preds = %if.end.i.i.i239
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i240 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mode.i, i32 noundef 4) #7
  %call.i12.i.i.i241 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %mode.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i241)
  %tobool.not.i242 = icmp eq i32 %call.i12.i.i.i241, 0
  %spec.select.i243 = select i1 %tobool.not.i242, i32 0, i32 -14
  br label %cec_g_mode.exit

cec_g_mode.exit:                                  ; preds = %copy_to_user.exit.i244, %if.end.i.i.i239.cec_g_mode.exit_crit_edge, %sw.bb24.cec_g_mode.exit_crit_edge
  %215 = phi i32 [ -14, %sw.bb24.cec_g_mode.exit_crit_edge ], [ -14, %if.end.i.i.i239.cec_g_mode.exit_crit_edge ], [ %spec.select.i243, %copy_to_user.exit.i244 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #7
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i246) #7
  %216 = ptrtoint ptr %mode.i246 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %mode.i246, align 4, !annotation !54
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i.i247 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i247, label %sw.bb26.if.then11.i.i.i261_crit_edge, label %land.lhs.true.i.i.i250

sw.bb26.if.then11.i.i.i261_crit_edge:             ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i261

land.lhs.true.i.i.i250:                           ; preds = %sw.bb26
  %217 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #10, !srcloc !55
  %asmresult.i.i.i248 = extractvalue { i32, i32 } %217, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i248)
  %cmp.i6.i.i249 = icmp eq i32 %asmresult.i.i.i248, 0
  br i1 %cmp.i6.i.i249, label %if.end.i.i.i258, label %land.lhs.true.i.i.i250.if.then11.i.i.i261_crit_edge, !prof !56

land.lhs.true.i.i.i250.if.then11.i.i.i261_crit_edge: ; preds = %land.lhs.true.i.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i261

if.end.i.i.i258:                                  ; preds = %land.lhs.true.i.i.i250
  %call.i.i.i.i251 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode.i246, i32 noundef 4) #7
  %218 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i252 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i.i.i.i.i252 to ptr
  %cpu_domain.i.i.i.i.i.i253 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 4
  %220 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i253) #3, !srcloc !57
  %and.i.i.i.i.i254 = and i32 %220, -13
  %or.i.i.i.i.i255 = or i32 %and.i.i.i.i.i254, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i255) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i.i256 = call i32 @arm_copy_from_user(ptr noundef nonnull %mode.i246, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i256)
  %tobool4.not.i.i.i257 = icmp eq i32 %call1.i.i.i.i256, 0
  br i1 %tobool4.not.i.i.i257, label %if.end.i263, label %if.end.i.i.i258.if.then11.i.i.i261_crit_edge, !prof !56

if.end.i.i.i258.if.then11.i.i.i261_crit_edge:     ; preds = %if.end.i.i.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i261

if.then11.i.i.i261:                               ; preds = %if.end.i.i.i258.if.then11.i.i.i261_crit_edge, %land.lhs.true.i.i.i250.if.then11.i.i.i261_crit_edge, %sw.bb26.if.then11.i.i.i261_crit_edge
  %res.0.i.i356.i = phi i32 [ %call1.i.i.i.i256, %if.end.i.i.i258.if.then11.i.i.i261_crit_edge ], [ 4, %sw.bb26.if.then11.i.i.i261_crit_edge ], [ 4, %land.lhs.true.i.i.i250.if.then11.i.i.i261_crit_edge ]
  %sub.i.i.i259 = sub i32 4, %res.0.i.i356.i
  %add.ptr.i.i.i260 = getelementptr i8, ptr %mode.i246, i32 %sub.i.i.i259
  %221 = call ptr @memset(ptr %add.ptr.i.i.i260, i32 0, i32 %res.0.i.i356.i)
  br label %cec_s_mode.exit

if.end.i263:                                      ; preds = %if.end.i.i.i258
  %222 = ptrtoint ptr %mode.i246 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %mode.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %223)
  %tobool1.not.i262 = icmp ult i32 %223, 256
  br i1 %tobool1.not.i262, label %if.end9.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %224 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp.i264 = icmp sgt i32 %224, 0
  br i1 %cmp.i264, label %do.end.i, label %do.body.i.cec_s_mode.exit_crit_edge

do.body.i.cec_s_mode.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

if.end9.i:                                        ; preds = %if.end.i263
  %225 = trunc i32 %223 to i8
  %conv.i265 = and i8 %225, 15
  %conv12.i = and i8 %225, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i265)
  %cmp14.i = icmp ugt i8 %conv.i265, 2
  br i1 %cmp14.i, label %do.body20.i, label %if.end34.i

do.body20.i:                                      ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %226 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp21.i = icmp sgt i32 %226, 0
  br i1 %cmp21.i, label %do.end26.i, label %do.body20.i.cec_s_mode.exit_crit_edge

do.body20.i.cec_s_mode.exit_crit_edge:            ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  %name28.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name28.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

if.end34.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %225)
  %cmp36.i = icmp ugt i8 %225, -17
  br i1 %cmp36.i, label %land.lhs.true.i267, label %if.end34.i.if.end55.i_crit_edge

if.end34.i.if.end55.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.lhs.true.i267:                               ; preds = %if.end34.i
  %capabilities.i266 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %227 = ptrtoint ptr %capabilities.i266 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %capabilities.i266, align 8
  %and38.i = and i32 %228, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body41.i, label %land.lhs.true.i267.if.end55.i_crit_edge

land.lhs.true.i267.if.end55.i_crit_edge:          ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

do.body41.i:                                      ; preds = %land.lhs.true.i267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %229 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp42.i = icmp sgt i32 %229, 0
  br i1 %cmp42.i, label %do.end47.i, label %do.body41.i.cec_s_mode.exit_crit_edge

do.body41.i.cec_s_mode.exit_crit_edge:            ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end47.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  %name49.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name49.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

if.end55.i:                                       ; preds = %land.lhs.true.i267.if.end55.i_crit_edge, %if.end34.i.if.end55.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %conv12.i)
  %cmp57.i = icmp eq i8 %conv12.i, -48
  br i1 %cmp57.i, label %land.lhs.true59.i, label %if.end55.i.if.end78.i_crit_edge

if.end55.i.if.end78.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

land.lhs.true59.i:                                ; preds = %if.end55.i
  %capabilities60.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %230 = ptrtoint ptr %capabilities60.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %capabilities60.i, align 8
  %and61.i = and i32 %231, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %do.body64.i, label %land.lhs.true59.i.if.end78.i_crit_edge

land.lhs.true59.i.if.end78.i_crit_edge:           ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

do.body64.i:                                      ; preds = %land.lhs.true59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %232 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp65.i = icmp sgt i32 %232, 0
  br i1 %cmp65.i, label %do.end70.i, label %do.body64.i.cec_s_mode.exit_crit_edge

do.body64.i.cec_s_mode.exit_crit_edge:            ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end70.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #9
  %name72.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name72.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

if.end78.i:                                       ; preds = %land.lhs.true59.i.if.end78.i_crit_edge, %if.end55.i.if.end78.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i265)
  %cmp80.i = icmp eq i8 %conv.i265, 0
  br i1 %cmp80.i, label %land.lhs.true86.i, label %lor.lhs.false82.i

lor.lhs.false82.i:                                ; preds = %if.end78.i
  %capabilities83.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 16
  %233 = ptrtoint ptr %capabilities83.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %capabilities83.i, align 8
  %and84.i = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12.i)
  %cmp88.not.i = icmp ne i8 %conv12.i, 0
  %or.cond.i = select i1 %tobool85.not.i, i1 %cmp88.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %conv12.i)
  %cmp92.i = icmp ult i8 %conv12.i, 49
  %or.cond346.i = select i1 %or.cond.i, i1 %cmp92.i, i1 false
  br i1 %or.cond346.i, label %lor.lhs.false82.i.do.body95.i_crit_edge, label %if.end109.i

lor.lhs.false82.i.do.body95.i_crit_edge:          ; preds = %lor.lhs.false82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95.i

land.lhs.true86.i:                                ; preds = %if.end78.i
  %235 = add i8 %conv12.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %235)
  %236 = icmp ult i8 %235, 48
  br i1 %236, label %land.lhs.true86.i.do.body95.i_crit_edge, label %if.end109.thread.i

land.lhs.true86.i.do.body95.i_crit_edge:          ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95.i

if.end109.thread.i:                               ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %conv12.i)
  %cmp114360.i = icmp ugt i8 %conv12.i, -49
  br i1 %cmp114360.i, label %land.lhs.true135.i, label %if.end109.thread.i.if.end138.i_crit_edge

if.end109.thread.i.if.end138.i_crit_edge:         ; preds = %if.end109.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.i

do.body95.i:                                      ; preds = %land.lhs.true86.i.do.body95.i_crit_edge, %lor.lhs.false82.i.do.body95.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %237 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp96.i = icmp sgt i32 %237, 0
  br i1 %cmp96.i, label %do.end101.i, label %do.body95.i.cec_s_mode.exit_crit_edge

do.body95.i.cec_s_mode.exit_crit_edge:            ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end101.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #9
  %name103.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name103.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

if.end109.i:                                      ; preds = %lor.lhs.false82.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %conv12.i)
  %cmp114.i = icmp ugt i8 %conv12.i, -49
  br i1 %cmp114.i, label %do.body117.i, label %if.end109.i.if.end138.i_crit_edge

if.end109.i.if.end138.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.i

do.body117.i:                                     ; preds = %if.end109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cec_debug to i32))
  %238 = load i32, ptr @cec_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp118.i = icmp sgt i32 %238, 0
  br i1 %cmp118.i, label %do.end123.i, label %do.body117.i.cec_s_mode.exit_crit_edge

do.body117.i.cec_s_mode.exit_crit_edge:           ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

do.end123.i:                                      ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #9
  %name125.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 1
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name125.i, ptr noundef nonnull @.str.5) #11
  br label %cec_s_mode.exit

land.lhs.true135.i:                               ; preds = %if.end109.thread.i
  %call136.i = call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call136.i, label %land.lhs.true135.i.if.end138.i_crit_edge, label %land.lhs.true135.i.cec_s_mode.exit_crit_edge

land.lhs.true135.i.cec_s_mode.exit_crit_edge:     ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cec_s_mode.exit

land.lhs.true135.i.if.end138.i_crit_edge:         ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.i

if.end138.i:                                      ; preds = %land.lhs.true135.i.if.end138.i_crit_edge, %if.end109.i.if.end138.i_crit_edge, %if.end109.thread.i.if.end138.i_crit_edge
  %lock.i268 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i268, i32 noundef 0) #7
  %239 = zext i8 %conv12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %conv12.i, label %if.end138.i.if.end153.i_crit_edge [
    i8 48, label %if.end138.i.land.lhs.true146.i_crit_edge
    i8 32, label %if.end138.i.land.lhs.true146.i_crit_edge295
  ]

if.end138.i.land.lhs.true146.i_crit_edge295:      ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true146.i

if.end138.i.land.lhs.true146.i_crit_edge:         ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true146.i

if.end138.i.if.end153.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

land.lhs.true146.i:                               ; preds = %if.end138.i.land.lhs.true146.i_crit_edge, %if.end138.i.land.lhs.true146.i_crit_edge295
  %cec_follower.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %240 = ptrtoint ptr %cec_follower.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cec_follower.i, align 4
  %tobool147.not.i = icmp eq ptr %241, null
  %cmp150.not.i = icmp eq ptr %241, %1
  %or.cond350.i = or i1 %tobool147.not.i, %cmp150.not.i
  %spec.select.i269 = select i1 %or.cond350.i, i32 0, i32 -16
  br label %if.end153.i

if.end153.i:                                      ; preds = %land.lhs.true146.i, %if.end138.i.if.end153.i_crit_edge
  %err.0.i270 = phi i32 [ 0, %if.end138.i.if.end153.i_crit_edge ], [ %spec.select.i269, %land.lhs.true146.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i265)
  %cmp155.i = icmp eq i8 %conv.i265, 2
  br i1 %cmp155.i, label %land.lhs.true157.i, label %if.end153.i.if.end164.i_crit_edge

if.end153.i.if.end164.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

land.lhs.true157.i:                               ; preds = %if.end153.i
  %cec_initiator.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 29
  %242 = ptrtoint ptr %cec_initiator.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cec_initiator.i, align 8
  %tobool158.not.i = icmp eq ptr %243, null
  %cmp161.not.i = icmp eq ptr %243, %1
  %or.cond351.i = or i1 %tobool158.not.i, %cmp161.not.i
  br i1 %or.cond351.i, label %land.lhs.true157.i.if.end164.i_crit_edge, label %land.lhs.true157.i.if.then216.i_crit_edge

land.lhs.true157.i.if.then216.i_crit_edge:        ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then216.i

land.lhs.true157.i.if.end164.i_crit_edge:         ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

if.end164.i:                                      ; preds = %land.lhs.true157.i.if.end164.i_crit_edge, %if.end153.i.if.end164.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i270)
  %tobool165.not.i = icmp eq i32 %err.0.i270, 0
  br i1 %tobool165.not.i, label %if.then166.i, label %if.end164.i.if.then216.i_crit_edge

if.end164.i.if.then216.i_crit_edge:               ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then216.i

if.then166.i:                                     ; preds = %if.end164.i
  %mode_follower167.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 4
  %244 = ptrtoint ptr %mode_follower167.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %mode_follower167.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %245)
  %cmp169.i = icmp ne i8 %245, -16
  %cmp179.not.i = xor i1 %cmp36.i, %cmp169.i
  br i1 %cmp179.not.i, label %if.then166.i.if.then189.i_crit_edge, label %if.then181.i

if.then166.i.if.then189.i_crit_edge:              ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then189.i

if.then181.i:                                     ; preds = %if.then166.i
  br i1 %cmp36.i, label %if.end187.i, label %if.else.i271

if.else.i271:                                     ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @cec_monitor_all_cnt_dec(ptr noundef nonnull %3) #7
  br label %if.then189.i

if.end187.i:                                      ; preds = %if.then181.i
  %call184.i = call i32 @cec_monitor_all_cnt_inc(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %tobool188.not.i = icmp eq i32 %call184.i, 0
  br i1 %tobool188.not.i, label %if.end187.i.if.then189.i_crit_edge, label %if.end187.i.if.then216.i_crit_edge

if.end187.i.if.then216.i_crit_edge:               ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then216.i

if.end187.i.if.then189.i_crit_edge:               ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then189.i

if.then189.i:                                     ; preds = %if.end187.i.if.then189.i_crit_edge, %if.else.i271, %if.then166.i.if.then189.i_crit_edge
  %246 = ptrtoint ptr %mode_follower167.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %mode_follower167.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %247)
  %cmp192.i = icmp ne i8 %247, -48
  %cmp203.not.i = xor i1 %cmp57.i, %cmp192.i
  br i1 %cmp203.not.i, label %if.then189.i.if.end218.i_crit_edge, label %if.then205.i

if.then189.i.if.end218.i_crit_edge:               ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218.i

if.then205.i:                                     ; preds = %if.then189.i
  br i1 %cmp57.i, label %if.end214.i, label %if.else211.i

if.else211.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @cec_monitor_pin_cnt_dec(ptr noundef nonnull %3) #7
  br label %if.end218thread-pre-split.i

if.end214.i:                                      ; preds = %if.then205.i
  %call210.i = call i32 @cec_monitor_pin_cnt_inc(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i)
  %tobool215.not.i = icmp eq i32 %call210.i, 0
  br i1 %tobool215.not.i, label %if.end214.i.if.end218thread-pre-split.i_crit_edge, label %if.end214.i.if.then216.i_crit_edge

if.end214.i.if.then216.i_crit_edge:               ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then216.i

if.end214.i.if.end218thread-pre-split.i_crit_edge: ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218thread-pre-split.i

if.then216.i:                                     ; preds = %if.end214.i.if.then216.i_crit_edge, %if.end187.i.if.then216.i_crit_edge, %if.end164.i.if.then216.i_crit_edge, %land.lhs.true157.i.if.then216.i_crit_edge
  %err.5380.i = phi i32 [ %call210.i, %if.end214.i.if.then216.i_crit_edge ], [ %call184.i, %if.end187.i.if.then216.i_crit_edge ], [ %err.0.i270, %if.end164.i.if.then216.i_crit_edge ], [ -16, %land.lhs.true157.i.if.then216.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i268) #7
  br label %cec_s_mode.exit

if.end218thread-pre-split.i:                      ; preds = %if.end214.i.if.end218thread-pre-split.i_crit_edge, %if.else211.i
  %248 = ptrtoint ptr %mode_follower167.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %.pr.i = load i8, ptr %mode_follower167.i, align 1
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.end218thread-pre-split.i, %if.then189.i.if.end218.i_crit_edge
  %249 = phi i8 [ %.pr.i, %if.end218thread-pre-split.i ], [ %247, %if.then189.i.if.end218.i_crit_edge ]
  %send_pin_event.1.off0374.i = phi i1 [ %cmp57.i, %if.end218thread-pre-split.i ], [ false, %if.then189.i.if.end218.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %249)
  %cmp221.i = icmp eq i8 %249, 16
  br i1 %cmp221.i, label %if.then223.i, label %if.end218.i.if.end224.i_crit_edge

if.end218.i.if.end224.i_crit_edge:                ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224.i

if.then223.i:                                     ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #9
  %follower_cnt.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 27
  %250 = ptrtoint ptr %follower_cnt.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %follower_cnt.i, align 8
  %dec.i272 = add i32 %251, -1
  store i32 %dec.i272, ptr %follower_cnt.i, align 8
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then223.i, %if.end218.i.if.end224.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv12.i)
  %cmp226.i = icmp eq i8 %conv12.i, 16
  br i1 %cmp226.i, label %if.then228.i, label %if.end224.i.if.end230.i_crit_edge

if.end224.i.if.end230.i_crit_edge:                ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end230.i

if.then228.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #9
  %follower_cnt229.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 27
  %252 = ptrtoint ptr %follower_cnt229.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %follower_cnt229.i, align 8
  %inc.i = add i32 %253, 1
  store i32 %inc.i, ptr %follower_cnt229.i, align 8
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.then228.i, %if.end224.i.if.end230.i_crit_edge
  br i1 %send_pin_event.1.off0374.i, label %if.then232.i, label %if.end230.i.if.end235.i_crit_edge

if.end230.i.if.end235.i_crit_edge:                ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235.i

if.then232.i:                                     ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ev.i) #7
  %254 = call ptr @memset(ptr %ev.i, i32 0, i32 80)
  %255 = getelementptr inbounds %struct.cec_event, ptr %ev.i, i32 0, i32 2
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %255, align 4
  %cec_pin_is_high.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 22
  %257 = ptrtoint ptr %cec_pin_is_high.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %cec_pin_is_high.i, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool233.not.i = icmp eq i8 %258, 0
  %cond.i = select i1 %tobool233.not.i, i32 3, i32 4
  %event.i = getelementptr inbounds %struct.cec_event, ptr %ev.i, i32 0, i32 1
  %259 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %cond.i, ptr %event.i, align 8
  call void @cec_queue_event_fh(ptr noundef %1, ptr noundef nonnull %ev.i, i64 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ev.i) #7
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.then232.i, %if.end230.i.if.end235.i_crit_edge
  %260 = zext i8 %conv12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %conv12.i, label %if.else249.i [
    i8 48, label %if.end235.i.if.then243.i_crit_edge
    i8 32, label %if.end235.i.if.then243.i_crit_edge296
  ]

if.end235.i.if.then243.i_crit_edge296:            ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then243.i

if.end235.i.if.then243.i_crit_edge:               ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then243.i

if.then243.i:                                     ; preds = %if.end235.i.if.then243.i_crit_edge, %if.end235.i.if.then243.i_crit_edge296
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv12.i)
  %cmp245.i = icmp eq i8 %conv12.i, 48
  %passthrough.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 30
  %frombool247.i = zext i1 %cmp245.i to i8
  %261 = ptrtoint ptr %passthrough.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %frombool247.i, ptr %passthrough.i, align 4
  %cec_follower248.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %262 = ptrtoint ptr %cec_follower248.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %1, ptr %cec_follower248.i, align 4
  br label %if.end257.i

if.else249.i:                                     ; preds = %if.end235.i
  %cec_follower250.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 28
  %263 = ptrtoint ptr %cec_follower250.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cec_follower250.i, align 4
  %cmp251.i = icmp eq ptr %264, %1
  br i1 %cmp251.i, label %if.then253.i, label %if.else249.i.if.end257.i_crit_edge

if.else249.i.if.end257.i_crit_edge:               ; preds = %if.else249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257.i

if.then253.i:                                     ; preds = %if.else249.i
  call void @__sanitizer_cov_trace_pc() #9
  %passthrough254.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 30
  %265 = ptrtoint ptr %passthrough254.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %passthrough254.i, align 4
  %266 = ptrtoint ptr %cec_follower250.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %cec_follower250.i, align 4
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.then253.i, %if.else249.i.if.end257.i_crit_edge, %if.then243.i
  %cec_initiator262.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 29
  br i1 %cmp155.i, label %if.end257.i.if.end270.sink.split.i_crit_edge, label %if.else263.i

if.end257.i.if.end270.sink.split.i_crit_edge:     ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270.sink.split.i

if.else263.i:                                     ; preds = %if.end257.i
  %267 = ptrtoint ptr %cec_initiator262.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cec_initiator262.i, align 8
  %cmp265.i = icmp eq ptr %268, %1
  br i1 %cmp265.i, label %if.else263.i.if.end270.sink.split.i_crit_edge, label %if.else263.i.if.end270.i_crit_edge

if.else263.i.if.end270.i_crit_edge:               ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270.i

if.else263.i.if.end270.sink.split.i_crit_edge:    ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270.sink.split.i

if.end270.sink.split.i:                           ; preds = %if.else263.i.if.end270.sink.split.i_crit_edge, %if.end257.i.if.end270.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %1, %if.end257.i.if.end270.sink.split.i_crit_edge ], [ null, %if.else263.i.if.end270.sink.split.i_crit_edge ]
  %269 = ptrtoint ptr %cec_initiator262.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %.sink.i, ptr %cec_initiator262.i, align 8
  br label %if.end270.i

if.end270.i:                                      ; preds = %if.end270.sink.split.i, %if.else263.i.if.end270.i_crit_edge
  %mode_initiator271.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 3
  %270 = ptrtoint ptr %mode_initiator271.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv.i265, ptr %mode_initiator271.i, align 4
  %271 = ptrtoint ptr %mode_follower167.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv12.i, ptr %mode_follower167.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i268) #7
  br label %cec_s_mode.exit

cec_s_mode.exit:                                  ; preds = %if.end270.i, %if.then216.i, %land.lhs.true135.i.cec_s_mode.exit_crit_edge, %do.end123.i, %do.body117.i.cec_s_mode.exit_crit_edge, %do.end101.i, %do.body95.i.cec_s_mode.exit_crit_edge, %do.end70.i, %do.body64.i.cec_s_mode.exit_crit_edge, %do.end47.i, %do.body41.i.cec_s_mode.exit_crit_edge, %do.end26.i, %do.body20.i.cec_s_mode.exit_crit_edge, %do.end.i, %do.body.i.cec_s_mode.exit_crit_edge, %if.then11.i.i.i261
  %retval.0.i273 = phi i32 [ %err.5380.i, %if.then216.i ], [ 0, %if.end270.i ], [ -22, %do.end.i ], [ -22, %do.body.i.cec_s_mode.exit_crit_edge ], [ -22, %do.end26.i ], [ -22, %do.body20.i.cec_s_mode.exit_crit_edge ], [ -22, %do.end47.i ], [ -22, %do.body41.i.cec_s_mode.exit_crit_edge ], [ -22, %do.end70.i ], [ -22, %do.body64.i.cec_s_mode.exit_crit_edge ], [ -22, %do.end101.i ], [ -22, %do.body95.i.cec_s_mode.exit_crit_edge ], [ -22, %do.end123.i ], [ -22, %do.body117.i.cec_s_mode.exit_crit_edge ], [ -1, %land.lhs.true135.i.cec_s_mode.exit_crit_edge ], [ -14, %if.then11.i.i.i261 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i246) #7
  br label %cleanup

cleanup:                                          ; preds = %cec_s_mode.exit, %cec_g_mode.exit, %unlock.i, %if.end16.i221, %cec_receive.exit, %cec_transmit.exit, %copy_to_user.exit.thread.i, %sw.bb13.cleanup_crit_edge, %cec_adap_s_log_addrs.exit, %cec_adap_g_log_addrs.exit, %cec_adap_s_phys_addr.exit, %cec_adap_g_phys_addr.exit, %cec_adap_g_caps.exit, %if.end.cleanup_crit_edge, %cec_is_registered.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i273, %cec_s_mode.exit ], [ %215, %cec_g_mode.exit ], [ %retval.0.i215, %cec_receive.exit ], [ %retval.0.i190, %cec_transmit.exit ], [ %retval.0.i132, %cec_adap_s_log_addrs.exit ], [ %55, %cec_adap_g_log_addrs.exit ], [ %retval.0.i, %cec_adap_s_phys_addr.exit ], [ %30, %cec_adap_g_phys_addr.exit ], [ %25, %cec_adap_g_caps.exit ], [ -19, %cec_is_registered.exit.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ %83, %copy_to_user.exit.thread.i ], [ -25, %sw.bb13.cleanup_crit_edge ], [ %err.2.i, %unlock.i ], [ %call25.i, %if.end16.i221 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #1 align 64 {
entry:
  %ev = alloca %struct.cec_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 -968
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 448) #12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ev) #7
  %4 = call ptr @memset(ptr %ev, i32 0, i32 80)
  %5 = getelementptr inbounds %struct.cec_event, ptr %ev, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cec_event, ptr %ev, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %msgs = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msgs, ptr %msgs, align 8
  %prev.i = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msgs, ptr %prev.i, align 4
  %xfer_list = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %xfer_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %xfer_list, ptr %xfer_list, align 8
  %prev.i124 = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xfer_list, ptr %prev.i124, align 4
  %arrayidx = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx, ptr %arrayidx, align 8
  %prev.i125 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %prev.i125, align 4
  %arrayidx.1 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i125.1 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i125.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.1, ptr %prev.i125.1, align 4
  %arrayidx.2 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 8
  %prev.i125.2 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i125.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.2, ptr %prev.i125.2, align 4
  %arrayidx.3 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 8
  %prev.i125.3 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i125.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.3, ptr %prev.i125.3, align 4
  %arrayidx.4 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 8
  %prev.i125.4 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i125.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.4, ptr %prev.i125.4, align 4
  %arrayidx.5 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 8
  %prev.i125.5 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i125.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.5, ptr %prev.i125.5, align 4
  %arrayidx.6 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 8
  %prev.i125.6 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1
  %26 = ptrtoint ptr %prev.i125.6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.6, ptr %prev.i125.6, align 4
  %arrayidx.7 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 7
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 8
  %prev.i125.7 = getelementptr %struct.cec_fh, ptr %call7.i.i, i32 0, i32 7, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i125.7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.7, ptr %prev.i125.7, align 4
  %lock = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @cec_open.__key) #7
  %wait = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.23, ptr noundef nonnull @cec_open.__key.22) #7
  %mode_initiator = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %mode_initiator to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %mode_initiator, align 4
  %adap7 = getelementptr inbounds %struct.cec_fh, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %adap7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr3, ptr %adap7, align 8
  %call8 = tail call i32 @cec_get_device(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %lock12 = getelementptr i8, ptr %2, i32 164
  tail call void @mutex_lock_nested(ptr noundef %lock12, i32 noundef 0) #7
  %fhs = getelementptr i8, ptr %2, i32 352
  %31 = ptrtoint ptr %fhs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %fhs, align 4
  %cmp.i.not = icmp eq ptr %32, %fhs
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %needs_hpd = getelementptr i8, ptr %2, i32 616
  %33 = ptrtoint ptr %needs_hpd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %needs_hpd, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not = icmp eq i8 %34, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true16:                                  ; preds = %land.lhs.true
  %phys_addr = getelementptr i8, ptr %2, i32 614
  %35 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phys_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp17 = icmp eq i16 %36, -1
  br i1 %cmp17, label %if.then19, label %land.lhs.true16.if.end25_crit_edge

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then19:                                        ; preds = %land.lhs.true16
  %ops = getelementptr i8, ptr %2, i32 600
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call20 = tail call i32 %40(ptr noundef %add.ptr3, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end25_crit_edge, label %if.then22

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock12) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %land.lhs.true16.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %41 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %private_data, align 4
  %phys_addr26 = getelementptr i8, ptr %2, i32 614
  %42 = ptrtoint ptr %phys_addr26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phys_addr26, align 2
  %44 = getelementptr inbounds %struct.cec_event, ptr %ev, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %43, ptr %44, align 8
  %log_addr_mask = getelementptr i8, ptr %2, i32 652
  %46 = ptrtoint ptr %log_addr_mask to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %log_addr_mask, align 4
  %log_addr_mask28 = getelementptr inbounds %struct.cec_event_state_change, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %log_addr_mask28 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %log_addr_mask28, align 2
  %conn_info = getelementptr i8, ptr %2, i32 740
  %49 = ptrtoint ptr %conn_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %conn_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp29 = icmp ne i32 %50, 0
  %conv31 = zext i1 %cmp29 to i16
  %have_conn_info = getelementptr inbounds %struct.cec_event, ptr %ev, i32 0, i32 3, i32 0, i32 1
  %51 = ptrtoint ptr %have_conn_info to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv31, ptr %have_conn_info, align 4
  call void @cec_queue_event_fh(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %ev, i64 noundef 0) #7
  %pin = getelementptr i8, ptr %2, i32 816
  %52 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pin, align 8
  %tobool32.not = icmp eq ptr %53, null
  br i1 %tobool32.not, label %if.end25.if.end66_crit_edge, label %land.lhs.true33

if.end25.if.end66_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true33:                                  ; preds = %if.end25
  %ops35 = getelementptr inbounds %struct.cec_pin, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ops35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops35, align 4
  %read_hpd = getelementptr inbounds %struct.cec_pin_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %read_hpd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_hpd, align 4
  %tobool36.not = icmp eq ptr %57, null
  br i1 %tobool36.not, label %land.lhs.true33.if.end47_crit_edge, label %if.then37

land.lhs.true33.if.end47_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then37:                                        ; preds = %land.lhs.true33
  %call41 = call i32 %57(ptr noundef %add.ptr3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp42 = icmp sgt i32 %call41, -1
  br i1 %cmp42, label %if.then44, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool45.not = icmp eq i32 %call41, 0
  %cond = select i1 %tobool45.not, i32 5, i32 6
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond, ptr %5, align 8
  call void @cec_queue_event_fh(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %ev, i64 noundef 0) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then37.if.end47_crit_edge, %land.lhs.true33.if.end47_crit_edge
  %59 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load ptr, ptr %pin, align 8
  %tobool49.not = icmp eq ptr %.pr, null
  br i1 %tobool49.not, label %if.end47.if.end66_crit_edge, label %land.lhs.true50

if.end47.if.end66_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true50:                                  ; preds = %if.end47
  %ops52 = getelementptr inbounds %struct.cec_pin, ptr %.pr, i32 0, i32 1
  %60 = ptrtoint ptr %ops52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops52, align 4
  %read_5v = getelementptr inbounds %struct.cec_pin_ops, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %read_5v to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_5v, align 4
  %tobool53.not = icmp eq ptr %63, null
  br i1 %tobool53.not, label %land.lhs.true50.if.end66_crit_edge, label %if.then54

land.lhs.true50.if.end66_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then54:                                        ; preds = %land.lhs.true50
  %call58 = call i32 %63(ptr noundef %add.ptr3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call58)
  %cmp59 = icmp sgt i32 %call58, -1
  br i1 %cmp59, label %if.then61, label %if.then54.if.end66_crit_edge

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then61:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool62.not = icmp eq i32 %call58, 0
  %cond63 = select i1 %tobool62.not, i32 7, i32 8
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond63, ptr %5, align 8
  call void @cec_queue_event_fh(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %ev, i64 noundef 0) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.then54.if.end66_crit_edge, %land.lhs.true50.if.end66_crit_edge, %if.end47.if.end66_crit_edge, %if.end25.if.end66_crit_edge
  %lock_fhs = getelementptr i8, ptr %2, i32 260
  call void @mutex_lock_nested(ptr noundef %lock_fhs, i32 noundef 0) #7
  %65 = ptrtoint ptr %fhs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fhs, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %fhs, ptr noundef %66) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end66.list_add.exit_crit_edge

if.end66.list_add.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %fhs, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %fhs to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i, ptr %fhs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end66.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock_fhs) #7
  call void @mutex_unlock(ptr noundef %lock12) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then22, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %list_add.exit ], [ %call20, %if.then22 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %adap.i = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap.i, align 8
  %lock = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %cec_initiator = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cec_initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_initiator, align 8
  %cmp = icmp eq ptr %5, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %cec_initiator to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cec_initiator, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cec_follower = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %cec_follower to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cec_follower, align 4
  %cmp2 = icmp eq ptr %8, %1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %cec_follower to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cec_follower, align 4
  %passthrough = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 30
  %10 = ptrtoint ptr %passthrough to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %passthrough, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %mode_follower = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %mode_follower to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode_follower, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp6 = icmp eq i8 %12, 16
  br i1 %cmp6, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %follower_cnt = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 27
  %13 = ptrtoint ptr %follower_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %follower_cnt, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %follower_cnt, align 8
  %15 = ptrtoint ptr %mode_follower to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %mode_follower, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %16 = phi i8 [ %.pr, %if.then8 ], [ %12, %if.end5.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %16)
  %cmp12 = icmp eq i8 %16, -48
  br i1 %cmp12, label %if.then14, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cec_monitor_pin_cnt_dec(ptr noundef %3) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge
  %17 = ptrtoint ptr %mode_follower to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mode_follower, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %18)
  %cmp18 = icmp eq i8 %18, -16
  br i1 %cmp18, label %if.then20, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cec_monitor_all_cnt_dec(ptr noundef %3) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %lock23 = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock23, i32 noundef 0) #7
  %lock_fhs = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock_fhs, i32 noundef 0) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del.exit_crit_edge

if.end21.list_del.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end21.list_del.exit_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock_fhs) #7
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %list_del.exit.if.end59_crit_edge, label %cec_is_registered.exit

list_del.exit.if.end59_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

cec_is_registered.exit:                           ; preds = %list_del.exit
  %registered.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %registered.i, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.i.not = icmp eq i8 %28, 0
  br i1 %tobool1.i.not, label %cec_is_registered.exit.if.end59_crit_edge, label %land.lhs.true

cec_is_registered.exit.if.end59_crit_edge:        ; preds = %cec_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %cec_is_registered.exit
  %fhs = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2, i32 7
  %29 = ptrtoint ptr %fhs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %fhs, align 4
  %cmp.i.not = icmp eq ptr %30, %fhs
  br i1 %cmp.i.not, label %land.lhs.true28, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true28:                                  ; preds = %land.lhs.true
  %needs_hpd = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 19
  %31 = ptrtoint ptr %needs_hpd to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %needs_hpd, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool29.not = icmp eq i8 %32, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true28.if.end59_crit_edge

land.lhs.true28.if.end59_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %phys_addr = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 18
  %33 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %phys_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp32 = icmp eq i16 %34, -1
  br i1 %cmp32, label %if.then34, label %land.lhs.true30.if.end59_crit_edge

land.lhs.true30.if.end59_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then34:                                        ; preds = %land.lhs.true30
  %ops = getelementptr %struct.cec_adapter, ptr %3, i32 0, i32 14
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call35 = tail call i32 %38(ptr noundef nonnull %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end59_crit_edge, label %do.end, !prof !56

if.then34.if.end59_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end:                                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 666, i32 noundef 9, ptr noundef null) #7
  br label %if.end59

if.end59:                                         ; preds = %do.end, %if.then34.if.end59_crit_edge, %land.lhs.true30.if.end59_crit_edge, %land.lhs.true28.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %cec_is_registered.exit.if.end59_crit_edge, %list_del.exit.if.end59_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock23) #7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %xfer_list = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %xfer_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %xfer_list, align 4
  %cmp.i149.not171 = icmp eq ptr %40, %xfer_list
  br i1 %cmp.i149.not171, label %if.end59.while.end_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  br label %while.body

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end59.while.body_crit_edge
  %41 = phi ptr [ %53, %list_del_init.exit.while.body_crit_edge ], [ %40, %if.end59.while.body_crit_edge ]
  %blocking = getelementptr i8, ptr %41, i32 233
  %42 = ptrtoint ptr %blocking to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %blocking, align 1
  %fh70 = getelementptr i8, ptr %41, i32 72
  %43 = ptrtoint ptr %fh70 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %fh70, align 8
  %call.i.i151 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #7
  br i1 %call.i.i151, label %if.end.i.i154, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i154:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i152 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i152, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %41, align 4
  %prev1.i.i.i153 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i153, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i154, %while.body.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %41, ptr %41, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %41, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %xfer_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %xfer_list, align 4
  %cmp.i149.not = icmp eq ptr %53, %xfer_list
  br i1 %cmp.i149.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %if.end59.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %msgs = getelementptr inbounds %struct.cec_fh, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %msgs, align 4
  %cmp.i155.not172 = icmp eq ptr %55, %msgs
  br i1 %cmp.i155.not172, label %while.end.for.cond.preheader_crit_edge, label %while.end.while.body78_crit_edge

while.end.while.body78_crit_edge:                 ; preds = %while.end
  br label %while.body78

while.end.for.cond.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %list_del.exit162.for.cond.preheader_crit_edge, %while.end.for.cond.preheader_crit_edge
  %arrayidx = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i163.not173 = icmp eq ptr %57, %arrayidx
  br i1 %cmp.i163.not173, label %for.cond.preheader.for.inc_crit_edge, label %for.cond.preheader.while.body94_crit_edge

for.cond.preheader.while.body94_crit_edge:        ; preds = %for.cond.preheader
  br label %while.body94

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.body78:                                     ; preds = %list_del.exit162.while.body78_crit_edge, %while.end.while.body78_crit_edge
  %58 = phi ptr [ %68, %list_del.exit162.while.body78_crit_edge ], [ %55, %while.end.while.body78_crit_edge ]
  %call.i.i157 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %58) #7
  br i1 %call.i.i157, label %if.end.i.i160, label %while.body78.list_del.exit162_crit_edge

while.body78.list_del.exit162_crit_edge:          ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit162

if.end.i.i160:                                    ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i158 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i158, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %prev1.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i159, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit162

list_del.exit162:                                 ; preds = %if.end.i.i160, %while.body78.list_del.exit162_crit_edge
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  %prev.i161 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i161, align 4
  tail call void @kfree(ptr noundef %58) #7
  %67 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %msgs, align 4
  %cmp.i155.not = icmp eq ptr %68, %msgs
  br i1 %cmp.i155.not, label %list_del.exit162.for.cond.preheader_crit_edge, label %list_del.exit162.while.body78_crit_edge

list_del.exit162.while.body78_crit_edge:          ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body78

list_del.exit162.for.cond.preheader_crit_edge:    ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

while.body94:                                     ; preds = %list_del.exit170.while.body94_crit_edge, %for.cond.preheader.while.body94_crit_edge
  %69 = phi ptr [ %79, %list_del.exit170.while.body94_crit_edge ], [ %57, %for.cond.preheader.while.body94_crit_edge ]
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #7
  br i1 %call.i.i165, label %if.end.i.i168, label %while.body94.list_del.exit170_crit_edge

while.body94.list_del.exit170_crit_edge:          ; preds = %while.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170

if.end.i.i168:                                    ; preds = %while.body94
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i166, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %prev1.i.i.i167 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i167, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit170

list_del.exit170:                                 ; preds = %if.end.i.i168, %while.body94.list_del.exit170_crit_edge
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %69, align 4
  %prev.i169 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169, align 4
  tail call void @kfree(ptr noundef %69) #7
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i163.not = icmp eq ptr %79, %arrayidx
  br i1 %cmp.i163.not, label %list_del.exit170.for.inc_crit_edge, label %list_del.exit170.while.body94_crit_edge

list_del.exit170.while.body94_crit_edge:          ; preds = %list_del.exit170
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94

list_del.exit170.for.inc_crit_edge:               ; preds = %list_del.exit170
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit170.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 3
  %80 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i163.not173.1 = icmp eq ptr %81, %arrayidx.1
  br i1 %cmp.i163.not173.1, label %for.inc.for.inc.1_crit_edge, label %for.inc.while.body94.1_crit_edge

for.inc.while.body94.1_crit_edge:                 ; preds = %for.inc
  br label %while.body94.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

while.body94.1:                                   ; preds = %list_del.exit170.1.while.body94.1_crit_edge, %for.inc.while.body94.1_crit_edge
  %82 = phi ptr [ %92, %list_del.exit170.1.while.body94.1_crit_edge ], [ %81, %for.inc.while.body94.1_crit_edge ]
  %call.i.i165.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %82) #7
  br i1 %call.i.i165.1, label %if.end.i.i168.1, label %while.body94.1.list_del.exit170.1_crit_edge

while.body94.1.list_del.exit170.1_crit_edge:      ; preds = %while.body94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170.1

if.end.i.i168.1:                                  ; preds = %while.body94.1
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166.1 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i166.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i166.1, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  %prev1.i.i.i167.1 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i167.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i167.1, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit170.1

list_del.exit170.1:                               ; preds = %if.end.i.i168.1, %while.body94.1.list_del.exit170.1_crit_edge
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  %prev.i169.1 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i169.1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169.1, align 4
  tail call void @kfree(ptr noundef %82) #7
  %91 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i163.not.1 = icmp eq ptr %92, %arrayidx.1
  br i1 %cmp.i163.not.1, label %list_del.exit170.1.for.inc.1_crit_edge, label %list_del.exit170.1.while.body94.1_crit_edge

list_del.exit170.1.while.body94.1_crit_edge:      ; preds = %list_del.exit170.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94.1

list_del.exit170.1.for.inc.1_crit_edge:           ; preds = %list_del.exit170.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %list_del.exit170.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 4
  %93 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i163.not173.2 = icmp eq ptr %94, %arrayidx.2
  br i1 %cmp.i163.not173.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.while.body94.2_crit_edge

for.inc.1.while.body94.2_crit_edge:               ; preds = %for.inc.1
  br label %while.body94.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

while.body94.2:                                   ; preds = %list_del.exit170.2.while.body94.2_crit_edge, %for.inc.1.while.body94.2_crit_edge
  %95 = phi ptr [ %105, %list_del.exit170.2.while.body94.2_crit_edge ], [ %94, %for.inc.1.while.body94.2_crit_edge ]
  %call.i.i165.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %95) #7
  br i1 %call.i.i165.2, label %if.end.i.i168.2, label %while.body94.2.list_del.exit170.2_crit_edge

while.body94.2.list_del.exit170.2_crit_edge:      ; preds = %while.body94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170.2

if.end.i.i168.2:                                  ; preds = %while.body94.2
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166.2 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i166.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i166.2, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 4
  %prev1.i.i.i167.2 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i167.2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i167.2, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit170.2

list_del.exit170.2:                               ; preds = %if.end.i.i168.2, %while.body94.2.list_del.exit170.2_crit_edge
  %102 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %95, align 4
  %prev.i169.2 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i169.2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169.2, align 4
  tail call void @kfree(ptr noundef %95) #7
  %104 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i163.not.2 = icmp eq ptr %105, %arrayidx.2
  br i1 %cmp.i163.not.2, label %list_del.exit170.2.for.inc.2_crit_edge, label %list_del.exit170.2.while.body94.2_crit_edge

list_del.exit170.2.while.body94.2_crit_edge:      ; preds = %list_del.exit170.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94.2

list_del.exit170.2.for.inc.2_crit_edge:           ; preds = %list_del.exit170.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %list_del.exit170.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 5
  %106 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i163.not173.3 = icmp eq ptr %107, %arrayidx.3
  br i1 %cmp.i163.not173.3, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.while.body94.3_crit_edge

for.inc.2.while.body94.3_crit_edge:               ; preds = %for.inc.2
  br label %while.body94.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

while.body94.3:                                   ; preds = %list_del.exit170.3.while.body94.3_crit_edge, %for.inc.2.while.body94.3_crit_edge
  %108 = phi ptr [ %118, %list_del.exit170.3.while.body94.3_crit_edge ], [ %107, %for.inc.2.while.body94.3_crit_edge ]
  %call.i.i165.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %108) #7
  br i1 %call.i.i165.3, label %if.end.i.i168.3, label %while.body94.3.list_del.exit170.3_crit_edge

while.body94.3.list_del.exit170.3_crit_edge:      ; preds = %while.body94.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170.3

if.end.i.i168.3:                                  ; preds = %while.body94.3
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166.3 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i.i166.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i166.3, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %prev1.i.i.i167.3 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i167.3 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i167.3, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %list_del.exit170.3

list_del.exit170.3:                               ; preds = %if.end.i.i168.3, %while.body94.3.list_del.exit170.3_crit_edge
  %115 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 256 to ptr), ptr %108, align 4
  %prev.i169.3 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i169.3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169.3, align 4
  tail call void @kfree(ptr noundef %108) #7
  %117 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i163.not.3 = icmp eq ptr %118, %arrayidx.3
  br i1 %cmp.i163.not.3, label %list_del.exit170.3.for.inc.3_crit_edge, label %list_del.exit170.3.while.body94.3_crit_edge

list_del.exit170.3.while.body94.3_crit_edge:      ; preds = %list_del.exit170.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94.3

list_del.exit170.3.for.inc.3_crit_edge:           ; preds = %list_del.exit170.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %list_del.exit170.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 6
  %119 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %arrayidx.4, align 4
  %cmp.i163.not173.4 = icmp eq ptr %120, %arrayidx.4
  br i1 %cmp.i163.not173.4, label %for.inc.3.for.inc.4_crit_edge, label %for.inc.3.while.body94.4_crit_edge

for.inc.3.while.body94.4_crit_edge:               ; preds = %for.inc.3
  br label %while.body94.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

while.body94.4:                                   ; preds = %list_del.exit170.4.while.body94.4_crit_edge, %for.inc.3.while.body94.4_crit_edge
  %121 = phi ptr [ %131, %list_del.exit170.4.while.body94.4_crit_edge ], [ %120, %for.inc.3.while.body94.4_crit_edge ]
  %call.i.i165.4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %121) #7
  br i1 %call.i.i165.4, label %if.end.i.i168.4, label %while.body94.4.list_del.exit170.4_crit_edge

while.body94.4.list_del.exit170.4_crit_edge:      ; preds = %while.body94.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170.4

if.end.i.i168.4:                                  ; preds = %while.body94.4
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166.4 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i166.4 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i166.4, align 4
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %121, align 4
  %prev1.i.i.i167.4 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev1.i.i.i167.4 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev1.i.i.i167.4, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %125, ptr %123, align 4
  br label %list_del.exit170.4

list_del.exit170.4:                               ; preds = %if.end.i.i168.4, %while.body94.4.list_del.exit170.4_crit_edge
  %128 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 256 to ptr), ptr %121, align 4
  %prev.i169.4 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i169.4 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169.4, align 4
  tail call void @kfree(ptr noundef %121) #7
  %130 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %arrayidx.4, align 4
  %cmp.i163.not.4 = icmp eq ptr %131, %arrayidx.4
  br i1 %cmp.i163.not.4, label %list_del.exit170.4.for.inc.4_crit_edge, label %list_del.exit170.4.while.body94.4_crit_edge

list_del.exit170.4.while.body94.4_crit_edge:      ; preds = %list_del.exit170.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94.4

list_del.exit170.4.for.inc.4_crit_edge:           ; preds = %list_del.exit170.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %list_del.exit170.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.cec_fh, ptr %1, i32 0, i32 7, i32 7
  %132 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %arrayidx.5, align 4
  %cmp.i163.not173.5 = icmp eq ptr %133, %arrayidx.5
  br i1 %cmp.i163.not173.5, label %for.inc.4.for.inc.5_crit_edge, label %for.inc.4.while.body94.5_crit_edge

for.inc.4.while.body94.5_crit_edge:               ; preds = %for.inc.4
  br label %while.body94.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

while.body94.5:                                   ; preds = %list_del.exit170.5.while.body94.5_crit_edge, %for.inc.4.while.body94.5_crit_edge
  %134 = phi ptr [ %144, %list_del.exit170.5.while.body94.5_crit_edge ], [ %133, %for.inc.4.while.body94.5_crit_edge ]
  %call.i.i165.5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %134) #7
  br i1 %call.i.i165.5, label %if.end.i.i168.5, label %while.body94.5.list_del.exit170.5_crit_edge

while.body94.5.list_del.exit170.5_crit_edge:      ; preds = %while.body94.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit170.5

if.end.i.i168.5:                                  ; preds = %while.body94.5
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i166.5 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i166.5 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i166.5, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 4
  %prev1.i.i.i167.5 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i167.5 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i167.5, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %list_del.exit170.5

list_del.exit170.5:                               ; preds = %if.end.i.i168.5, %while.body94.5.list_del.exit170.5_crit_edge
  %141 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  %prev.i169.5 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i169.5 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169.5, align 4
  tail call void @kfree(ptr noundef %134) #7
  %143 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %arrayidx.5, align 4
  %cmp.i163.not.5 = icmp eq ptr %144, %arrayidx.5
  br i1 %cmp.i163.not.5, label %list_del.exit170.5.for.inc.5_crit_edge, label %list_del.exit170.5.while.body94.5_crit_edge

list_del.exit170.5.while.body94.5_crit_edge:      ; preds = %list_del.exit170.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body94.5

list_del.exit170.5.for.inc.5_crit_edge:           ; preds = %list_del.exit170.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %list_del.exit170.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %devnode.i = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 2
  tail call void @kfree(ptr noundef %1) #7
  tail call void @cec_put_device(ptr noundef %devnode.i) #7
  %145 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %private_data.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cec_s_log_addrs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_transmit_msg_fh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_monitor_all_cnt_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_monitor_all_cnt_dec(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_monitor_pin_cnt_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_monitor_pin_cnt_dec(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_queue_event_fh(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @cec_devnode_fops, !1, !"cec_devnode_fops", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/core/cec-api.c", i32 705, i32 30}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/cec/core/cec-api.c", i32 273, i32 10}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/cec/core/cec-api.c", i32 380, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cec_s_mode._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cec_s_mode._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/cec/core/cec-api.c", i32 389, i32 3}
!18 = !{ptr @cec_s_mode._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cec_s_mode._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/core/cec-api.c", i32 395, i32 3}
!22 = !{ptr @cec_s_mode._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cec_s_mode._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/core/cec-api.c", i32 401, i32 3}
!26 = !{ptr @cec_s_mode._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cec_s_mode._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/core/cec-api.c", i32 410, i32 3}
!30 = !{ptr @cec_s_mode._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cec_s_mode._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/cec/core/cec-api.c", i32 416, i32 3}
!34 = !{ptr @cec_s_mode._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cec_s_mode._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @cec_open.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/cec/core/cec-api.c", i32 577, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cec_open.__key.22, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/cec/core/cec-api.c", i32 578, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{i64 2153021162, i64 2153021187}
!54 = !{!"auto-init"}
!55 = !{i64 2153020481, i64 2153020506}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 5516036}
!58 = !{i64 5516233}
!59 = !{i64 2153001466}

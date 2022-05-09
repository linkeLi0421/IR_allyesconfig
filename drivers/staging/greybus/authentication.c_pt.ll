; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/authentication.c_pt.bc'
source_filename = "../drivers/staging/greybus/authentication.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gb_cap = type { ptr, ptr, %struct.kref, %struct.list_head, i8, %struct.mutex, %struct.cdev, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gb_cap_get_endpoint_uid_response = type { [8 x i8] }
%struct.cap_ioc_get_endpoint_uid = type { [8 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.cap_ioc_get_ims_certificate = type <{ i32, i32, i8, i32, [1600 x i8] }>
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_cap_get_ims_certificate_request = type { i32, i32 }
%struct.gb_cap_get_ims_certificate_response = type { i8, [0 x i8] }
%struct.cap_ioc_authenticate = type <{ i32, [8 x i8], [32 x i8], i8, [64 x i8], i32, [320 x i8] }>
%struct.gb_cap_authenticate_request = type { i32, [8 x i8], [32 x i8] }
%struct.gb_cap_authenticate_response = type { i8, [64 x i8], [0 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@gb_cap_connection_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cap->mutex\00", [20 x i8] zeroinitializer }, align 32
@list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @list_mutex, i64 52), ptr getelementptr (i8, ptr @list_mutex, i64 52) }, ptr @list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cap_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cap_list, ptr @cap_list }, [24 x i8] zeroinitializer }, align 32
@cap_minors_map = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@cap_dev_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cap_ioctl_unlocked, ptr null, ptr null, i32 0, ptr @cap_open, ptr null, ptr @cap_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cap_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gb-authenticate-%d\00", [45 x i8] zeroinitializer }, align 32
@cap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_authenticate\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list_mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cap_minors_map.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 54, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@cap_get_endpoint_uid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 93, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get endpoint uid (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cap_get_endpoint_uid\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/greybus/authentication.c\00", [55 x i8] zeroinitializer }, align 32
@cap_get_endpoint_uid._entry_ptr = internal global ptr @cap_get_endpoint_uid._entry, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cap_get_ims_certificate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 126, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get certificate (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cap_get_ims_certificate\00", [40 x i8] zeroinitializer }, align 32
@cap_get_ims_certificate._entry_ptr = internal global ptr @cap_get_ims_certificate._entry, section ".printk_index", align 4
@cap_authenticate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.13, i32 165, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to authenticate (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cap_authenticate\00", [47 x i8] zeroinitializer }, align 32
@cap_authenticate._entry_ptr = internal global ptr @cap_authenticate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2148025088, i64 3249619714, i64 3326952193]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 312, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"list_mutex\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"cap_list\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 42, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"cap_minors_map\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"cap_dev_num\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 40, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"cap_fops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 291, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"cap_class\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 39, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 340, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 405, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 43, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 41, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 53, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 93, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 174, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 126, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [44 x i8] c"../drivers/staging/greybus/authentication.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 165, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @cap_authenticate._entry, ptr @cap_authenticate._entry_ptr, ptr @cap_get_endpoint_uid._entry, ptr @cap_get_endpoint_uid._entry_ptr, ptr @cap_get_ims_certificate._entry, ptr @cap_get_ims_certificate._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_cap_connection_init.__key, ptr @.str, ptr @list_mutex, ptr @cap_list, ptr @cap_minors_map, ptr @cap_dev_num, ptr @cap_fops, ptr @cap_class, ptr @.str.1, ptr @cap_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_cap_connection_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_minors_map to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_dev_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_get_endpoint_uid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_get_ims_certificate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_authenticate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_cap_connection_init(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 284) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %connection4 = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %connection4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %connection, ptr %connection4, align 4
  %mutex = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @gb_cap_connection_init.__key) #7
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private.i, align 4
  %kref = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  %6 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %kref, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 3
  %7 = load ptr, ptr @cap_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @cap_list, ptr noundef %7) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cap_list, ptr %prev3.i.i, align 8
  store volatile ptr %node, ptr @cap_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #7
  %call5 = tail call i32 @gb_connection_enable(ptr noundef nonnull %connection) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %list_add.exit.err_list_del_crit_edge

list_add.exit.err_list_del_crit_edge:             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_list_del

if.end8:                                          ; preds = %list_add.exit
  %call9 = tail call i32 @ida_alloc_range(ptr noundef nonnull @cap_minors_map, i32 noundef 0, i32 noundef 254, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.err_connection_disable_crit_edge, label %if.end11

if.end8.err_connection_disable_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_connection_disable

if.end11:                                         ; preds = %if.end8
  %11 = load i32, ptr @cap_dev_num, align 4
  %shr = and i32 %11, -1048576
  %or = or i32 %shr, %call9
  %dev_num = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %dev_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %dev_num, align 8
  %cdev = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 6
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @cap_fops) #7
  %13 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_num, align 8
  %call14 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.err_remove_ida_crit_edge

if.end11.err_remove_ida_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_remove_ida

if.end17:                                         ; preds = %if.end11
  %15 = load ptr, ptr @cap_class, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_num, align 8
  %call20 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %15, ptr noundef %17, i32 noundef %19, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %call9) #7
  %class_device = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %class_device to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20, ptr %class_device, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call20 to i32
  tail call void @cdev_del(ptr noundef %cdev) #7
  br label %err_remove_ida

err_remove_ida:                                   ; preds = %if.then23, %if.end11.err_remove_ida_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end11.err_remove_ida_crit_edge ], [ %21, %if.then23 ]
  tail call void @ida_free(ptr noundef nonnull @cap_minors_map, i32 noundef %call9) #7
  br label %err_connection_disable

err_connection_disable:                           ; preds = %err_remove_ida, %if.end8.err_connection_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_remove_ida ], [ %call9, %if.end8.err_connection_disable_crit_edge ]
  tail call void @gb_connection_disable(ptr noundef nonnull %connection) #7
  br label %err_list_del

err_list_del:                                     ; preds = %err_connection_disable, %list_add.exit.err_list_del_crit_edge
  %ret.2 = phi i32 [ %call5, %list_add.exit.err_list_del_crit_edge ], [ %ret.1, %err_connection_disable ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #7
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i60, label %if.end.i.i61, label %err_list_del.list_del.exit_crit_edge

err_list_del.list_del.exit_crit_edge:             ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i61:                                     ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 8
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i61, %err_list_del.list_del.exit_crit_edge
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.gb_cap, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i ], [ %ret.2, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_cap_connection_exit(ptr noundef readonly %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = load ptr, ptr @cap_class, align 4
  %dev_num = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_num, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef %4) #7
  %cdev = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 6
  tail call void @cdev_del(ptr noundef %cdev) #7
  %5 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_num, align 4
  %and = and i32 %6, 1048575
  tail call void @ida_free(ptr noundef nonnull @cap_minors_map, i32 noundef %and) #7
  %mutex = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %disabled = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %disabled, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %connection3 = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connection3, align 4
  tail call void @gb_connection_disable(ptr noundef %9) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #7
  %kref.i = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @kfree(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @cap_init.__key) #7
  store ptr %call, ptr @cap_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @cap_dev_num, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_remove_class

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_remove_class:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @cap_class, align 4
  tail call void @class_destroy(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_remove_class, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %err_remove_class ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cap_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cap_dev_num, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 255) #7
  %1 = load ptr, ptr @cap_class, align 4
  tail call void @class_destroy(ptr noundef %1) #7
  tail call void @ida_destroy(ptr noundef nonnull @cap_minors_map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap_ioctl_unlocked(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %response.i.i = alloca %struct.gb_cap_get_endpoint_uid_response, align 8
  %endpoint_uid.i = alloca %struct.cap_ioc_get_endpoint_uid, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %connection = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle1, align 4
  %mutex = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %disabled = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3

do.end.i:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #11
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.end6_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %9 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endpoint_uid.i) #7
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then3.cap_ioctl.exit_crit_edge [
    i32 -2146942208, label %sw.bb.i
    i32 -968015103, label %sw.bb5.i
    i32 -1045347582, label %sw.bb18.i
  ]

if.then3.cap_ioctl.exit_crit_edge:                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cap_ioctl.exit

sw.bb.i:                                          ; preds = %if.then3
  %11 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connection, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response.i.i) #7
  %13 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %response.i.i, align 8
  %call.i.i100.i = call i32 @gb_operation_sync_timeout(ptr noundef %12, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i.i, i32 noundef 8, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i100.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %cap_get_endpoint_uid.exit.i

cap_get_endpoint_uid.exit.i:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %call.i.i100.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response.i.i) #7
  br label %cap_ioctl.exit

if.end.i:                                         ; preds = %sw.bb.i
  %16 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %response.i.i, align 8
  %18 = ptrtoint ptr %endpoint_uid.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %endpoint_uid.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response.i.i) #7
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end.i.cap_ioctl.exit_crit_edge, label %if.end.i.i.i

if.end.i.cap_ioctl.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cap_ioctl.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1226833920) #12, !srcloc !71
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cap_ioctl.exit_crit_edge

if.end.i.i.i.cap_ioctl.exit_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cap_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %endpoint_uid.i, i32 noundef 8) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %endpoint_uid.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %cap_ioctl.exit

sw.bb5.i:                                         ; preds = %if.then3
  %call6.i = tail call ptr @memdup_user(ptr noundef %9, i32 noundef 1613) #7
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call6.i to i32
  br label %cap_ioctl.exit

if.end10.i:                                       ; preds = %sw.bb5.i
  %21 = ptrtoint ptr %call6.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %call6.i, align 1
  %certificate_id.i = getelementptr inbounds %struct.cap_ioc_get_ims_certificate, ptr %call6.i, i32 0, i32 1
  %23 = ptrtoint ptr %certificate_id.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %certificate_id.i, align 1
  %certificate.i = getelementptr inbounds %struct.cap_ioc_get_ims_certificate, ptr %call6.i, i32 0, i32 4
  %cert_size.i = getelementptr inbounds %struct.cap_ioc_get_ims_certificate, ptr %call6.i, i32 0, i32 3
  %result_code.i = getelementptr inbounds %struct.cap_ioc_get_ims_certificate, ptr %call6.i, i32 0, i32 2
  %25 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %connection, align 4
  %call.i.i15 = tail call i32 @gb_operation_get_payload_size_max(ptr noundef %26) #7
  %call2.i.i = tail call ptr @gb_operation_create_flags(ptr noundef %26, i8 noundef zeroext 2, i32 noundef 8, i32 noundef %call.i.i15, i32 noundef 4, i32 noundef 3264) #7
  %tobool.not.i102.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i102.i, label %if.end10.i.if.end17.i_crit_edge, label %if.end.i104.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end.i104.i:                                    ; preds = %if.end10.i
  %request3.i.i = getelementptr inbounds %struct.gb_operation, ptr %call2.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %request3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request3.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.gb_message, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %payload.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %30, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %certificate_id.i.i = getelementptr inbounds %struct.gb_cap_get_ims_certificate_request, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %certificate_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %certificate_id.i.i, align 1
  %call.i.i103.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call2.i.i, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i103.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i, label %cap_get_ims_certificate.exit.i

cap_get_ims_certificate.exit.i:                   ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.17, i32 noundef %call.i.i103.i) #11
  tail call void @gb_operation_put(ptr noundef nonnull %call2.i.i) #7
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end.i104.i
  %response8.i.i = getelementptr inbounds %struct.gb_operation, ptr %call2.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %response8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %response8.i.i, align 4
  %payload9.i.i = getelementptr inbounds %struct.gb_message, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %payload9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %payload9.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %43 = ptrtoint ptr %result_code.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %result_code.i, align 1
  %44 = load ptr, ptr %response8.i.i, align 4
  %payload_size.i.i = getelementptr inbounds %struct.gb_message, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %payload_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %payload_size.i.i, align 4
  %sub.i.i = add i32 %46, -1
  %47 = ptrtoint ptr %cert_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i.i, ptr %cert_size.i, align 4
  %certificate11.i.i = getelementptr inbounds %struct.gb_cap_get_ims_certificate_response, ptr %40, i32 0, i32 1
  %48 = call ptr @memcpy(ptr %certificate.i, ptr %certificate11.i.i, i32 %sub.i.i)
  tail call void @gb_operation_put(ptr noundef nonnull %call2.i.i) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #7
  %call.i.i78.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i78.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.end.i.i81.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end.i.i81.i:                                   ; preds = %land.lhs.true.i
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 1613, i32 -1226833920) #12, !srcloc !71
  %asmresult.i.i79.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i79.i)
  %cmp.i6.i80.i = icmp eq i32 %asmresult.i.i79.i, 0
  br i1 %cmp.i6.i80.i, label %copy_to_user.exit86.i, label %if.end.i.i81.i.if.end17.i_crit_edge

if.end.i.i81.i.if.end17.i_crit_edge:              ; preds = %if.end.i.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

copy_to_user.exit86.i:                            ; preds = %if.end.i.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i82.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call6.i, i32 noundef 1613) #7
  %call.i12.i.i83.i = tail call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef %call6.i, i32 noundef 1613) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i83.i)
  %tobool15.not.i = icmp eq i32 %call.i12.i.i83.i, 0
  %spec.select134.i = select i1 %tobool15.not.i, i32 0, i32 -14
  br label %if.end17.i

if.end17.i:                                       ; preds = %copy_to_user.exit86.i, %if.end.i.i81.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %cap_get_ims_certificate.exit.i, %if.end10.i.if.end17.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i103.i, %cap_get_ims_certificate.exit.i ], [ -12, %if.end10.i.if.end17.i_crit_edge ], [ -14, %land.lhs.true.i.if.end17.i_crit_edge ], [ -14, %if.end.i.i81.i.if.end17.i_crit_edge ], [ %spec.select134.i, %copy_to_user.exit86.i ]
  tail call void @kfree(ptr noundef %call6.i) #7
  br label %cap_ioctl.exit

sw.bb18.i:                                        ; preds = %if.then3
  %call19.i = tail call ptr @memdup_user(ptr noundef %9, i32 noundef 433) #7
  %cmp.i106.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call19.i to i32
  br label %cap_ioctl.exit

if.end23.i:                                       ; preds = %sw.bb18.i
  %51 = ptrtoint ptr %call19.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %call19.i, align 1
  %result_code27.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 3
  %response.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 4
  %signature_size.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 5
  %signature.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 6
  %53 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %connection, align 4
  %call.i108.i = tail call i32 @gb_operation_get_payload_size_max(ptr noundef %54) #7
  %call2.i109.i = tail call ptr @gb_operation_create_flags(ptr noundef %54, i8 noundef zeroext 3, i32 noundef 44, i32 noundef %call.i108.i, i32 noundef 4, i32 noundef 3264) #7
  %tobool.not.i110.i = icmp eq ptr %call2.i109.i, null
  br i1 %tobool.not.i110.i, label %if.end23.i.if.end36.i_crit_edge, label %if.end.i114.i

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.end.i114.i:                                    ; preds = %if.end23.i
  %challenge.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 2
  %uid24.i = getelementptr inbounds %struct.cap_ioc_authenticate, ptr %call19.i, i32 0, i32 1
  %request3.i111.i = getelementptr inbounds %struct.gb_operation, ptr %call2.i109.i, i32 0, i32 1
  %55 = ptrtoint ptr %request3.i111.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %request3.i111.i, align 4
  %payload.i112.i = getelementptr inbounds %struct.gb_message, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %payload.i112.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %payload.i112.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %58, align 1
  %uid5.i.i = getelementptr inbounds %struct.gb_cap_authenticate_request, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %uid24.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %uid24.i, align 1
  %63 = ptrtoint ptr %uid5.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %uid5.i.i, align 1
  %challenge6.i.i = getelementptr inbounds %struct.gb_cap_authenticate_request, ptr %58, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %challenge6.i.i, ptr %challenge.i, i32 32)
  %call.i.i113.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call2.i109.i, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113.i)
  %tobool9.not.i.i = icmp eq i32 %call.i.i113.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true32.i, label %cap_authenticate.exit.i

cap_authenticate.exit.i:                          ; preds = %if.end.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.19, i32 noundef %call.i.i113.i) #11
  tail call void @gb_operation_put(ptr noundef nonnull %call2.i109.i) #7
  br label %if.end36.i

land.lhs.true32.i:                                ; preds = %if.end.i114.i
  %response12.i.i = getelementptr inbounds %struct.gb_operation, ptr %call2.i109.i, i32 0, i32 2
  %67 = ptrtoint ptr %response12.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %response12.i.i, align 4
  %payload13.i.i = getelementptr inbounds %struct.gb_message, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %payload13.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %payload13.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %73 = ptrtoint ptr %result_code27.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %result_code27.i, align 1
  %74 = load ptr, ptr %response12.i.i, align 4
  %payload_size.i116.i = getelementptr inbounds %struct.gb_message, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %payload_size.i116.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %payload_size.i116.i, align 4
  %sub.i117.i = add i32 %76, -65
  %77 = ptrtoint ptr %signature_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i117.i, ptr %signature_size.i, align 4
  %response15.i.i = getelementptr inbounds %struct.gb_cap_authenticate_response, ptr %70, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %response.i, ptr %response15.i.i, i32 64)
  %signature17.i.i = getelementptr inbounds %struct.gb_cap_authenticate_response, ptr %70, i32 0, i32 2
  %79 = call ptr @memcpy(ptr %signature.i, ptr %signature17.i.i, i32 %sub.i117.i)
  tail call void @gb_operation_put(ptr noundef nonnull %call2.i109.i) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #7
  %call.i.i91.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i91.i, label %land.lhs.true32.i.if.end36.i_crit_edge, label %if.end.i.i94.i

land.lhs.true32.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.end.i.i94.i:                                   ; preds = %land.lhs.true32.i
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 433, i32 -1226833920) #12, !srcloc !71
  %asmresult.i.i92.i = extractvalue { i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i92.i)
  %cmp.i6.i93.i = icmp eq i32 %asmresult.i.i92.i, 0
  br i1 %cmp.i6.i93.i, label %copy_to_user.exit99.i, label %if.end.i.i94.i.if.end36.i_crit_edge

if.end.i.i94.i.if.end36.i_crit_edge:              ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

copy_to_user.exit99.i:                            ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i95.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call19.i, i32 noundef 433) #7
  %call.i12.i.i96.i = tail call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef %call19.i, i32 noundef 433) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i96.i)
  %tobool34.not.i = icmp eq i32 %call.i12.i.i96.i, 0
  %spec.select135.i = select i1 %tobool34.not.i, i32 0, i32 -14
  br label %if.end36.i

if.end36.i:                                       ; preds = %copy_to_user.exit99.i, %if.end.i.i94.i.if.end36.i_crit_edge, %land.lhs.true32.i.if.end36.i_crit_edge, %cap_authenticate.exit.i, %if.end23.i.if.end36.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i113.i, %cap_authenticate.exit.i ], [ -12, %if.end23.i.if.end36.i_crit_edge ], [ -14, %land.lhs.true32.i.if.end36.i_crit_edge ], [ -14, %if.end.i.i94.i.if.end36.i_crit_edge ], [ %spec.select135.i, %copy_to_user.exit99.i ]
  tail call void @kfree(ptr noundef %call19.i) #7
  br label %cap_ioctl.exit

cap_ioctl.exit:                                   ; preds = %if.end36.i, %if.then21.i, %if.end17.i, %if.then8.i, %copy_to_user.exit.i, %if.end.i.i.i.cap_ioctl.exit_crit_edge, %if.end.i.cap_ioctl.exit_crit_edge, %cap_get_endpoint_uid.exit.i, %if.then3.cap_ioctl.exit_crit_edge
  %retval.0.i16 = phi i32 [ %50, %if.then21.i ], [ %ret.1.i, %if.end36.i ], [ %20, %if.then8.i ], [ %ret.0.i, %if.end17.i ], [ %call.i.i100.i, %cap_get_endpoint_uid.exit.i ], [ -25, %if.then3.cap_ioctl.exit_crit_edge ], [ -14, %if.end.i.cap_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i.cap_ioctl.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endpoint_uid.i) #7
  %call.i.i17 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %81 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store volatile i64 %call.i.i17, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #7
  br label %if.end6

if.end6:                                          ; preds = %cap_ioctl.exit, %do.end11.i.i.i.i.i, %do.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ -19, %entry.if.end6_crit_edge ], [ %retval.0.i16, %cap_ioctl.exit ], [ %call.i.i, %do.end.i.if.end6_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @cap_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cap_list
  br i1 %cmp.not.i, label %get_cap.exit.thread, label %for.body.i

get_cap.exit.thread:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cdev1.i = getelementptr i8, ptr %.pn.i, i32 104
  %cmp2.i = icmp eq ptr %cdev1.i, %2
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %cap.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %kref.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #7, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_cap.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_cap.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cap.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %get_cap.exit

get_cap.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_cap.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #7
  %tobool.not = icmp eq ptr %cap.0.le.i, null
  br i1 %tobool.not, label %get_cap.exit.cleanup_crit_edge, label %if.then

get_cap.exit.cleanup_crit_edge:                   ; preds = %get_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %get_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cap.0.le.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_cap.exit.cleanup_crit_edge, %get_cap.exit.thread
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %get_cap.exit.cleanup_crit_edge ], [ -19, %get_cap.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %kref.i = getelementptr inbounds %struct.gb_cap, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_cap.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.put_cap.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cap.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #7
  br label %put_cap.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @kfree(ptr noundef %1) #7
  br label %put_cap.exit

put_cap.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_cap.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_get_payload_size_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @gb_cap_connection_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/authentication.c", i32 312, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/authentication.c", i32 340, i32 14}
!5 = !{ptr @cap_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/staging/greybus/authentication.c", i32 405, i32 14}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cap_class, !9, !"cap_class", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/authentication.c", i32 39, i32 22}
!10 = !{ptr @cap_dev_num, !11, !"cap_dev_num", i1 false, i1 false}
!11 = !{!"../drivers/staging/greybus/authentication.c", i32 40, i32 14}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/greybus/authentication.c", i32 43, i32 8}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @list_mutex, !13, !"list_mutex", i1 false, i1 false}
!16 = !{ptr @cap_list, !17, !"cap_list", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/authentication.c", i32 42, i32 8}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/greybus/authentication.c", i32 41, i32 8}
!20 = !{ptr @cap_minors_map, !19, !"cap_minors_map", i1 false, i1 false}
!21 = !{ptr @cap_fops, !22, !"cap_fops", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/authentication.c", i32 291, i32 37}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gb_pm_runtime_get_sync._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/authentication.c", i32 93, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cap_get_endpoint_uid._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @cap_get_endpoint_uid._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/greybus/authentication.c", i32 126, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cap_get_ims_certificate._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cap_get_ims_certificate._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/greybus/authentication.c", i32 165, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cap_authenticate._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cap_authenticate._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148311783}
!64 = !{i64 2148226247, i64 2148226279, i64 2148226308, i64 2148226342, i64 2148226373, i64 2148226396}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2149880372}
!67 = !{i8 0, i8 2}
!68 = !{i64 2148221671}
!69 = !{i64 706494, i64 706519, i64 706541, i64 706557, i64 706569, i64 706589, i64 706613, i64 706629, i64 706641}
!70 = !{i64 2148221859}
!71 = !{i64 2153422888, i64 2153422913}
!72 = !{i64 2148223782, i64 2148223814, i64 2148223843, i64 2148223877, i64 2148223908, i64 2148223931}
!73 = !{!"branch_weights", i32 1, i32 2000}

; ModuleID = '/llk/IR_all_yes/drivers/input/evdev.c_pt.bc'
source_filename = "../drivers/input/evdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_value = type { i16, i16, i32 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.evdev = type { i32, %struct.input_handle, ptr, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.device, %struct.cdev, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timespec64 = type { i64, i32 }
%struct.evdev_client = type { i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, %struct.list_head, i32, i8, [32 x ptr], i32, [0 x %struct.input_event] }
%struct.input_event = type { i32, i32, i16, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mask = type { i32, i32, i64 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@evdev_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @evdev_event, ptr @evdev_events, ptr null, ptr null, ptr @evdev_connect, ptr @evdev_disconnect, ptr null, i8 1, i32 64, ptr @.str, ptr @evdev_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_evdev__248_1441_evdev_init6 = internal global ptr @evdev_init, section ".initcall6.init", align 4
@__exitcall_evdev_exit = internal global ptr @evdev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [45 x i8] c"evdev.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [50 x i8] c"evdev.description=Input driver event char devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [31 x i8] c"evdev.file=drivers/input/evdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [18 x i8] c"evdev.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"evdev\00", [26 x i8] zeroinitializer }, align 32
@evdev_ids = internal constant { [2 x %struct.input_device_id], [88 x i8] } { [2 x %struct.input_device_id] [%struct.input_device_id { i32 0, i16 0, i16 0, i16 0, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 1 }, %struct.input_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@evdev_events.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/input/evdev.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@evdev_events.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@evdev_get_mask_cnt.counts = internal constant { <{ [22 x i32], [10 x i32] }>, [32 x i8] } { <{ [22 x i32], [10 x i32] }> <{ [22 x i32] [i32 32, i32 768, i32 16, i32 64, i32 8, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i32 128], [10 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@evdev_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013evdev: failed to reserve new minor: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evdev_connect\00", [18 x i8] zeroinitializer }, align 32
@evdev_connect._entry_ptr = internal global ptr @evdev_connect._entry, section ".printk_index", align 4
@evdev_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&evdev->client_lock\00", [44 x i8] zeroinitializer }, align 32
@evdev_connect.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&evdev->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"event%d\00", [24 x i8] zeroinitializer }, align 32
@input_class = external dso_local global %struct.class, align 4
@evdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @evdev_read, ptr @evdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @evdev_poll, ptr @evdev_ioctl, ptr null, ptr null, i32 0, ptr @evdev_open, ptr null, ptr @evdev_release, ptr null, ptr @evdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@evdev_ungrab.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@evdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&client->wait\00", [18 x i8] zeroinitializer }, align 32
@evdev_open.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&client->buffer_lock\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1074021761, i64 1074021776, i64 1074021777, i64 1074021792, i64 1074283779, i64 1074283780, i64 1074808211, i64 1076380932, i64 2147763457, i64 2147763588, i64 2148025602, i64 2148025603, i64 2148025604, i64 2148550034, i64 2150122756]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [12 x i64] [i64 10, i64 32, i64 1073759616, i64 2147501318, i64 2147501319, i64 2147501320, i64 2147501321, i64 2147501322, i64 2147501336, i64 2147501337, i64 2147501338, i64 2147501339]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 17, i64 18, i64 21]
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"evdev_handler\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1420, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1427, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"evdev_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1413, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 300, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 305, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"counts\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 58, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1348, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1359, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1360, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1367, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"evdev_fops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1292, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 230, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 214, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 174, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 359, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 481, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [25 x i8] c"../drivers/input/evdev.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 483, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_evdev_exit, ptr @__initcall__kmod_evdev__248_1441_evdev_init6, ptr @evdev_connect._entry, ptr @evdev_connect._entry_ptr, ptr @evdev_exit, ptr @evdev_handler, ptr @.str, ptr @evdev_ids, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @evdev_get_mask_cnt.counts, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @evdev_connect.__key, ptr @.str.10, ptr @evdev_connect.__key.11, ptr @.str.12, ptr @.str.13, ptr @evdev_fops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @evdev_open.__key, ptr @.str.18, ptr @evdev_open.__key.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_ids to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_get_mask_cnt.counts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_connect.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evdev_open.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @evdev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_handler(ptr noundef nonnull @evdev_handler) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_register_handler(ptr noundef nonnull @evdev_handler) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @evdev_event(ptr nocapture noundef readonly %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  %vals = alloca [1 x %struct.input_value], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals) #11
  %0 = getelementptr inbounds %struct.input_value, ptr %vals, i32 0, i32 1
  %1 = getelementptr inbounds %struct.input_value, ptr %vals, i32 0, i32 2
  %conv = trunc i32 %type to i16
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %vals, align 4
  %conv3 = trunc i32 %code to i16
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv3, ptr %0, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %value, ptr %1, align 4
  call void @evdev_events(ptr noundef %handle, ptr noundef nonnull %vals, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @evdev_events(ptr nocapture noundef readonly %handle, ptr noundef %vals, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @input_get_timestamp(ptr noundef %3) #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %grab = getelementptr inbounds %struct.evdev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %grab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %grab, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @evdev_events.__warned, align 1
  br i1 %.b52, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evdev_events.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 300, ptr noundef nonnull @.str.2) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.body12, label %if.then11

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @evdev_pass_values(ptr noundef nonnull %9, ptr noundef %vals, i32 noundef %count, ptr noundef %call)
  br label %if.end39

do.body12:                                        ; preds = %do.end8
  %call13 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %do.body12.do.end23_crit_edge

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true15:                                  ; preds = %do.body12
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b5051 = load i1, ptr @evdev_events.__warned.3, align 1
  br i1 %.b5051, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evdev_events.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @.str.4) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %do.body12.do.end23_crit_edge
  %client_list = getelementptr inbounds %struct.evdev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn62 = load volatile ptr, ptr %client_list, align 4
  %cmp.not63 = icmp eq ptr %.pn62, %client_list
  br i1 %cmp.not63, label %do.end23.if.end39_crit_edge, label %do.end23.for.body_crit_edge

do.end23.for.body_crit_edge:                      ; preds = %do.end23
  br label %for.body

do.end23.if.end39_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end23.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn62, %do.end23.for.body_crit_edge ]
  %client.0 = getelementptr i8, ptr %.pn64, i32 -116
  tail call fastcc void @evdev_pass_values(ptr noundef %client.0, ptr noundef %vals, i32 noundef %count, ptr noundef %call)
  %11 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn64, align 4
  %cmp.not = icmp eq ptr %.pn, %client_list
  br i1 %cmp.not, label %for.body.if.end39_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %for.body.if.end39_crit_edge, %do.end23.if.end39_crit_edge, %if.then11
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i53, label %if.end39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.end39.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.end39
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.end39.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %12 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i60 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_get_new_minor(i32 noundef 64, i32 noundef 32, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1288) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_free_minor_crit_edge, label %if.end4

if.end.err_free_minor_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_minor

if.end4:                                          ; preds = %if.end
  %client_list = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client_list, ptr %prev.i, align 8
  %client_lock = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %client_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @evdev_connect.__key, i16 noundef signext 3) #11
  %mutex = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @evdev_connect.__key.11) #11
  %exist = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %exist to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %exist, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %call)
  %cmp12 = icmp ult i32 %call, 96
  %sub = add nsw i32 %call, -64
  %spec.select = select i1 %cmp12, i32 %sub, i32 %call
  %dev15 = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6
  %call16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev15, ptr noundef nonnull @.str.13, i32 noundef %spec.select) #11
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end4.input_get_device.exit_crit_edge, label %cond.true.i

if.end4.input_get_device.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_get_device.exit

cond.true.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %call.i = tail call ptr @get_device(ptr noundef %dev1.i) #11
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -544
  br label %input_get_device.exit

input_get_device.exit:                            ; preds = %cond.true.i, %if.end4.input_get_device.exit_crit_edge
  %cond.i = phi ptr [ %add.ptr.i, %cond.true.i ], [ null, %if.end4.input_get_device.exit_crit_edge ]
  %handle = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 1
  %dev18 = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond.i, ptr %dev18, align 8
  %init_name.i = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i81 = icmp eq ptr %6, null
  br i1 %tobool.not.i81, label %if.end.i, label %input_get_device.exit.dev_name.exit_crit_edge

input_get_device.exit.dev_name.exit_crit_edge:    ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %input_get_device.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %input_get_device.exit.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 4
  %handler23 = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %handler23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %handler, ptr %handler23, align 4
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %handle, align 4
  %or = or i32 %call, 13631488
  %devt = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6, i32 29
  %12 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %devt, align 8
  %class = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6, i32 33
  %13 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @input_class, ptr %class, align 4
  %dev27 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %parent = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev27, ptr %parent, align 8
  %release = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 6, i32 35
  %15 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @evdev_free, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev15) #11
  %call32 = tail call i32 @input_register_handle(ptr noundef %handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %dev_name.exit.err_free_evdev_crit_edge

dev_name.exit.err_free_evdev_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_evdev

if.end35:                                         ; preds = %dev_name.exit
  %cdev = getelementptr inbounds %struct.evdev, ptr %call7.i.i, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @evdev_fops) #11
  %call38 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end35.cleanup_crit_edge, label %err_cleanup_evdev

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_cleanup_evdev:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @evdev_cleanup(ptr noundef nonnull %call7.i.i)
  tail call void @input_unregister_handle(ptr noundef %handle) #11
  br label %err_free_evdev

err_free_evdev:                                   ; preds = %err_cleanup_evdev, %dev_name.exit.err_free_evdev_crit_edge
  %error.0 = phi i32 [ %call32, %dev_name.exit.err_free_evdev_crit_edge ], [ %call38, %err_cleanup_evdev ]
  tail call void @put_device(ptr noundef %dev15) #11
  br label %err_free_minor

err_free_minor:                                   ; preds = %err_free_evdev, %if.end.err_free_minor_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_evdev ], [ -12, %if.end.err_free_minor_crit_edge ]
  tail call void @input_free_minor(i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_minor, %if.end35.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %error.1, %err_free_minor ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @evdev_disconnect(ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %cdev = getelementptr inbounds %struct.evdev, ptr %1, i32 0, i32 7
  %dev = getelementptr inbounds %struct.evdev, ptr %1, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #11
  tail call fastcc void @evdev_cleanup(ptr noundef %1)
  %devt = getelementptr inbounds %struct.evdev, ptr %1, i32 0, i32 6, i32 29
  %2 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devt, align 8
  %and = and i32 %3, 1048575
  tail call void @input_free_minor(i32 noundef %and) #11
  tail call void @input_unregister_handle(ptr noundef %handle) #11
  tail call void @put_device(ptr noundef %dev) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_get_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @evdev_pass_values(ptr noundef %client, ptr noundef readonly %vals, i32 noundef %count, ptr nocapture noundef readonly %ev_time) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %revoked = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %clk_type = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 8
  %2 = ptrtoint ptr %clk_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_type, align 4
  %arrayidx = getelementptr i64, ptr %ev_time, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %5) #11
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %6)
  %ts.sroa.0.0.copyload32 = load i64, ptr %tmp, align 8
  %ts.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %7 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %ts.sroa.5.0.copyload33 = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %conv = trunc i64 %ts.sroa.0.0.copyload32 to i32
  %div = sdiv i32 %ts.sroa.5.0.copyload33, 1000
  %buffer_lock = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %buffer_lock) #11
  %add.ptr = getelementptr %struct.input_value, ptr %vals, i32 %count
  %cmp.not64 = icmp eq ptr %add.ptr, %vals
  br i1 %cmp.not64, label %cleanup.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %evmasks.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 10
  %packet_head = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 2
  %bufsize.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 11
  %tail.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 1
  %fasync.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %wakeup.0.off066 = phi i1 [ false, %for.body.lr.ph ], [ %wakeup.2.off0, %for.inc.for.body_crit_edge ]
  %v.065 = phi ptr [ %vals, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %v.065 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %v.065, align 4
  %conv2 = zext i16 %9 to i32
  %code = getelementptr inbounds %struct.input_value, ptr %v.065, i32 0, i32 1
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %code, align 2
  %conv3 = zext i16 %11 to i32
  %12 = add nsw i32 %conv2, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %12)
  %13 = icmp ult i32 %12, -31
  br i1 %13, label %for.body.if.end5_crit_edge, label %if.end.i

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end.i:                                         ; preds = %for.body
  %14 = ptrtoint ptr %evmasks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %evmasks.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.evdev_get_mask_cnt.exit.i_crit_edge, label %land.lhs.true.i

if.end.i.evdev_get_mask_cnt.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_get_mask_cnt.exit.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %div3.i.i = lshr i32 %conv2, 5
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = shl nuw i32 1, %conv2
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.evdev_get_mask_cnt.exit.i_crit_edge

land.lhs.true.i.evdev_get_mask_cnt.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_get_mask_cnt.exit.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

evdev_get_mask_cnt.exit.i:                        ; preds = %land.lhs.true.i.evdev_get_mask_cnt.exit.i_crit_edge, %if.end.i.evdev_get_mask_cnt.exit.i_crit_edge
  %arrayidx.i34.i = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %conv2
  %20 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv3)
  %cmp8.not.i = icmp ugt i32 %21, %conv3
  br i1 %cmp8.not.i, label %if.end10.i, label %evdev_get_mask_cnt.exit.i.if.end5_crit_edge

evdev_get_mask_cnt.exit.i.if.end5_crit_edge:      ; preds = %evdev_get_mask_cnt.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end10.i:                                       ; preds = %evdev_get_mask_cnt.exit.i
  %arrayidx12.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 10, i32 %conv2
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %23, null
  br i1 %tobool13.not.i, label %if.end10.i.if.end5_crit_edge, label %__evdev_is_filtered.exit

if.end10.i.if.end5_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

__evdev_is_filtered.exit:                         ; preds = %if.end10.i
  %div3.i29.i = lshr i32 %conv3, 5
  %arrayidx.i30.i = getelementptr i32, ptr %23, i32 %div3.i29.i
  %24 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i30.i, align 4
  %and.i31.i = and i32 %conv3, 31
  %26 = shl nuw i32 1, %and.i31.i
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not.i = icmp eq i32 %27, 0
  br i1 %tobool15.not.i, label %__evdev_is_filtered.exit.for.inc_crit_edge, label %__evdev_is_filtered.exit.if.end5_crit_edge

__evdev_is_filtered.exit.if.end5_crit_edge:       ; preds = %__evdev_is_filtered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

__evdev_is_filtered.exit.for.inc_crit_edge:       ; preds = %__evdev_is_filtered.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end5:                                          ; preds = %__evdev_is_filtered.exit.if.end5_crit_edge, %if.end10.i.if.end5_crit_edge, %evdev_get_mask_cnt.exit.i.if.end5_crit_edge, %for.body.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp8 = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp12 = icmp eq i16 %11, 0
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end5
  %28 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packet_head, align 4
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp15 = icmp eq i32 %29, %31
  br i1 %cmp15, label %if.then14.for.inc_crit_edge, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %wakeup.1.off0 = phi i1 [ %wakeup.0.off066, %if.end5.if.end19_crit_edge ], [ true, %if.then14.if.end19_crit_edge ]
  %value = getelementptr inbounds %struct.input_value, ptr %v.065, i32 0, i32 2
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 4
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %client, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %client, align 4
  %arrayidx.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %arrayidx.i, align 4
  %event.sroa.6.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %37 = ptrtoint ptr %event.sroa.6.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %event.sroa.6.0.arrayidx.i.sroa_idx, align 4
  %event.sroa.9.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %38 = ptrtoint ptr %event.sroa.9.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %9, ptr %event.sroa.9.0.arrayidx.i.sroa_idx, align 4
  %event.sroa.12.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %39 = ptrtoint ptr %event.sroa.12.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %11, ptr %event.sroa.12.0.arrayidx.i.sroa_idx, align 2
  %event.sroa.15.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %40 = ptrtoint ptr %event.sroa.15.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %33, ptr %event.sroa.15.0.arrayidx.i.sroa_idx, align 4
  %41 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bufsize.i, align 4
  %sub.i = add i32 %42, -1
  %43 = load i32, ptr %client, align 4
  %and.i = and i32 %43, %sub.i
  store i32 %and.i, ptr %client, align 4
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %45)
  %cmp.i = icmp eq i32 %and.i, %45
  br i1 %cmp.i, label %if.then.i, label %if.end19.if.end.i58_crit_edge, !prof !77

if.end19.if.end.i58_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i58

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %sub5.i = add i32 %and.i, -2
  %and8.i = and i32 %sub5.i, %sub.i
  %46 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and8.i, ptr %tail.i, align 4
  %arrayidx12.i57 = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %and8.i
  %47 = ptrtoint ptr %arrayidx12.i57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv, ptr %arrayidx12.i57, align 4
  %.compoundliteral.sroa.2.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx12.i57, i32 4
  %48 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %.compoundliteral.sroa.2.0.arrayidx12.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx12.i57, i32 8
  %49 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %.compoundliteral.sroa.3.0.arrayidx12.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx12.i57, i32 10
  %50 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 3, ptr %.compoundliteral.sroa.4.0.arrayidx12.sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0.arrayidx12.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx12.i57, i32 12
  %51 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx12.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %.compoundliteral.sroa.5.0.arrayidx12.sroa_idx.i, align 4
  %52 = load i32, ptr %tail.i, align 4
  %53 = ptrtoint ptr %packet_head to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %packet_head, align 4
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then.i, %if.end19.if.end.i58_crit_edge
  br i1 %or.cond, label %if.then23.i, label %if.end.i58.for.inc_crit_edge

if.end.i58.for.inc_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23.i:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %client, align 4
  %56 = ptrtoint ptr %packet_head to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %packet_head, align 4
  call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then23.i, %if.end.i58.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %__evdev_is_filtered.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %wakeup.2.off0 = phi i1 [ %wakeup.0.off066, %__evdev_is_filtered.exit.for.inc_crit_edge ], [ %wakeup.0.off066, %if.then14.for.inc_crit_edge ], [ %wakeup.1.off0, %if.end.i58.for.inc_crit_edge ], [ %wakeup.1.off0, %if.then23.i ], [ %wakeup.0.off066, %land.lhs.true.i.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.input_value, ptr %v.065, i32 1
  %cmp.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %buffer_lock) #11
  br i1 %wakeup.2.off0, label %if.then27, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %wait = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 4
  call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 325 to ptr)) #11
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %buffer_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then27, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_new_minor(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @evdev_free(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 -176
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.input_put_device.exit_crit_edge, label %if.then.i

entry.input_put_device.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_put_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i) #11
  br label %input_put_device.exit

input_put_device.exit:                            ; preds = %if.then.i, %entry.input_put_device.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -192
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @evdev_cleanup(ptr noundef %evdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.evdev, ptr %evdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %exist.i = getelementptr inbounds %struct.evdev, ptr %evdev, i32 0, i32 8
  %0 = ptrtoint ptr %exist.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %exist.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  %client_lock.i = getelementptr inbounds %struct.evdev, ptr %evdev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %client_list.i = getelementptr inbounds %struct.evdev, ptr %evdev, i32 0, i32 3
  %1 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn14.i = load ptr, ptr %client_list.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %client_list.i
  br i1 %cmp.not15.i, label %entry.evdev_hangup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.evdev_hangup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_hangup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn14.i, %entry.for.body.i_crit_edge ]
  %fasync.i = getelementptr i8, ptr %.pn16.i, i32 -8
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 6) #11
  %wait.i = getelementptr i8, ptr %.pn16.i, i32 -60
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #11
  %2 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.evdev_hangup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.evdev_hangup.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_hangup.exit

evdev_hangup.exit:                                ; preds = %for.body.i.evdev_hangup.exit_crit_edge, %entry.evdev_hangup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  %3 = ptrtoint ptr %evdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %evdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %evdev_hangup.exit.if.end_crit_edge, label %if.then

evdev_hangup.exit.if.end_crit_edge:               ; preds = %evdev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %evdev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %handle1 = getelementptr inbounds %struct.evdev, ptr %evdev, i32 0, i32 1
  %call = tail call i32 @input_flush_device(ptr noundef %handle1, ptr noundef null) #11
  tail call void @input_close_device(ptr noundef %handle1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %evdev_hangup.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %event = alloca %struct.input_event, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %evdev1 = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %evdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evdev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp2 = icmp ult i32 %count, 16
  %or.cond = xor i1 %cmp.not, %cmp2
  %4 = call ptr @memset(ptr %event, i32 255, i32 16)
  br i1 %or.cond, label %entry.cleanup69_crit_edge, label %for.cond.preheader

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

for.cond.preheader:                               ; preds = %entry
  %exist = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not133 = icmp eq i8 %6, 0
  br i1 %tobool.not133, label %for.cond.preheader.cleanup69_crit_edge, label %lor.lhs.false.lr.ph

for.cond.preheader.cleanup69_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

lor.lhs.false.lr.ph:                              ; preds = %for.cond.preheader
  %revoked = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 9
  %packet_head = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 2
  %tail = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %buffer_lock.i = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 3
  %bufsize.i = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 11
  %wait = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end67.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %7 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup69_crit_edge

lor.lhs.false.cleanup69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

if.end5:                                          ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %packet_head, align 4
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6 = icmp eq i32 %10, %12
  br i1 %cmp6, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end5
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %brmerge = or i1 %cmp.not, %tobool8.not
  br i1 %brmerge, label %cleanup69.loopexit113.split.loop.exit131, label %land.lhs.true7.while.cond.preheader_crit_edge

land.lhs.true7.while.cond.preheader_crit_edge:    ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

if.end10:                                         ; preds = %if.end5
  br i1 %cmp.not, label %if.end10.cleanup69_crit_edge, label %if.end10.while.cond.preheader_crit_edge

if.end10.while.cond.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

if.end10.cleanup69_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

while.cond.preheader:                             ; preds = %if.end10.while.cond.preheader_crit_edge, %land.lhs.true7.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %read.1 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %add = add i32 %read.1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp15.not = icmp ugt i32 %add, %count
  br i1 %cmp15.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @_raw_spin_lock_irq(ptr noundef %buffer_lock.i) #11
  %15 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %packet_head, align 4
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i.not = icmp eq i32 %16, %18
  br i1 %cmp.i.not, label %evdev_fetch_next_event.exit.thread, label %while.body

evdev_fetch_next_event.exit.thread:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i) #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc.i = add i32 %18, 1
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i, ptr %tail, align 4
  %arrayidx.i = getelementptr %struct.evdev_client, ptr %1, i32 0, i32 12, i32 %18
  %20 = call ptr @memcpy(ptr %event, ptr %arrayidx.i, i32 16)
  %21 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufsize.i, align 4
  %sub.i = add i32 %22, -1
  %23 = load i32, ptr %tail, align 4
  %and.i = and i32 %23, %sub.i
  store i32 %and.i, ptr %tail, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i) #11
  %add.ptr = getelementptr i8, ptr %buffer, i32 %read.1
  %call18 = call i32 @input_event_to_user(ptr noundef %add.ptr, ptr noundef nonnull %event) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup69_crit_edge

while.body.cleanup69_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %evdev_fetch_next_event.exit.thread, %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.1)
  %tobool24.not = icmp eq i32 %read.1, 0
  br i1 %tobool24.not, label %if.end26, label %while.end.cleanup69_crit_edge

while.end.cleanup69_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

if.end26:                                         ; preds = %while.end
  %24 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_flags, align 4
  %and28 = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end26.if.end67thread-pre-split_crit_edge

if.end26.if.end67thread-pre-split_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67thread-pre-split

if.then30:                                        ; preds = %if.end26
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 600) #11
  %26 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %packet_head, align 4
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp36.not = icmp eq i32 %27, %29
  br i1 %cmp36.not, label %lor.lhs.false37, label %if.then30.if.end67thread-pre-split_crit_edge

if.then30.if.end67thread-pre-split_crit_edge:     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67thread-pre-split

lor.lhs.false37:                                  ; preds = %if.then30
  %30 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool39.not = icmp eq i8 %31, 0
  br i1 %tobool39.not, label %lor.lhs.false37.cleanup69_crit_edge, label %lor.lhs.false40

lor.lhs.false37.cleanup69_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %32 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  br i1 %tobool42.not, label %if.then43, label %lor.lhs.false40.if.end67_crit_edge

lor.lhs.false40.if.end67_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then43:                                        ; preds = %lor.lhs.false40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call46120 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %35 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %packet_head, align 4
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp49.not121 = icmp eq i32 %36, %38
  br i1 %cmp49.not121, label %if.then43.lor.lhs.false50_crit_edge, label %if.then43.if.end62.thread110_crit_edge

if.then43.if.end62.thread110_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.thread110

if.then43.lor.lhs.false50_crit_edge:              ; preds = %if.then43
  br label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %cleanup.lor.lhs.false50_crit_edge, %if.then43.lor.lhs.false50_crit_edge
  %call46122 = phi i32 [ %call46, %cleanup.lor.lhs.false50_crit_edge ], [ %call46120, %if.then43.lor.lhs.false50_crit_edge ]
  %39 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool52.not = icmp eq i8 %40, 0
  br i1 %tobool52.not, label %lor.lhs.false50.if.end62.thread110_crit_edge, label %lor.lhs.false53

lor.lhs.false50.if.end62.thread110_crit_edge:     ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.thread110

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %41 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool55.not = icmp eq i8 %42, 0
  br i1 %tobool55.not, label %if.end57, label %lor.lhs.false53.if.end62.thread110_crit_edge

lor.lhs.false53.if.end62.thread110_crit_edge:     ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.thread110

if.end57:                                         ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46122)
  %tobool58.not = icmp eq i32 %call46122, 0
  br i1 %tobool58.not, label %cleanup, label %if.end62

cleanup:                                          ; preds = %if.end57
  call void @schedule() #11
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %43 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %packet_head, align 4
  %45 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tail, align 4
  %cmp49.not = icmp eq i32 %44, %46
  br i1 %cmp49.not, label %cleanup.lor.lhs.false50_crit_edge, label %cleanup.if.end62.thread110_crit_edge

cleanup.if.end62.thread110_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.thread110

cleanup.lor.lhs.false50_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false50

if.end62.thread110:                               ; preds = %cleanup.if.end62.thread110_crit_edge, %lor.lhs.false53.if.end62.thread110_crit_edge, %lor.lhs.false50.if.end62.thread110_crit_edge, %if.then43.if.end62.thread110_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end67thread-pre-split

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup69

if.end67thread-pre-split:                         ; preds = %if.end62.thread110, %if.then30.if.end67thread-pre-split_crit_edge, %if.end26.if.end67thread-pre-split_crit_edge
  %47 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr = load i8, ptr %exist, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end67thread-pre-split, %lor.lhs.false40.if.end67_crit_edge
  %48 = phi i8 [ %.pr, %if.end67thread-pre-split ], [ 1, %lor.lhs.false40.if.end67_crit_edge ]
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %if.end67.cleanup69_crit_edge, label %if.end67.lor.lhs.false_crit_edge

if.end67.lor.lhs.false_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end67.cleanup69_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

cleanup69.loopexit113.split.loop.exit131:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.le = select i1 %tobool8.not, i32 -11, i32 0
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup69.loopexit113.split.loop.exit131, %if.end67.cleanup69_crit_edge, %if.end62, %lor.lhs.false37.cleanup69_crit_edge, %while.end.cleanup69_crit_edge, %while.body.cleanup69_crit_edge, %if.end10.cleanup69_crit_edge, %lor.lhs.false.cleanup69_crit_edge, %for.cond.preheader.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ %call46122, %if.end62 ], [ -22, %entry.cleanup69_crit_edge ], [ %.mux.le, %cleanup69.loopexit113.split.loop.exit131 ], [ -19, %for.cond.preheader.cleanup69_crit_edge ], [ -14, %while.body.cleanup69_crit_edge ], [ -19, %lor.lhs.false37.cleanup69_crit_edge ], [ -19, %lor.lhs.false.cleanup69_crit_edge ], [ -19, %if.end67.cleanup69_crit_edge ], [ %read.1, %while.end.cleanup69_crit_edge ], [ 0, %if.end10.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %event = alloca %struct.input_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %evdev1 = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %evdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evdev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %event) #11
  %4 = getelementptr inbounds %struct.input_event, ptr %event, i32 0, i32 2
  %5 = getelementptr inbounds %struct.input_event, ptr %event, i32 0, i32 3
  %6 = getelementptr inbounds %struct.input_event, ptr %event, i32 0, i32 4
  %7 = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %8 = icmp ult i32 %7, 15
  %9 = call ptr @memset(ptr %event, i32 255, i32 16)
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 5
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %exist = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %lor.lhs.false

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.end6
  %revoked = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %while.cond.preheader, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp12.not36 = icmp ult i32 %count, 16
  br i1 %cmp12.not36, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %handle = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %add38 = phi i32 [ 16, %while.body.lr.ph ], [ %add, %if.end16.while.body_crit_edge ]
  %retval2.037 = phi i32 [ 0, %while.body.lr.ph ], [ %add38, %if.end16.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buffer, i32 %retval2.037
  %call13 = call i32 @input_event_from_user(ptr noundef %add.ptr, ptr noundef nonnull %event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %while.body
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %4, align 4
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %5, align 2
  %conv19 = zext i16 %17 to i32
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  call void @input_inject_event(ptr noundef %handle, i32 noundef %conv, i32 noundef %conv19, i32 noundef %19) #11
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 532, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %add = add i32 %add38, 16
  %cmp12.not = icmp ugt i32 %add, %count
  br i1 %cmp12.not, label %if.end16.out_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end16.out_crit_edge, %while.body.out_crit_edge, %while.cond.preheader.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end6.out_crit_edge
  %retval2.1 = phi i32 [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end6.out_crit_edge ], [ 0, %while.cond.preheader.out_crit_edge ], [ %add38, %if.end16.out_crit_edge ], [ -14, %while.body.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %out ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %evdev1 = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %evdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evdev1, align 4
  %wait2 = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait2, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait2, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %exist = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %poll_wait.exit.if.else_crit_edge, label %land.lhs.true

poll_wait.exit.if.else_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %poll_wait.exit
  %revoked = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %poll_wait.exit.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %mask.0 = phi i32 [ 24, %if.else ], [ 260, %land.lhs.true.if.end_crit_edge ]
  %packet_head = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %packet_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_head, align 4
  %tail = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  %or = or i32 %mask.0, 65
  %spec.select = select i1 %cmp.not, i32 %mask.0, i32 %or
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %ke.i234.i.i = alloca %struct.input_keymap_entry, align 4
  %ke.i214.i.i = alloca %struct.input_keymap_entry, align 4
  %ke.i188.i.i = alloca %struct.input_keymap_entry, align 4
  %ke.i.i.i = alloca %struct.input_keymap_entry, align 4
  %ts.i.i.i.i = alloca %struct.timespec64, align 8
  %abs.i.i = alloca %struct.input_absinfo, align 4
  %mask.i.i = alloca %struct.input_mask, align 8
  %effect.i.i = alloca %struct.ff_effect, align 4
  %i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %evdev1.i = getelementptr inbounds %struct.evdev_client, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %evdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %evdev1.i, align 4
  %mutex.i = getelementptr inbounds %struct.evdev, ptr %4, i32 0, i32 5
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.evdev_ioctl_handler.exit_crit_edge

entry.evdev_ioctl_handler.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_ioctl_handler.exit

if.end.i:                                         ; preds = %entry
  %exist.i = getelementptr inbounds %struct.evdev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exist.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp eq i8 %6, 0
  br i1 %tobool3.not.i, label %if.end.i.out.i_crit_edge, label %lor.lhs.false.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %revoked.i = getelementptr inbounds %struct.evdev_client, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %revoked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revoked.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %lor.lhs.false.i.out.i_crit_edge

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %evdev1.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %evdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %evdev1.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 1
  %dev2.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %abs.i.i) #11
  %15 = getelementptr inbounds %struct.input_absinfo, ptr %abs.i.i, i32 0, i32 5
  %16 = call ptr @memset(ptr %abs.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #11
  %17 = getelementptr inbounds %struct.input_mask, ptr %mask.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.input_mask, ptr %mask.i.i, i32 0, i32 2
  %19 = call ptr @memset(ptr %mask.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %effect.i.i) #11
  %20 = call ptr @memset(ptr %effect.i.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #11
  %21 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %i.i.i, align 4, !annotation !78
  %22 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog.i.i [
    i32 -2147203839, label %sw.bb.i.i
    i32 -2146941694, label %sw.bb4.i.i
    i32 -2146941693, label %sw.bb6.i.i
    i32 1074283779, label %sw.bb49.i.i
    i32 1074021761, label %sw.bb87.i.i
    i32 -2147203708, label %sw.bb89.i.i
    i32 1074021776, label %sw.bb112.i.i
    i32 1074021777, label %sw.bb117.i.i
    i32 -2146417262, label %if.end8.i.i32.i.i
    i32 1074808211, label %if.end8.i.i42.i.i
    i32 1074021792, label %if.end8.i.i65.i.i
    i32 -2146941692, label %sw.bb147.i.i
    i32 1074283780, label %sw.bb149.i.i
    i32 -2144844540, label %sw.bb151.i.i
    i32 1076380932, label %sw.bb153.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1047) #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !79
  %and.i.i.i = and i32 %25, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 65537, i32 -1226833921) #11, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  br label %evdev_do_ioctl.exit.i

sw.bb4.i.i:                                       ; preds = %if.end6.i
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %sw.bb4.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end.i.i.i.i

sw.bb4.i.i.evdev_do_ioctl.exit.i_crit_edge:       ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end.i.i.i.i:                                   ; preds = %sw.bb4.i.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #16, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end.i.i.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %id.i.i, i32 noundef 8) #11
  %call.i12.i.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %id.i.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  %spec.select272.i.i = select i1 %tobool.not.i.i, i32 0, i32 -14
  br label %evdev_do_ioctl.exit.i

sw.bb6.i.i:                                       ; preds = %if.end6.i
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  %28 = ptrtoint ptr %evbit.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %evbit.i.i, align 4
  %30 = and i32 %29, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool8.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool8.not.i.i, label %sw.bb6.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end10.i.i

sw.bb6.i.i.evdev_do_ioctl.exit.i_crit_edge:       ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end10.i.i:                                     ; preds = %sw.bb6.i.i
  %rep.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 24
  %31 = ptrtoint ptr %rep.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rep.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1057) #11
  %33 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i5.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i5.i.i to ptr
  %cpu_domain.i.i6.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i6.i.i) #5, !srcloc !79
  %and.i7.i.i = and i32 %35, -13
  %or.i8.i.i = or i32 %and.i7.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i8.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %32, i32 -1226833921) #11, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %if.end10.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end10.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end28.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 1
  %arrayidx34.i.i = getelementptr %struct.input_dev, ptr %14, i32 0, i32 24, i32 1
  %37 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx34.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1059) #11
  %39 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i9.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %cpu_domain.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i10.i.i) #5, !srcloc !79
  %and.i11.i.i = and i32 %41, -13
  %or.i12.i.i = or i32 %and.i11.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i12.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i.i, i32 %38, i32 -1226833921) #11, !srcloc !85
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not.i.i = icmp eq i32 %42, 0
  %.1.i.i = select i1 %tobool46.not.i.i, i32 0, i32 -14
  br label %evdev_do_ioctl.exit.i

sw.bb49.i.i:                                      ; preds = %if.end6.i
  %evbit50.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  %43 = ptrtoint ptr %evbit50.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %evbit50.i.i, align 4
  %45 = and i32 %44, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool53.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool53.not.i.i, label %sw.bb49.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end55.i.i

sw.bb49.i.i.evdev_do_ioctl.exit.i_crit_edge:      ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end55.i.i:                                     ; preds = %sw.bb49.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1066) #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i15.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i15.i.i to ptr
  %cpu_domain.i.i16.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i16.i.i) #5, !srcloc !79
  %and.i17.i.i = and i32 %48, -13
  %or.i18.i.i = or i32 %and.i17.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i18.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %49 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #11, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %49, 0
  %asmresult64.i.i = extractvalue { i32, i32 } %49, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool66.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end68.i.i, label %if.end55.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end55.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end68.i.i:                                     ; preds = %if.end55.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1068) #11
  %add.ptr72.i.i = getelementptr i32, ptr %0, i32 1
  %50 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i19.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i19.i.i to ptr
  %cpu_domain.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i20.i.i) #5, !srcloc !79
  %and.i21.i.i = and i32 %52, -13
  %or.i22.i.i = or i32 %and.i21.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i22.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %53 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr72.i.i, i32 -1226833921) #11, !srcloc !87
  %asmresult79.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult79.i.i)
  %tobool82.not.i.i = icmp eq i32 %asmresult79.i.i, 0
  br i1 %tobool82.not.i.i, label %if.end84.i.i, label %if.end68.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end68.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end84.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult80.i.i = extractvalue { i32, i32 } %53, 1
  tail call void @input_inject_event(ptr noundef %handle.i.i, i32 noundef 20, i32 noundef 0, i32 noundef %asmresult64.i.i) #11
  tail call void @input_inject_event(ptr noundef %handle.i.i, i32 noundef 20, i32 noundef 1, i32 noundef %asmresult80.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb87.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call88.i.i = tail call i32 @input_ff_erase(ptr noundef %14, i32 noundef %arg, ptr noundef %file) #11
  br label %evdev_do_ioctl.exit.i

sw.bb89.i.i:                                      ; preds = %if.end6.i
  %evbit90.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  %54 = ptrtoint ptr %evbit90.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %evbit90.i.i, align 4
  %56 = and i32 %55, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool93.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool93.not.i.i, label %sw.bb89.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

sw.bb89.i.i.cond.end.i.i_crit_edge:               ; preds = %sw.bb89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %sw.bb89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ff.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 20
  %57 = ptrtoint ptr %ff.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ff.i.i, align 8
  %max_effects.i.i = getelementptr inbounds %struct.ff_device, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %max_effects.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_effects.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %sw.bb89.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %60, %cond.true.i.i ], [ 0, %sw.bb89.i.i.cond.end.i.i_crit_edge ]
  %61 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond.i.i, ptr %i.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1082) #11
  %62 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i25.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i25.i.i to ptr
  %cpu_domain.i.i26.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i26.i.i) #5, !srcloc !79
  %and.i27.i.i = and i32 %64, -13
  %or.i28.i.i = or i32 %and.i27.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i28.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %65 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %cond.i.i, i32 -1226833921) #11, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool109.not.i.i = icmp eq i32 %65, 0
  %.2.i.i = select i1 %tobool109.not.i.i, i32 0, i32 -14
  br label %evdev_do_ioctl.exit.i

sw.bb112.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool113.not.i.i = icmp eq i32 %arg, 0
  br i1 %tobool113.not.i.i, label %if.else.i.i, label %if.then114.i.i

if.then114.i.i:                                   ; preds = %sw.bb112.i.i
  %grab.i.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 2
  %66 = ptrtoint ptr %grab.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %grab.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then114.i.i.evdev_do_ioctl.exit.i_crit_edge

if.then114.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then114.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end.i.i.i:                                     ; preds = %if.then114.i.i
  %call.i.i.i = tail call i32 @input_grab_device(ptr noundef %handle.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i, label %if.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  %68 = ptrtoint ptr %grab.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %10, ptr %grab.i.i.i, align 8
  br label %evdev_do_ioctl.exit.i

if.else.i.i:                                      ; preds = %sw.bb112.i.i
  %dep_map.i.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 5, i32 5
  %call.i.i130.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130.i.i)
  %tobool.not.i131.i.i = icmp eq i32 %call.i.i130.i.i, 0
  br i1 %tobool.not.i131.i.i, label %land.lhs.true.i.i.i, label %if.else.i.i.do.end.i.i.i_crit_edge

if.else.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b52.i.i.i = load i1, ptr @evdev_ungrab.__warned, align 1
  br i1 %.b52.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i132.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

if.then.i132.i.i:                                 ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evdev_ungrab.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 360, ptr noundef nonnull @.str.17) #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i132.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %if.else.i.i.do.end.i.i.i_crit_edge
  %grab5.i.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 2
  %69 = ptrtoint ptr %grab5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %grab5.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %70, %10
  br i1 %cmp.not.i.i.i, label %do.body15.i.i.i, label %do.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge

do.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

do.body15.i.i.i:                                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %grab5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr null, ptr %grab5.i.i.i, align 8
  tail call void @synchronize_rcu() #11
  tail call void @input_release_device(ptr noundef %handle.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb117.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool118.not.i.i = icmp eq i32 %arg, 0
  br i1 %tobool118.not.i.i, label %if.else120.i.i, label %sw.bb117.i.i.evdev_do_ioctl.exit.i_crit_edge

sw.bb117.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %sw.bb117.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.else120.i.i:                                   ; preds = %sw.bb117.i.i
  %revoked.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 9
  %72 = ptrtoint ptr %revoked.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %revoked.i.i.i, align 4
  %dep_map.i.i.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 5, i32 5
  %call.i.i.i135.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i135.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i135.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i136.i.i, label %if.else120.i.i.do.end.i.i.i.i_crit_edge

if.else120.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %if.else120.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i.i

land.lhs.true.i.i136.i.i:                         ; preds = %if.else120.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i136.i.i.do.end.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i136.i.i.do.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i136.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i136.i.i
  %.b52.i.i.i.i = load i1, ptr @evdev_ungrab.__warned, align 1
  br i1 %.b52.i.i.i.i, label %land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.then.i.i137.i.i

land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i.i

if.then.i.i137.i.i:                               ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evdev_ungrab.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 360, ptr noundef nonnull @.str.17) #11
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i137.i.i, %land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge, %land.lhs.true.i.i136.i.i.do.end.i.i.i.i_crit_edge, %if.else120.i.i.do.end.i.i.i.i_crit_edge
  %grab5.i.i.i.i = getelementptr inbounds %struct.evdev, ptr %12, i32 0, i32 2
  %73 = ptrtoint ptr %grab5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %grab5.i.i.i.i, align 8
  %cmp.not.i.i.i.i = icmp eq ptr %74, %10
  br i1 %cmp.not.i.i.i.i, label %do.body15.i.i.i.i, label %do.end.i.i.i.i.evdev_revoke.exit.i.i_crit_edge

do.end.i.i.i.i.evdev_revoke.exit.i.i_crit_edge:   ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_revoke.exit.i.i

do.body15.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %grab5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr null, ptr %grab5.i.i.i.i, align 8
  tail call void @synchronize_rcu() #11
  tail call void @input_release_device(ptr noundef %handle.i.i) #11
  br label %evdev_revoke.exit.i.i

evdev_revoke.exit.i.i:                            ; preds = %do.body15.i.i.i.i, %do.end.i.i.i.i.evdev_revoke.exit.i.i_crit_edge
  %call1.i139.i.i = tail call i32 @input_flush_device(ptr noundef %handle.i.i, ptr noundef %file) #11
  %wait.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #11
  br label %evdev_do_ioctl.exit.i

if.end8.i.i32.i.i:                                ; preds = %if.end6.i
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i33.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i33.i.i, label %if.end8.i.i32.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i32.i.i.if.then11.i.i.i.i_crit_edge:    ; preds = %if.end8.i.i32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i32.i.i
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i34.i.i = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i34.i.i)
  %cmp.i6.i35.i.i = icmp eq i32 %asmresult.i.i34.i.i, 0
  br i1 %cmp.i6.i35.i.i, label %if.end.i.i37.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i37.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i36.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask.i.i, i32 noundef 16) #11
  %77 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !79
  %and.i.i.i.i.i.i = and i32 %79, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask.i.i, ptr noundef %0, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end126.i.i, label %if.end.i.i37.i.i.if.then11.i.i.i.i_crit_edge, !prof !91

if.end.i.i37.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i37.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i32.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i257.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i37.i.i.if.then11.i.i.i.i_crit_edge ], [ 16, %if.end8.i.i32.i.i.if.then11.i.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 16, %res.0.i.i257.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %mask.i.i, i32 %sub.i.i.i.i
  %80 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i257.i.i)
  br label %evdev_do_ioctl.exit.i

if.end126.i.i:                                    ; preds = %if.end.i.i37.i.i
  %81 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %18, align 8
  %conv.i.i = trunc i64 %82 to i32
  %83 = inttoptr i32 %conv.i.i to ptr
  %84 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mask.i.i, align 8
  %86 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %85)
  %cmp.i.i140.i.i = icmp ult i32 %85, 32
  br i1 %cmp.i.i140.i.i, label %evdev_get_mask_cnt.exit.i.i.i, label %if.end126.i.i.if.end15.i.i.i_crit_edge

if.end126.i.i.if.end15.i.i.i_crit_edge:           ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

evdev_get_mask_cnt.exit.i.i.i:                    ; preds = %if.end126.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %85
  %88 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %sub.i.i.i = add i32 %89, 31
  %90 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %90, 536870908
  %91 = call i32 @llvm.umin.i32(i32 %mul.i.i.i, i32 %87) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp1.not.i.i.i = icmp eq i32 %89, 0
  br i1 %cmp1.not.i.i.i, label %evdev_get_mask_cnt.exit.i.i.i.if.end15.i.i.i_crit_edge, label %if.then.i142.i.i

evdev_get_mask_cnt.exit.i.i.i.if.end15.i.i.i_crit_edge: ; preds = %evdev_get_mask_cnt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

if.then.i142.i.i:                                 ; preds = %evdev_get_mask_cnt.exit.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.evdev_client, ptr %10, i32 0, i32 10, i32 %85
  %92 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i141.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i141.i.i, label %for.cond.preheader.i.i.i, label %if.then2.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then.i142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp712.not.i.i.i = icmp eq i32 %91, 0
  br i1 %cmp712.not.i.i.i, label %for.cond.preheader.i.i.i.if.end15.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end15.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i142.i.i
  %sub3.i.i.i = add i32 %89, -1
  %call4.i.i.i = call fastcc i32 @bits_to_user(ptr noundef nonnull %93, i32 noundef %sub3.i.i.i, i32 noundef %91, ptr noundef %83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.then2.i.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.then2.i.i.i.if.end15.i.i.i_crit_edge

if.then2.i.i.i.if.end15.i.i.i_crit_edge:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

if.then2.i.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %91
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end15.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.cond.i.i.i.if.end15.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.013.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 %i.013.i.i.i
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1017) #11
  %94 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i143.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i143.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 4
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !79
  %and.i.i.i.i = and i32 %96, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %97 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i.i.i, i8 -1, i32 -1226833921) #11, !srcloc !92
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool11.not.i.i.i = icmp eq i32 %97, 0
  br i1 %tobool11.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.evdev_do_ioctl.exit.i_crit_edge

for.body.i.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end15.i.i.i:                                   ; preds = %for.cond.i.i.i.if.end15.i.i.i_crit_edge, %if.then2.i.i.i.if.end15.i.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end15.i.i.i_crit_edge, %evdev_get_mask_cnt.exit.i.i.i.if.end15.i.i.i_crit_edge, %if.end126.i.i.if.end15.i.i.i_crit_edge
  %codes_size.mul11.i.i.i = phi i32 [ %91, %if.then2.i.i.i.if.end15.i.i.i_crit_edge ], [ %91, %evdev_get_mask_cnt.exit.i.i.i.if.end15.i.i.i_crit_edge ], [ 0, %if.end126.i.i.if.end15.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.if.end15.i.i.i_crit_edge ], [ %91, %for.cond.i.i.i.if.end15.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %codes_size.mul11.i.i.i)
  %cmp16.i.i.i = icmp ugt i32 %87, %codes_size.mul11.i.i.i
  br i1 %cmp16.i.i.i, label %if.then17.i.i.i, label %if.end15.i.i.i.if.end24.i.i.i_crit_edge

if.end15.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end15.i.i.i
  %add.ptr18.i.i.i = getelementptr i8, ptr %83, i32 %codes_size.mul11.i.i.i
  %sub19.i.i.i = sub i32 %87, %codes_size.mul11.i.i.i
  %98 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr18.i.i.i, i32 %sub19.i.i.i, i32 -1226833920) #16, !srcloc !93
  %asmresult.i.i144.i.i = extractvalue { i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i144.i.i)
  %cmp.i2.i.i.i = icmp eq i32 %asmresult.i.i144.i.i, 0
  br i1 %cmp.i2.i.i.i, label %if.then.i.i149.i.i, label %if.then17.i.i.i.clear_user.exit.i.i.i_crit_edge

if.then17.i.i.i.clear_user.exit.i.i.i_crit_edge:  ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_user.exit.i.i.i

if.then.i.i149.i.i:                               ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i145.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i145.i.i to ptr
  %cpu_domain.i.i.i.i.i146.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 4
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i146.i.i) #5, !srcloc !79
  %and.i.i.i3.i.i.i = and i32 %101, -13
  %or.i.i.i.i147.i.i = or i32 %and.i.i.i3.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i147.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i148.i.i = call i32 @arm_clear_user(ptr noundef %add.ptr18.i.i.i, i32 noundef %sub19.i.i.i) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  br label %clear_user.exit.i.i.i

clear_user.exit.i.i.i:                            ; preds = %if.then.i.i149.i.i, %if.then17.i.i.i.clear_user.exit.i.i.i_crit_edge
  %n.addr.0.i.i.i.i = phi i32 [ %call1.i.i.i148.i.i, %if.then.i.i149.i.i ], [ %sub19.i.i.i, %if.then17.i.i.i.clear_user.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %n.addr.0.i.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %clear_user.exit.i.i.i.if.end24.i.i.i_crit_edge, label %clear_user.exit.i.i.i.evdev_do_ioctl.exit.i_crit_edge

clear_user.exit.i.i.i.evdev_do_ioctl.exit.i_crit_edge: ; preds = %clear_user.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

clear_user.exit.i.i.i.if.end24.i.i.i_crit_edge:   ; preds = %clear_user.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %clear_user.exit.i.i.i.if.end24.i.i.i_crit_edge, %if.end15.i.i.i.if.end24.i.i.i_crit_edge
  br label %evdev_do_ioctl.exit.i

if.end8.i.i42.i.i:                                ; preds = %if.end6.i
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i43.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i43.i.i, label %if.end8.i.i42.i.i.if.then11.i.i59.i.i_crit_edge, label %land.lhs.true.i.i46.i.i

if.end8.i.i42.i.i.if.then11.i.i59.i.i_crit_edge:  ; preds = %if.end8.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i59.i.i

land.lhs.true.i.i46.i.i:                          ; preds = %if.end8.i.i42.i.i
  %102 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i44.i.i = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44.i.i)
  %cmp.i6.i45.i.i = icmp eq i32 %asmresult.i.i44.i.i, 0
  br i1 %cmp.i6.i45.i.i, label %if.end.i.i56.i.i, label %land.lhs.true.i.i46.i.i.if.then11.i.i59.i.i_crit_edge, !prof !91

land.lhs.true.i.i46.i.i.if.then11.i.i59.i.i_crit_edge: ; preds = %land.lhs.true.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i59.i.i

if.end.i.i56.i.i:                                 ; preds = %land.lhs.true.i.i46.i.i
  %call.i.i.i47.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask.i.i, i32 noundef 16) #11
  %103 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i48.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i.i48.i.i to ptr
  %cpu_domain.i.i.i.i.i49.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 4
  %105 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i49.i.i) #5, !srcloc !79
  %and.i.i.i.i50.i.i = and i32 %105, -13
  %or.i.i.i.i51.i.i = or i32 %and.i.i.i.i50.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i51.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i52.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask.i.i, ptr noundef %0, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i52.i.i)
  %tobool4.not.i.i55.i.i = icmp eq i32 %call1.i.i.i52.i.i, 0
  br i1 %tobool4.not.i.i55.i.i, label %if.end134.i.i, label %if.end.i.i56.i.i.if.then11.i.i59.i.i_crit_edge, !prof !91

if.end.i.i56.i.i.if.then11.i.i59.i.i_crit_edge:   ; preds = %if.end.i.i56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i59.i.i

if.then11.i.i59.i.i:                              ; preds = %if.end.i.i56.i.i.if.then11.i.i59.i.i_crit_edge, %land.lhs.true.i.i46.i.i.if.then11.i.i59.i.i_crit_edge, %if.end8.i.i42.i.i.if.then11.i.i59.i.i_crit_edge
  %res.0.i.i54262.i.i = phi i32 [ %call1.i.i.i52.i.i, %if.end.i.i56.i.i.if.then11.i.i59.i.i_crit_edge ], [ 16, %if.end8.i.i42.i.i.if.then11.i.i59.i.i_crit_edge ], [ 16, %land.lhs.true.i.i46.i.i.if.then11.i.i59.i.i_crit_edge ]
  %sub.i.i57.i.i = sub i32 16, %res.0.i.i54262.i.i
  %add.ptr.i.i58.i.i = getelementptr i8, ptr %mask.i.i, i32 %sub.i.i57.i.i
  %106 = call ptr @memset(ptr %add.ptr.i.i58.i.i, i32 0, i32 %res.0.i.i54262.i.i)
  br label %evdev_do_ioctl.exit.i

if.end134.i.i:                                    ; preds = %if.end.i.i56.i.i
  %107 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %18, align 8
  %conv136.i.i = trunc i64 %108 to i32
  %109 = inttoptr i32 %conv136.i.i to ptr
  %110 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mask.i.i, align 8
  %112 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %111)
  %cmp.i.i151.i.i = icmp ult i32 %111, 32
  br i1 %cmp.i.i151.i.i, label %evdev_get_mask_cnt.exit.i154.i.i, label %if.end134.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end134.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

evdev_get_mask_cnt.exit.i154.i.i:                 ; preds = %if.end134.i.i
  %arrayidx.i.i152.i.i = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %111
  %114 = ptrtoint ptr %arrayidx.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i152.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i153.i.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i153.i.i, label %evdev_get_mask_cnt.exit.i154.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end.i157.i.i

evdev_get_mask_cnt.exit.i154.i.i.evdev_do_ioctl.exit.i_crit_edge: ; preds = %evdev_get_mask_cnt.exit.i154.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end.i157.i.i:                                  ; preds = %evdev_get_mask_cnt.exit.i154.i.i
  %call1.i155.i.i = call ptr @bitmap_zalloc(i32 noundef %115, i32 noundef 3264) #11
  %tobool2.not.i156.i.i = icmp eq ptr %call1.i155.i.i, null
  br i1 %tobool2.not.i156.i.i, label %if.end.i157.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end4.i.i.i

if.end.i157.i.i.evdev_do_ioctl.exit.i_crit_edge:  ; preds = %if.end.i157.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i157.i.i
  %rem.i.i.i.i = and i32 %113, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i)
  %tobool.not.i.i158.i.i = icmp eq i32 %rem.i.i.i.i, 0
  br i1 %tobool.not.i.i158.i.i, label %if.end.i.i160.i.i, label %if.end4.i.i.i.if.then6.i.i.i_crit_edge

if.end4.i.i.i.if.then6.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i.i

if.end.i.i160.i.i:                                ; preds = %if.end4.i.i.i
  %sub.i.i159.i.i = add i32 %115, 30
  %116 = lshr i32 %sub.i.i159.i.i, 3
  %mul.i.i.i.i = and i32 %116, 536870908
  %117 = call i32 @llvm.umin.i32(i32 %mul.i.i.i.i, i32 %113) #11
  call void @__check_object_size(ptr noundef nonnull %call1.i155.i.i, i32 noundef %117, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i.i.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i160.i.i.if.end.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.end.i.i160.i.i.if.end.i.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i160.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.end.i.i160.i.i
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %109, i32 %117, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i6.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i.i, label %if.then.i7.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i.i

if.then.i7.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i155.i.i, i32 noundef %117) #11
  %119 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 4
  %121 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i.i) #5, !srcloc !79
  %and.i.i.i.i.i.i162.i.i = and i32 %121, -13
  %or.i.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i162.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call1.i155.i.i, ptr noundef %109, i32 noundef %117) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i7.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, %if.end.i.i160.i.i.if.end.i.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i.i.i = phi i32 [ %117, %if.end.i.i160.i.i.if.end.i.i.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i.i.i, %if.then.i7.i.i.i.i.i ], [ %117, %land.lhs.true.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i.i = icmp eq i32 %res.0.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %do.body8.i.i.i, label %if.then11.i.i.i.i.i.i, !prof !91

if.then11.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i.i.i = sub i32 %117, %res.0.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %call1.i155.i.i, i32 %sub.i.i.i.i.i.i
  %122 = call ptr @memset(ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.i.i)
  br label %if.then6.i.i.i

if.then6.i.i.i:                                   ; preds = %if.then11.i.i.i.i.i.i, %if.end4.i.i.i.if.then6.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ -14, %if.then11.i.i.i.i.i.i ], [ -22, %if.end4.i.i.i.if.then6.i.i.i_crit_edge ]
  call void @bitmap_free(ptr noundef nonnull %call1.i155.i.i) #11
  br label %evdev_do_ioctl.exit.i

do.body8.i.i.i:                                   ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buffer_lock.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 3
  %call11.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i.i.i) #11
  %arrayidx.i163.i.i = getelementptr %struct.evdev_client, ptr %10, i32 0, i32 10, i32 %111
  %123 = ptrtoint ptr %arrayidx.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i163.i.i, align 4
  store ptr %call1.i155.i.i, ptr %arrayidx.i163.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock.i.i.i, i32 noundef %call11.i.i.i) #11
  call void @bitmap_free(ptr noundef %124) #11
  br label %evdev_do_ioctl.exit.i

if.end8.i.i65.i.i:                                ; preds = %if.end6.i
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i66.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i66.i.i, label %if.end8.i.i65.i.i.if.then11.i.i82.i.i_crit_edge, label %land.lhs.true.i.i69.i.i

if.end8.i.i65.i.i.if.then11.i.i82.i.i_crit_edge:  ; preds = %if.end8.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i82.i.i

land.lhs.true.i.i69.i.i:                          ; preds = %if.end8.i.i65.i.i
  %125 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i67.i.i = extractvalue { i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i67.i.i)
  %cmp.i6.i68.i.i = icmp eq i32 %asmresult.i.i67.i.i, 0
  br i1 %cmp.i6.i68.i.i, label %if.end.i.i79.i.i, label %land.lhs.true.i.i69.i.i.if.then11.i.i82.i.i_crit_edge, !prof !91

land.lhs.true.i.i69.i.i.if.then11.i.i82.i.i_crit_edge: ; preds = %land.lhs.true.i.i69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i82.i.i

if.end.i.i79.i.i:                                 ; preds = %land.lhs.true.i.i69.i.i
  %call.i.i.i70.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %i.i.i, i32 noundef 4) #11
  %126 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i71.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i71.i.i to ptr
  %cpu_domain.i.i.i.i.i72.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i72.i.i) #5, !srcloc !79
  %and.i.i.i.i73.i.i = and i32 %128, -13
  %or.i.i.i.i74.i.i = or i32 %and.i.i.i.i73.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i74.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i75.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %i.i.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i75.i.i)
  %tobool4.not.i.i78.i.i = icmp eq i32 %call1.i.i.i75.i.i, 0
  br i1 %tobool4.not.i.i78.i.i, label %if.end145.i.i, label %if.end.i.i79.i.i.if.then11.i.i82.i.i_crit_edge, !prof !91

if.end.i.i79.i.i.if.then11.i.i82.i.i_crit_edge:   ; preds = %if.end.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i82.i.i

if.then11.i.i82.i.i:                              ; preds = %if.end.i.i79.i.i.if.then11.i.i82.i.i_crit_edge, %land.lhs.true.i.i69.i.i.if.then11.i.i82.i.i_crit_edge, %if.end8.i.i65.i.i.if.then11.i.i82.i.i_crit_edge
  %res.0.i.i77267.i.i = phi i32 [ %call1.i.i.i75.i.i, %if.end.i.i79.i.i.if.then11.i.i82.i.i_crit_edge ], [ 4, %if.end8.i.i65.i.i.if.then11.i.i82.i.i_crit_edge ], [ 4, %land.lhs.true.i.i69.i.i.if.then11.i.i82.i.i_crit_edge ]
  %sub.i.i80.i.i = sub i32 4, %res.0.i.i77267.i.i
  %add.ptr.i.i81.i.i = getelementptr i8, ptr %i.i.i, i32 %sub.i.i80.i.i
  %129 = call ptr @memset(ptr %add.ptr.i.i81.i.i, i32 0, i32 %res.0.i.i77267.i.i)
  br label %evdev_do_ioctl.exit.i

if.end145.i.i:                                    ; preds = %if.end.i.i79.i.i
  %130 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %i.i.i, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %131, label %if.end145.i.i.evdev_do_ioctl.exit.i_crit_edge [
    i32 0, label %if.end145.i.i.sw.epilog.i.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 7, label %sw.bb2.i.i.i
  ]

if.end145.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

if.end145.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end145.i.i.sw.epilog.i.i.i_crit_edge
  %clk_type.0.i.i.i = phi i32 [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %131, %if.end145.i.i.sw.epilog.i.i.i_crit_edge ]
  %clk_type3.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 8
  %133 = ptrtoint ptr %clk_type3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %clk_type3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %clk_type.0.i.i.i)
  %cmp.not.i165.i.i = icmp eq i32 %134, %clk_type.0.i.i.i
  br i1 %cmp.not.i165.i.i, label %sw.epilog.i.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.then.i167.i.i

sw.epilog.i.i.i.evdev_do_ioctl.exit.i_crit_edge:  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.then.i167.i.i:                                 ; preds = %sw.epilog.i.i.i
  %135 = ptrtoint ptr %clk_type3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %clk_type.0.i.i.i, ptr %clk_type3.i.i.i, align 4
  %buffer_lock.i166.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 3
  %call7.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i166.i.i) #11
  %136 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %10, align 4
  %tail.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 1
  %138 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp10.not.i.i.i = icmp eq i32 %137, %139
  br i1 %cmp10.not.i.i.i, label %if.then.i167.i.i.if.end.i174.i.i_crit_edge, label %if.then12.i.i.i

if.then.i167.i.i.if.end.i174.i.i_crit_edge:       ; preds = %if.then.i167.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i174.i.i

if.then12.i.i.i:                                  ; preds = %if.then.i167.i.i
  %140 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %10, align 4
  %packet_head.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 2
  %141 = ptrtoint ptr %packet_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %139, ptr %packet_head.i.i.i, align 4
  %142 = ptrtoint ptr %evdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %evdev1.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.evdev, ptr %143, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i.i.i.i, align 4
  %call.i.i168.i.i = call ptr @input_get_timestamp(ptr noundef %145) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i.i.i) #11
  %146 = call ptr @memset(ptr %ts.i.i.i.i, i32 255, i32 16)
  %147 = ptrtoint ptr %clk_type3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %clk_type3.i.i.i, align 4
  %arrayidx.i.i169.i.i = getelementptr i64, ptr %call.i.i168.i.i, i32 %148
  %149 = ptrtoint ptr %arrayidx.i.i169.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx.i.i169.i.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i.i.i.i, i64 noundef %150) #11
  %151 = ptrtoint ptr %ts.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %ts.i.i.i.i, align 8
  %conv.i.i.i.i = trunc i64 %152 to i32
  %tv_nsec.i.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %tv_nsec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tv_nsec.i.i.i.i, align 8
  %div.i.i.i.i = sdiv i32 %154, 1000
  %155 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %10, align 4
  %inc.i.i.i.i = add i32 %156, 1
  store i32 %inc.i.i.i.i, ptr %10, align 4
  %arrayidx1.i.i.i.i = getelementptr %struct.evdev_client, ptr %10, i32 0, i32 12, i32 %156
  %157 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv.i.i.i.i, ptr %arrayidx1.i.i.i.i, align 4
  %ev.sroa.5.0.arrayidx1.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 4
  %158 = ptrtoint ptr %ev.sroa.5.0.arrayidx1.sroa_idx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %div.i.i.i.i, ptr %ev.sroa.5.0.arrayidx1.sroa_idx.i.i.i.i, align 4
  %ev.sroa.7.0.arrayidx1.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 8
  %159 = ptrtoint ptr %ev.sroa.7.0.arrayidx1.sroa_idx.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %ev.sroa.7.0.arrayidx1.sroa_idx.i.i.i.i, align 4
  %ev.sroa.9.0.arrayidx1.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 10
  %160 = ptrtoint ptr %ev.sroa.9.0.arrayidx1.sroa_idx.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 3, ptr %ev.sroa.9.0.arrayidx1.sroa_idx.i.i.i.i, align 2
  %ev.sroa.11.0.arrayidx1.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 12
  %161 = ptrtoint ptr %ev.sroa.11.0.arrayidx1.sroa_idx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %ev.sroa.11.0.arrayidx1.sroa_idx.i.i.i.i, align 4
  %bufsize.i.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %10, i32 0, i32 11
  %162 = ptrtoint ptr %bufsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %bufsize.i.i.i.i, align 4
  %sub.i.i170.i.i = add i32 %163, -1
  %164 = load i32, ptr %10, align 4
  %and.i.i171.i.i = and i32 %164, %sub.i.i170.i.i
  store i32 %and.i.i171.i.i, ptr %10, align 4
  %165 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i171.i.i, i32 %166)
  %cmp.i.i172.i.i = icmp eq i32 %and.i.i171.i.i, %166
  br i1 %cmp.i.i172.i.i, label %if.then.i.i173.i.i, label %if.then12.i.i.i.__evdev_queue_syn_dropped.exit.i.i.i_crit_edge, !prof !77

if.then12.i.i.i.__evdev_queue_syn_dropped.exit.i.i.i_crit_edge: ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__evdev_queue_syn_dropped.exit.i.i.i

if.then.i.i173.i.i:                               ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub7.i.i.i.i = add i32 %and.i.i171.i.i, -1
  %and10.i.i.i.i = and i32 %sub7.i.i.i.i, %sub.i.i170.i.i
  %167 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and10.i.i.i.i, ptr %tail.i.i.i, align 4
  %168 = ptrtoint ptr %packet_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %and10.i.i.i.i, ptr %packet_head.i.i.i, align 4
  br label %__evdev_queue_syn_dropped.exit.i.i.i

__evdev_queue_syn_dropped.exit.i.i.i:             ; preds = %if.then.i.i173.i.i, %if.then12.i.i.i.__evdev_queue_syn_dropped.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i.i.i) #11
  br label %if.end.i174.i.i

if.end.i174.i.i:                                  ; preds = %__evdev_queue_syn_dropped.exit.i.i.i, %if.then.i167.i.i.if.end.i174.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock.i166.i.i, i32 noundef %call7.i.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb147.i.i:                                     ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ke.i.i.i) #11
  %169 = call ptr @memset(ptr %ke.i.i.i, i32 0, i32 40)
  %170 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 4, ptr %170, align 1
  %scancode.i.i.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i.i.i, i32 0, i32 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i.i176.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i176.i.i, label %sw.bb147.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

sw.bb147.i.i.if.then11.i.i.i.i.i_crit_edge:       ; preds = %sw.bb147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %sw.bb147.i.i
  %172 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i177.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scancode.i.i.i, i32 noundef 4) #11
  %173 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i.i.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 4
  %175 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #5, !srcloc !79
  %and.i.i.i.i.i.i.i = and i32 %175, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %scancode.i.i.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i180.i.i, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !91

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %sw.bb147.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i16.i.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %sw.bb147.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 4, %res.0.i.i16.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %scancode.i.i.i, i32 %sub.i.i.i.i.i
  %176 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i16.i.i.i)
  br label %evdev_handle_get_keycode.exit.i.i

if.end.i180.i.i:                                  ; preds = %if.end.i.i.i.i.i
  %call1.i178.i.i = call i32 @input_get_keycode(ptr noundef %14, ptr noundef nonnull %ke.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178.i.i)
  %tobool2.not.i179.i.i = icmp eq i32 %call1.i178.i.i, 0
  br i1 %tobool2.not.i179.i.i, label %if.end4.i186.i.i, label %if.end.i180.i.i.evdev_handle_get_keycode.exit.i.i_crit_edge

if.end.i180.i.i.evdev_handle_get_keycode.exit.i.i_crit_edge: ; preds = %if.end.i180.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_handle_get_keycode.exit.i.i

if.end4.i186.i.i:                                 ; preds = %if.end.i180.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i181.i.i = getelementptr i32, ptr %0, i32 1
  %keycode.i.i.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i.i.i, i32 0, i32 3
  %177 = ptrtoint ptr %keycode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %keycode.i.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 819) #11
  %179 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i182.i.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i.i182.i.i to ptr
  %cpu_domain.i.i.i183.i.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 4
  %181 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i183.i.i) #5, !srcloc !79
  %and.i.i184.i.i = and i32 %181, -13
  %or.i.i185.i.i = or i32 %and.i.i184.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i185.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %182 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i181.i.i, i32 %178, i32 -1226833921) #11, !srcloc !94
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool7.not.i.i.i = icmp eq i32 %182, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 0, i32 -14
  br label %evdev_handle_get_keycode.exit.i.i

evdev_handle_get_keycode.exit.i.i:                ; preds = %if.end4.i186.i.i, %if.end.i180.i.i.evdev_handle_get_keycode.exit.i.i_crit_edge, %if.then11.i.i.i.i.i
  %retval.0.i187.i.i = phi i32 [ %call1.i178.i.i, %if.end.i180.i.i.evdev_handle_get_keycode.exit.i.i_crit_edge ], [ %..i.i.i, %if.end4.i186.i.i ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ke.i.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb149.i.i:                                     ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ke.i188.i.i) #11
  %183 = call ptr @memset(ptr %ke.i188.i.i, i32 0, i32 40)
  %184 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i188.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 4, ptr %184, align 1
  %scancode.i189.i.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i188.i.i, i32 0, i32 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i.i190.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i190.i.i, label %sw.bb149.i.i.if.then11.i.i.i204.i.i_crit_edge, label %land.lhs.true.i.i.i193.i.i

sw.bb149.i.i.if.then11.i.i.i204.i.i_crit_edge:    ; preds = %sw.bb149.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i204.i.i

land.lhs.true.i.i.i193.i.i:                       ; preds = %sw.bb149.i.i
  %186 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i.i191.i.i = extractvalue { i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i191.i.i)
  %cmp.i6.i.i192.i.i = icmp eq i32 %asmresult.i.i.i191.i.i, 0
  br i1 %cmp.i6.i.i192.i.i, label %if.end.i.i.i201.i.i, label %land.lhs.true.i.i.i193.i.i.if.then11.i.i.i204.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i193.i.i.if.then11.i.i.i204.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i193.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i204.i.i

if.end.i.i.i201.i.i:                              ; preds = %land.lhs.true.i.i.i193.i.i
  %call.i.i.i.i194.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scancode.i189.i.i, i32 noundef 4) #11
  %187 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i195.i.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i.i.i195.i.i to ptr
  %cpu_domain.i.i.i.i.i.i196.i.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 4
  %189 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i196.i.i) #5, !srcloc !79
  %and.i.i.i.i.i197.i.i = and i32 %189, -13
  %or.i.i.i.i.i198.i.i = or i32 %and.i.i.i.i.i197.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i198.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i199.i.i = call i32 @arm_copy_from_user(ptr noundef %scancode.i189.i.i, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i199.i.i)
  %tobool4.not.i.i.i200.i.i = icmp eq i32 %call1.i.i.i.i199.i.i, 0
  br i1 %tobool4.not.i.i.i200.i.i, label %if.end.i211.i.i, label %if.end.i.i.i201.i.i.if.then11.i.i.i204.i.i_crit_edge, !prof !91

if.end.i.i.i201.i.i.if.then11.i.i.i204.i.i_crit_edge: ; preds = %if.end.i.i.i201.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i204.i.i

if.then11.i.i.i204.i.i:                           ; preds = %if.end.i.i.i201.i.i.if.then11.i.i.i204.i.i_crit_edge, %land.lhs.true.i.i.i193.i.i.if.then11.i.i.i204.i.i_crit_edge, %sw.bb149.i.i.if.then11.i.i.i204.i.i_crit_edge
  %res.0.i.i12.i.i.i = phi i32 [ %call1.i.i.i.i199.i.i, %if.end.i.i.i201.i.i.if.then11.i.i.i204.i.i_crit_edge ], [ 4, %sw.bb149.i.i.if.then11.i.i.i204.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i193.i.i.if.then11.i.i.i204.i.i_crit_edge ]
  %sub.i.i.i202.i.i = sub i32 4, %res.0.i.i12.i.i.i
  %add.ptr.i.i.i203.i.i = getelementptr i8, ptr %scancode.i189.i.i, i32 %sub.i.i.i202.i.i
  %190 = call ptr @memset(ptr %add.ptr.i.i.i203.i.i, i32 0, i32 %res.0.i.i12.i.i.i)
  br label %evdev_handle_set_keycode.exit.i.i

if.end.i211.i.i:                                  ; preds = %if.end.i.i.i201.i.i
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 854) #11
  %add.ptr.i205.i.i = getelementptr i32, ptr %0, i32 1
  %191 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i206.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i.i206.i.i to ptr
  %cpu_domain.i.i.i207.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 4
  %193 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i207.i.i) #5, !srcloc !79
  %and.i.i208.i.i = and i32 %193, -13
  %or.i.i209.i.i = or i32 %and.i.i208.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i209.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %194 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i205.i.i, i32 -1226833921) #11, !srcloc !95
  %asmresult.i.i.i = extractvalue { i32, i32 } %194, 0
  %asmresult2.i.i.i = extractvalue { i32, i32 } %194, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %193) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %keycode.i210.i.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i188.i.i, i32 0, i32 3
  %195 = ptrtoint ptr %keycode.i210.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %asmresult2.i.i.i, ptr %keycode.i210.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i211.i.i.evdev_handle_set_keycode.exit.i.i_crit_edge

if.end.i211.i.i.evdev_handle_set_keycode.exit.i.i_crit_edge: ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_handle_set_keycode.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i212.i.i = call i32 @input_set_keycode(ptr noundef %14, ptr noundef nonnull %ke.i188.i.i) #11
  br label %evdev_handle_set_keycode.exit.i.i

evdev_handle_set_keycode.exit.i.i:                ; preds = %if.end6.i.i.i, %if.end.i211.i.i.evdev_handle_set_keycode.exit.i.i_crit_edge, %if.then11.i.i.i204.i.i
  %retval.0.i213.i.i = phi i32 [ %call7.i212.i.i, %if.end6.i.i.i ], [ -14, %if.end.i211.i.i.evdev_handle_set_keycode.exit.i.i_crit_edge ], [ -14, %if.then11.i.i.i204.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ke.i188.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb151.i.i:                                     ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ke.i214.i.i) #11
  %196 = call ptr @memset(ptr %ke.i214.i.i, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i.i215.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i215.i.i, label %sw.bb151.i.i.if.then11.i.i.i229.i.i_crit_edge, label %land.lhs.true.i.i.i218.i.i

sw.bb151.i.i.if.then11.i.i.i229.i.i_crit_edge:    ; preds = %sw.bb151.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i229.i.i

land.lhs.true.i.i.i218.i.i:                       ; preds = %sw.bb151.i.i
  %197 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #16
  %asmresult.i.i.i216.i.i = extractvalue { i32, i32 } %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i216.i.i)
  %cmp.i6.i.i217.i.i = icmp eq i32 %asmresult.i.i.i216.i.i, 0
  br i1 %cmp.i6.i.i217.i.i, label %if.end.i.i.i226.i.i, label %land.lhs.true.i.i.i218.i.i.if.then11.i.i.i229.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i218.i.i.if.then11.i.i.i229.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i218.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i229.i.i

if.end.i.i.i226.i.i:                              ; preds = %land.lhs.true.i.i.i218.i.i
  %call.i.i.i.i219.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ke.i214.i.i, i32 noundef 40) #11
  %198 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i220.i.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i.i.i.i.i220.i.i to ptr
  %cpu_domain.i.i.i.i.i.i221.i.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 4
  %200 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i221.i.i) #5, !srcloc !79
  %and.i.i.i.i.i222.i.i = and i32 %200, -13
  %or.i.i.i.i.i223.i.i = or i32 %and.i.i.i.i.i222.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i223.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i224.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ke.i214.i.i, ptr noundef %0, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i224.i.i)
  %tobool4.not.i.i.i225.i.i = icmp eq i32 %call1.i.i.i.i224.i.i, 0
  br i1 %tobool4.not.i.i.i225.i.i, label %if.end.i232.i.i, label %if.end.i.i.i226.i.i.if.then11.i.i.i229.i.i_crit_edge, !prof !91

if.end.i.i.i226.i.i.if.then11.i.i.i229.i.i_crit_edge: ; preds = %if.end.i.i.i226.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i229.i.i

if.then11.i.i.i229.i.i:                           ; preds = %if.end.i.i.i226.i.i.if.then11.i.i.i229.i.i_crit_edge, %land.lhs.true.i.i.i218.i.i.if.then11.i.i.i229.i.i_crit_edge, %sw.bb151.i.i.if.then11.i.i.i229.i.i_crit_edge
  %res.0.i.i24.i.i.i = phi i32 [ %call1.i.i.i.i224.i.i, %if.end.i.i.i226.i.i.if.then11.i.i.i229.i.i_crit_edge ], [ 40, %sw.bb151.i.i.if.then11.i.i.i229.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i218.i.i.if.then11.i.i.i229.i.i_crit_edge ]
  %sub.i.i.i227.i.i = sub i32 40, %res.0.i.i24.i.i.i
  %add.ptr.i.i.i228.i.i = getelementptr i8, ptr %ke.i214.i.i, i32 %sub.i.i.i227.i.i
  %201 = call ptr @memset(ptr %add.ptr.i.i.i228.i.i, i32 0, i32 %res.0.i.i24.i.i.i)
  br label %evdev_handle_get_keycode_v2.exit.i.i

if.end.i232.i.i:                                  ; preds = %if.end.i.i.i226.i.i
  %call1.i230.i.i = call i32 @input_get_keycode(ptr noundef %14, ptr noundef nonnull %ke.i214.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230.i.i)
  %tobool2.not.i231.i.i = icmp eq i32 %call1.i230.i.i, 0
  br i1 %tobool2.not.i231.i.i, label %if.end8.i.i15.i.i.i, label %if.end.i232.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge

if.end.i232.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge: ; preds = %if.end.i232.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_handle_get_keycode_v2.exit.i.i

if.end8.i.i15.i.i.i:                              ; preds = %if.end.i232.i.i
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #11
  %call.i.i16.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i16.i.i.i, label %if.end8.i.i15.i.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge, label %copy_to_user.exit.i.i.i

if.end8.i.i15.i.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge: ; preds = %if.end8.i.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_handle_get_keycode_v2.exit.i.i

copy_to_user.exit.i.i.i:                          ; preds = %if.end8.i.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i20.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ke.i214.i.i, i32 noundef 40) #11
  %call.i12.i.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ke.i214.i.i, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i12.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool6.not.i.i.i, i32 0, i32 -14
  br label %evdev_handle_get_keycode_v2.exit.i.i

evdev_handle_get_keycode_v2.exit.i.i:             ; preds = %copy_to_user.exit.i.i.i, %if.end8.i.i15.i.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge, %if.end.i232.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge, %if.then11.i.i.i229.i.i
  %retval.0.i233.i.i = phi i32 [ %call1.i230.i.i, %if.end.i232.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge ], [ -14, %if.then11.i.i.i229.i.i ], [ -14, %if.end8.i.i15.i.i.i.evdev_handle_get_keycode_v2.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %copy_to_user.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ke.i214.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.bb153.i.i:                                     ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ke.i234.i.i) #11
  %202 = call ptr @memset(ptr %ke.i234.i.i, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i.i235.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i235.i.i, label %sw.bb153.i.i.if.then11.i.i.i249.i.i_crit_edge, label %land.lhs.true.i.i.i238.i.i

sw.bb153.i.i.if.then11.i.i.i249.i.i_crit_edge:    ; preds = %sw.bb153.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i249.i.i

land.lhs.true.i.i.i238.i.i:                       ; preds = %sw.bb153.i.i
  %203 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i.i236.i.i = extractvalue { i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i236.i.i)
  %cmp.i6.i.i237.i.i = icmp eq i32 %asmresult.i.i.i236.i.i, 0
  br i1 %cmp.i6.i.i237.i.i, label %if.end.i.i.i246.i.i, label %land.lhs.true.i.i.i238.i.i.if.then11.i.i.i249.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i238.i.i.if.then11.i.i.i249.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i238.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i249.i.i

if.end.i.i.i246.i.i:                              ; preds = %land.lhs.true.i.i.i238.i.i
  %call.i.i.i.i239.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ke.i234.i.i, i32 noundef 40) #11
  %204 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i.i240.i.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i.i.i240.i.i to ptr
  %cpu_domain.i.i.i.i.i.i241.i.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 4
  %206 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i241.i.i) #5, !srcloc !79
  %and.i.i.i.i.i242.i.i = and i32 %206, -13
  %or.i.i.i.i.i243.i.i = or i32 %and.i.i.i.i.i242.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i243.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i.i244.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ke.i234.i.i, ptr noundef %0, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %206) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i244.i.i)
  %tobool4.not.i.i.i245.i.i = icmp eq i32 %call1.i.i.i.i244.i.i, 0
  br i1 %tobool4.not.i.i.i245.i.i, label %if.end.i250.i.i, label %if.end.i.i.i246.i.i.if.then11.i.i.i249.i.i_crit_edge, !prof !91

if.end.i.i.i246.i.i.if.then11.i.i.i249.i.i_crit_edge: ; preds = %if.end.i.i.i246.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i249.i.i

if.then11.i.i.i249.i.i:                           ; preds = %if.end.i.i.i246.i.i.if.then11.i.i.i249.i.i_crit_edge, %land.lhs.true.i.i.i238.i.i.if.then11.i.i.i249.i.i_crit_edge, %sw.bb153.i.i.if.then11.i.i.i249.i.i_crit_edge
  %res.0.i.i7.i.i.i = phi i32 [ %call1.i.i.i.i244.i.i, %if.end.i.i.i246.i.i.if.then11.i.i.i249.i.i_crit_edge ], [ 40, %sw.bb153.i.i.if.then11.i.i.i249.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i238.i.i.if.then11.i.i.i249.i.i_crit_edge ]
  %sub.i.i.i247.i.i = sub i32 40, %res.0.i.i7.i.i.i
  %add.ptr.i.i.i248.i.i = getelementptr i8, ptr %ke.i234.i.i, i32 %sub.i.i.i247.i.i
  %207 = call ptr @memset(ptr %add.ptr.i.i.i248.i.i, i32 0, i32 %res.0.i.i7.i.i.i)
  br label %evdev_handle_set_keycode_v2.exit.i.i

if.end.i250.i.i:                                  ; preds = %if.end.i.i.i246.i.i
  %len.i.i.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke.i234.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %209)
  %cmp.i.i.i = icmp ugt i8 %209, 32
  br i1 %cmp.i.i.i, label %if.end.i250.i.i.evdev_handle_set_keycode_v2.exit.i.i_crit_edge, label %if.end3.i.i.i

if.end.i250.i.i.evdev_handle_set_keycode_v2.exit.i.i_crit_edge: ; preds = %if.end.i250.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_handle_set_keycode_v2.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i250.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i251.i.i = call i32 @input_set_keycode(ptr noundef %14, ptr noundef nonnull %ke.i234.i.i) #11
  br label %evdev_handle_set_keycode_v2.exit.i.i

evdev_handle_set_keycode_v2.exit.i.i:             ; preds = %if.end3.i.i.i, %if.end.i250.i.i.evdev_handle_set_keycode_v2.exit.i.i_crit_edge, %if.then11.i.i.i249.i.i
  %retval.0.i252.i.i = phi i32 [ %call4.i251.i.i, %if.end3.i.i.i ], [ -22, %if.end.i250.i.i.evdev_handle_set_keycode_v2.exit.i.i_crit_edge ], [ -14, %if.then11.i.i.i249.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ke.i234.i.i) #11
  br label %evdev_do_ioctl.exit.i

sw.epilog.i.i:                                    ; preds = %if.end6.i
  %shr.i.i = lshr i32 %cmd, 16
  %and.i.i = and i32 %shr.i.i, 16383
  %and155.i.i = and i32 %cmd, -1073676289
  %210 = zext i32 %and155.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and155.i.i, label %sw.epilog208.i.i [
    i32 -2147465975, label %sw.bb156.i.i
    i32 -2147465974, label %sw.bb159.i.i
    i32 -2147465960, label %sw.bb161.i.i
    i32 -2147465959, label %sw.bb164.i.i
    i32 -2147465958, label %sw.bb167.i.i
    i32 -2147465957, label %sw.bb170.i.i
    i32 -2147465978, label %sw.bb173.i.i
    i32 -2147465977, label %sw.bb175.i.i
    i32 -2147465976, label %sw.bb177.i.i
    i32 1073759616, label %sw.bb179.i.i
  ]

sw.bb156.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 4
  %call158.i.i = tail call fastcc i32 @bits_to_user(ptr noundef %propbit.i.i, i32 noundef 31, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb159.i.i:                                     ; preds = %sw.epilog.i.i
  %mt1.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 25
  %211 = ptrtoint ptr %mt1.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mt1.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 928) #11
  %213 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i3 = and i32 %213, -16384
  %214 = inttoptr i32 %and.i.i.i.i3 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 4
  %215 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !79
  %and.i.i4 = and i32 %215, -13
  %or.i.i = or i32 %and.i.i4, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %216 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #11, !srcloc !96
  %asmresult.i = extractvalue { i32, i32 } %216, 0
  %asmresult2.i = extractvalue { i32, i32 } %216, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %215) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i5 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i5, label %if.end.i7, label %sw.bb159.i.i.evdev_do_ioctl.exit.i_crit_edge

sw.bb159.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %sw.bb159.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end.i7:                                        ; preds = %sw.bb159.i.i
  %tobool4.not.i6 = icmp eq ptr %212, null
  br i1 %tobool4.not.i6, label %if.end.i7.evdev_do_ioctl.exit.i_crit_edge, label %lor.lhs.false.i8

if.end.i7.evdev_do_ioctl.exit.i_crit_edge:        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

lor.lhs.false.i8:                                 ; preds = %if.end.i7
  %217 = add i32 %asmresult2.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %217)
  %218 = icmp ult i32 %217, 14
  br i1 %218, label %if.end7.i, label %lor.lhs.false.i8.evdev_do_ioctl.exit.i_crit_edge

lor.lhs.false.i8.evdev_do_ioctl.exit.i_crit_edge: ; preds = %lor.lhs.false.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end7.i:                                        ; preds = %lor.lhs.false.i8
  %sub.i = add nsw i32 %and.i.i, -4
  %div36.i = lshr i32 %sub.i, 2
  %num_slots.i = getelementptr inbounds %struct.input_mt, ptr %212, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7.i
  %i.0.i = phi i32 [ 0, %if.end7.i ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  %219 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %220)
  %cmp.i = icmp slt i32 %i.0.i, %220
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %div36.i)
  %cmp8.i = icmp ult i32 %i.0.i, %div36.i
  %or.cond.i = and i1 %cmp8.i, %cmp.i
  br i1 %or.cond.i, label %for.body.i, label %for.cond.i.evdev_do_ioctl.exit.i_crit_edge

for.cond.i.evdev_do_ioctl.exit.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx9.i = getelementptr %struct.input_mt, ptr %212, i32 0, i32 6, i32 %i.0.i
  %arrayidx.i.i = getelementptr [14 x i32], ptr %arrayidx9.i, i32 0, i32 %217
  %221 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i.i, align 4
  %add.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx11.i = getelementptr i32, ptr %0, i32 %add.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 936) #11
  %223 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i37.i = and i32 %223, -16384
  %224 = inttoptr i32 %and.i.i.i37.i to ptr
  %cpu_domain.i.i38.i = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 4
  %225 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i38.i) #5, !srcloc !79
  %and.i39.i = and i32 %225, -13
  %or.i40.i = or i32 %and.i39.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i40.i) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %226 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx11.i, i32 %222, i32 -1226833921) #11, !srcloc !97
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #11, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %tobool21.not.i = icmp eq i32 %226, 0
  br i1 %tobool21.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.evdev_do_ioctl.exit.i_crit_edge

for.body.i.evdev_do_ioctl.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

sw.bb161.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %key.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 27
  %call163.i.i = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %10, ptr noundef %14, i32 noundef 1, ptr noundef %key.i.i, i32 noundef 767, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb164.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %led.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 28
  %call166.i.i = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %10, ptr noundef %14, i32 noundef 17, ptr noundef %led.i.i, i32 noundef 15, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb167.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %snd.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 29
  %call169.i.i = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %10, ptr noundef %14, i32 noundef 18, ptr noundef %snd.i.i, i32 noundef 7, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb170.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sw.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 30
  %call172.i.i = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %10, ptr noundef %14, i32 noundef 5, ptr noundef %sw.i.i, i32 noundef 16, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb173.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %227 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %14, align 8
  %call174.i.i = tail call fastcc i32 @str_to_user(ptr noundef %228, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb175.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 1
  %229 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %phys.i.i, align 4
  %call176.i.i = tail call fastcc i32 @str_to_user(ptr noundef %230, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb177.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %uniq.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 2
  %231 = ptrtoint ptr %uniq.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %uniq.i.i, align 8
  %call178.i.i = tail call fastcc i32 @str_to_user(ptr noundef %232, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

sw.bb179.i.i:                                     ; preds = %sw.epilog.i.i
  %call180.i.i = call i32 @input_ff_effect_from_user(ptr noundef %0, i32 noundef %and.i.i, ptr noundef nonnull %effect.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i.i)
  %tobool181.not.i.i = icmp eq i32 %call180.i.i, 0
  br i1 %tobool181.not.i.i, label %if.end183.i.i, label %sw.bb179.i.i.evdev_do_ioctl.exit.i_crit_edge

sw.bb179.i.i.evdev_do_ioctl.exit.i_crit_edge:     ; preds = %sw.bb179.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end183.i.i:                                    ; preds = %sw.bb179.i.i
  %call184.i.i = call i32 @input_ff_upload(ptr noundef %14, ptr noundef nonnull %effect.i.i, ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i.i)
  %tobool185.not.i.i = icmp eq i32 %call184.i.i, 0
  br i1 %tobool185.not.i.i, label %if.end187.i.i, label %if.end183.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end183.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end187.i.i:                                    ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %id191.i.i = getelementptr inbounds %struct.ff_effect, ptr %0, i32 0, i32 1
  %id193.i.i = getelementptr inbounds %struct.ff_effect, ptr %effect.i.i, i32 0, i32 1
  %233 = ptrtoint ptr %id193.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %id193.i.i, align 2
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1187) #11
  %235 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i85.i.i = and i32 %235, -16384
  %236 = inttoptr i32 %and.i.i.i85.i.i to ptr
  %cpu_domain.i.i86.i.i = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 4
  %237 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i86.i.i) #5, !srcloc !79
  %and.i87.i.i = and i32 %237, -13
  %or.i88.i.i = or i32 %and.i87.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i88.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %238 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %id191.i.i, i16 %234, i32 -1226833921) #11, !srcloc !98
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %237) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool205.not.i.i = icmp eq i32 %238, 0
  %.3.i.i = select i1 %tobool205.not.i.i, i32 0, i32 -14
  br label %evdev_do_ioctl.exit.i

sw.epilog208.i.i:                                 ; preds = %sw.epilog.i.i
  %239 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 17664, i32 %239)
  %cmp.not.i.i = icmp eq i32 %239, 17664
  br i1 %cmp.not.i.i, label %if.end213.i.i, label %sw.epilog208.i.i.evdev_do_ioctl.exit.i_crit_edge

sw.epilog208.i.i.evdev_do_ioctl.exit.i_crit_edge: ; preds = %sw.epilog208.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end213.i.i:                                    ; preds = %sw.epilog208.i.i
  %shr214.i.i = lshr i32 %cmd, 30
  %240 = zext i32 %shr214.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr214.i.i, label %if.end213.i.i.evdev_do_ioctl.exit.i_crit_edge [
    i32 2, label %if.then218.i.i
    i32 1, label %if.then261.i.i
  ]

if.end213.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end213.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.then218.i.i:                                   ; preds = %if.end213.i.i
  %and221.i.i = and i32 %cmd, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and221.i.i)
  %cmp222.i.i = icmp eq i32 %and221.i.i, 32
  br i1 %cmp222.i.i, label %if.then224.i.i, label %if.end229.i.i

if.then224.i.i:                                   ; preds = %if.then218.i.i
  %and227.i.i = and i32 %cmd, 31
  %241 = zext i32 %and227.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and227.i.i, label %if.then224.i.i.evdev_do_ioctl.exit.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb7.i
    i32 17, label %sw.bb9.i
    i32 18, label %sw.bb11.i
    i32 21, label %sw.bb13.i
    i32 5, label %sw.bb15.i
  ]

if.then224.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

sw.bb.i:                                          ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 7
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 9
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ledbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 10
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 11
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 12
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.then224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %swbit.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %bits.0.i = phi ptr [ %swbit.i, %sw.bb15.i ], [ %ffbit.i, %sw.bb13.i ], [ %sndbit.i, %sw.bb11.i ], [ %ledbit.i, %sw.bb9.i ], [ %mscbit.i, %sw.bb7.i ], [ %absbit.i, %sw.bb5.i ], [ %relbit.i, %sw.bb3.i ], [ %keybit.i, %sw.bb1.i ], [ %evbit.i, %sw.bb.i ]
  %len.0.i = phi i32 [ 16, %sw.bb15.i ], [ 127, %sw.bb13.i ], [ 7, %sw.bb11.i ], [ 15, %sw.bb9.i ], [ 7, %sw.bb7.i ], [ 63, %sw.bb5.i ], [ 15, %sw.bb3.i ], [ 767, %sw.bb1.i ], [ 31, %sw.bb.i ]
  %call.i1 = tail call fastcc i32 @bits_to_user(ptr noundef %bits.0.i, i32 noundef %len.0.i, i32 noundef %and.i.i, ptr noundef %0) #11
  br label %evdev_do_ioctl.exit.i

if.end229.i.i:                                    ; preds = %if.then218.i.i
  %and232.i.i = and i32 %cmd, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and232.i.i)
  %cmp233.i.i = icmp eq i32 %and232.i.i, 64
  br i1 %cmp233.i.i, label %if.then235.i.i, label %if.end229.i.i.evdev_do_ioctl.exit.i_crit_edge

if.end229.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.then235.i.i:                                   ; preds = %if.end229.i.i
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 26
  %242 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %absinfo.i.i, align 8
  %tobool236.not.i.i = icmp eq ptr %243, null
  br i1 %tobool236.not.i.i, label %if.then235.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end238.i.i

if.then235.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then235.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end238.i.i:                                    ; preds = %if.then235.i.i
  %and241.i.i = and i32 %cmd, 63
  %arrayidx243.i.i = getelementptr %struct.input_absinfo, ptr %243, i32 %and241.i.i
  %244 = call ptr @memcpy(ptr %abs.i.i, ptr %arrayidx243.i.i, i32 24)
  %245 = tail call i32 @llvm.umin.i32(i32 %and.i.i, i32 24) #11
  call void @__check_object_size(ptr noundef nonnull %abs.i.i, i32 noundef %245, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #11
  %call.i.i93.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i93.i.i, label %if.end238.i.i.copy_to_user.exit101.i.i_crit_edge, label %if.end.i.i96.i.i

if.end238.i.i.copy_to_user.exit101.i.i_crit_edge: ; preds = %if.end238.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit101.i.i

if.end.i.i96.i.i:                                 ; preds = %if.end238.i.i
  %246 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %245, i32 -1226833920) #16, !srcloc !83
  %asmresult.i.i94.i.i = extractvalue { i32, i32 } %246, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i94.i.i)
  %cmp.i6.i95.i.i = icmp eq i32 %asmresult.i.i94.i.i, 0
  br i1 %cmp.i6.i95.i.i, label %if.then2.i.i99.i.i, label %if.end.i.i96.i.i.copy_to_user.exit101.i.i_crit_edge

if.end.i.i96.i.i.copy_to_user.exit101.i.i_crit_edge: ; preds = %if.end.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit101.i.i

if.then2.i.i99.i.i:                               ; preds = %if.end.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i97.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %abs.i.i, i32 noundef %245) #11
  %call.i12.i.i98.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %abs.i.i, i32 noundef %245) #11
  br label %copy_to_user.exit101.i.i

copy_to_user.exit101.i.i:                         ; preds = %if.then2.i.i99.i.i, %if.end.i.i96.i.i.copy_to_user.exit101.i.i_crit_edge, %if.end238.i.i.copy_to_user.exit101.i.i_crit_edge
  %n.addr.0.i100.i.i = phi i32 [ %245, %if.end238.i.i.copy_to_user.exit101.i.i_crit_edge ], [ %call.i12.i.i98.i.i, %if.then2.i.i99.i.i ], [ %245, %if.end.i.i96.i.i.copy_to_user.exit101.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i100.i.i)
  %tobool252.not.i.i = icmp eq i32 %n.addr.0.i100.i.i, 0
  %spec.select.i.i = select i1 %tobool252.not.i.i, i32 0, i32 -14
  br label %evdev_do_ioctl.exit.i

if.then261.i.i:                                   ; preds = %if.end213.i.i
  %and264.old.i.i = and i32 %cmd, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and264.old.i.i)
  %cmp265.old.i.i = icmp eq i32 %and264.old.i.i, 192
  br i1 %cmp265.old.i.i, label %if.then267.i.i, label %if.then261.i.i.evdev_do_ioctl.exit.i_crit_edge

if.then261.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then261.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.then267.i.i:                                   ; preds = %if.then261.i.i
  %absinfo268.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 26
  %247 = ptrtoint ptr %absinfo268.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %absinfo268.i.i, align 8
  %tobool269.not.i.i = icmp eq ptr %248, null
  br i1 %tobool269.not.i.i, label %if.then267.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end271.i.i

if.then267.i.i.evdev_do_ioctl.exit.i_crit_edge:   ; preds = %if.then267.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end271.i.i:                                    ; preds = %if.then267.i.i
  %and274.i.i = and i32 %cmd, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i.i)
  %cmp276.i.i = icmp ult i32 %and.i.i, 24
  %249 = tail call i32 @llvm.umin.i32(i32 %and.i.i, i32 24) #11
  call void @__check_object_size(ptr noundef nonnull %abs.i.i, i32 noundef %249, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #11
  %call.i.i110.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i110.i.i, label %if.end271.i.i.if.end.i.i124.i.i_crit_edge, label %land.lhs.true.i.i114.i.i

if.end271.i.i.if.end.i.i124.i.i_crit_edge:        ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i124.i.i

land.lhs.true.i.i114.i.i:                         ; preds = %if.end271.i.i
  %250 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %249, i32 -1226833920) #16, !srcloc !90
  %asmresult.i.i112.i.i = extractvalue { i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112.i.i)
  %cmp.i6.i113.i.i = icmp eq i32 %asmresult.i.i112.i.i, 0
  br i1 %cmp.i6.i113.i.i, label %if.then.i7.i121.i.i, label %land.lhs.true.i.i114.i.i.if.end.i.i124.i.i_crit_edge, !prof !91

land.lhs.true.i.i114.i.i.if.end.i.i124.i.i_crit_edge: ; preds = %land.lhs.true.i.i114.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i124.i.i

if.then.i7.i121.i.i:                              ; preds = %land.lhs.true.i.i114.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i115.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %abs.i.i, i32 noundef %249) #11
  %251 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i.i116.i.i = and i32 %251, -16384
  %252 = inttoptr i32 %and.i.i.i.i.i.i116.i.i to ptr
  %cpu_domain.i.i.i.i.i117.i.i = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 4
  %253 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i117.i.i) #5, !srcloc !79
  %and.i.i.i.i118.i.i = and i32 %253, -13
  %or.i.i.i.i119.i.i = or i32 %and.i.i.i.i118.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i119.i.i) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call1.i.i.i120.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %abs.i.i, ptr noundef %0, i32 noundef %249) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %253) #11, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  br label %if.end.i.i124.i.i

if.end.i.i124.i.i:                                ; preds = %if.then.i7.i121.i.i, %land.lhs.true.i.i114.i.i.if.end.i.i124.i.i_crit_edge, %if.end271.i.i.if.end.i.i124.i.i_crit_edge
  %res.0.i.i122.i.i = phi i32 [ %249, %if.end271.i.i.if.end.i.i124.i.i_crit_edge ], [ %call1.i.i.i120.i.i, %if.then.i7.i121.i.i ], [ %249, %land.lhs.true.i.i114.i.i.if.end.i.i124.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i122.i.i)
  %tobool4.not.i.i123.i.i = icmp eq i32 %res.0.i.i122.i.i, 0
  br i1 %tobool4.not.i.i123.i.i, label %if.end285.i.i, label %if.then11.i.i127.i.i, !prof !91

if.then11.i.i127.i.i:                             ; preds = %if.end.i.i124.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i125.i.i = sub i32 %249, %res.0.i.i122.i.i
  %add.ptr.i.i126.i.i = getelementptr i8, ptr %abs.i.i, i32 %sub.i.i125.i.i
  %254 = call ptr @memset(ptr %add.ptr.i.i126.i.i, i32 0, i32 %res.0.i.i122.i.i)
  br label %evdev_do_ioctl.exit.i

if.end285.i.i:                                    ; preds = %if.end.i.i124.i.i
  br i1 %cmp276.i.i, label %if.then288.i.i, label %if.end285.i.i.if.end289.i.i_crit_edge

if.end285.i.i.if.end289.i.i_crit_edge:            ; preds = %if.end285.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end289.i.i

if.then288.i.i:                                   ; preds = %if.end285.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %15, align 4
  br label %if.end289.i.i

if.end289.i.i:                                    ; preds = %if.then288.i.i, %if.end285.i.i.if.end289.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %and274.i.i)
  %cmp290.i.i = icmp eq i32 %and274.i.i, 47
  br i1 %cmp290.i.i, label %if.end289.i.i.evdev_do_ioctl.exit.i_crit_edge, label %if.end293.i.i

if.end289.i.i.evdev_do_ioctl.exit.i_crit_edge:    ; preds = %if.end289.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_do_ioctl.exit.i

if.end293.i.i:                                    ; preds = %if.end289.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %event_lock.i.i = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 36
  call void @_raw_spin_lock_irq(ptr noundef %event_lock.i.i) #11
  %256 = ptrtoint ptr %absinfo268.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %absinfo268.i.i, align 8
  %arrayidx295.i.i = getelementptr %struct.input_absinfo, ptr %257, i32 %and274.i.i
  %258 = call ptr @memcpy(ptr %arrayidx295.i.i, ptr %abs.i.i, i32 24)
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock.i.i) #11
  br label %evdev_do_ioctl.exit.i

evdev_do_ioctl.exit.i:                            ; preds = %if.end293.i.i, %if.end289.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then11.i.i127.i.i, %if.then267.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then261.i.i.evdev_do_ioctl.exit.i_crit_edge, %copy_to_user.exit101.i.i, %if.then235.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end229.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.epilog.i, %if.then224.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end213.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.epilog208.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end187.i.i, %if.end183.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb179.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb177.i.i, %sw.bb175.i.i, %sw.bb173.i.i, %sw.bb170.i.i, %sw.bb167.i.i, %sw.bb164.i.i, %sw.bb161.i.i, %for.body.i.evdev_do_ioctl.exit.i_crit_edge, %for.cond.i.evdev_do_ioctl.exit.i_crit_edge, %lor.lhs.false.i8.evdev_do_ioctl.exit.i_crit_edge, %if.end.i7.evdev_do_ioctl.exit.i_crit_edge, %sw.bb159.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb156.i.i, %evdev_handle_set_keycode_v2.exit.i.i, %evdev_handle_get_keycode_v2.exit.i.i, %evdev_handle_set_keycode.exit.i.i, %evdev_handle_get_keycode.exit.i.i, %if.end.i174.i.i, %sw.epilog.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end145.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then11.i.i82.i.i, %do.body8.i.i.i, %if.then6.i.i.i, %if.end.i157.i.i.evdev_do_ioctl.exit.i_crit_edge, %evdev_get_mask_cnt.exit.i154.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end134.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then11.i.i59.i.i, %if.end24.i.i.i, %clear_user.exit.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %for.body.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then2.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then11.i.i.i.i, %evdev_revoke.exit.i.i, %sw.bb117.i.i.evdev_do_ioctl.exit.i_crit_edge, %do.body15.i.i.i, %do.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %do.body.i.i.i, %if.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.then114.i.i.evdev_do_ioctl.exit.i_crit_edge, %cond.end.i.i, %sw.bb87.i.i, %if.end84.i.i, %if.end68.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end55.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb49.i.i.evdev_do_ioctl.exit.i_crit_edge, %if.end28.i.i, %if.end10.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb6.i.i.evdev_do_ioctl.exit.i_crit_edge, %copy_to_user.exit.i.i, %if.end.i.i.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb4.i.i.evdev_do_ioctl.exit.i_crit_edge, %sw.bb.i.i
  %retval.2.i.i = phi i32 [ 0, %if.end293.i.i ], [ %call178.i.i, %sw.bb177.i.i ], [ %call176.i.i, %sw.bb175.i.i ], [ %call174.i.i, %sw.bb173.i.i ], [ %call172.i.i, %sw.bb170.i.i ], [ %call169.i.i, %sw.bb167.i.i ], [ %call166.i.i, %sw.bb164.i.i ], [ %call163.i.i, %sw.bb161.i.i ], [ %call158.i.i, %sw.bb156.i.i ], [ %retval.0.i252.i.i, %evdev_handle_set_keycode_v2.exit.i.i ], [ %retval.0.i233.i.i, %evdev_handle_get_keycode_v2.exit.i.i ], [ %retval.0.i213.i.i, %evdev_handle_set_keycode.exit.i.i ], [ %retval.0.i187.i.i, %evdev_handle_get_keycode.exit.i.i ], [ 0, %evdev_revoke.exit.i.i ], [ %call88.i.i, %sw.bb87.i.i ], [ 0, %if.end84.i.i ], [ %26, %sw.bb.i.i ], [ -38, %sw.bb6.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %if.end10.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %.1.i.i, %if.end28.i.i ], [ -38, %sw.bb49.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %if.end55.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %if.end68.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %.2.i.i, %cond.end.i.i ], [ -22, %sw.bb117.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %sw.bb179.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %call184.i.i, %if.end183.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %.3.i.i, %if.end187.i.i ], [ -22, %sw.epilog208.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.then235.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.then267.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.end289.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.end213.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.then261.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %spec.select.i.i, %copy_to_user.exit101.i.i ], [ 0, %do.body.i.i.i ], [ -16, %if.then114.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ 0, %do.body15.i.i.i ], [ -22, %do.end.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ 0, %if.end24.i.i.i ], [ %call4.i.i.i, %if.then2.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %clear_user.exit.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ %retval.0.i.ph.i.i.i, %if.then6.i.i.i ], [ 0, %do.body8.i.i.i ], [ 0, %evdev_get_mask_cnt.exit.i154.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -12, %if.end.i157.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ 0, %if.end134.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.end145.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ 0, %if.end.i174.i.i ], [ 0, %sw.epilog.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %sw.bb4.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %if.end.i.i.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i59.i.i ], [ -14, %if.then11.i.i82.i.i ], [ -14, %if.then11.i.i127.i.i ], [ %spec.select272.i.i, %copy_to_user.exit.i.i ], [ -22, %if.end229.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %sw.bb159.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %lor.lhs.false.i8.evdev_do_ioctl.exit.i_crit_edge ], [ -22, %if.end.i7.evdev_do_ioctl.exit.i_crit_edge ], [ %call.i1, %sw.epilog.i ], [ -22, %if.then224.i.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %for.body.i.evdev_do_ioctl.exit.i_crit_edge ], [ 0, %for.cond.i.evdev_do_ioctl.exit.i_crit_edge ], [ -14, %for.body.i.i.i.evdev_do_ioctl.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %effect.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %abs.i.i) #11
  br label %out.i

out.i:                                            ; preds = %evdev_do_ioctl.exit.i, %lor.lhs.false.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %retval2.0.i = phi i32 [ %retval.2.i.i, %evdev_do_ioctl.exit.i ], [ -19, %lor.lhs.false.i.out.i_crit_edge ], [ -19, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %evdev_ioctl_handler.exit

evdev_ioctl_handler.exit:                         ; preds = %out.i, %entry.evdev_ioctl_handler.exit_crit_edge
  %retval.0.i = phi i32 [ %retval2.0.i, %out.i ], [ %call.i, %entry.evdev_ioctl_handler.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -1120
  %dev = getelementptr i8, ptr %2, i32 -1104
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %hint_events_per_packet.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %hint_events_per_packet.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hint_events_per_packet.i, align 8
  %mul.i = shl i32 %6, 3
  %7 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 64) #11
  %sub.i = add i32 %7, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #11, !range !99
  %sub.i.i.i.pn.i = sub nuw nsw i32 32, %8
  %cond23.i = shl nuw i32 1, %sub.i.i.i.pn.i
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond23.i, i32 16) #11
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 264) #11
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %wait = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.18, ptr noundef nonnull @evdev_open.__key) #11
  %bufsize3 = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %bufsize3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond23.i, ptr %bufsize3, align 4
  %buffer_lock = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @evdev_open.__key.19, i16 noundef signext 3) #11
  %evdev8 = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %evdev8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %evdev8, align 4
  %client_lock.i = getelementptr i8, ptr %2, i32 -1068
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %node.i = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 7
  %client_list.i = getelementptr i8, ptr %2, i32 -1076
  %prev.i.i = getelementptr i8, ptr %2, i32 -1072
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %15, ptr noundef %client_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.evdev_attach_client.exit_crit_edge

do.body.evdev_attach_client.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_attach_client.exit

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client_list.i, ptr %node.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %15, align 4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.i, ptr %prev.i.i, align 4
  br label %evdev_attach_client.exit

evdev_attach_client.exit:                         ; preds = %if.end.i.i.i, %do.body.evdev_attach_client.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  %mutex.i = getelementptr i8, ptr %2, i32 -1024
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %evdev_attach_client.exit.err_free_client_crit_edge

evdev_attach_client.exit.err_free_client_crit_edge: ; preds = %evdev_attach_client.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_client

if.end.i:                                         ; preds = %evdev_attach_client.exit
  %exist.i = getelementptr i8, ptr %2, i32 160
  %20 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %exist.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  br i1 %tobool2.not.i, label %if.end.i.evdev_open_device.exit_crit_edge, label %if.else.i

if.end.i.evdev_open_device.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_open_device.exit

if.else.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 8
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i.if.end12_crit_edge

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5.i:                                       ; preds = %if.else.i
  %handle.i = getelementptr i8, ptr %2, i32 -1116
  %call6.i = tail call i32 @input_open_device(ptr noundef %handle.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end12_crit_edge, label %if.then8.i

if.then5.i.if.end12_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 8
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %add.ptr, align 8
  br label %evdev_open_device.exit

evdev_open_device.exit:                           ; preds = %if.then8.i, %if.end.i.evdev_open_device.exit_crit_edge
  %retval1.0.i = phi i32 [ %call6.i, %if.then8.i ], [ -19, %if.end.i.evdev_open_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %err_free_client

if.end12:                                         ; preds = %if.then5.i.if.end12_crit_edge, %if.else.i.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %private_data, align 4
  %call13 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #11
  br label %cleanup

err_free_client:                                  ; preds = %evdev_open_device.exit, %evdev_attach_client.exit.err_free_client_crit_edge
  %retval.0.i3341 = phi i32 [ %retval1.0.i, %evdev_open_device.exit ], [ %call.i, %evdev_attach_client.exit.err_free_client_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %call.i.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i36, label %if.end.i.i.i37, label %err_free_client.evdev_detach_client.exit_crit_edge

err_free_client.evdev_detach_client.exit_crit_edge: ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_detach_client.exit

if.end.i.i.i37:                                   ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %evdev_detach_client.exit

evdev_detach_client.exit:                         ; preds = %if.end.i.i.i37, %err_free_client.evdev_detach_client.exit_crit_edge
  %prev.i.i38 = getelementptr inbounds %struct.evdev_client, ptr %call.i.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i38, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  tail call void @synchronize_rcu() #11
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %evdev_detach_client.exit, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3341, %evdev_detach_client.exit ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %evdev1 = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %evdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evdev1, align 4
  %mutex = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %exist = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revoked = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %revoked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revoked, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %handle = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 1
  %call = tail call i32 @input_flush_device(ptr noundef %handle, ptr noundef %file) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dep_map.i = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 5, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b52.i = load i1, ptr @evdev_ungrab.__warned, align 1
  br i1 %.b52.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evdev_ungrab.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 360, ptr noundef nonnull @.str.17) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %grab5.i = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %grab5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grab5.i, align 8
  %cmp.not.i = icmp eq ptr %9, %1
  br i1 %cmp.not.i, label %do.body15.i, label %do.end.i.evdev_ungrab.exit_crit_edge

do.end.i.evdev_ungrab.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_ungrab.exit

do.body15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %grab5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %grab5.i, align 8
  tail call void @synchronize_rcu() #11
  %handle.i = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 1
  tail call void @input_release_device(ptr noundef %handle.i) #11
  br label %evdev_ungrab.exit

evdev_ungrab.exit:                                ; preds = %do.body15.i, %do.end.i.evdev_ungrab.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %client_lock.i = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %node.i = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %evdev_ungrab.exit.evdev_detach_client.exit_crit_edge

evdev_ungrab.exit.evdev_detach_client.exit_crit_edge: ; preds = %evdev_ungrab.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_detach_client.exit

if.end.i.i.i:                                     ; preds = %evdev_ungrab.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %evdev_detach_client.exit

evdev_detach_client.exit:                         ; preds = %if.end.i.i.i, %evdev_ungrab.exit.evdev_detach_client.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  tail call void @synchronize_rcu() #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %evdev_detach_client.exit
  %i.023 = phi i32 [ 0, %evdev_detach_client.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.evdev_client, ptr %1, i32 0, i32 10, i32 %i.023
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @bitmap_free(ptr noundef %19) #11
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @kvfree(ptr noundef %1) #11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %20 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %exist, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i19 = icmp eq i8 %21, 0
  br i1 %tobool.not.i19, label %for.end.evdev_close_device.exit_crit_edge, label %land.lhs.true.i20

for.end.evdev_close_device.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_close_device.exit

land.lhs.true.i20:                                ; preds = %for.end
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.then.i22, label %land.lhs.true.i20.evdev_close_device.exit_crit_edge

land.lhs.true.i20.evdev_close_device.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_close_device.exit

if.then.i22:                                      ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #13
  %handle.i21 = getelementptr inbounds %struct.evdev, ptr %3, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle.i21) #11
  br label %evdev_close_device.exit

evdev_close_device.exit:                          ; preds = %if.then.i22, %land.lhs.true.i20.evdev_close_device.exit_crit_edge, %for.end.evdev_close_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evdev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fasync = getelementptr inbounds %struct.evdev_client, ptr %1, i32 0, i32 5
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_to_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_from_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_erase(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bits_to_user(ptr noundef %bits, i32 noundef %maxbit, i32 noundef %maxlen, ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %maxbit, 31
  %0 = lshr i32 %sub, 3
  %mul = and i32 %0, 536870908
  %1 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %maxlen)
  tail call void @__check_object_size(ptr noundef %bits, i32 noundef %1, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p, i32 %1, i32 -1226833920) #16, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bits, i32 noundef %1) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %p, ptr noundef %bits, i32 noundef %1) #11
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %1, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %1, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %1, i32 -14
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evdev_handle_get_val(ptr noundef %client, ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readonly %bits, i32 noundef %maxbit, i32 noundef %maxlen, ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bitmap_alloc(i32 noundef %maxbit, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #11
  %buffer_lock = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock) #11
  %sub.i = add i32 %maxbit, 31
  %0 = lshr i32 %sub.i, 3
  %mul.i = and i32 %0, 536870908
  %1 = call ptr @memcpy(ptr %call, ptr %bits, i32 %mul.i)
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #11
  %bufsize.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 11
  %2 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufsize.i, align 4
  %sub.i1 = add i32 %3, -1
  %tail.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  %packet_head.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 2
  %6 = ptrtoint ptr %packet_head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %packet_head.i, align 4
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp11.not66.i = icmp eq i32 %5, %8
  br i1 %cmp11.not66.i, label %if.end.__evdev_flush_queue.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__evdev_flush_queue.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__evdev_flush_queue.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.071.i = phi i32 [ %num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %head.069.i = phi i32 [ %head.1.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %i.067.i = phi i32 [ %and41.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %i.067.i
  %type12.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %i.067.i, i32 2
  %9 = ptrtoint ptr %type12.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp13.i = icmp eq i16 %10, 0
  br i1 %cmp13.i, label %land.rhs.i, label %for.body.i.land.end.i_crit_edge

for.body.i.land.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i

land.rhs.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %code.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %i.067.i, i32 3
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %code.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp16.i = icmp eq i16 %12, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %for.body.i.land.end.i_crit_edge
  %13 = phi i1 [ false, %for.body.i.land.end.i_crit_edge ], [ %cmp16.i, %land.rhs.i ]
  %conv19.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19.i, i32 %type)
  %cmp20.i = icmp eq i32 %conv19.i, %type
  br i1 %cmp20.i, label %land.end.i.for.inc.i_crit_edge, label %if.else.i

land.end.i.for.inc.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.071.i)
  %tobool25.not.i = icmp eq i32 %num.071.i, 0
  %or.cond.i = select i1 %13, i1 %tobool25.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i.for.inc.i_crit_edge, label %if.else27.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %head.069.i, i32 %i.067.i)
  %cmp28.not.i = icmp eq i32 %head.069.i, %i.067.i
  br i1 %cmp28.not.i, label %if.else27.i.if.end35.i_crit_edge, label %if.then30.i

if.else27.i.if.end35.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx32.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %head.069.i
  %14 = call ptr @memcpy(ptr %arrayidx32.i, ptr %arrayidx.i, i32 16)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.else27.i.if.end35.i_crit_edge
  %inc.i = add i32 %num.071.i, 1
  %add.i = add i32 %head.069.i, 1
  %and.i = and i32 %add.i, %sub.i1
  br i1 %13, label %if.then37.i, label %if.end35.i.for.inc.i_crit_edge

if.end35.i.for.inc.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %packet_head.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %packet_head.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then37.i, %if.end35.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %land.end.i.for.inc.i_crit_edge
  %head.1.i = phi i32 [ %head.069.i, %land.end.i.for.inc.i_crit_edge ], [ %and.i, %if.then37.i ], [ %and.i, %if.end35.i.for.inc.i_crit_edge ], [ %head.069.i, %if.else.i.for.inc.i_crit_edge ]
  %num.1.i = phi i32 [ %num.071.i, %land.end.i.for.inc.i_crit_edge ], [ 0, %if.then37.i ], [ %inc.i, %if.end35.i.for.inc.i_crit_edge ], [ 0, %if.else.i.for.inc.i_crit_edge ]
  %add40.i = add i32 %i.067.i, 1
  %and41.i = and i32 %add40.i, %sub.i1
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %client, align 4
  %cmp11.not.i = icmp eq i32 %and41.i, %17
  br i1 %cmp11.not.i, label %for.inc.i.__evdev_flush_queue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.__evdev_flush_queue.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__evdev_flush_queue.exit

__evdev_flush_queue.exit:                         ; preds = %for.inc.i.__evdev_flush_queue.exit_crit_edge, %if.end.__evdev_flush_queue.exit_crit_edge
  %head.0.lcssa.i = phi i32 [ %5, %if.end.__evdev_flush_queue.exit_crit_edge ], [ %head.1.i, %for.inc.i.__evdev_flush_queue.exit_crit_edge ]
  %18 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %head.0.lcssa.i, ptr %client, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock) #11
  %call3 = tail call fastcc i32 @bits_to_user(ptr noundef nonnull %call, i32 noundef %maxbit, i32 noundef %maxlen, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %__evdev_flush_queue.exit.if.end5_crit_edge

__evdev_flush_queue.exit.if.end5_crit_edge:       ; preds = %__evdev_flush_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %__evdev_flush_queue.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #11
  %evdev.i.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 6
  %19 = ptrtoint ptr %evdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %evdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.evdev, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call ptr @input_get_timestamp(ptr noundef %22) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #11
  %23 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  %clk_type.i.i = getelementptr inbounds %struct.evdev_client, ptr %client, i32 0, i32 8
  %24 = ptrtoint ptr %clk_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_type.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %call.i.i, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i.i, i64 noundef %27) #11
  %28 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ts.i.i, align 8
  %conv.i.i = trunc i64 %29 to i32
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %31, 1000
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %client, align 4
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %client, align 4
  %arrayidx1.i.i = getelementptr %struct.evdev_client, ptr %client, i32 0, i32 12, i32 %33
  %34 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i.i, ptr %arrayidx1.i.i, align 4
  %ev.sroa.5.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 4
  %35 = ptrtoint ptr %ev.sroa.5.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i.i, ptr %ev.sroa.5.0.arrayidx1.sroa_idx.i.i, align 4
  %ev.sroa.7.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 8
  %36 = ptrtoint ptr %ev.sroa.7.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %ev.sroa.7.0.arrayidx1.sroa_idx.i.i, align 4
  %ev.sroa.9.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 10
  %37 = ptrtoint ptr %ev.sroa.9.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 3, ptr %ev.sroa.9.0.arrayidx1.sroa_idx.i.i, align 2
  %ev.sroa.11.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 12
  %38 = ptrtoint ptr %ev.sroa.11.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ev.sroa.11.0.arrayidx1.sroa_idx.i.i, align 4
  %39 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bufsize.i, align 4
  %sub.i.i = add i32 %40, -1
  %41 = load i32, ptr %client, align 4
  %and.i.i = and i32 %41, %sub.i.i
  store i32 %and.i.i, ptr %client, align 4
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %43)
  %cmp.i.i = icmp eq i32 %and.i.i, %43
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then4.evdev_queue_syn_dropped.exit_crit_edge, !prof !77

if.then4.evdev_queue_syn_dropped.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %evdev_queue_syn_dropped.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %sub7.i.i = add i32 %and.i.i, -1
  %and10.i.i = and i32 %sub7.i.i, %sub.i.i
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and10.i.i, ptr %tail.i, align 4
  %45 = ptrtoint ptr %packet_head.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and10.i.i, ptr %packet_head.i, align 4
  br label %evdev_queue_syn_dropped.exit

evdev_queue_syn_dropped.exit:                     ; preds = %if.then.i.i, %if.then4.evdev_queue_syn_dropped.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call2.i) #11
  br label %if.end5

if.end5:                                          ; preds = %evdev_queue_syn_dropped.exit, %__evdev_flush_queue.exit.if.end5_crit_edge
  call void @bitmap_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @str_to_user(ptr noundef %str, i32 noundef %maxlen, ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %str) #18
  %add = add i32 %call, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %add, i32 %maxlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9.i.i = icmp slt i32 %0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !91

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %str, i32 noundef %0, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p, i32 %0, i32 -1226833920) #16, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %str, i32 noundef %0) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %p, ptr noundef nonnull %str, i32 noundef %0) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool4.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool4.not, i32 %0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_effect_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_upload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_grab_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_release_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_flush_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_set_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_evdev__248_1441_evdev_init6, !1, !"__initcall__kmod_evdev__248_1441_evdev_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/evdev.c", i32 1441, i32 1}
!2 = !{ptr @__exitcall_evdev_exit, !3, !"__exitcall_evdev_exit", i1 false, i1 false}
!3 = !{!"../drivers/input/evdev.c", i32 1442, i32 1}
!4 = !{ptr @__UNIQUE_ID_author249, !5, !"__UNIQUE_ID_author249", i1 false, i1 false}
!5 = !{!"../drivers/input/evdev.c", i32 1444, i32 1}
!6 = !{ptr @__UNIQUE_ID_description250, !7, !"__UNIQUE_ID_description250", i1 false, i1 false}
!7 = !{!"../drivers/input/evdev.c", i32 1445, i32 1}
!8 = !{ptr @__UNIQUE_ID_file251, !9, !"__UNIQUE_ID_file251", i1 false, i1 false}
!9 = !{!"../drivers/input/evdev.c", i32 1446, i32 1}
!10 = !{ptr @__UNIQUE_ID_license252, !9, !"__UNIQUE_ID_license252", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/evdev.c", i32 1427, i32 11}
!13 = !{ptr @evdev_handler, !14, !"evdev_handler", i1 false, i1 false}
!14 = !{!"../drivers/input/evdev.c", i32 1420, i32 29}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/input/evdev.c", i32 300, i32 11}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/input/evdev.c", i32 305, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @evdev_get_mask_cnt.counts, !27, !"counts", i1 false, i1 false}
!27 = !{!"../drivers/input/evdev.c", i32 58, i32 22}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/evdev.c", i32 1348, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @evdev_connect._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @evdev_connect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @evdev_connect.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/input/evdev.c", i32 1359, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @evdev_connect.__key.11, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/input/evdev.c", i32 1360, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/evdev.c", i32 1367, i32 28}
!44 = !{ptr @evdev_fops, !45, !"evdev_fops", i1 false, i1 false}
!45 = !{!"../drivers/input/evdev.c", i32 1292, i32 37}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../drivers/input/evdev.c", i32 359, i32 30}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @evdev_open.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/input/evdev.c", i32 481, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @evdev_open.__key.19, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/input/evdev.c", i32 483, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @evdev_ids, !63, !"evdev_ids", i1 false, i1 false}
!63 = !{!"../drivers/input/evdev.c", i32 1413, i32 37}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2149573504}
!75 = !{i64 2149573770}
!76 = !{i8 0, i8 2}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{!"auto-init"}
!79 = !{i64 4695619}
!80 = !{i64 4695816}
!81 = !{i64 2152181049}
!82 = !{i64 2154118277, i64 2154118557, i64 2154118891, i64 2154119225}
!83 = !{i64 2152200745, i64 2152200770}
!84 = !{i64 2154128740, i64 2154129020, i64 2154129354, i64 2154129688}
!85 = !{i64 2154137559, i64 2154137839, i64 2154138173, i64 2154138507}
!86 = !{i64 2154149856, i64 2154150136, i64 2154150470, i64 2154150804}
!87 = !{i64 2154162008, i64 2154162288, i64 2154162622, i64 2154162956}
!88 = !{i64 2154172897, i64 2154173177, i64 2154173511, i64 2154173845}
!89 = !{i64 2154036715}
!90 = !{i64 2152200064, i64 2152200089}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2154104862, i64 2154105142, i64 2154105476, i64 2154105810}
!93 = !{i64 2152196866, i64 2152196891}
!94 = !{i64 2154063768, i64 2154064048, i64 2154064382, i64 2154064716}
!95 = !{i64 2154075317, i64 2154075597, i64 2154075931, i64 2154076265}
!96 = !{i64 2154087682, i64 2154087962, i64 2154088296, i64 2154088630}
!97 = !{i64 2154097179, i64 2154097459, i64 2154097793, i64 2154098127}
!98 = !{i64 2154192136, i64 2154192416, i64 2154192750, i64 2154193084}
!99 = !{i32 0, i32 33}
!100 = !{i64 2149598896}

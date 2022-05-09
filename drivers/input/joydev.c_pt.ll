; ModuleID = '/llk/IR_all_yes/drivers/input/joydev.c_pt.bc'
source_filename = "../drivers/input/joydev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.joydev = type { i32, %struct.input_handle, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.device, %struct.cdev, i8, [64 x %struct.js_corr], %struct.JS_DATA_SAVE_TYPE_32, i32, i32, [512 x i16], [512 x i16], [64 x i8], [64 x i8], [64 x i16] }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.js_corr = type { [8 x i32], i16, i16 }
%struct.JS_DATA_SAVE_TYPE_32 = type { i32, i32, i32, i32, %struct.JS_DATA_TYPE, %struct.JS_DATA_TYPE }
%struct.JS_DATA_TYPE = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.js_event = type { i32, i16, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
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
%struct.joydev_client = type { [64 x %struct.js_event], i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__UNIQUE_ID_author228 = internal constant [46 x i8] c"joydev.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [46 x i8] c"joydev.description=Joystick device interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [33 x i8] c"joydev.file=drivers/input/joydev\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [19 x i8] c"joydev.license=GPL\00", section ".modinfo", align 1
@joydev_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @joydev_event, ptr null, ptr null, ptr @joydev_match, ptr @joydev_connect, ptr @joydev_disconnect, ptr null, i8 1, i32 0, ptr @.str, ptr @joydev_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_joydev__250_1097_joydev_init6 = internal global ptr @joydev_init, section ".initcall6.init", align 4
@__exitcall_joydev_exit = internal global ptr @joydev_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"joydev\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@joydev_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/input/joydev.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@joydev_dev_is_blacklisted.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.1, ptr @.str.7, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"joydev_dev_is_blacklisted\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"joydev: blacklisting '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@joydev_blacklist = internal constant { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, [496 x i8] } { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 616, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 1476, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 2508, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 2976, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 8406, i16 -13545, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8201, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8206, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8198, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8199, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id zeroinitializer }>, [496 x i8] zeroinitializer }, align 32
@joydev_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013joydev: failed to reserve new minor: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"joydev_connect\00", [17 x i8] zeroinitializer }, align 32
@joydev_connect._entry_ptr = internal global ptr @joydev_connect._entry, section ".printk_index", align 4
@joydev_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&joydev->client_lock\00", [43 x i8] zeroinitializer }, align 32
@joydev_connect.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&joydev->mutex\00", [17 x i8] zeroinitializer }, align 32
@joydev_connect.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&joydev->wait\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"js%d\00", [27 x i8] zeroinitializer }, align 32
@input_class = external dso_local global %struct.class, align 4
@joydev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @joydev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @joydev_poll, ptr @joydev_ioctl, ptr null, ptr null, i32 0, ptr @joydev_open, ptr null, ptr @joydev_release, ptr null, ptr @joydev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@joydev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&client->buffer_lock\00", [43 x i8] zeroinitializer }, align 32
@joydev_ids = internal constant { <{ %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }>, [320 x i8] } { <{ %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }> <{ %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 4, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 256, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 64, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [10 x i32], [14 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [14 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [10 x i32], [14 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536], [14 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0], [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, [320 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 11, i64 27, i64 31]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 1076128289, i64 2147576337, i64 2147576338, i64 2147772929, i64 2149870114]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 1073769009, i64 1073769011, i64 2147510803, i64 2147510834, i64 2147510836]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"joydev_handler\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1076, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1083, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 146, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 811, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"joydev_blacklist\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 777, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 921, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 932, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 933, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 934, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 941, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"joydev_fops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 710, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 230, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 214, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 174, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 268, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"joydev_ids\00", align 1
@___asan_gen_.108 = private constant [26 x i8] c"../drivers/input/joydev.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1028, i32 37 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_joydev_exit, ptr @__initcall__kmod_joydev__250_1097_joydev_init6, ptr @joydev_connect._entry, ptr @joydev_connect._entry_ptr, ptr @joydev_exit, ptr @joydev_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @joydev_blacklist, ptr @.str.9, ptr @.str.10, ptr @joydev_connect.__key, ptr @.str.11, ptr @joydev_connect.__key.12, ptr @.str.13, ptr @joydev_connect.__key.14, ptr @.str.15, ptr @.str.16, ptr @joydev_fops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @joydev_open.__key, ptr @.str.20, ptr @joydev_ids], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_blacklist to i32), i32 1968, i32 2464, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_connect.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_connect.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydev_ids to i32), i32 1312, i32 1632, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @joydev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_handler(ptr noundef nonnull @joydev_handler) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_register_handler(ptr noundef nonnull @joydev_handler) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @joydev_event(ptr nocapture noundef readonly %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %code)
  %cmp = icmp ult i32 %code, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp1 = icmp eq i32 %value, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %code, -256
  %arrayidx = getelementptr %struct.joydev, ptr %1, i32 0, i32 13, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = trunc i16 %4 to i8
  %conv3 = trunc i32 %value to i16
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %arrayidx7 = getelementptr %struct.joydev, ptr %1, i32 0, i32 15, i32 %code
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx10 = getelementptr %struct.joydev, ptr %1, i32 0, i32 9, i32 %idxprom
  %type.i = getelementptr %struct.joydev, ptr %1, i32 0, i32 9, i32 %idxprom, i32 2
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %8, label %sw.bb5.joydev_correct.exit_crit_edge [
    i16 0, label %sw.bb5.sw.epilog.i_crit_edge
    i16 1, label %sw.bb.i
  ]

sw.bb5.sw.epilog.i_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.joydev_correct.exit_crit_edge:             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit

sw.bb.i:                                          ; preds = %sw.bb5
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %value)
  %cmp.i = icmp slt i32 %11, %value
  br i1 %cmp.i, label %cond.true.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

cond.true.i:                                      ; preds = %sw.bb.i
  %arrayidx3.i = getelementptr [8 x i32], ptr %arrayidx10, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %value)
  %cmp4.i = icmp sgt i32 %13, %value
  br i1 %cmp4.i, label %cond.true.i..thread53.i_crit_edge, label %cond.true.i.sw.epilog.sink.split.i_crit_edge

cond.true.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

cond.true.i..thread53.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i

sw.epilog.sink.split.i:                           ; preds = %cond.true.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 3, %cond.true.i.sw.epilog.sink.split.i_crit_edge ], [ 2, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink56.i = phi i32 [ %13, %cond.true.i.sw.epilog.sink.split.i_crit_edge ], [ %11, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ]
  %arrayidx13.i = getelementptr [8 x i32], ptr %arrayidx10, i32 0, i32 %.sink.i
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i, align 4
  %sub16.i = sub i32 %value, %.sink56.i
  %mul17.i = mul i32 %15, %sub16.i
  %shr18.i = ashr i32 %mul17.i, 14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb5.sw.epilog.i_crit_edge
  %value.addr.0.i = phi i32 [ %value, %sw.bb5.sw.epilog.i_crit_edge ], [ %shr18.i, %sw.epilog.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %value.addr.0.i)
  %cmp21.i = icmp sgt i32 %value.addr.0.i, -32767
  br i1 %cmp21.i, label %16, label %sw.epilog.i..thread53.i_crit_edge

sw.epilog.i..thread53.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i

16:                                               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %value.addr.0.i)
  %cmp28.i = icmp slt i32 %value.addr.0.i, 32767
  br i1 %cmp28.i, label %..thread53.i_crit_edge, label %.joydev_correct.exit_crit_edge

.joydev_correct.exit_crit_edge:                   ; preds = %16
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit

..thread53.i_crit_edge:                           ; preds = %16
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i

.thread53.i:                                      ; preds = %..thread53.i_crit_edge, %sw.epilog.i..thread53.i_crit_edge, %cond.true.i..thread53.i_crit_edge
  %17 = phi i32 [ %value.addr.0.i, %..thread53.i_crit_edge ], [ 0, %cond.true.i..thread53.i_crit_edge ], [ -32767, %sw.epilog.i..thread53.i_crit_edge ]
  br label %joydev_correct.exit

joydev_correct.exit:                              ; preds = %.thread53.i, %.joydev_correct.exit_crit_edge, %sw.bb5.joydev_correct.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb5.joydev_correct.exit_crit_edge ], [ %17, %.thread53.i ], [ 32767, %.joydev_correct.exit_crit_edge ]
  %arrayidx17 = getelementptr %struct.joydev, ptr %1, i32 0, i32 17, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv18)
  %cmp19 = icmp eq i32 %retval.0.i, %conv18
  br i1 %cmp19, label %joydev_correct.exit.cleanup_crit_edge, label %if.end22

joydev_correct.exit.cleanup_crit_edge:            ; preds = %joydev_correct.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %joydev_correct.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = trunc i32 %retval.0.i to i16
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %arrayidx17, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22, %if.end
  %event.sroa.11.0 = phi i8 [ %6, %if.end22 ], [ %conv, %if.end ]
  %event.sroa.8.0 = phi i8 [ 2, %if.end22 ], [ 1, %if.end ]
  %event.sroa.5.0 = phi i16 [ %conv11, %if.end22 ], [ %conv3, %if.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call28 = tail call i32 @jiffies_to_msecs(i32 noundef %21) #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
  %call29 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true32

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @joydev_event.__warned, align 1
  br i1 %.b67, label %land.lhs.true32.do.end_crit_edge, label %if.then34

land.lhs.true32.do.end_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @joydev_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @.str.2) #11
  br label %do.end

do.end:                                           ; preds = %if.then34, %land.lhs.true32.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %client_list = getelementptr inbounds %struct.joydev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn79 = load volatile ptr, ptr %client_list, align 4
  %cmp41.not80 = icmp eq ptr %.pn79, %client_list
  br i1 %cmp41.not80, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %event.sroa.11.0.insert.ext = zext i8 %event.sroa.11.0 to i64
  %event.sroa.8.0.insert.ext = zext i8 %event.sroa.8.0 to i64
  %event.sroa.8.0.insert.shift = shl nuw nsw i64 %event.sroa.8.0.insert.ext, 8
  %event.sroa.8.0.insert.insert = or i64 %event.sroa.8.0.insert.shift, %event.sroa.11.0.insert.ext
  %event.sroa.5.0.insert.ext = zext i16 %event.sroa.5.0 to i64
  %event.sroa.5.0.insert.shift = shl nuw nsw i64 %event.sroa.5.0.insert.ext, 16
  %event.sroa.5.0.insert.insert = or i64 %event.sroa.8.0.insert.insert, %event.sroa.5.0.insert.shift
  %event.sroa.0.0.insert.ext = zext i32 %call28 to i64
  %event.sroa.0.0.insert.shift = shl nuw i64 %event.sroa.0.0.insert.ext, 32
  %event.sroa.0.0.insert.insert = or i64 %event.sroa.0.0.insert.shift, %event.sroa.5.0.insert.insert
  br label %for.body

for.body:                                         ; preds = %joydev_pass_event.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn79, %for.body.lr.ph ], [ %.pn, %joydev_pass_event.exit.for.body_crit_edge ]
  %client.0 = getelementptr i8, ptr %.pn81, i32 -576
  %joydev1.i = getelementptr i8, ptr %.pn81, i32 -4
  %27 = ptrtoint ptr %joydev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %joydev1.i, align 4
  %buffer_lock.i = getelementptr i8, ptr %.pn81, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock.i) #11
  %head.i = getelementptr i8, ptr %.pn81, i32 -64
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head.i, align 4
  %arrayidx.i = getelementptr [64 x %struct.js_event], ptr %client.0, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %event.sroa.0.0.insert.insert, ptr %arrayidx.i, align 4
  %startup.i = getelementptr i8, ptr %.pn81, i32 -56
  %32 = ptrtoint ptr %startup.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %startup.i, align 4
  %nabs.i = getelementptr inbounds %struct.joydev, ptr %28, i32 0, i32 11
  %34 = ptrtoint ptr %nabs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nabs.i, align 4
  %nkey.i = getelementptr inbounds %struct.joydev, ptr %28, i32 0, i32 12
  %36 = ptrtoint ptr %nkey.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nkey.i, align 8
  %add.i = add i32 %37, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i)
  %cmp.i68 = icmp eq i32 %33, %add.i
  br i1 %cmp.i68, label %if.then.i69, label %for.body.joydev_pass_event.exit_crit_edge

for.body.joydev_pass_event.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_pass_event.exit

if.then.i69:                                      ; preds = %for.body
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head.i, align 4
  %inc.i = add i32 %39, 1
  %and.i = and i32 %inc.i, 63
  store i32 %and.i, ptr %head.i, align 4
  %tail.i = getelementptr i8, ptr %.pn81, i32 -60
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and.i)
  %cmp5.i = icmp eq i32 %41, %and.i
  br i1 %cmp5.i, label %if.then6.i, label %if.then.i69.joydev_pass_event.exit_crit_edge

if.then.i69.joydev_pass_event.exit_crit_edge:     ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_pass_event.exit

if.then6.i:                                       ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %startup.i, align 4
  br label %joydev_pass_event.exit

joydev_pass_event.exit:                           ; preds = %if.then6.i, %if.then.i69.joydev_pass_event.exit_crit_edge, %for.body.joydev_pass_event.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buffer_lock.i) #11
  %fasync.i = getelementptr i8, ptr %.pn81, i32 -8
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #11
  %43 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load volatile ptr, ptr %.pn81, align 4
  %cmp41.not = icmp eq ptr %.pn, %client_list
  br i1 %cmp41.not, label %joydev_pass_event.exit.for.end_crit_edge, label %joydev_pass_event.exit.for.body_crit_edge

joydev_pass_event.exit.for.body_crit_edge:        ; preds = %joydev_pass_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

joydev_pass_event.exit.for.end_crit_edge:         ; preds = %joydev_pass_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %joydev_pass_event.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i70, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %for.end
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %44 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i77 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %wait = getelementptr inbounds %struct.joydev, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %joydev_correct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @joydev_match(ptr nocapture noundef readnone %handler, ptr noundef %dev) #2 align 64 {
entry:
  %jd_scratch.i = alloca [24 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @joydev_dev_is_blacklisted(ptr noundef %dev)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %jd_scratch.i) #11
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evbit.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %if.end.joydev_dev_is_absolute_mouse.exit.thread_crit_edge [
    i32 31, label %if.end.if.end24.i_crit_edge
    i32 27, label %if.end.if.end24.i_crit_edge6
    i32 11, label %if.end.if.end24.i_crit_edge7
  ]

if.end.if.end24.i_crit_edge7:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end.if.end24.i_crit_edge6:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end.joydev_dev_is_absolute_mouse.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_dev_is_absolute_mouse.exit.thread

if.end24.i:                                       ; preds = %if.end.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge6, %if.end.if.end24.i_crit_edge7
  %3 = ptrtoint ptr %jd_scratch.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 12884901888, ptr %jd_scratch.i, align 8
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %absbit.i, ptr noundef nonnull dereferenceable(8) %jd_scratch.i, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool9.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool9.not.i.not.i, label %if.end33.i, label %if.end24.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge

if.end24.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_dev_is_absolute_mouse.exit.thread

if.end33.i:                                       ; preds = %if.end24.i
  %4 = call ptr @memset(ptr %jd_scratch.i, i32 0, i32 96)
  %add.ptr.i.i = getelementptr inbounds i32, ptr %jd_scratch.i, i32 8
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 458752, ptr %add.ptr.i.i, align 8
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  %bcmp.i69.i = call i32 @bcmp(ptr noundef dereferenceable(96) %keybit.i, ptr noundef nonnull dereferenceable(96) %jd_scratch.i, i32 96) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i69.i)
  %tobool9.not.i70.not.i = icmp eq i32 %bcmp.i69.i, 0
  br i1 %tobool9.not.i70.not.i, label %joydev_dev_is_absolute_mouse.exit, label %if.end33.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge

if.end33.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_dev_is_absolute_mouse.exit.thread

joydev_dev_is_absolute_mouse.exit.thread:         ; preds = %if.end33.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge, %if.end24.i.joydev_dev_is_absolute_mouse.exit.thread_crit_edge, %if.end.joydev_dev_is_absolute_mouse.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %jd_scratch.i) #11
  br label %return

joydev_dev_is_absolute_mouse.exit:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %id.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %7)
  %cmp.i.not = icmp eq i16 %7, 22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %jd_scratch.i) #11
  br label %return

return:                                           ; preds = %joydev_dev_is_absolute_mouse.exit, %joydev_dev_is_absolute_mouse.exit.thread, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %joydev_dev_is_absolute_mouse.exit.thread ], [ %cmp.i.not, %joydev_dev_is_absolute_mouse.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_get_new_minor(i32 noundef 0, i32 noundef 16, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5992) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_free_minor_crit_edge, label %if.end4

if.end.err_free_minor_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_minor

if.end4:                                          ; preds = %if.end
  %client_list = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client_list, ptr %prev.i, align 8
  %client_lock = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %client_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @joydev_connect.__key, i16 noundef signext 3) #11
  %mutex = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @joydev_connect.__key.12) #11
  %wait = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @joydev_connect.__key.14) #11
  %exist = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %exist to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %exist, align 8
  %dev18 = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6
  %call19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev18, ptr noundef nonnull @.str.16, i32 noundef %call) #11
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
  %handle = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 1
  %dev21 = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond.i, ptr %dev21, align 8
  %init_name.i = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i280 = icmp eq ptr %6, null
  br i1 %tobool.not.i280, label %if.end.i, label %input_get_device.exit.dev_name.exit_crit_edge

input_get_device.exit.dev_name.exit_crit_edge:    ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %input_get_device.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %input_get_device.exit.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 4
  %handler26 = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %handler26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %handler, ptr %handler26, align 4
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %handle, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 8
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %absbit, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call28)
  %cmp29337 = icmp slt i32 %call28, 64
  br i1 %cmp29337, label %for.body.lr.ph, label %dev_name.exit.for.cond37.preheader_crit_edge

dev_name.exit.for.cond37.preheader_crit_edge:     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %dev_name.exit
  %nabs = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 11
  br label %for.body

for.cond37.preheader:                             ; preds = %for.body.for.cond37.preheader_crit_edge, %dev_name.exit.for.cond37.preheader_crit_edge
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  %nkey = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 12
  br label %for.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0338 = phi i32 [ %call28, %for.body.lr.ph ], [ %call36, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %nabs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nabs, align 4
  %conv = trunc i32 %13 to i8
  %arrayidx = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 15, i32 %i.0338
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %conv30 = trunc i32 %i.0338 to i8
  %15 = load i32, ptr %nabs, align 4
  %arrayidx32 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv30, ptr %arrayidx32, align 1
  %17 = load i32, ptr %nabs, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %nabs, align 4
  %add = add nsw i32 %i.0338, 1
  %call36 = tail call i32 @_find_next_bit_be(ptr noundef %absbit, i32 noundef 64, i32 noundef %add) #11
  %cmp29 = icmp slt i32 %call36, 64
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.for.cond37.preheader_crit_edge

for.body.for.cond37.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body40:                                       ; preds = %for.inc55.for.body40_crit_edge, %for.cond37.preheader
  %i.1339 = phi i32 [ 32, %for.cond37.preheader ], [ %inc56, %for.inc55.for.body40_crit_edge ]
  %add41 = add nuw nsw i32 %i.1339, 256
  %div3.i = lshr i32 %add41, 5
  %arrayidx.i = getelementptr i32, ptr %keybit, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1339, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  br i1 %tobool44.not, label %for.body40.for.inc55_crit_edge, label %if.then45

for.body40.for.inc55_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

if.then45:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %nkey to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nkey, align 8
  %conv46 = trunc i32 %23 to i16
  %arrayidx47 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 13, i32 %i.1339
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv46, ptr %arrayidx47, align 2
  %conv49 = trunc i32 %add41 to i16
  %25 = load i32, ptr %nkey, align 8
  %arrayidx51 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 14, i32 %25
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv49, ptr %arrayidx51, align 2
  %27 = load i32, ptr %nkey, align 8
  %inc53 = add i32 %27, 1
  store i32 %inc53, ptr %nkey, align 8
  br label %for.inc55

for.inc55:                                        ; preds = %if.then45, %for.body40.for.inc55_crit_edge
  %inc56 = add nuw nsw i32 %i.1339, 1
  %exitcond.not = icmp eq i32 %inc56, 512
  br i1 %exitcond.not, label %for.inc55.for.body61_crit_edge, label %for.inc55.for.body40_crit_edge

for.inc55.for.body40_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.inc55.for.body61_crit_edge:                   ; preds = %for.inc55
  br label %for.body61

for.cond83.preheader:                             ; preds = %for.inc80
  %nabs84 = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %nabs84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nabs84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp85343 = icmp sgt i32 %29, 0
  br i1 %cmp85343, label %for.body87.lr.ph, label %for.cond83.preheader.for.end140_crit_edge

for.cond83.preheader.for.end140_crit_edge:        ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end140

for.body87.lr.ph:                                 ; preds = %for.cond83.preheader
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 26
  %30 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i281 = icmp eq ptr %31, null
  br label %for.body87

for.body61:                                       ; preds = %for.inc80.for.body61_crit_edge, %for.inc55.for.body61_crit_edge
  %i.2341 = phi i32 [ %inc81, %for.inc80.for.body61_crit_edge ], [ 0, %for.inc55.for.body61_crit_edge ]
  %add62 = add nuw nsw i32 %i.2341, 256
  %div3.i275 = lshr i32 %add62, 5
  %arrayidx.i276 = getelementptr i32, ptr %keybit, i32 %div3.i275
  %32 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i276, align 4
  %34 = shl nuw i32 1, %i.2341
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool66.not = icmp eq i32 %35, 0
  br i1 %tobool66.not, label %for.body61.for.inc80_crit_edge, label %if.then67

for.body61.for.inc80_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then67:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %nkey to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nkey, align 8
  %conv69 = trunc i32 %37 to i16
  %arrayidx71 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 13, i32 %i.2341
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv69, ptr %arrayidx71, align 2
  %conv73 = trunc i32 %add62 to i16
  %39 = load i32, ptr %nkey, align 8
  %arrayidx76 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 14, i32 %39
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv73, ptr %arrayidx76, align 2
  %41 = load i32, ptr %nkey, align 8
  %inc78 = add i32 %41, 1
  store i32 %inc78, ptr %nkey, align 8
  br label %for.inc80

for.inc80:                                        ; preds = %if.then67, %for.body61.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.2341, 1
  %exitcond346.not = icmp eq i32 %inc81, 32
  br i1 %exitcond346.not, label %for.cond83.preheader, label %for.inc80.for.body61_crit_edge

for.inc80.for.body61_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

for.body87:                                       ; preds = %for.inc138.for.body87_crit_edge, %for.body87.lr.ph
  %i.3344 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc139, %for.inc138.for.body87_crit_edge ]
  %arrayidx89 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 16, i32 %i.3344
  %42 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %43 to i32
  br i1 %tobool.not.i281, label %for.body87.if.then95_crit_edge, label %input_abs_get_min.exit

for.body87.if.then95_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then95

input_abs_get_min.exit:                           ; preds = %for.body87
  %maximum.i = getelementptr %struct.input_absinfo, ptr %31, i32 %conv90, i32 2
  %44 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maximum.i, align 4
  %minimum.i = getelementptr %struct.input_absinfo, ptr %31, i32 %conv90, i32 1
  %46 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minimum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp93 = icmp eq i32 %45, %47
  br i1 %cmp93, label %input_abs_get_min.exit.if.then95_crit_edge, label %input_abs_get_flat.exit331

input_abs_get_min.exit.if.then95_crit_edge:       ; preds = %input_abs_get_min.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then95

if.then95:                                        ; preds = %input_abs_get_min.exit.if.then95_crit_edge, %for.body87.if.then95_crit_edge
  %type = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 9, i32 %i.3344, i32 2
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %type, align 2
  br label %for.inc138

input_abs_get_flat.exit331:                       ; preds = %input_abs_get_min.exit
  %arrayidx99 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 9, i32 %i.3344
  %type100 = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 9, i32 %i.3344, i32 2
  %49 = ptrtoint ptr %type100 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %type100, align 2
  %fuzz.i = getelementptr %struct.input_absinfo, ptr %31, i32 %conv90, i32 3
  %50 = ptrtoint ptr %fuzz.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fuzz.i, align 4
  %conv102 = trunc i32 %51 to i16
  %prec = getelementptr %struct.joydev, ptr %call7.i.i, i32 0, i32 9, i32 %i.3344, i32 1
  %52 = ptrtoint ptr %prec to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv102, ptr %prec, align 4
  %53 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maximum.i, align 4
  %55 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %minimum.i, align 4
  %add107 = add i32 %56, %54
  %div = sdiv i32 %add107, 2
  %flat.i = getelementptr %struct.input_absinfo, ptr %31, i32 %conv90, i32 4
  %57 = ptrtoint ptr %flat.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flat.i, align 4
  %sub109 = sub i32 %div, %58
  %59 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub109, ptr %arrayidx99, align 4
  %60 = load i32, ptr %flat.i, align 4
  %add114 = add i32 %60, %div
  %arrayidx118 = getelementptr [8 x i32], ptr %arrayidx99, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add114, ptr %arrayidx118, align 4
  %62 = load i32, ptr %maximum.i, align 4
  %63 = load i32, ptr %minimum.i, align 4
  %sub121 = sub i32 %62, %63
  %div122 = sdiv i32 %sub121, 2
  %64 = load i32, ptr %flat.i, align 4
  %mul.neg = mul i32 %64, -2
  %sub124 = add i32 %mul.neg, %div122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub124)
  %tobool125.not = icmp eq i32 %sub124, 0
  br i1 %tobool125.not, label %input_abs_get_flat.exit331.for.inc138_crit_edge, label %if.then126

input_abs_get_flat.exit331.for.inc138_crit_edge:  ; preds = %input_abs_get_flat.exit331
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc138

if.then126:                                       ; preds = %input_abs_get_flat.exit331
  call void @__sanitizer_cov_trace_pc() #13
  %div127 = sdiv i32 536870912, %sub124
  %arrayidx131 = getelementptr [8 x i32], ptr %arrayidx99, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div127, ptr %arrayidx131, align 4
  %arrayidx136 = getelementptr [8 x i32], ptr %arrayidx99, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div127, ptr %arrayidx136, align 4
  br label %for.inc138

for.inc138:                                       ; preds = %if.then126, %input_abs_get_flat.exit331.for.inc138_crit_edge, %if.then95
  %inc139 = add nuw nsw i32 %i.3344, 1
  %67 = ptrtoint ptr %nabs84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nabs84, align 4
  %cmp85 = icmp slt i32 %inc139, %68
  br i1 %cmp85, label %for.inc138.for.body87_crit_edge, label %for.inc138.for.end140_crit_edge

for.inc138.for.end140_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end140

for.inc138.for.body87_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body87

for.end140:                                       ; preds = %for.inc138.for.end140_crit_edge, %for.cond83.preheader.for.end140_crit_edge
  %or = or i32 %call, 13631488
  %devt = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6, i32 29
  %69 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or, ptr %devt, align 8
  %class = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6, i32 33
  %70 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @input_class, ptr %class, align 4
  %dev143 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %parent = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev143, ptr %parent, align 8
  %release = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 6, i32 35
  %72 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @joydev_free, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev18) #11
  %call148 = tail call i32 @input_register_handle(ptr noundef %handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %for.end140.err_free_joydev_crit_edge

for.end140.err_free_joydev_crit_edge:             ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_joydev

if.end151:                                        ; preds = %for.end140
  %cdev = getelementptr inbounds %struct.joydev, ptr %call7.i.i, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @joydev_fops) #11
  %call154 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end151.cleanup_crit_edge, label %err_cleanup_joydev

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_cleanup_joydev:                               ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @joydev_cleanup(ptr noundef nonnull %call7.i.i)
  tail call void @input_unregister_handle(ptr noundef %handle) #11
  br label %err_free_joydev

err_free_joydev:                                  ; preds = %err_cleanup_joydev, %for.end140.err_free_joydev_crit_edge
  %error.0 = phi i32 [ %call148, %for.end140.err_free_joydev_crit_edge ], [ %call154, %err_cleanup_joydev ]
  tail call void @put_device(ptr noundef %dev18) #11
  br label %err_free_minor

err_free_minor:                                   ; preds = %err_free_joydev, %if.end.err_free_minor_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_joydev ], [ -12, %if.end.err_free_minor_crit_edge ]
  tail call void @input_free_minor(i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_minor, %if.end151.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %error.1, %err_free_minor ], [ 0, %if.end151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @joydev_disconnect(ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %cdev = getelementptr inbounds %struct.joydev, ptr %1, i32 0, i32 7
  %dev = getelementptr inbounds %struct.joydev, ptr %1, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #11
  tail call fastcc void @joydev_cleanup(ptr noundef %1)
  %devt = getelementptr inbounds %struct.joydev, ptr %1, i32 0, i32 6, i32 29
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @joydev_dev_is_blacklisted(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef nonnull @joydev_blacklist) #11
  br i1 %call, label %entry.do.body_crit_edge, label %for.cond

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond:                                         ; preds = %entry
  %call.1 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 1, i32 0)) #11
  br i1 %call.1, label %for.cond.do.body_crit_edge, label %for.cond.1

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 2)) #11
  br i1 %call.2, label %for.cond.1.do.body_crit_edge, label %for.cond.2

for.cond.1.do.body_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 3)) #11
  br i1 %call.3, label %for.cond.2.do.body_crit_edge, label %for.cond.3

for.cond.2.do.body_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 4)) #11
  br i1 %call.4, label %for.cond.3.do.body_crit_edge, label %for.cond.4

for.cond.3.do.body_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 5)) #11
  br i1 %call.5, label %for.cond.4.do.body_crit_edge, label %for.cond.5

for.cond.4.do.body_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 6)) #11
  br i1 %call.6, label %for.cond.5.do.body_crit_edge, label %for.cond.6

for.cond.5.do.body_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 7)) #11
  br i1 %call.7, label %for.cond.6.do.body_crit_edge, label %for.cond.7

for.cond.6.do.body_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 8)) #11
  br i1 %call.8, label %for.cond.7.do.body_crit_edge, label %for.cond.8

for.cond.7.do.body_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.8:                                       ; preds = %for.cond.7
  %call.9 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 9)) #11
  br i1 %call.9, label %for.cond.8.do.body_crit_edge, label %for.cond.9

for.cond.8.do.body_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.9:                                       ; preds = %for.cond.8
  %call.10 = tail call zeroext i1 @input_match_device_id(ptr noundef %dev, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 10)) #11
  br i1 %call.10, label %for.cond.9.do.body_crit_edge, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.9.do.body_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.cond.9.do.body_crit_edge, %for.cond.8.do.body_crit_edge, %for.cond.7.do.body_crit_edge, %for.cond.6.do.body_crit_edge, %for.cond.5.do.body_crit_edge, %for.cond.4.do.body_crit_edge, %for.cond.3.do.body_crit_edge, %for.cond.2.do.body_crit_edge, %for.cond.1.do.body_crit_edge, %for.cond.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joydev_dev_is_blacklisted.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joydev_dev_is_blacklisted, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !74

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joydev_dev_is_blacklisted.__UNIQUE_ID_ddebug248, ptr noundef %dev6, ptr noundef nonnull @.str.7, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %for.cond.9.cleanup_crit_edge
  %tobool.not14 = phi i1 [ true, %do.body ], [ true, %if.then5 ], [ false, %for.cond.9.cleanup_crit_edge ]
  ret i1 %tobool.not14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_match_device_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_new_minor(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @joydev_free(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 -224
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
  %add.ptr = getelementptr i8, ptr %dev, i32 -240
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
define internal fastcc void @joydev_cleanup(ptr noundef %joydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %exist.i = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 8
  %0 = ptrtoint ptr %exist.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %exist.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  %client_lock.i = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %client_list.i = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 3
  %1 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn14.i = load ptr, ptr %client_list.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %client_list.i
  br i1 %cmp.not15.i, label %entry.joydev_hangup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.joydev_hangup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_hangup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn14.i, %entry.for.body.i_crit_edge ]
  %fasync.i = getelementptr i8, ptr %.pn16.i, i32 -8
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 6) #11
  %2 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.joydev_hangup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.joydev_hangup.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_hangup.exit

joydev_hangup.exit:                               ; preds = %for.body.i.joydev_hangup.exit_crit_edge, %entry.joydev_hangup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  %wait.i = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %3 = ptrtoint ptr %joydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %joydev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %joydev_hangup.exit.if.end_crit_edge, label %if.then

joydev_hangup.exit.if.end_crit_edge:              ; preds = %joydev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %joydev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %handle1 = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %joydev_hangup.exit.if.end_crit_edge
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %data.i = alloca %struct.JS_DATA_TYPE, align 4
  %event = alloca %struct.js_event, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %joydev1 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %joydev1, align 4
  %dev = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #11
  %6 = getelementptr inbounds %struct.js_event, ptr %event, i32 0, i32 1
  %7 = getelementptr inbounds %struct.js_event, ptr %event, i32 0, i32 2
  %8 = getelementptr inbounds %struct.js_event, ptr %event, i32 0, i32 3
  %exist = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %event, align 8
  %10 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exist, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ult i32 %count, 8
  br i1 %cmp, label %if.end.cleanup66_crit_edge, label %if.end4

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %count)
  %cmp5 = icmp eq i32 %count, 12
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #11
  %12 = getelementptr inbounds %struct.JS_DATA_TYPE, ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.JS_DATA_TYPE, ptr %data.i, i32 0, i32 2
  %event_lock.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock.i) #11
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data.i, align 4
  %nkey.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %nkey.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nkey.i, align 8
  %key.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 27
  %smax.i = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.then6
  %i.046.i = phi i32 [ 0, %if.then6 ], [ %inc.i, %for.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.046.i, i32 %smax.i)
  %exitcond.not.i = icmp eq i32 %i.046.i, %smax.i
  br i1 %exitcond.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %arrayidx.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 14, i32 %i.046.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %18 to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %key.i, i32 %div3.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %21 = shl nuw i32 1, %and.i.i
  %22 = and i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %shl.i = shl nuw i32 1, %i.046.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data.i, align 4
  %or.i = or i32 %spec.select.i, %24
  store i32 %or.i, ptr %data.i, align 4
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond47.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond47.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %abs.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 17
  %25 = ptrtoint ptr %abs.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %abs.i, align 4
  %27 = sdiv i16 %26, 256
  %narrow.i = add nsw i16 %27, 128
  %add41.i = zext i16 %narrow.i to i32
  %x.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 5, i32 1
  %28 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %x.i, align 4
  %shr42.i = lshr i32 %add41.i, %29
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr42.i, ptr %12, align 4
  %arrayidx8.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx8.i, align 2
  %33 = sdiv i16 %32, 256
  %narrow38.i = add nsw i16 %33, 128
  %add1143.i = zext i16 %narrow38.i to i32
  %y.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 5, i32 2
  %34 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %y.i, align 4
  %shr1444.i = lshr i32 %add1143.i, %35
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr1444.i, ptr %13, align 4
  %buffer_lock.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock.i) #11
  %startup.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %startup.i, align 4
  %head.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buffer_lock.i) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock.i) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i.i112 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i112, label %for.end.i.joydev_0x_read.exit_crit_edge, label %if.end.i.i.i

for.end.i.joydev_0x_read.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_0x_read.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 12, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.joydev_0x_read.exit_crit_edge

if.end.i.i.i.joydev_0x_read.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_0x_read.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 12) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %data.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool19.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select45.i = select i1 %tobool19.not.i, i32 12, i32 -14
  br label %joydev_0x_read.exit

joydev_0x_read.exit:                              ; preds = %copy_to_user.exit.i, %if.end.i.i.i.joydev_0x_read.exit_crit_edge, %for.end.i.joydev_0x_read.exit_crit_edge
  %42 = phi i32 [ -14, %for.end.i.joydev_0x_read.exit_crit_edge ], [ -14, %if.end.i.i.i.joydev_0x_read.exit_crit_edge ], [ %spec.select45.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #11
  br label %cleanup66

if.end7:                                          ; preds = %if.end4
  %startup.i114 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %startup.i114, align 4
  %nabs.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 11
  %45 = ptrtoint ptr %nabs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nabs.i, align 4
  %nkey.i115 = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 12
  %47 = ptrtoint ptr %nkey.i115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nkey.i115, align 8
  %add.i = add i32 %48, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i)
  %cmp.i = icmp slt i32 %44, %add.i
  br i1 %cmp.i, label %if.end7.if.end12_crit_edge, label %joydev_data_pending.exit

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

joydev_data_pending.exit:                         ; preds = %if.end7
  %head.i116 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %head.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %head.i116, align 4
  %tail.i117 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %tail.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail.i117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp2.i.not = icmp eq i32 %50, %52
  br i1 %cmp2.i.not, label %land.lhs.true, label %joydev_data_pending.exit.if.end12_crit_edge

joydev_data_pending.exit.if.end12_crit_edge:      ; preds = %joydev_data_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %joydev_data_pending.exit
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %53 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_flags, align 4
  %and = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup66_crit_edge

land.lhs.true.cleanup66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %joydev_data_pending.exit.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 405) #11
  %55 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %exist, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool17.not = icmp eq i8 %56, 0
  br i1 %tobool17.not, label %if.end12.cleanup66_crit_edge, label %lor.lhs.false

if.end12.cleanup66_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

lor.lhs.false:                                    ; preds = %if.end12
  %57 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %joydev1, align 4
  %59 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %startup.i114, align 4
  %nabs.i120 = getelementptr inbounds %struct.joydev, ptr %58, i32 0, i32 11
  %61 = ptrtoint ptr %nabs.i120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nabs.i120, align 4
  %nkey.i121 = getelementptr inbounds %struct.joydev, ptr %58, i32 0, i32 12
  %63 = ptrtoint ptr %nkey.i121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nkey.i121, align 8
  %add.i122 = add i32 %64, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add.i122)
  %cmp.i123 = icmp slt i32 %60, %add.i122
  br i1 %cmp.i123, label %lor.lhs.false.if.end38_crit_edge, label %joydev_data_pending.exit129

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

joydev_data_pending.exit129:                      ; preds = %lor.lhs.false
  %head.i124 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %head.i124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head.i124, align 4
  %tail.i125 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %tail.i125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp2.i126.not = icmp eq i32 %66, %68
  br i1 %cmp2.i126.not, label %if.then20, label %joydev_data_pending.exit129.if.end38_crit_edge

joydev_data_pending.exit129.if.end38_crit_edge:   ; preds = %joydev_data_pending.exit129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then20:                                        ; preds = %joydev_data_pending.exit129
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %69 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 2
  %call22197 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %70 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %exist, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool24.not198 = icmp eq i8 %71, 0
  br i1 %tobool24.not198, label %if.then20.if.end34.thread177_crit_edge, label %if.then20.lor.lhs.false25_crit_edge

if.then20.lor.lhs.false25_crit_edge:              ; preds = %if.then20
  br label %lor.lhs.false25

if.then20.if.end34.thread177_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread177

lor.lhs.false25:                                  ; preds = %cleanup.lor.lhs.false25_crit_edge, %if.then20.lor.lhs.false25_crit_edge
  %call22199 = phi i32 [ %call22, %cleanup.lor.lhs.false25_crit_edge ], [ %call22197, %if.then20.lor.lhs.false25_crit_edge ]
  %72 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %joydev1, align 4
  %74 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %startup.i114, align 4
  %nabs.i132 = getelementptr inbounds %struct.joydev, ptr %73, i32 0, i32 11
  %76 = ptrtoint ptr %nabs.i132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nabs.i132, align 4
  %nkey.i133 = getelementptr inbounds %struct.joydev, ptr %73, i32 0, i32 12
  %78 = ptrtoint ptr %nkey.i133 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nkey.i133, align 8
  %add.i134 = add i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add.i134)
  %cmp.i135 = icmp slt i32 %75, %add.i134
  br i1 %cmp.i135, label %lor.lhs.false25.if.end34.thread177_crit_edge, label %joydev_data_pending.exit141

lor.lhs.false25.if.end34.thread177_crit_edge:     ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread177

joydev_data_pending.exit141:                      ; preds = %lor.lhs.false25
  %80 = ptrtoint ptr %head.i124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %head.i124, align 4
  %82 = ptrtoint ptr %tail.i125 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tail.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp2.i138.not = icmp eq i32 %81, %83
  br i1 %cmp2.i138.not, label %if.end29, label %joydev_data_pending.exit141.if.end34.thread177_crit_edge

joydev_data_pending.exit141.if.end34.thread177_crit_edge: ; preds = %joydev_data_pending.exit141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread177

if.end29:                                         ; preds = %joydev_data_pending.exit141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22199)
  %tobool30.not = icmp eq i32 %call22199, 0
  br i1 %tobool30.not, label %cleanup, label %if.end34

cleanup:                                          ; preds = %if.end29
  call void @schedule() #11
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %84 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %exist, align 8, !range !75
  %tobool24.not = icmp eq i8 %85, 0
  br i1 %tobool24.not, label %cleanup.if.end34.thread177_crit_edge, label %cleanup.lor.lhs.false25_crit_edge

cleanup.lor.lhs.false25_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false25

cleanup.if.end34.thread177_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread177

if.end34.thread177:                               ; preds = %cleanup.if.end34.thread177_crit_edge, %joydev_data_pending.exit141.if.end34.thread177_crit_edge, %lor.lhs.false25.if.end34.thread177_crit_edge, %if.then20.if.end34.thread177_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end38

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup66

if.end38:                                         ; preds = %if.end34.thread177, %joydev_data_pending.exit129.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge
  %86 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %86)
  %.pr = load i8, ptr %exist, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool40.not = icmp eq i8 %.pr, 0
  br i1 %tobool40.not, label %if.end38.cleanup66_crit_edge, label %while.cond.preheader

if.end38.cleanup66_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

while.cond.preheader:                             ; preds = %if.end38
  %buffer_lock.i143 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 4
  %key.i150 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 27
  br label %while.cond

while.cond:                                       ; preds = %copy_to_user.exit.while.cond_crit_edge, %while.cond.preheader
  %retval2.0 = phi i32 [ %add, %copy_to_user.exit.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %add = add i32 %retval2.0, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp43.not = icmp ugt i32 %add, %count
  br i1 %cmp43.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %87 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %joydev1, align 4
  call void @_raw_spin_lock_irq(ptr noundef %buffer_lock.i143) #11
  %89 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %startup.i114, align 4
  %nabs.i145 = getelementptr inbounds %struct.joydev, ptr %88, i32 0, i32 11
  %91 = ptrtoint ptr %nabs.i145 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nabs.i145, align 4
  %nkey.i146 = getelementptr inbounds %struct.joydev, ptr %88, i32 0, i32 12
  %93 = ptrtoint ptr %nkey.i146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nkey.i146, align 8
  %add.i147 = add i32 %94, %92
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add.i147)
  %cmp.i148 = icmp slt i32 %90, %add.i147
  br i1 %cmp.i148, label %if.then.i, label %joydev_generate_startup_event.exit.thread

joydev_generate_startup_event.exit.thread:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i143) #11
  br label %while.end

if.then.i:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @jiffies_to_msecs(i32 noundef %95) #11
  %96 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call.i, ptr %event, align 8
  %97 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %startup.i114, align 4
  %99 = ptrtoint ptr %nkey.i146 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nkey.i146, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp4.i = icmp slt i32 %98, %100
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -127, ptr %7, align 2
  %conv8.i = trunc i32 %98 to i8
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv8.i, ptr %8, align 1
  %idxprom.i = and i32 %98, 255
  %arrayidx.i149 = getelementptr %struct.joydev, ptr %88, i32 0, i32 14, i32 %idxprom.i
  %103 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i149, align 2
  %conv10.i = zext i16 %104 to i32
  %div3.i.i151 = lshr i32 %conv10.i, 5
  %arrayidx.i.i152 = getelementptr i32, ptr %key.i150, i32 %div3.i.i151
  %105 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i.i152, align 4
  %and.i.i153 = and i32 %conv10.i, 31
  %107 = shl nuw i32 1, %and.i.i153
  %108 = and i32 %107, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool12.i = icmp ne i32 %108, 0
  %conv14.i = zext i1 %tobool12.i to i16
  br label %while.body

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -126, ptr %7, align 2
  %sub.i = sub i32 %98, %100
  %conv18.i = trunc i32 %sub.i to i8
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv18.i, ptr %8, align 1
  %idxprom21.i = and i32 %sub.i, 255
  %arrayidx22.i = getelementptr %struct.joydev, ptr %88, i32 0, i32 17, i32 %idxprom21.i
  %111 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx22.i, align 2
  br label %while.body

while.body:                                       ; preds = %if.else.i, %if.then6.i
  %.sink.i = phi i16 [ %conv14.i, %if.then6.i ], [ %112, %if.else.i ]
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %.sink.i, ptr %6, align 4
  %114 = ptrtoint ptr %startup.i114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %startup.i114, align 4
  %inc.i154 = add i32 %115, 1
  store i32 %inc.i154, ptr %startup.i114, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i143) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %retval2.0
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %while.body.cleanup66_crit_edge, label %if.end.i.i

while.body.cleanup66_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

if.end.i.i:                                       ; preds = %while.body
  %116 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 8, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup66_crit_edge

if.end.i.i.cleanup66_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 8) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %event, i32 noundef 8) #11
  %tobool47.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool47.not, label %copy_to_user.exit.while.cond_crit_edge, label %copy_to_user.exit.cleanup66_crit_edge

copy_to_user.exit.cleanup66_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

copy_to_user.exit.while.cond_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %joydev_generate_startup_event.exit.thread, %while.cond.while.end_crit_edge
  %head.i157 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 1
  %tail.i158 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 2
  br label %while.cond51

while.cond51:                                     ; preds = %copy_to_user.exit111.while.cond51_crit_edge, %while.end
  %retval2.1 = phi i32 [ %retval2.0, %while.end ], [ %add52, %copy_to_user.exit111.while.cond51_crit_edge ]
  %add52 = add i32 %retval2.1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %count)
  %cmp53.not = icmp ugt i32 %add52, %count
  br i1 %cmp53.not, label %while.cond51.cleanup66_crit_edge, label %land.rhs54

while.cond51.cleanup66_crit_edge:                 ; preds = %while.cond51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

land.rhs54:                                       ; preds = %while.cond51
  call void @_raw_spin_lock_irq(ptr noundef %buffer_lock.i143) #11
  %117 = ptrtoint ptr %head.i157 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %head.i157, align 4
  %119 = ptrtoint ptr %tail.i158 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tail.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.i159.not = icmp eq i32 %118, %120
  br i1 %cmp.i159.not, label %joydev_fetch_next_event.exit.thread, label %while.body58

joydev_fetch_next_event.exit.thread:              ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i143) #11
  br label %cleanup66

while.body58:                                     ; preds = %land.rhs54
  %inc.i160 = add i32 %120, 1
  %121 = ptrtoint ptr %tail.i158 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %inc.i160, ptr %tail.i158, align 4
  %arrayidx.i161 = getelementptr [64 x %struct.js_event], ptr %1, i32 0, i32 %120
  %122 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %arrayidx.i161, align 4
  %124 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %event, align 8
  %and.i = and i32 %inc.i160, 63
  store i32 %and.i, ptr %tail.i158, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock.i143) #11
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %retval2.1
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i103 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i103, label %while.body58.cleanup66_crit_edge, label %if.end.i.i106

while.body58.cleanup66_crit_edge:                 ; preds = %while.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

if.end.i.i106:                                    ; preds = %while.body58
  %125 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr59, i32 8, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i104 = extractvalue { i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i104)
  %cmp.i6.i105 = icmp eq i32 %asmresult.i.i104, 0
  br i1 %cmp.i6.i105, label %copy_to_user.exit111, label %if.end.i.i106.cleanup66_crit_edge

if.end.i.i106.cleanup66_crit_edge:                ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

copy_to_user.exit111:                             ; preds = %if.end.i.i106
  %call.i.i.i107 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 8) #11
  %call.i12.i.i108 = call i32 @arm_copy_to_user(ptr noundef %add.ptr59, ptr noundef nonnull %event, i32 noundef 8) #11
  %tobool61.not = icmp eq i32 %call.i12.i.i108, 0
  br i1 %tobool61.not, label %copy_to_user.exit111.while.cond51_crit_edge, label %copy_to_user.exit111.cleanup66_crit_edge

copy_to_user.exit111.cleanup66_crit_edge:         ; preds = %copy_to_user.exit111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup66

copy_to_user.exit111.while.cond51_crit_edge:      ; preds = %copy_to_user.exit111
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond51

cleanup66:                                        ; preds = %copy_to_user.exit111.cleanup66_crit_edge, %if.end.i.i106.cleanup66_crit_edge, %while.body58.cleanup66_crit_edge, %joydev_fetch_next_event.exit.thread, %while.cond51.cleanup66_crit_edge, %copy_to_user.exit.cleanup66_crit_edge, %if.end.i.i.cleanup66_crit_edge, %while.body.cleanup66_crit_edge, %if.end38.cleanup66_crit_edge, %if.end34, %if.end12.cleanup66_crit_edge, %land.lhs.true.cleanup66_crit_edge, %joydev_0x_read.exit, %if.end.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %42, %joydev_0x_read.exit ], [ -19, %entry.cleanup66_crit_edge ], [ -22, %if.end.cleanup66_crit_edge ], [ -11, %land.lhs.true.cleanup66_crit_edge ], [ %call22199, %if.end34 ], [ -19, %if.end38.cleanup66_crit_edge ], [ %retval2.1, %joydev_fetch_next_event.exit.thread ], [ -19, %if.end12.cleanup66_crit_edge ], [ -14, %if.end.i.i106.cleanup66_crit_edge ], [ -14, %while.body58.cleanup66_crit_edge ], [ %retval2.1, %while.cond51.cleanup66_crit_edge ], [ -14, %copy_to_user.exit111.cleanup66_crit_edge ], [ -14, %copy_to_user.exit.cleanup66_crit_edge ], [ -14, %while.body.cleanup66_crit_edge ], [ -14, %if.end.i.i.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %joydev1 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %joydev1, align 4
  %wait2 = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 2
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
  %6 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %joydev1, align 4
  %startup.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %startup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startup.i, align 4
  %nabs.i = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %nabs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nabs.i, align 4
  %nkey.i = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %nkey.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nkey.i, align 8
  %add.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.i = icmp slt i32 %9, %add.i
  br i1 %cmp.i, label %poll_wait.exit.joydev_data_pending.exit.thread_crit_edge, label %joydev_data_pending.exit

poll_wait.exit.joydev_data_pending.exit.thread_crit_edge: ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_data_pending.exit.thread

joydev_data_pending.exit:                         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  %head.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2.i.not = icmp eq i32 %15, %17
  %spec.select = select i1 %cmp2.i.not, i32 0, i32 65
  br label %joydev_data_pending.exit.thread

joydev_data_pending.exit.thread:                  ; preds = %joydev_data_pending.exit, %poll_wait.exit.joydev_data_pending.exit.thread_crit_edge
  %18 = phi i32 [ 65, %poll_wait.exit.joydev_data_pending.exit.thread_crit_edge ], [ %spec.select, %joydev_data_pending.exit ]
  %exist = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exist, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not = icmp eq i8 %20, 0
  %cond4 = select i1 %tobool3.not, i32 24, i32 0
  %or = or i32 %cond4, %18
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %joydev1 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %joydev1, align 4
  %4 = inttoptr i32 %arg to ptr
  %mutex = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %exist = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exist, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb9
    i32 8, label %sw.bb21
    i32 7, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 683) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !77
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !80
  %asmresult = extractvalue { i32, i32 } %11, 0
  %asmresult7 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %JS_TIMELIMIT = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %JS_TIMELIMIT to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult7, ptr %JS_TIMELIMIT, align 4
  br label %out

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %JS_TIMELIMIT11 = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %JS_TIMELIMIT11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %JS_TIMELIMIT11, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 688) #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i49 to ptr
  %cpu_domain.i.i50 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i50) #5, !srcloc !77
  %and.i51 = and i32 %17, -13
  %or.i52 = or i32 %and.i51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i52) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %14, i32 -1226833921) #11, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %out

sw.bb21:                                          ; preds = %if.end5
  %glue22 = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb21.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb21.if.then11.i.i_crit_edge:                  ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb21
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 40, i32 -1226833920) #17, !srcloc !82
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !83

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %glue22, i32 noundef 40) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !77
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %glue22, ptr noundef %4, i32 noundef 40) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.out_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !83

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb21.if.then11.i.i_crit_edge
  %res.0.i.i70 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %sw.bb21.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i70
  %add.ptr.i.i = getelementptr i8, ptr %glue22, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i70)
  br label %out

sw.bb25:                                          ; preds = %if.end5
  %glue26 = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i57 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i57, label %sw.bb25.out_crit_edge, label %if.end.i.i60

sw.bb25.out_crit_edge:                            ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i60:                                     ; preds = %sw.bb25
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 40, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i58 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i58)
  %cmp.i6.i59 = icmp eq i32 %asmresult.i.i58, 0
  br i1 %cmp.i6.i59, label %copy_to_user.exit, label %if.end.i.i60.out_crit_edge

if.end.i.i60.out_crit_edge:                       ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %glue26, i32 noundef 40) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %glue26, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool28.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -14
  br label %out

sw.default:                                       ; preds = %if.end5
  %dev1.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %27 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %sw.epilog.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb8.i
    i32 4, label %sw.bb13.i
    i32 -2147194367, label %sw.bb25.i
    i32 -2147390959, label %sw.bb41.i
    i32 -2147390958, label %sw.bb57.i
    i32 1076128289, label %sw.bb74.i
    i32 -2145097182, label %sw.bb87.i
  ]

sw.bb.i:                                          ; preds = %sw.default
  %JS_CORR.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #11
  %call.i.i.i63 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i63, label %sw.bb.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.i.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #17, !srcloc !82
  %asmresult.i.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !83

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %JS_CORR.i, i32 noundef 12) #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !77
  %and.i.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %JS_CORR.i, ptr noundef %4, i32 noundef 12) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.out_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !83

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i.out_crit_edge:                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.i.if.then11.i.i.i_crit_edge
  %res.0.i.i346.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i346.i
  %add.ptr.i.i.i = getelementptr i8, ptr %JS_CORR.i, i32 %sub.i.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i346.i)
  br label %out

sw.bb2.i:                                         ; preds = %sw.default
  %JS_CORR4.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i218.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i218.i, label %sw.bb2.i.out_crit_edge, label %if.end.i.i221.i

sw.bb2.i.out_crit_edge:                           ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i221.i:                                  ; preds = %sw.bb2.i
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i219.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i219.i)
  %cmp.i6.i220.i = icmp eq i32 %asmresult.i.i219.i, 0
  br i1 %cmp.i6.i220.i, label %copy_to_user.exit.i, label %if.end.i.i221.i.out_crit_edge

if.end.i.i221.i.out_crit_edge:                    ; preds = %if.end.i.i221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

copy_to_user.exit.i:                              ; preds = %if.end.i.i221.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i222.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %JS_CORR4.i, i32 noundef 12) #11
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %JS_CORR4.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool6.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 0, i32 -14
  br label %out

sw.bb8.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 530) #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i64 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i64 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !77
  %and.i.i = and i32 %36, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %37 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !84
  %asmresult.i = extractvalue { i32, i32 } %37, 0
  %asmresult10.i = extractvalue { i32, i32 } %37, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %glue11.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %glue11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %asmresult10.i, ptr %glue11.i, align 4
  br label %out

sw.bb13.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %glue14.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 10
  %39 = ptrtoint ptr %glue14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %glue14.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 533) #11
  %41 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i224.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i224.i to ptr
  %cpu_domain.i.i225.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i225.i) #5, !srcloc !77
  %and.i226.i = and i32 %43, -13
  %or.i227.i = or i32 %and.i226.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i227.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %40, i32 -1226833921) #11, !srcloc !85
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %out

sw.bb25.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 536) #11
  %45 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i228.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i228.i to ptr
  %cpu_domain.i.i229.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i229.i) #5, !srcloc !77
  %and.i230.i = and i32 %47, -13
  %or.i231.i = or i32 %and.i230.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i231.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 131328, i32 -1226833921) #11, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %out

sw.bb41.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %nabs.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 11
  %49 = ptrtoint ptr %nabs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nabs.i, align 4
  %conv.i = trunc i32 %50 to i8
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 539) #11
  %51 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i232.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i232.i to ptr
  %cpu_domain.i.i233.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i233.i) #5, !srcloc !77
  %and.i234.i = and i32 %53, -13
  %or.i235.i = or i32 %and.i234.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i235.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i8 %conv.i, i32 -1226833921) #11, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %out

sw.bb57.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %nkey.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 12
  %55 = ptrtoint ptr %nkey.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nkey.i, align 8
  %conv62.i = trunc i32 %56 to i8
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 542) #11
  %57 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i236.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i236.i to ptr
  %cpu_domain.i.i237.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i237.i) #5, !srcloc !77
  %and.i238.i = and i32 %59, -13
  %or.i239.i = or i32 %and.i238.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i239.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %60 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i8 %conv62.i, i32 -1226833921) #11, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %out

sw.bb74.i:                                        ; preds = %sw.default
  %corr.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 9
  %nabs75.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 11
  %61 = ptrtoint ptr %nabs75.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nabs75.i, align 4
  %mul.i = mul i32 %62, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %sw.bb74.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out_crit_edge, label %if.then27.i.i.i, !prof !83

land.rhs16.i.i.i.out_crit_edge:                   ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out

if.then.i.i.i.i:                                  ; preds = %sw.bb74.i
  tail call void @__check_object_size(ptr noundef %corr.i, i32 noundef %mul.i, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #11
  %call.i.i244.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i244.i, label %if.then.i.i.i.i.if.end.i.i257.i_crit_edge, label %land.lhs.true.i.i247.i

if.then.i.i.i.i.if.end.i.i257.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i257.i

land.lhs.true.i.i247.i:                           ; preds = %if.then.i.i.i.i
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %mul.i, i32 -1226833920) #17, !srcloc !82
  %asmresult.i.i245.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i245.i)
  %cmp.i6.i246.i = icmp eq i32 %asmresult.i.i245.i, 0
  br i1 %cmp.i6.i246.i, label %if.then.i7.i254.i, label %land.lhs.true.i.i247.i.if.end.i.i257.i_crit_edge, !prof !83

land.lhs.true.i.i247.i.if.end.i.i257.i_crit_edge: ; preds = %land.lhs.true.i.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i257.i

if.then.i7.i254.i:                                ; preds = %land.lhs.true.i.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i248.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %corr.i, i32 noundef %mul.i) #11
  %64 = tail call i32 @llvm.read_register.i32(metadata !62) #11
  %and.i.i.i.i.i.i249.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i249.i to ptr
  %cpu_domain.i.i.i.i.i250.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i250.i) #5, !srcloc !77
  %and.i.i.i.i251.i = and i32 %66, -13
  %or.i.i.i.i252.i = or i32 %and.i.i.i.i251.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i252.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  %call1.i.i.i253.i = tail call i32 @arm_copy_from_user(ptr noundef %corr.i, ptr noundef %4, i32 noundef %mul.i) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %if.end.i.i257.i

if.end.i.i257.i:                                  ; preds = %if.then.i7.i254.i, %land.lhs.true.i.i247.i.if.end.i.i257.i_crit_edge, %if.then.i.i.i.i.if.end.i.i257.i_crit_edge
  %res.0.i.i255.i = phi i32 [ %mul.i, %if.then.i.i.i.i.if.end.i.i257.i_crit_edge ], [ %call1.i.i.i253.i, %if.then.i7.i254.i ], [ %mul.i, %land.lhs.true.i.i247.i.if.end.i.i257.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i255.i)
  %tobool4.not.i.i256.i = icmp eq i32 %res.0.i.i255.i, 0
  br i1 %tobool4.not.i.i256.i, label %for.cond.preheader.i, label %if.then11.i.i260.i, !prof !83

for.cond.preheader.i:                             ; preds = %if.end.i.i257.i
  %67 = ptrtoint ptr %nabs75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nabs75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp353.i = icmp sgt i32 %68, 0
  br i1 %cmp353.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.out_crit_edge

for.cond.preheader.i.out_crit_edge:               ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 26
  br label %for.body.i

if.then11.i.i260.i:                               ; preds = %if.end.i.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i258.i = sub i32 %mul.i, %res.0.i.i255.i
  %add.ptr.i.i259.i = getelementptr i8, ptr %corr.i, i32 %sub.i.i258.i
  %69 = call ptr @memset(ptr %add.ptr.i.i259.i, i32 0, i32 %res.0.i.i255.i)
  br label %out

for.body.i:                                       ; preds = %joydev_correct.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0354.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %joydev_correct.exit.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i, label %for.body.i.input_abs_get_val.exit.i_crit_edge, label %cond.true.i.i

for.body.i.input_abs_get_val.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_get_val.exit.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 16, i32 %i.0354.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  %conv80.i = zext i8 %73 to i32
  %arrayidx.i.i = getelementptr %struct.input_absinfo, ptr %71, i32 %conv80.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i, align 4
  br label %input_abs_get_val.exit.i

input_abs_get_val.exit.i:                         ; preds = %cond.true.i.i, %for.body.i.input_abs_get_val.exit.i_crit_edge
  %cond.i.i = phi i32 [ %75, %cond.true.i.i ], [ 0, %for.body.i.input_abs_get_val.exit.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 9, i32 %i.0354.i
  %type.i.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 9, i32 %i.0354.i, i32 2
  %76 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %type.i.i, align 2
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %77, label %input_abs_get_val.exit.i.joydev_correct.exit.i_crit_edge [
    i16 0, label %input_abs_get_val.exit.i.sw.epilog.i.i_crit_edge
    i16 1, label %sw.bb.i.i
  ]

input_abs_get_val.exit.i.sw.epilog.i.i_crit_edge: ; preds = %input_abs_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

input_abs_get_val.exit.i.joydev_correct.exit.i_crit_edge: ; preds = %input_abs_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit.i

sw.bb.i.i:                                        ; preds = %input_abs_get_val.exit.i
  %79 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %cond.i.i)
  %cmp.i.i66 = icmp slt i32 %80, %cond.i.i
  br i1 %cmp.i.i66, label %cond.true.i343.i, label %sw.bb.i.i.sw.epilog.sink.split.i.i_crit_edge

sw.bb.i.i.sw.epilog.sink.split.i.i_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i

cond.true.i343.i:                                 ; preds = %sw.bb.i.i
  %arrayidx3.i.i = getelementptr [8 x i32], ptr %arrayidx83.i, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %cond.i.i)
  %cmp4.i.i = icmp sgt i32 %82, %cond.i.i
  br i1 %cmp4.i.i, label %cond.true.i343.i..thread53.i.i_crit_edge, label %cond.true.i343.i.sw.epilog.sink.split.i.i_crit_edge

cond.true.i343.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %cond.true.i343.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i

cond.true.i343.i..thread53.i.i_crit_edge:         ; preds = %cond.true.i343.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i

sw.epilog.sink.split.i.i:                         ; preds = %cond.true.i343.i.sw.epilog.sink.split.i.i_crit_edge, %sw.bb.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 3, %cond.true.i343.i.sw.epilog.sink.split.i.i_crit_edge ], [ 2, %sw.bb.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %.sink56.i.i = phi i32 [ %82, %cond.true.i343.i.sw.epilog.sink.split.i.i_crit_edge ], [ %80, %sw.bb.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr [8 x i32], ptr %arrayidx83.i, i32 0, i32 %.sink.i.i
  %83 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx13.i.i, align 4
  %sub16.i.i = sub i32 %cond.i.i, %.sink56.i.i
  %mul17.i.i = mul i32 %84, %sub16.i.i
  %shr18.i.i = ashr i32 %mul17.i.i, 14
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %input_abs_get_val.exit.i.sw.epilog.i.i_crit_edge
  %value.addr.0.i.i = phi i32 [ %cond.i.i, %input_abs_get_val.exit.i.sw.epilog.i.i_crit_edge ], [ %shr18.i.i, %sw.epilog.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %value.addr.0.i.i)
  %cmp21.i.i = icmp sgt i32 %value.addr.0.i.i, -32767
  br i1 %cmp21.i.i, label %85, label %sw.epilog.i.i..thread53.i.i_crit_edge

sw.epilog.i.i..thread53.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i

85:                                               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %value.addr.0.i.i)
  %cmp28.i.i = icmp slt i32 %value.addr.0.i.i, 32767
  br i1 %cmp28.i.i, label %..thread53.i.i_crit_edge, label %.joydev_correct.exit.i_crit_edge

.joydev_correct.exit.i_crit_edge:                 ; preds = %85
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit.i

..thread53.i.i_crit_edge:                         ; preds = %85
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i

.thread53.i.i:                                    ; preds = %..thread53.i.i_crit_edge, %sw.epilog.i.i..thread53.i.i_crit_edge, %cond.true.i343.i..thread53.i.i_crit_edge
  %86 = phi i32 [ %value.addr.0.i.i, %..thread53.i.i_crit_edge ], [ 0, %cond.true.i343.i..thread53.i.i_crit_edge ], [ -32767, %sw.epilog.i.i..thread53.i.i_crit_edge ]
  br label %joydev_correct.exit.i

joydev_correct.exit.i:                            ; preds = %.thread53.i.i, %.joydev_correct.exit.i_crit_edge, %input_abs_get_val.exit.i.joydev_correct.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %input_abs_get_val.exit.i.joydev_correct.exit.i_crit_edge ], [ %86, %.thread53.i.i ], [ 32767, %.joydev_correct.exit.i_crit_edge ]
  %conv85.i = trunc i32 %retval.0.i.i to i16
  %arrayidx86.i = getelementptr %struct.joydev, ptr %3, i32 0, i32 17, i32 %i.0354.i
  %87 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv85.i, ptr %arrayidx86.i, align 2
  %inc.i = add nuw nsw i32 %i.0354.i, 1
  %88 = ptrtoint ptr %nabs75.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nabs75.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %89
  br i1 %cmp.i, label %joydev_correct.exit.i.for.body.i_crit_edge, label %joydev_correct.exit.i.out_crit_edge

joydev_correct.exit.i.out_crit_edge:              ; preds = %joydev_correct.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

joydev_correct.exit.i.for.body.i_crit_edge:       ; preds = %joydev_correct.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb87.i:                                        ; preds = %sw.default
  %corr88.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 9
  %nabs90.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 11
  %90 = ptrtoint ptr %nabs90.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nabs90.i, align 4
  %mul91.i = mul i32 %91, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul91.i)
  %cmp9.i.i269.i = icmp slt i32 %mul91.i, 0
  br i1 %cmp9.i.i269.i, label %land.rhs16.i.i272.i, label %if.then.i.i.i275.i

land.rhs16.i.i272.i:                              ; preds = %sw.bb87.i
  %.b71.i.i271.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i271.i, label %land.rhs16.i.i272.i.out_crit_edge, label %if.then27.i.i273.i, !prof !83

land.rhs16.i.i272.i.out_crit_edge:                ; preds = %land.rhs16.i.i272.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27.i.i273.i:                               ; preds = %land.rhs16.i.i272.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out

if.then.i.i.i275.i:                               ; preds = %sw.bb87.i
  tail call void @__check_object_size(ptr noundef %corr88.i, i32 noundef %mul91.i, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i276.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i276.i, label %if.then.i.i.i275.i.copy_to_user.exit285.i_crit_edge, label %if.end.i.i280.i

if.then.i.i.i275.i.copy_to_user.exit285.i_crit_edge: ; preds = %if.then.i.i.i275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit285.i

if.end.i.i280.i:                                  ; preds = %if.then.i.i.i275.i
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %mul91.i, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i278.i = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i278.i)
  %cmp.i6.i279.i = icmp eq i32 %asmresult.i.i278.i, 0
  br i1 %cmp.i6.i279.i, label %if.then2.i.i283.i, label %if.end.i.i280.i.copy_to_user.exit285.i_crit_edge

if.end.i.i280.i.copy_to_user.exit285.i_crit_edge: ; preds = %if.end.i.i280.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit285.i

if.then2.i.i283.i:                                ; preds = %if.end.i.i280.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i281.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %corr88.i, i32 noundef %mul91.i) #11
  %call.i12.i.i282.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %corr88.i, i32 noundef %mul91.i) #11
  br label %copy_to_user.exit285.i

copy_to_user.exit285.i:                           ; preds = %if.then2.i.i283.i, %if.end.i.i280.i.copy_to_user.exit285.i_crit_edge, %if.then.i.i.i275.i.copy_to_user.exit285.i_crit_edge
  %n.addr.0.i284.i = phi i32 [ %mul91.i, %if.then.i.i.i275.i.copy_to_user.exit285.i_crit_edge ], [ %call.i12.i.i282.i, %if.then2.i.i283.i ], [ %mul91.i, %if.end.i.i280.i.copy_to_user.exit285.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i284.i)
  %tobool93.not.i = icmp eq i32 %n.addr.0.i284.i, 0
  %spec.select363.i = select i1 %tobool93.not.i, i32 0, i32 -14
  br label %out

sw.epilog.i:                                      ; preds = %sw.default
  %and.i67 = and i32 %cmd, -1073676289
  %93 = zext i32 %and.i67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and.i67, label %sw.epilog.i.out_crit_edge [
    i32 1073769009, label %sw.bb95.i
    i32 -2147456462, label %sw.bb98.i
    i32 1073769011, label %sw.bb113.i
    i32 -2147456460, label %sw.bb117.i
    i32 -2147456493, label %sw.bb134.i
  ]

sw.epilog.i.out_crit_edge:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb95.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %cmd, 16
  %and96.i = and i32 %shr.i, 16383
  %call97.i = tail call fastcc i32 @joydev_handle_JSIOCSAXMAP(ptr noundef %3, ptr noundef %4, i32 noundef %and96.i) #11
  br label %out

sw.bb98.i:                                        ; preds = %sw.epilog.i
  %shr99.i = lshr i32 %cmd, 16
  %and100.i = and i32 %shr99.i, 16383
  %94 = tail call i32 @llvm.umin.i32(i32 %and100.i, i32 64) #11
  %abspam105.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 16
  tail call void @__check_object_size(ptr noundef %abspam105.i, i32 noundef %94, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i295.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i295.i, label %sw.bb98.i.copy_to_user.exit304.i_crit_edge, label %if.end.i.i299.i

sw.bb98.i.copy_to_user.exit304.i_crit_edge:       ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit304.i

if.end.i.i299.i:                                  ; preds = %sw.bb98.i
  %95 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %94, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i297.i = extractvalue { i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i297.i)
  %cmp.i6.i298.i = icmp eq i32 %asmresult.i.i297.i, 0
  br i1 %cmp.i6.i298.i, label %if.then2.i.i302.i, label %if.end.i.i299.i.copy_to_user.exit304.i_crit_edge

if.end.i.i299.i.copy_to_user.exit304.i_crit_edge: ; preds = %if.end.i.i299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit304.i

if.then2.i.i302.i:                                ; preds = %if.end.i.i299.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i300.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %abspam105.i, i32 noundef %94) #11
  %call.i12.i.i301.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %abspam105.i, i32 noundef %94) #11
  br label %copy_to_user.exit304.i

copy_to_user.exit304.i:                           ; preds = %if.then2.i.i302.i, %if.end.i.i299.i.copy_to_user.exit304.i_crit_edge, %sw.bb98.i.copy_to_user.exit304.i_crit_edge
  %n.addr.0.i303.i = phi i32 [ %94, %sw.bb98.i.copy_to_user.exit304.i_crit_edge ], [ %call.i12.i.i301.i, %if.then2.i.i302.i ], [ %94, %if.end.i.i299.i.copy_to_user.exit304.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i303.i)
  %tobool108.not.i = icmp eq i32 %n.addr.0.i303.i, 0
  %spec.select364.i = select i1 %tobool108.not.i, i32 %94, i32 -14
  br label %out

sw.bb113.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr114.i = lshr i32 %cmd, 16
  %and115.i = and i32 %shr114.i, 16383
  %call116.i = tail call fastcc i32 @joydev_handle_JSIOCSBTNMAP(ptr noundef %3, ptr noundef %4, i32 noundef %and115.i) #11
  br label %out

sw.bb117.i:                                       ; preds = %sw.epilog.i
  %shr118.i = lshr i32 %cmd, 16
  %and119.i = and i32 %shr118.i, 16383
  %96 = tail call i32 @llvm.umin.i32(i32 %and119.i, i32 1024) #11
  %keypam.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 14
  tail call void @__check_object_size(ptr noundef %keypam.i, i32 noundef %96, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i314.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i314.i, label %sw.bb117.i.copy_to_user.exit323.i_crit_edge, label %if.end.i.i318.i

sw.bb117.i.copy_to_user.exit323.i_crit_edge:      ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit323.i

if.end.i.i318.i:                                  ; preds = %sw.bb117.i
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %96, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i316.i = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i316.i)
  %cmp.i6.i317.i = icmp eq i32 %asmresult.i.i316.i, 0
  br i1 %cmp.i6.i317.i, label %if.then2.i.i321.i, label %if.end.i.i318.i.copy_to_user.exit323.i_crit_edge

if.end.i.i318.i.copy_to_user.exit323.i_crit_edge: ; preds = %if.end.i.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit323.i

if.then2.i.i321.i:                                ; preds = %if.end.i.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i319.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %keypam.i, i32 noundef %96) #11
  %call.i12.i.i320.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %keypam.i, i32 noundef %96) #11
  br label %copy_to_user.exit323.i

copy_to_user.exit323.i:                           ; preds = %if.then2.i.i321.i, %if.end.i.i318.i.copy_to_user.exit323.i_crit_edge, %sw.bb117.i.copy_to_user.exit323.i_crit_edge
  %n.addr.0.i322.i = phi i32 [ %96, %sw.bb117.i.copy_to_user.exit323.i_crit_edge ], [ %call.i12.i.i320.i, %if.then2.i.i321.i ], [ %96, %if.end.i.i318.i.copy_to_user.exit323.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i322.i)
  %tobool129.not.i = icmp eq i32 %n.addr.0.i322.i, 0
  %spec.select365.i = select i1 %tobool129.not.i, i32 %96, i32 -14
  br label %out

sw.bb134.i:                                       ; preds = %sw.epilog.i
  %98 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %26, align 8
  %tobool136.not.i = icmp eq ptr %99, null
  br i1 %tobool136.not.i, label %sw.bb134.i.out_crit_edge, label %if.end138.i

sw.bb134.i.out_crit_edge:                         ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end138.i:                                      ; preds = %sw.bb134.i
  %shr139.i = lshr i32 %cmd, 16
  %and140.i = and i32 %shr139.i, 16383
  %call141.i = tail call i32 @strlen(ptr noundef nonnull %99) #14
  %add.i = add i32 %call141.i, 1
  %100 = tail call i32 @llvm.umin.i32(i32 %and140.i, i32 %add.i) #11
  tail call void @__check_object_size(ptr noundef nonnull %99, i32 noundef %100, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i333.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i333.i, label %if.end138.i.copy_to_user.exit342.i_crit_edge, label %if.end.i.i337.i

if.end138.i.copy_to_user.exit342.i_crit_edge:     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit342.i

if.end.i.i337.i:                                  ; preds = %if.end138.i
  %101 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %100, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i335.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i335.i)
  %cmp.i6.i336.i = icmp eq i32 %asmresult.i.i335.i, 0
  br i1 %cmp.i6.i336.i, label %if.then2.i.i340.i, label %if.end.i.i337.i.copy_to_user.exit342.i_crit_edge

if.end.i.i337.i.copy_to_user.exit342.i_crit_edge: ; preds = %if.end.i.i337.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit342.i

if.then2.i.i340.i:                                ; preds = %if.end.i.i337.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i338.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %99, i32 noundef %100) #11
  %call.i12.i.i339.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %99, i32 noundef %100) #11
  br label %copy_to_user.exit342.i

copy_to_user.exit342.i:                           ; preds = %if.then2.i.i340.i, %if.end.i.i337.i.copy_to_user.exit342.i_crit_edge, %if.end138.i.copy_to_user.exit342.i_crit_edge
  %n.addr.0.i341.i = phi i32 [ %100, %if.end138.i.copy_to_user.exit342.i_crit_edge ], [ %call.i12.i.i339.i, %if.then2.i.i340.i ], [ %100, %if.end.i.i337.i.copy_to_user.exit342.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i341.i)
  %tobool150.not.i = icmp eq i32 %n.addr.0.i341.i, 0
  %spec.select366.i = select i1 %tobool150.not.i, i32 %100, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit342.i, %sw.bb134.i.out_crit_edge, %copy_to_user.exit323.i, %sw.bb113.i, %copy_to_user.exit304.i, %sw.bb95.i, %sw.epilog.i.out_crit_edge, %copy_to_user.exit285.i, %if.then27.i.i273.i, %land.rhs16.i.i272.i.out_crit_edge, %joydev_correct.exit.i.out_crit_edge, %if.then11.i.i260.i, %for.cond.preheader.i.out_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.out_crit_edge, %sw.bb57.i, %sw.bb41.i, %sw.bb25.i, %sw.bb13.i, %sw.bb8.i, %copy_to_user.exit.i, %if.end.i.i221.i.out_crit_edge, %sw.bb2.i.out_crit_edge, %if.then11.i.i.i, %if.end.i.i.i.out_crit_edge, %copy_to_user.exit, %if.end.i.i60.out_crit_edge, %sw.bb25.out_crit_edge, %if.then11.i.i, %if.end.i.i.out_crit_edge, %sw.bb9, %sw.bb, %if.end.out_crit_edge
  %retval2.0 = phi i32 [ %18, %sw.bb9 ], [ %asmresult, %sw.bb ], [ -19, %if.end.out_crit_edge ], [ 0, %if.end.i.i.out_crit_edge ], [ %call116.i, %sw.bb113.i ], [ %call97.i, %sw.bb95.i ], [ %60, %sw.bb57.i ], [ %54, %sw.bb41.i ], [ %48, %sw.bb25.i ], [ %44, %sw.bb13.i ], [ %asmresult.i, %sw.bb8.i ], [ 0, %sw.bb134.i.out_crit_edge ], [ -22, %sw.epilog.i.out_crit_edge ], [ 0, %if.end.i.i.i.out_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %sw.bb2.i.out_crit_edge ], [ -14, %if.end.i.i221.i.out_crit_edge ], [ -14, %if.then11.i.i260.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ 0, %for.cond.preheader.i.out_crit_edge ], [ -14, %if.then27.i.i273.i ], [ -14, %land.rhs16.i.i272.i.out_crit_edge ], [ %spec.select363.i, %copy_to_user.exit285.i ], [ %spec.select364.i, %copy_to_user.exit304.i ], [ %spec.select365.i, %copy_to_user.exit323.i ], [ %spec.select366.i, %copy_to_user.exit342.i ], [ -14, %if.then11.i.i ], [ -14, %sw.bb25.out_crit_edge ], [ -14, %if.end.i.i60.out_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ 0, %joydev_correct.exit.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -1168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 584) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %buffer_lock = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @joydev_open.__key, i16 noundef signext 3) #11
  %joydev2 = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %joydev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %joydev2, align 4
  %client_lock.i = getelementptr i8, ptr %2, i32 -1068
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %node.i = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 7
  %client_list.i = getelementptr i8, ptr %2, i32 -1076
  %prev.i.i = getelementptr i8, ptr %2, i32 -1072
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %6, ptr noundef %client_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.joydev_attach_client.exit_crit_edge

do.body.joydev_attach_client.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_attach_client.exit

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client_list.i, ptr %node.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node.i, ptr %6, align 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node.i, ptr %prev.i.i, align 4
  br label %joydev_attach_client.exit

joydev_attach_client.exit:                        ; preds = %if.end.i.i.i, %do.body.joydev_attach_client.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  %mutex.i = getelementptr i8, ptr %2, i32 -1024
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %joydev_attach_client.exit.err_free_client_crit_edge

joydev_attach_client.exit.err_free_client_crit_edge: ; preds = %joydev_attach_client.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_client

if.end.i:                                         ; preds = %joydev_attach_client.exit
  %exist.i = getelementptr i8, ptr %2, i32 160
  %11 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exist.i, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.joydev_open_device.exit_crit_edge, label %if.else.i

if.end.i.joydev_open_device.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_open_device.exit

if.else.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i.if.end6_crit_edge

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5.i:                                       ; preds = %if.else.i
  %handle.i = getelementptr i8, ptr %2, i32 -1164
  %call6.i = tail call i32 @input_open_device(ptr noundef %handle.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.else10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %add.ptr, align 8
  br label %joydev_open_device.exit

if.else10.i:                                      ; preds = %if.then5.i
  %nabs.i.i = getelementptr i8, ptr %2, i32 2508
  %17 = ptrtoint ptr %nabs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nabs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp15.i.i = icmp sgt i32 %18, 0
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %if.else10.i.if.end6_crit_edge

if.else10.i.if.end6_crit_edge:                    ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

for.body.lr.ph.i.i:                               ; preds = %if.else10.i
  %dev1.i.i = getelementptr i8, ptr %2, i32 -1152
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i.i, align 4
  %absinfo.i.i.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 26
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %joydev_correct.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %joydev_correct.exit.i.i.for.body.i.i_crit_edge ]
  %21 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.input_abs_get_val.exit.i.i_crit_edge, label %cond.true.i.i.i

for.body.i.i.input_abs_get_val.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_get_val.exit.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.joydev, ptr %add.ptr, i32 0, i32 16, i32 %i.016.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %arrayidx.i.i.i = getelementptr %struct.input_absinfo, ptr %22, i32 %conv.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %input_abs_get_val.exit.i.i

input_abs_get_val.exit.i.i:                       ; preds = %cond.true.i.i.i, %for.body.i.i.input_abs_get_val.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %26, %cond.true.i.i.i ], [ 0, %for.body.i.i.input_abs_get_val.exit.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.joydev, ptr %add.ptr, i32 0, i32 9, i32 %i.016.i.i
  %type.i.i.i = getelementptr %struct.joydev, ptr %add.ptr, i32 0, i32 9, i32 %i.016.i.i, i32 2
  %27 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type.i.i.i, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %28, label %input_abs_get_val.exit.i.i.joydev_correct.exit.i.i_crit_edge [
    i16 0, label %input_abs_get_val.exit.i.i.sw.epilog.i.i.i_crit_edge
    i16 1, label %sw.bb.i.i.i
  ]

input_abs_get_val.exit.i.i.sw.epilog.i.i.i_crit_edge: ; preds = %input_abs_get_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

input_abs_get_val.exit.i.i.joydev_correct.exit.i.i_crit_edge: ; preds = %input_abs_get_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit.i.i

sw.bb.i.i.i:                                      ; preds = %input_abs_get_val.exit.i.i
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cond.i.i.i)
  %cmp.i.i.i = icmp slt i32 %31, %cond.i.i.i
  br i1 %cmp.i.i.i, label %cond.true.i14.i.i, label %sw.bb.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge

sw.bb.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i.i

cond.true.i14.i.i:                                ; preds = %sw.bb.i.i.i
  %arrayidx3.i.i.i = getelementptr [8 x i32], ptr %arrayidx2.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond.i.i.i)
  %cmp4.i.i.i = icmp sgt i32 %33, %cond.i.i.i
  br i1 %cmp4.i.i.i, label %cond.true.i14.i.i..thread53.i.i.i_crit_edge, label %cond.true.i14.i.i.sw.epilog.sink.split.i.i.i_crit_edge

cond.true.i14.i.i.sw.epilog.sink.split.i.i.i_crit_edge: ; preds = %cond.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i.i

cond.true.i14.i.i..thread53.i.i.i_crit_edge:      ; preds = %cond.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %cond.true.i14.i.i.sw.epilog.sink.split.i.i.i_crit_edge, %sw.bb.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 3, %cond.true.i14.i.i.sw.epilog.sink.split.i.i.i_crit_edge ], [ 2, %sw.bb.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge ]
  %.sink56.i.i.i = phi i32 [ %33, %cond.true.i14.i.i.sw.epilog.sink.split.i.i.i_crit_edge ], [ %31, %sw.bb.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge ]
  %arrayidx13.i.i.i = getelementptr [8 x i32], ptr %arrayidx2.i.i, i32 0, i32 %.sink.i.i.i
  %34 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx13.i.i.i, align 4
  %sub16.i.i.i = sub i32 %cond.i.i.i, %.sink56.i.i.i
  %mul17.i.i.i = mul i32 %35, %sub16.i.i.i
  %shr18.i.i.i = ashr i32 %mul17.i.i.i, 14
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.epilog.sink.split.i.i.i, %input_abs_get_val.exit.i.i.sw.epilog.i.i.i_crit_edge
  %value.addr.0.i.i.i = phi i32 [ %cond.i.i.i, %input_abs_get_val.exit.i.i.sw.epilog.i.i.i_crit_edge ], [ %shr18.i.i.i, %sw.epilog.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %value.addr.0.i.i.i)
  %cmp21.i.i.i = icmp sgt i32 %value.addr.0.i.i.i, -32767
  br i1 %cmp21.i.i.i, label %36, label %sw.epilog.i.i.i..thread53.i.i.i_crit_edge

sw.epilog.i.i.i..thread53.i.i.i_crit_edge:        ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i.i

36:                                               ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %value.addr.0.i.i.i)
  %cmp28.i.i.i = icmp slt i32 %value.addr.0.i.i.i, 32767
  br i1 %cmp28.i.i.i, label %..thread53.i.i.i_crit_edge, label %.joydev_correct.exit.i.i_crit_edge

.joydev_correct.exit.i.i_crit_edge:               ; preds = %36
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_correct.exit.i.i

..thread53.i.i.i_crit_edge:                       ; preds = %36
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread53.i.i.i

.thread53.i.i.i:                                  ; preds = %..thread53.i.i.i_crit_edge, %sw.epilog.i.i.i..thread53.i.i.i_crit_edge, %cond.true.i14.i.i..thread53.i.i.i_crit_edge
  %37 = phi i32 [ %value.addr.0.i.i.i, %..thread53.i.i.i_crit_edge ], [ 0, %cond.true.i14.i.i..thread53.i.i.i_crit_edge ], [ -32767, %sw.epilog.i.i.i..thread53.i.i.i_crit_edge ]
  br label %joydev_correct.exit.i.i

joydev_correct.exit.i.i:                          ; preds = %.thread53.i.i.i, %.joydev_correct.exit.i.i_crit_edge, %input_abs_get_val.exit.i.i.joydev_correct.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %input_abs_get_val.exit.i.i.joydev_correct.exit.i.i_crit_edge ], [ %37, %.thread53.i.i.i ], [ 32767, %.joydev_correct.exit.i.i_crit_edge ]
  %conv4.i.i = trunc i32 %retval.0.i.i.i to i16
  %arrayidx5.i.i = getelementptr %struct.joydev, ptr %add.ptr, i32 0, i32 17, i32 %i.016.i.i
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv4.i.i, ptr %arrayidx5.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %39 = ptrtoint ptr %nabs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nabs.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %40
  br i1 %cmp.i.i, label %joydev_correct.exit.i.i.for.body.i.i_crit_edge, label %joydev_correct.exit.i.i.if.end6_crit_edge

joydev_correct.exit.i.i.if.end6_crit_edge:        ; preds = %joydev_correct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

joydev_correct.exit.i.i.for.body.i.i_crit_edge:   ; preds = %joydev_correct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

joydev_open_device.exit:                          ; preds = %if.then8.i, %if.end.i.joydev_open_device.exit_crit_edge
  %retval1.0.i = phi i32 [ %call6.i, %if.then8.i ], [ -19, %if.end.i.joydev_open_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %err_free_client

if.end6:                                          ; preds = %joydev_correct.exit.i.i.if.end6_crit_edge, %if.else10.i.if.end6_crit_edge, %if.else.i.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %41 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call7 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #11
  br label %cleanup

err_free_client:                                  ; preds = %joydev_open_device.exit, %joydev_attach_client.exit.err_free_client_crit_edge
  %retval.0.i29 = phi i32 [ %retval1.0.i, %joydev_open_device.exit ], [ %call.i, %joydev_attach_client.exit.err_free_client_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %call.i.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i24, label %if.end.i.i.i25, label %err_free_client.joydev_detach_client.exit_crit_edge

err_free_client.joydev_detach_client.exit_crit_edge: ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_detach_client.exit

if.end.i.i.i25:                                   ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %node.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %joydev_detach_client.exit

joydev_detach_client.exit:                        ; preds = %if.end.i.i.i25, %err_free_client.joydev_detach_client.exit_crit_edge
  %prev.i.i26 = getelementptr inbounds %struct.joydev_client, ptr %call7.i.i, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i26, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  tail call void @synchronize_rcu() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %joydev_detach_client.exit, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %joydev_detach_client.exit ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %joydev1 = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %joydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %joydev1, align 4
  %client_lock.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #11
  %node.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.joydev_detach_client.exit_crit_edge

entry.joydev_detach_client.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_detach_client.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %joydev_detach_client.exit

joydev_detach_client.exit:                        ; preds = %if.end.i.i.i, %entry.joydev_detach_client.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #11
  tail call void @synchronize_rcu() #11
  tail call void @kfree(ptr noundef %1) #11
  %mutex.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %exist.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exist.i, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %joydev_detach_client.exit.joydev_close_device.exit_crit_edge, label %land.lhs.true.i

joydev_detach_client.exit.joydev_close_device.exit_crit_edge: ; preds = %joydev_detach_client.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_close_device.exit

land.lhs.true.i:                                  ; preds = %joydev_detach_client.exit
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.joydev_close_device.exit_crit_edge

land.lhs.true.i.joydev_close_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %joydev_close_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %handle.i = getelementptr inbounds %struct.joydev, ptr %3, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle.i) #11
  br label %joydev_close_device.exit

joydev_close_device.exit:                         ; preds = %if.then.i, %land.lhs.true.i.joydev_close_device.exit_crit_edge, %joydev_detach_client.exit.joydev_close_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fasync = getelementptr inbounds %struct.joydev_client, ptr %1, i32 0, i32 5
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #11
  ret i32 %call
}

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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joydev_handle_JSIOCSAXMAP(ptr nocapture noundef %joydev, ptr noundef %argp, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  %call = tail call ptr @memdup_user(ptr noundef %argp, i32 noundef %0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp446.not = icmp eq i32 %0, 0
  br i1 %cmp446.not, label %for.cond.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %nabs = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 11
  %1 = ptrtoint ptr %nabs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nabs, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %land.rhs

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond51.not = icmp eq i32 %inc, %0
  br i1 %exitcond51.not, label %for.cond.for.end_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.047 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047, i32 %smax)
  %exitcond.not = icmp eq i32 %i.047, %smax
  br i1 %exitcond.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr i8, ptr %call, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %5)
  %cmp6 = icmp ugt i8 %5, 63
  br i1 %cmp6, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %abspam10 = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 16
  %6 = call ptr @memcpy(ptr %abspam10, ptr %call, i32 %0)
  %nabs12 = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 11
  %7 = ptrtoint ptr %nabs12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nabs12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1348 = icmp sgt i32 %8, 0
  br i1 %cmp1348, label %for.end.for.body15_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end.for.body15_crit_edge:                     ; preds = %for.end
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.end.for.body15_crit_edge
  %i.149 = phi i32 [ %inc21, %for.body15.for.body15_crit_edge ], [ 0, %for.end.for.body15_crit_edge ]
  %conv16 = trunc i32 %i.149 to i8
  %arrayidx18 = getelementptr %struct.joydev, ptr %joydev, i32 0, i32 16, i32 %i.149
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx19 = getelementptr %struct.joydev, ptr %joydev, i32 0, i32 15, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv16, ptr %arrayidx19, align 1
  %inc21 = add nuw nsw i32 %i.149, 1
  %exitcond52.not = icmp eq i32 %inc21, %8
  br i1 %exitcond52.not, label %for.body15.out_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.body15.out_crit_edge:                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.body15.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge
  %retval1.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ 0, %for.body15.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %retval1.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joydev_handle_JSIOCSBTNMAP(ptr nocapture noundef %joydev, ptr noundef %argp, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 1024)
  %call = tail call ptr @memdup_user(ptr noundef %argp, i32 noundef %0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp657.not = icmp ult i32 %0, 2
  br i1 %cmp657.not, label %for.cond.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %div55 = lshr i32 %0, 1
  %nkey = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 12
  %1 = ptrtoint ptr %nkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nkey, align 8
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %land.rhs

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond62.not = icmp eq i32 %inc, %div55
  br i1 %exitcond62.not, label %for.cond.for.end_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.058 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.058, i32 %smax)
  %exitcond.not = icmp eq i32 %i.058, %smax
  br i1 %exitcond.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr i16, ptr %call, i32 %i.058
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = add i16 %5, -768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %6)
  %7 = icmp ult i16 %6, -512
  br i1 %7, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %keypam16 = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 14
  %8 = call ptr @memcpy(ptr %keypam16, ptr %call, i32 %0)
  %nkey18 = getelementptr inbounds %struct.joydev, ptr %joydev, i32 0, i32 12
  %9 = ptrtoint ptr %nkey18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nkey18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1959 = icmp sgt i32 %10, 0
  br i1 %cmp1959, label %for.end.for.body21_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %i.160 = phi i32 [ %inc28, %for.body21.for.body21_crit_edge ], [ 0, %for.end.for.body21_crit_edge ]
  %conv22 = trunc i32 %i.160 to i16
  %arrayidx24 = getelementptr %struct.joydev, ptr %joydev, i32 0, i32 14, i32 %i.160
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %12 to i32
  %sub = add nsw i32 %conv25, -256
  %arrayidx26 = getelementptr %struct.joydev, ptr %joydev, i32 0, i32 13, i32 %sub
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv22, ptr %arrayidx26, align 2
  %inc28 = add nuw nsw i32 %i.160, 1
  %14 = ptrtoint ptr %nkey18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nkey18, align 8
  %cmp19 = icmp slt i32 %inc28, %15
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.out_crit_edge

for.body21.out_crit_edge:                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

out:                                              ; preds = %for.body21.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge
  %retval1.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ 0, %for.body21.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %retval1.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !55, !57, !59, !60}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_author228, !1, !"__UNIQUE_ID_author228", i1 false, i1 false}
!1 = !{!"../drivers/input/joydev.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description229, !3, !"__UNIQUE_ID_description229", i1 false, i1 false}
!3 = !{!"../drivers/input/joydev.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/input/joydev.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_joydev__250_1097_joydev_init6, !8, !"__initcall__kmod_joydev__250_1097_joydev_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joydev.c", i32 1097, i32 1}
!9 = !{ptr @__exitcall_joydev_exit, !10, !"__exitcall_joydev_exit", i1 false, i1 false}
!10 = !{!"../drivers/input/joydev.c", i32 1098, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joydev.c", i32 1083, i32 11}
!13 = !{ptr @joydev_handler, !14, !"joydev_handler", i1 false, i1 false}
!14 = !{!"../drivers/input/joydev.c", i32 1076, i32 29}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/input/joydev.c", i32 146, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/joydev.c", i32 811, i32 4}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @joydev_dev_is_blacklisted.__UNIQUE_ID_ddebug248, !27, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!30 = !{ptr @joydev_blacklist, !31, !"joydev_blacklist", i1 false, i1 false}
!31 = !{!"../drivers/input/joydev.c", i32 777, i32 37}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/joydev.c", i32 921, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @joydev_connect._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @joydev_connect._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @joydev_connect.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/input/joydev.c", i32 932, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @joydev_connect.__key.12, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/input/joydev.c", i32 933, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @joydev_connect.__key.14, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/input/joydev.c", i32 934, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/joydev.c", i32 941, i32 29}
!48 = !{ptr @joydev_fops, !49, !"joydev_fops", i1 false, i1 false}
!49 = !{!"../drivers/input/joydev.c", i32 710, i32 37}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!57 = !{ptr @joydev_open.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/input/joydev.c", i32 268, i32 2}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @joydev_ids, !61, !"joydev_ids", i1 false, i1 false}
!61 = !{!"../drivers/input/joydev.c", i32 1028, i32 37}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2149332270}
!73 = !{i64 2149332536}
!74 = !{i64 2148937753, i64 2148937758, i64 2148937771, i64 2148937815, i64 2148937849, i64 2148937870}
!75 = !{i8 0, i8 2}
!76 = !{i64 2152822462, i64 2152822487}
!77 = !{i64 5317336}
!78 = !{i64 5317533}
!79 = !{i64 2152802766}
!80 = !{i64 2154076958, i64 2154077238, i64 2154077572, i64 2154077906}
!81 = !{i64 2154086537, i64 2154086817, i64 2154087151, i64 2154087485}
!82 = !{i64 2152821781, i64 2152821806}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2154012510, i64 2154012790, i64 2154013124, i64 2154013458}
!85 = !{i64 2154022085, i64 2154022365, i64 2154022699, i64 2154023033}
!86 = !{i64 2154031685, i64 2154031965, i64 2154032299, i64 2154032633}
!87 = !{i64 2154037345, i64 2154037625, i64 2154037959, i64 2154038293}
!88 = !{i64 2154046929, i64 2154047209, i64 2154047543, i64 2154047877}
!89 = !{i64 2149494516}

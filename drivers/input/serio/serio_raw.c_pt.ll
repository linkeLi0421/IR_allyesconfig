; ModuleID = '/llk/IR_all_yes/drivers/input/serio/serio_raw.c_pt.bc'
source_filename = "../drivers/input/serio/serio_raw.c"
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.serio_raw = type { [64 x i8], i32, i32, [16 x i8], %struct.kref, ptr, %struct.miscdevice, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i8 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.serio_raw_client = type { ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@__UNIQUE_ID_author227 = internal constant [48 x i8] c"serio_raw.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [39 x i8] c"serio_raw.description=Raw serio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"serio_raw.file=drivers/input/serio/serio_raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"serio_raw.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_serio_raw__233_441_serio_raw_drv_init6 = internal global ptr @serio_raw_drv_init, section ".initcall6.init", align 4
@serio_raw_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @serio_raw_serio_ids, i8 1, ptr null, ptr @serio_raw_interrupt, ptr @serio_raw_connect, ptr @serio_raw_reconnect, ptr null, ptr @serio_raw_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_serio_raw_drv_exit = internal global ptr @serio_raw_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serio_raw\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Raw serio driver\00", [47 x i8] zeroinitializer }, align 32
@serio_raw_serio_ids = internal constant { [3 x %struct.serio_device_id], [20 x i8] } { [3 x %struct.serio_device_id] [%struct.serio_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 6, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id zeroinitializer], [20 x i8] zeroinitializer }, align 32
@serio_raw_connect.serio_raw_no = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@serio_raw_connect.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serio_raw_connect\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/serio/serio_raw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't allocate memory for a device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serio_raw%ld\00", [19 x i8] zeroinitializer }, align 32
@serio_raw_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&serio_raw->wait\00", [47 x i8] zeroinitializer }, align 32
@serio_raw_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serio_raw_mutex, i64 52), ptr getelementptr (i8, ptr @serio_raw_mutex, i64 52) }, ptr @serio_raw_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@serio_raw_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @serio_raw_list, ptr @serio_raw_list }, [24 x i8] zeroinitializer }, align 32
@serio_raw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @serio_raw_read, ptr @serio_raw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serio_raw_poll, ptr null, ptr null, ptr null, i32 0, ptr @serio_raw_open, ptr null, ptr @serio_raw_release, ptr null, ptr @serio_raw_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@serio_raw_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to register raw access device for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serio_raw_connect._entry_ptr = internal global ptr @serio_raw_connect._entry, section ".printk_index", align 4
@serio_raw_connect._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 343, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"raw access enabled on %s (%s, minor %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@serio_raw_connect._entry_ptr.13 = internal global ptr @serio_raw_connect._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serio_raw_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serio_raw_mutex\00", [16 x i8] zeroinitializer }, align 32
@serio_raw_reconnect.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"serio_raw_reconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"reconnect request, but serio is disconnected, ignoring...\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"serio_raw_drv\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 428, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 441, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 432, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"serio_raw_serio_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 410, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"serio_raw_no\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 292, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 298, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 303, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 306, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"serio_raw_mutex\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"serio_raw_list\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 49, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"serio_raw_fops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 254, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 336, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 342, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 48, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [35 x i8] c"../drivers/input/serio/serio_raw.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 362, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_serio_raw_drv_exit, ptr @__initcall__kmod_serio_raw__233_441_serio_raw_drv_init6, ptr @serio_raw_connect._entry, ptr @serio_raw_connect._entry.10, ptr @serio_raw_connect._entry_ptr, ptr @serio_raw_connect._entry_ptr.13, ptr @serio_raw_drv_exit, ptr @serio_raw_drv, ptr @.str, ptr @.str.1, ptr @serio_raw_serio_ids, ptr @serio_raw_connect.serio_raw_no, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @serio_raw_connect.__key, ptr @.str.6, ptr @serio_raw_mutex, ptr @serio_raw_list, ptr @serio_raw_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_serio_ids to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_connect.serio_raw_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_raw_connect._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @serio_raw_drv, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serio_raw_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @serio_unregister_driver(ptr noundef nonnull @serio_raw_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %dfl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %head1 = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1, align 4
  %arrayidx = getelementptr [64 x i8], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx, align 1
  %add = add i32 %3, 1
  %rem = and i32 %add, 63
  %tail = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %6)
  %cmp.not = icmp eq i32 %rem, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !62

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %head1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rem, ptr %head1, align 4
  %client_list = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn24 = load ptr, ptr %client_list, align 4
  %cmp5.not25 = icmp eq ptr %.pn24, %client_list
  br i1 %cmp5.not25, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn24, %if.then.for.body_crit_edge ]
  %client.0 = getelementptr i8, ptr %.pn26, i32 -8
  tail call void @kill_fasync(ptr noundef %client.0, i32 noundef 29, i32 noundef 1) #10
  %9 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp5.not = icmp eq ptr %.pn, %client_list
  br i1 %cmp5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %wait = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serio_raw_connect.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serio_raw_connect, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !63

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serio_raw_connect.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @serio_raw_connect.serio_raw_no, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr nonnull @serio_raw_connect.serio_raw_no, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @serio_raw_connect.serio_raw_no, ptr nonnull @serio_raw_connect.serio_raw_no, i32 1, ptr nonnull elementtype(i32) @serio_raw_connect.serio_raw_no) #10, !srcloc !65
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %asmresult.i.i.i.i)
  %kref = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %kref, align 8
  %client_list = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client_list, ptr %prev.i, align 8
  %wait = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @serio_raw_connect.__key) #10
  %serio12 = getelementptr %struct.serio_raw, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %serio12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %serio, ptr %serio12, align 4
  %dev13 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %call14 = tail call ptr @get_device(ptr noundef %dev13) #10
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end6.err_free_crit_edge

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end18:                                         ; preds = %if.end6
  %call19 = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @serio_raw_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_close_crit_edge

if.end18.err_close_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_close

if.end22:                                         ; preds = %if.end18
  %node = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 9
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_raw_list, i32 0, i32 1), align 4
  %call.i.i96 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %7, ptr noundef nonnull @serio_raw_list) #10
  br i1 %call.i.i96, label %if.end.i.i, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @serio_raw_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @serio_raw_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end22.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @serio_raw_mutex) #10
  %dev23 = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %dev23, align 8
  %name27 = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %name27, align 4
  %parent = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev13, ptr %parent, align 4
  %fops = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @serio_raw_fops, ptr %fops, align 8
  %call32 = tail call i32 @misc_register(ptr noundef %dev23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %list_add_tail.exit.do.end50_crit_edge, label %if.end39

list_add_tail.exit.do.end50_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.end39:                                         ; preds = %list_add_tail.exit
  %15 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %dev23, align 8
  %call38 = tail call i32 @misc_register(ptr noundef %dev23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.end39.do.end50_crit_edge, label %do.end44

if.end39.do.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end44:                                         ; preds = %if.end39
  %phys = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.7, ptr noundef %phys) #14
  %call.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i97, label %if.end.i.i98, label %do.end44.list_del_init.exit_crit_edge

do.end44.list_del_init.exit_crit_edge:            ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i98:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 8
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i98, %do.end44.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.serio_raw, ptr %call7.i.i, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node, ptr %prev.i3.i, align 8
  br label %err_close

do.end50:                                         ; preds = %if.end39.do.end50_crit_edge, %list_add_tail.exit.do.end50_crit_edge
  %phys52 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %24 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.11, ptr noundef %phys52, ptr noundef %name, i32 noundef %25) #14
  br label %cleanup

err_close:                                        ; preds = %list_del_init.exit, %if.end18.err_close_crit_edge
  %err.1 = phi i32 [ %call19, %if.end18.err_close_crit_edge ], [ %call38, %list_del_init.exit ]
  tail call void @serio_close(ptr noundef %serio) #10
  br label %err_free

err_free:                                         ; preds = %err_close, %if.end6.err_free_crit_edge
  %err.2 = phi i32 [ %call15, %if.end6.err_free_crit_edge ], [ %err.1, %err_close ]
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %28 = ptrtoint ptr %serio12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serio12, align 4
  %dev.i.i = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  tail call void @put_device(ptr noundef %dev.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end50, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %do.end50 ], [ -12, %if.then5 ], [ -12, %do.body ], [ %err.2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.2, %if.then10.i.i.i.i ], [ %err.2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_reconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 4
  %tobool.not = icmp eq ptr %3, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serio_raw_reconnect.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serio_raw_reconnect, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !63

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serio_raw_reconnect.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serio_raw_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 6
  tail call void @misc_deregister(ptr noundef %dev) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @serio_raw_mutex, i32 noundef 0) #10
  %dead = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dead, align 4
  %node = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @serio_raw_mutex) #10
  %serio.i = getelementptr %struct.serio_raw, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serio.i, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %client_list.i = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn15.i = load ptr, ptr %client_list.i, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %client_list.i
  br i1 %cmp.not16.i, label %list_del_init.exit.serio_raw_hangup.exit_crit_edge, label %list_del_init.exit.for.body.i_crit_edge

list_del_init.exit.for.body.i_crit_edge:          ; preds = %list_del_init.exit
  br label %for.body.i

list_del_init.exit.serio_raw_hangup.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_raw_hangup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del_init.exit.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn15.i, %list_del_init.exit.for.body.i_crit_edge ]
  %client.0.i = getelementptr i8, ptr %.pn17.i, i32 -8
  tail call void @kill_fasync(ptr noundef %client.0.i, i32 noundef 29, i32 noundef 6) #10
  %14 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.serio_raw_hangup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.serio_raw_hangup.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_raw_hangup.exit

serio_raw_hangup.exit:                            ; preds = %for.body.i.serio_raw_hangup.exit_crit_edge, %list_del_init.exit.serio_raw_hangup.exit_crit_edge
  %15 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serio.i, align 4
  %lock.i14.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i14.i) #10
  %wait.i = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @serio_close(ptr noundef %serio) #10
  %kref = getelementptr inbounds %struct.serio_raw, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %serio_raw_hangup.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %serio_raw_hangup.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %18 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serio.i, align 4
  %dev.i.i = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 18
  tail call void @put_device(ptr noundef %dev.i.i) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serio_raw1 = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio_raw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio_raw1, align 4
  %dead = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not111 = icmp eq i8 %5, 0
  br i1 %tobool.not111, label %if.end.lr.ph, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end.lr.ph:                                     ; preds = %entry
  %head = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 2
  %tail = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5 = icmp eq i32 %count, 0
  %serio.i = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 5
  %wait = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 7
  %umax = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.end54.if.end_crit_edge, %if.end.lr.ph
  %buffer.addr.0113 = phi ptr [ %buffer, %if.end.lr.ph ], [ %buffer.addr.1100, %if.end54.if.end_crit_edge ]
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %brmerge = or i1 %tobool2.not, %cmp5
  br i1 %brmerge, label %cleanup56.loopexit129.split.loop.exit138, label %land.lhs.true.land.rhs.preheader_crit_edge

land.lhs.true.land.rhs.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.preheader

if.end4:                                          ; preds = %if.end
  br i1 %cmp5, label %if.end4.cleanup56_crit_edge, label %if.end4.land.rhs.preheader_crit_edge

if.end4.land.rhs.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.preheader

if.end4.cleanup56_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

land.rhs.preheader:                               ; preds = %if.end4.land.rhs.preheader_crit_edge, %land.lhs.true.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %if.end13.land.rhs_crit_edge, %land.rhs.preheader
  %buffer.addr.1100 = phi ptr [ %incdec.ptr, %if.end13.land.rhs_crit_edge ], [ %buffer.addr.0113, %land.rhs.preheader ]
  %read.199 = phi i32 [ %inc, %if.end13.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %12 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serio.i, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #10
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i = icmp eq i32 %15, %17
  br i1 %cmp.i, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %arrayidx.i = getelementptr [64 x i8], ptr %3, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i32 %17, 1
  %rem.i = and i32 %add.i, 63
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem.i, ptr %tail, align 4
  %21 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serio.i, align 4
  %lock.i14.i = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i14.i) #10
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 178) #10
  %23 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !72
  %and.i = and i32 %25, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %26 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buffer.addr.1100, i8 %19, i32 -1226833921) #10, !srcloc !75
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not = icmp eq i32 %26, 0
  br i1 %tobool11.not, label %if.end13, label %while.body.cleanup56_crit_edge

while.body.cleanup56_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end13:                                         ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.1100, i32 1
  %inc = add nuw i32 %read.199, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end13.cleanup56_crit_edge, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end13.cleanup56_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

while.end:                                        ; preds = %land.rhs
  %27 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serio.i, align 4
  %lock.i14.i122 = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i14.i122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.199)
  %tobool14.not = icmp eq i32 %read.199, 0
  br i1 %tobool14.not, label %if.end16, label %while.end.cleanup56_crit_edge

while.end.cleanup56_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end16:                                         ; preds = %while.end
  %29 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_flags, align 4
  %and18 = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end54_crit_edge

if.end16.if.end54_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then20:                                        ; preds = %if.end16
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 189) #10
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp29.not = icmp eq i32 %32, %34
  br i1 %cmp29.not, label %lor.lhs.false, label %if.then20.if.end54_crit_edge

if.then20.if.end54_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

lor.lhs.false:                                    ; preds = %if.then20
  %35 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool31.not = icmp eq i8 %36, 0
  br i1 %tobool31.not, label %if.then32, label %lor.lhs.false.cleanup56_crit_edge

lor.lhs.false.cleanup56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.then32:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call35106 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %38 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head, align 4
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp38.not107 = icmp eq i32 %39, %41
  br i1 %cmp38.not107, label %if.then32.lor.lhs.false39_crit_edge, label %if.then32.if.end49.thread89_crit_edge

if.then32.if.end49.thread89_crit_edge:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.thread89

if.then32.lor.lhs.false39_crit_edge:              ; preds = %if.then32
  br label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %cleanup.lor.lhs.false39_crit_edge, %if.then32.lor.lhs.false39_crit_edge
  %call35108 = phi i32 [ %call35, %cleanup.lor.lhs.false39_crit_edge ], [ %call35106, %if.then32.lor.lhs.false39_crit_edge ]
  %42 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool41.not = icmp eq i8 %43, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.if.end49.thread89_crit_edge

lor.lhs.false39.if.end49.thread89_crit_edge:      ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.thread89

if.end43:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35108)
  %tobool44.not = icmp eq i32 %call35108, 0
  br i1 %tobool44.not, label %cleanup, label %if.end49

cleanup:                                          ; preds = %if.end43
  call void @schedule() #10
  %call35 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %44 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head, align 4
  %46 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail, align 4
  %cmp38.not = icmp eq i32 %45, %47
  br i1 %cmp38.not, label %cleanup.lor.lhs.false39_crit_edge, label %cleanup.if.end49.thread89_crit_edge

cleanup.if.end49.thread89_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.thread89

cleanup.lor.lhs.false39_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false39

if.end49.thread89:                                ; preds = %cleanup.if.end49.thread89_crit_edge, %lor.lhs.false39.if.end49.thread89_crit_edge, %if.then32.if.end49.thread89_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end54

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup56

if.end54:                                         ; preds = %if.end49.thread89, %if.then20.if.end54_crit_edge, %if.end16.if.end54_crit_edge
  %48 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %dead, align 4
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %if.end54.if.end_crit_edge, label %if.end54.cleanup56_crit_edge

if.end54.cleanup56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end54.if.end_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup56.loopexit129.split.loop.exit138:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %.mux.le = select i1 %tobool2.not, i32 -11, i32 0
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup56.loopexit129.split.loop.exit138, %if.end54.cleanup56_crit_edge, %if.end49, %lor.lhs.false.cleanup56_crit_edge, %while.end.cleanup56_crit_edge, %if.end13.cleanup56_crit_edge, %while.body.cleanup56_crit_edge, %if.end4.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ %call35108, %if.end49 ], [ -19, %entry.cleanup56_crit_edge ], [ %.mux.le, %cleanup56.loopexit129.split.loop.exit138 ], [ %umax, %if.end13.cleanup56_crit_edge ], [ -14, %while.body.cleanup56_crit_edge ], [ 0, %if.end4.cleanup56_crit_edge ], [ %read.199, %while.end.cleanup56_crit_edge ], [ -19, %if.end54.cleanup56_crit_edge ], [ -19, %lor.lhs.false.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serio_raw1 = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio_raw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio_raw1, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @serio_raw_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dead = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not37 = icmp eq i32 %6, 0
  br i1 %tobool8.not37, label %if.end5.out_crit_edge, label %while.body.lr.ph

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %if.end5
  %serio = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %dec40.in = phi i32 [ %6, %while.body.lr.ph ], [ %dec40, %if.end22.while.body_crit_edge ]
  %buffer.addr.039 = phi ptr [ %buffer, %while.body.lr.ph ], [ %incdec.ptr, %if.end22.while.body_crit_edge ]
  %retval2.038 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end22.while.body_crit_edge ]
  %dec40 = add nsw i32 %dec40.in, -1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 219) #10
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.039, i32 1
  %7 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !72
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer.addr.039, i32 -1226833921) #10, !srcloc !76
  %asmresult = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool12.not = icmp eq i32 %asmresult, 0
  br i1 %tobool12.not, label %if.end14, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %while.body
  %11 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serio, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end14.if.then17_crit_edge, label %serio_write.exit

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

serio_write.exit:                                 ; preds = %if.end14
  %asmresult10 = extractvalue { i32, i32 } %10, 1
  %conv = trunc i32 %asmresult10 to i8
  %call.i = tail call i32 %14(ptr noundef %12, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end22, label %serio_write.exit.if.then17_crit_edge

serio_write.exit.if.then17_crit_edge:             ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %serio_write.exit.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.038)
  %cmp18 = icmp eq i32 %retval2.038, 0
  %spec.store.select26 = select i1 %cmp18, i32 -5, i32 %retval2.038
  br label %out

if.end22:                                         ; preds = %serio_write.exit
  %inc = add nuw nsw i32 %retval2.038, 1
  %tobool8.not = icmp eq i32 %dec40, 0
  br i1 %tobool8.not, label %if.end22.out_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end22.out_crit_edge, %if.then17, %while.body.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %retval2.1 = phi i32 [ %spec.store.select26, %if.then17 ], [ -19, %if.end.out_crit_edge ], [ 0, %if.end5.out_crit_edge ], [ %6, %if.end22.out_crit_edge ], [ -14, %while.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @serio_raw_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serio_raw1 = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio_raw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio_raw1, align 4
  %wait2 = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait2, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %dead = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 260, i32 24
  %head = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  %or = or i32 %cond, 65
  %spec.select = select i1 %cmp.not, i32 %cond, i32 %or
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @serio_raw_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @serio_raw_list, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @serio_raw_list
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -100
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev.i, align 4
  %cmp2.i = icmp eq i32 %4, %and.i
  br i1 %cmp2.i, label %serio_raw_locate.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

serio_raw_locate.exit:                            ; preds = %for.body.i
  %serio_raw.0.le.i = getelementptr i8, ptr %.pn.i, i32 -196
  %tobool4.not = icmp eq ptr %serio_raw.0.le.i, null
  br i1 %tobool4.not, label %serio_raw_locate.exit.out_crit_edge, label %if.end6

serio_raw_locate.exit.out_crit_edge:              ; preds = %serio_raw_locate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %serio_raw_locate.exit
  %dead = getelementptr i8, ptr %.pn.i, i32 8
  %5 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dead, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.end9
  %serio_raw14 = getelementptr inbounds %struct.serio_raw_client, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %serio_raw14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %serio_raw.0.le.i, ptr %serio_raw14, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private_data, align 4
  %kref = getelementptr i8, ptr %.pn.i, i32 -108
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !62

if.end13.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %serio = getelementptr i8, ptr %.pn.i, i32 -104
  %12 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serio, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %node = getelementptr inbounds %struct.serio_raw_client, ptr %call7.i.i, i32 0, i32 2
  %client_list = getelementptr i8, ptr %.pn.i, i32 -8
  %prev.i = getelementptr i8, ptr %.pn.i, i32 -4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %15, ptr noundef %client_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %kref_get.exit.list_add_tail.exit_crit_edge

kref_get.exit.list_add_tail.exit_crit_edge:       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %node, ptr %prev.i, align 4
  %17 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %client_list, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.serio_raw_client, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %kref_get.exit.list_add_tail.exit_crit_edge
  %20 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serio, align 4
  %lock.i29 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i29) #10
  br label %out

out:                                              ; preds = %list_add_tail.exit, %if.end9.out_crit_edge, %if.end6.out_crit_edge, %serio_raw_locate.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %retval1.0 = phi i32 [ 0, %list_add_tail.exit ], [ -19, %serio_raw_locate.exit.out_crit_edge ], [ -19, %if.end6.out_crit_edge ], [ -12, %if.end9.out_crit_edge ], [ -19, %for.cond.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @serio_raw_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serio_raw1 = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio_raw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio_raw1, align 4
  %serio = getelementptr %struct.serio_raw, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %node = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.serio_raw_client, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serio, align 4
  %lock.i7 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i7) #10
  tail call void @kfree(ptr noundef %1) #10
  %kref = getelementptr inbounds %struct.serio_raw, ptr %3, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %17 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serio, align 4
  %dev.i.i = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  tail call void @put_device(ptr noundef %dev.i.i) #10
  tail call void @kfree(ptr noundef %3) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_raw_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/serio_raw.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/serio/serio_raw.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/serio/serio_raw.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_serio_raw__233_441_serio_raw_drv_init6, !8, !"__initcall__kmod_serio_raw__233_441_serio_raw_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/serio_raw.c", i32 441, i32 1}
!9 = !{ptr @__exitcall_serio_raw_drv_exit, !8, !"__exitcall_serio_raw_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/serio/serio_raw.c", i32 432, i32 17}
!13 = !{ptr @serio_raw_drv, !14, !"serio_raw_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/serio/serio_raw.c", i32 428, i32 28}
!15 = !{ptr @serio_raw_serio_ids, !16, !"serio_raw_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/serio/serio_raw.c", i32 410, i32 37}
!17 = !{ptr @serio_raw_connect.serio_raw_no, !18, !"serio_raw_no", i1 false, i1 false}
!18 = !{!"../drivers/input/serio/serio_raw.c", i32 292, i32 18}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/serio/serio_raw.c", i32 298, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @serio_raw_connect.__UNIQUE_ID_ddebug231, !20, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/serio/serio_raw.c", i32 303, i32 4}
!26 = !{ptr @serio_raw_connect.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/serio/serio_raw.c", i32 306, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/serio_raw.c", i32 336, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @serio_raw_connect._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @serio_raw_connect._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/serio/serio_raw.c", i32 342, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @serio_raw_connect._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @serio_raw_connect._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/serio/serio_raw.c", i32 48, i32 8}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @serio_raw_mutex, !41, !"serio_raw_mutex", i1 false, i1 false}
!44 = !{ptr @serio_raw_list, !45, !"serio_raw_list", i1 false, i1 false}
!45 = !{!"../drivers/input/serio/serio_raw.c", i32 49, i32 8}
!46 = !{ptr @serio_raw_fops, !47, !"serio_raw_fops", i1 false, i1 false}
!47 = !{!"../drivers/input/serio/serio_raw.c", i32 254, i32 37}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/serio/serio_raw.c", i32 362, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @serio_raw_reconnect.__UNIQUE_ID_ddebug232, !49, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2148313152, i64 2148313157, i64 2148313170, i64 2148313214, i64 2148313248, i64 2148313269}
!64 = !{i64 2148573989}
!65 = !{i64 2148489274, i64 2148489306, i64 2148489335, i64 2148489369, i64 2148489400, i64 2148489423}
!66 = !{i64 2148574218}
!67 = !{i64 2148578109}
!68 = !{i64 2148492549, i64 2148492581, i64 2148492610, i64 2148492644, i64 2148492675, i64 2148492698}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2149212833}
!71 = !{i8 0, i8 2}
!72 = !{i64 5073289}
!73 = !{i64 5073486}
!74 = !{i64 2152558719}
!75 = !{i64 2153769056, i64 2153769336, i64 2153769670, i64 2153770004}
!76 = !{i64 2153780925, i64 2153781205, i64 2153781539, i64 2153781873}
!77 = !{i64 2148490084, i64 2148490116, i64 2148490145, i64 2148490179, i64 2148490210, i64 2148490233}

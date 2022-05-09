; ModuleID = '/llk/IR_all_yes/block/disk-events.c_pt.bc'
source_filename = "../block/disk-events.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bdev_check_media_change\22, \22a\22\09"
module asm "\09.weak\09__crc_bdev_check_media_change\09\09\09\09"
module asm "\09.long\09__crc_bdev_check_media_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdev_check_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22bdev_check_media_change\22\09\09\09\09\09"
module asm "__kstrtabns_bdev_check_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+disk_force_media_change\22, \22a\22\09"
module asm "\09.weak\09__crc_disk_force_media_change\09\09\09\09"
module asm "\09.long\09__crc_disk_force_media_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_force_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_force_media_change\22\09\09\09\09\09"
module asm "__kstrtabns_disk_force_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.disk_events = type { %struct.list_head, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, %struct.delayed_work }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@bdev_check_media_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014VFS: busy inodes on changed media %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bdev_check_media_change\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"block/disk-events.c\00", [44 x i8] zeroinitializer }, align 32
@bdev_check_media_change._entry_ptr = internal global ptr @bdev_check_media_change._entry, section ".printk_index", align 4
@__kstrtab_bdev_check_media_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdev_check_media_change = external dso_local constant [0 x i8], align 1
@__ksymtab_bdev_check_media_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdev_check_media_change to i32), ptr @__kstrtab_bdev_check_media_change, ptr @__kstrtabns_bdev_check_media_change }, section "___ksymtab+bdev_check_media_change", align 4
@disk_force_media_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disk_force_media_change\00", [40 x i8] zeroinitializer }, align 32
@disk_force_media_change._entry_ptr = internal global ptr @disk_force_media_change._entry, section ".printk_index", align 4
@__kstrtab_disk_force_media_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_force_media_change = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_force_media_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_force_media_change to i32), ptr @__kstrtab_disk_force_media_change, ptr @__kstrtabns_disk_force_media_change }, section "___ksymtab_gpl+disk_force_media_change", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_events = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disk_events_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"events_async\00", [19 x i8] zeroinitializer }, align 32
@dev_attr_events_async = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disk_events_async_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"events_poll_msecs\00", [46 x i8] zeroinitializer }, align 32
@dev_attr_events_poll_msecs = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disk_events_poll_msecs_show, ptr @disk_events_poll_msecs_store }, [36 x i8] zeroinitializer }, align 32
@__param_str_events_dfl_poll_msecs = internal constant [28 x i8] c"block.events_dfl_poll_msecs\00", align 1
@disk_events_dfl_poll_msecs_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @disk_events_set_dfl_poll_msecs, ptr @param_get_ulong, ptr null }, [16 x i8] zeroinitializer }, align 32
@disk_events_dfl_poll_msecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_events_dfl_poll_msecs = internal constant %struct.kernel_param { ptr @__param_str_events_dfl_poll_msecs, ptr null, ptr @disk_events_dfl_poll_msecs_param_ops, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @disk_events_dfl_poll_msecs } }, section "__param", align 4
@disk_alloc_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to initialize events\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disk_alloc_events\00", [46 x i8] zeroinitializer }, align 32
@disk_alloc_events._entry_ptr = internal global ptr @disk_alloc_events._entry, section ".printk_index", align 4
@disk_alloc_events.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ev->lock\00", [22 x i8] zeroinitializer }, align 32
@disk_alloc_events.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ev->block_mutex\00", [47 x i8] zeroinitializer }, align 32
@disk_alloc_events.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&ev->dwork)->work)\00", [57 x i8] zeroinitializer }, align 32
@disk_alloc_events.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&ev->dwork)->timer\00", [43 x i8] zeroinitializer }, align 32
@disk_events_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @disk_events_mutex, i64 52), ptr getelementptr (i8, ptr @disk_events_mutex, i64 52) }, ptr @disk_events_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@disk_events = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @disk_events, ptr @disk_events }, [24 x i8] zeroinitializer }, align 32
@disk_release_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__disk_unblock_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@disk_clear_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DISK_MEDIA_CHANGE=1\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DISK_EJECT_REQUEST=1\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"media_change\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eject_request\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disk_events_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disk_events_mutex\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 285, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 311, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"dev_attr_events\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 405, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"dev_attr_events_async\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 406, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"dev_attr_events_poll_msecs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 407, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [37 x i8] c"disk_events_dfl_poll_msecs_param_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 433, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"disk_events_dfl_poll_msecs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 39, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 456, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 462, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 463, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 466, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"disk_events_mutex\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"disk_events\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 36, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 30, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 31, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 341, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 347, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 349, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 25, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 26, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 380, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 390, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [23 x i8] c"../block/disk-events.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 35, i32 8 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab_bdev_check_media_change, ptr @__ksymtab_disk_force_media_change, ptr @__param_events_dfl_poll_msecs, ptr @bdev_check_media_change._entry, ptr @bdev_check_media_change._entry_ptr, ptr @disk_alloc_events._entry, ptr @disk_alloc_events._entry_ptr, ptr @disk_force_media_change._entry, ptr @disk_force_media_change._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dev_attr_events, ptr @.str.5, ptr @dev_attr_events_async, ptr @.str.6, ptr @dev_attr_events_poll_msecs, ptr @disk_events_dfl_poll_msecs_param_ops, ptr @disk_events_dfl_poll_msecs, ptr @.str.7, ptr @.str.8, ptr @disk_alloc_events.__key, ptr @.str.9, ptr @disk_alloc_events.__key.10, ptr @.str.11, ptr @disk_alloc_events.__key.12, ptr @.str.13, ptr @disk_alloc_events.__key.14, ptr @.str.15, ptr @disk_events_mutex, ptr @disk_events, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdev_check_media_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_force_media_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_events to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_events_async to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_events_poll_msecs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_events_dfl_poll_msecs_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_events_dfl_poll_msecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_alloc_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_alloc_events.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_alloc_events.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_alloc_events.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_alloc_events.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_events_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_events to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_block_events(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %block_mutex = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %block_mutex, i32 noundef 0) #8
  %lock = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %block = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br i1 %tobool6.not, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ev1, align 4
  %dwork = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 8
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_unblock_events(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__disk_unblock_events(ptr noundef %disk, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__disk_unblock_events(ptr nocapture noundef readonly %disk, i1 noundef zeroext %check_now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev1, align 4
  %lock = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %block = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp slt i32 %3, 1
  br i1 %cmp6, label %land.rhs, label %if.end50.critedge

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @__disk_unblock_events.__already_done, align 1
  br i1 %.b75, label %land.rhs.out_unlock_crit_edge, label %if.then, !prof !93

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__disk_unblock_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 106, i32 noundef 9, ptr noundef null) #8
  br label %out_unlock

if.end50.critedge:                                ; preds = %entry
  %dec = add nsw i32 %3, -1
  %4 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool52.not = icmp eq i32 %dec, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.critedge.out_unlock_crit_edge

if.end50.critedge.out_unlock_crit_edge:           ; preds = %if.end50.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end54:                                         ; preds = %if.end50.critedge
  %5 = ptrtoint ptr %ev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ev1, align 4
  %poll_msecs.i = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %poll_msecs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %poll_msecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp sgt i32 %8, -1
  br i1 %cmp.i, label %if.end54.if.else.i.i_crit_edge, label %if.else.i

if.end54.if.else.i.i_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.else.i:                                        ; preds = %if.end54
  %event_flags.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 5
  %9 = ptrtoint ptr %event_flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %event_flags.i, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.else.i.if.else.i.i_crit_edge, label %if.then3.i

if.else.i.if.else.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @disk_events_dfl_poll_msecs, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then3.i, %if.else.i.if.else.i.i_crit_edge, %if.end54.if.else.i.i_crit_edge
  %intv_msecs.0.i = phi i32 [ %12, %if.then3.i ], [ 0, %if.else.i.if.else.i.i_crit_edge ], [ %8, %if.end54.if.else.i.i_crit_edge ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %intv_msecs.0.i) #8
  br i1 %check_now, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %13 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %dwork = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %dwork, i32 noundef 0) #8
  br label %out_unlock

if.else:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool59.not = icmp eq i32 %call2.i.i, 0
  br i1 %tobool59.not, label %if.else.out_unlock_crit_edge, label %if.then60

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %14 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %dwork61 = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 8
  %call.i77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %dwork61, i32 noundef %call2.i.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then60, %if.else.out_unlock_crit_edge, %if.then57, %if.end50.critedge.out_unlock_crit_edge, %if.then, %land.rhs.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_flush_events(ptr nocapture noundef readonly %disk, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %clearing = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clearing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clearing, align 4
  %or = or i32 %3, %mask
  store i32 %or, ptr %clearing, align 4
  %block = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %6 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %dwork = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %dwork, i32 noundef 0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bdev_check_media_change(ptr noundef %bdev) #0 align 64 {
entry:
  %clearing.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %ev1.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clearing.i) #8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %disk_clear_events.exit.thread, label %if.end.i.i

disk_clear_events.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clearing.i) #8
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %block_mutex.i.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %block_mutex.i.i, i32 noundef 0) #8
  %lock.i.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %block.i.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block.i.i, align 4
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not.i.i = icmp eq i32 %5, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #8
  br i1 %tobool6.not.i.i, label %if.then9.i.i, label %if.end.i.i.disk_block_events.exit.i_crit_edge

if.end.i.i.disk_block_events.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_block_events.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev1.i, align 4
  %dwork.i.i = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 8
  %call11.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i.i) #8
  br label %disk_block_events.exit.i

disk_block_events.exit.i:                         ; preds = %if.then9.i.i, %if.end.i.i.disk_block_events.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i.i) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %clearing2.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %clearing2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clearing2.i, align 4
  %or.i = or i32 %9, 3
  %10 = ptrtoint ptr %clearing.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %clearing.i, align 4
  store i32 0, ptr %clearing2.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  call fastcc void @disk_check_events(ptr noundef nonnull %3, ptr noundef nonnull %clearing.i) #8
  %11 = ptrtoint ptr %clearing2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clearing2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.i = icmp ne i32 %12, 0
  tail call fastcc void @__disk_unblock_events(ptr noundef %1, i1 noundef zeroext %tobool6.i) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %pending9.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %pending9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pending9.i, align 4
  %and11.i = and i32 %14, -4
  store i32 %and11.i, ptr %pending9.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  %15 = ptrtoint ptr %clearing.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clearing.i, align 4
  %and13.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %disk_block_events.exit.i.disk_clear_events.exit_crit_edge, label %land.rhs.i

disk_block_events.exit.i.disk_clear_events.exit_crit_edge: ; preds = %disk_block_events.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_clear_events.exit

land.rhs.i:                                       ; preds = %disk_block_events.exit.i
  %.b1.i = load i1, ptr @disk_clear_events.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.disk_clear_events.exit_crit_edge, label %if.then22.i, !prof !93

land.rhs.i.disk_clear_events.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_clear_events.exit

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @disk_clear_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 260, i32 noundef 9, ptr noundef null) #8
  br label %disk_clear_events.exit

disk_clear_events.exit:                           ; preds = %if.then22.i, %land.rhs.i.disk_clear_events.exit_crit_edge, %disk_block_events.exit.i.disk_clear_events.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clearing.i) #8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %disk_clear_events.exit.cleanup_crit_edge, label %if.end

disk_clear_events.exit.cleanup_crit_edge:         ; preds = %disk_clear_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %disk_clear_events.exit
  %call1 = tail call i32 @__invalidate_device(ptr noundef %bdev, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_disk, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %disk_name) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %19 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_disk, align 8
  %state = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %disk_clear_events.exit.cleanup_crit_edge, %disk_clear_events.exit.thread
  %tobool.not14 = phi i1 [ false, %disk_clear_events.exit.thread ], [ false, %disk_clear_events.exit.cleanup_crit_edge ], [ true, %if.end6 ]
  ret i1 %tobool.not14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @disk_force_media_change(ptr noundef %disk, i32 noundef %events) #0 align 64 {
entry:
  %envp.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #8
  %0 = call ptr @memset(ptr %envp.i, i32 0, i32 12)
  %events1.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 4
  %1 = ptrtoint ptr %events1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %events1.i, align 4
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %events, 1
  %and2.i = and i32 %and.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %entry
  %and.1.i = and i32 %events, 2
  %and2.1.i = and i32 %and.1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool.not.1.i = icmp eq i32 %and2.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.disk_event_uevent.exit_crit_edge, label %for.inc.i.for.inc.1.thread.i_crit_edge

for.inc.i.for.inc.1.thread.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread.i

for.inc.i.disk_event_uevent.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_event_uevent.exit

for.inc.i.thread:                                 ; preds = %entry
  %3 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.16, ptr %envp.i, align 4
  %and.1.i10 = and i32 %events, 2
  %and2.1.i11 = and i32 %and.1.i10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i11)
  %tobool.not.1.i12 = icmp eq i32 %and2.1.i11, 0
  br i1 %tobool.not.1.i12, label %for.inc.i.thread.if.then6.i_crit_edge, label %for.inc.i.thread.for.inc.1.thread.i_crit_edge

for.inc.i.thread.for.inc.1.thread.i_crit_edge:    ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread.i

for.inc.i.thread.if.then6.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

for.inc.1.thread.i:                               ; preds = %for.inc.i.thread.for.inc.1.thread.i_crit_edge, %for.inc.i.for.inc.1.thread.i_crit_edge
  %nr_events.1.i13 = phi i32 [ 1, %for.inc.i.thread.for.inc.1.thread.i_crit_edge ], [ 0, %for.inc.i.for.inc.1.thread.i_crit_edge ]
  %arrayidx3.1.i = getelementptr [3 x ptr], ptr %envp.i, i32 0, i32 %nr_events.1.i13
  %4 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.17, ptr %arrayidx3.1.i, align 4
  br label %if.then6.i

if.then6.i:                                       ; preds = %for.inc.1.thread.i, %for.inc.i.thread.if.then6.i_crit_edge
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %5 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 10
  %call.i = call i32 @kobject_uevent_env(ptr noundef %bd_device.i, i32 noundef 2, ptr noundef nonnull %envp.i) #8
  br label %disk_event_uevent.exit

disk_event_uevent.exit:                           ; preds = %if.then6.i, %for.inc.i.disk_event_uevent.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %disk_event_uevent.exit.return_crit_edge, label %if.end

disk_event_uevent.exit.return_crit_edge:          ; preds = %disk_event_uevent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %disk_event_uevent.exit
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %7 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0, align 4
  %call = call i32 @__invalidate_device(ptr noundef %8, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %disk_name) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %state = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #8
  br label %return

return:                                           ; preds = %if.end4, %disk_event_uevent.exit.return_crit_edge
  %9 = xor i1 %tobool.not, true
  ret i1 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_events_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %event_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %event_flags, align 2
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %events = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %events to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %events, align 4
  %conv1 = zext i16 %6 to i32
  %and.i = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %delim.1.i = phi ptr [ @.str.20, %if.then.i ], [ @.str.18, %if.end.for.inc.i_crit_edge ]
  %pos.1.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end.for.inc.i_crit_edge ]
  %and.1.i = and i32 %conv1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.1.i = getelementptr i8, ptr %buf, i32 %pos.1.i
  %call.1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %delim.1.i, ptr noundef nonnull @.str.23) #8
  %add.1.i = add i32 %call.1.i, %pos.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %pos.1.1.i = phi i32 [ %add.1.i, %if.then.1.i ], [ %pos.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.1.1.i)
  %tobool1.not.i = icmp eq i32 %pos.1.1.i, 0
  br i1 %tobool1.not.i, label %for.inc.1.i.cleanup_crit_edge, label %if.then2.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %pos.1.1.i
  %7 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 2560, ptr %add.ptr3.i, align 1
  %add5.i = add i32 %pos.1.1.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %for.inc.1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add5.i, %if.then2.i ], [ 0, %for.inc.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @disk_events_async_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_events_poll_msecs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %ev = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 758188544, ptr %buf, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %poll_msecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_msecs, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_events_poll_msecs_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %intv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intv) #8
  %2 = ptrtoint ptr %intv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %intv, align 4, !annotation !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.26, ptr noundef nonnull %intv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %intv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %5 = icmp sgt i32 %4, -2
  br i1 %5, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ev = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %block_mutex.i = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %block_mutex.i, i32 noundef 0) #8
  %lock.i = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 2
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %block.i = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br i1 %tobool6.not.i, label %if.then9.i, label %if.end.i.disk_block_events.exit_crit_edge

if.end.i.disk_block_events.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_block_events.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ev, align 4
  %dwork.i = getelementptr inbounds %struct.disk_events, ptr %11, i32 0, i32 8
  %call11.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  br label %disk_block_events.exit

disk_block_events.exit:                           ; preds = %if.then9.i, %if.end.i.disk_block_events.exit_crit_edge
  call void @mutex_unlock(ptr noundef %block_mutex.i) #8
  %12 = ptrtoint ptr %intv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intv, align 4
  %14 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ev, align 4
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %poll_msecs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %poll_msecs, align 4
  call fastcc void @__disk_unblock_events(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %disk_block_events.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %disk_block_events.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intv) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @disk_alloc_events(ptr noundef %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fops = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 8
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %check_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_events, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %events = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 4
  %4 = ptrtoint ptr %events to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %events, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 264) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %disk_name) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %disk6 = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %disk6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %disk, ptr %disk6, align 8
  %lock = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @disk_alloc_events.__key, i16 noundef signext 3) #8
  %block_mutex = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %block_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @disk_alloc_events.__key.10) #8
  %block = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %block, align 4
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %poll_msecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %poll_msecs, align 8
  %dwork = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #8
  %12 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @disk_alloc_events.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry22 = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %13 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry22, ptr %entry22, align 8
  %prev.i51 = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry22, ptr %prev.i51, align 4
  %func = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @disk_events_workfn, ptr %func, align 8
  %timer = getelementptr inbounds %struct.disk_events, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @disk_alloc_events.__key.14) #8
  %ev33 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %16 = ptrtoint ptr %ev33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %ev33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disk_events_workfn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  %clearing = getelementptr i8, ptr %work, i32 -8
  tail call fastcc void @disk_check_events(ptr noundef %add.ptr, ptr noundef %clearing)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_add_events(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @disk_events_mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @disk_events, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %4, ptr noundef nonnull @disk_events) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %3, ptr getelementptr inbounds (%struct.list_head, ptr @disk_events, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @disk_events, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #8
  tail call fastcc void @__disk_unblock_events(ptr noundef %disk, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %list_add_tail.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_del_events(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %block_mutex.i = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %block_mutex.i, i32 noundef 0) #8
  %lock.i = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %block.i = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not.i = icmp eq i32 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br i1 %tobool6.not.i, label %if.then9.i, label %if.end.i.disk_block_events.exit_crit_edge

if.end.i.disk_block_events.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_block_events.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ev, align 4
  %dwork.i = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 8
  %call11.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  br label %disk_block_events.exit

disk_block_events.exit:                           ; preds = %if.then9.i, %if.end.i.disk_block_events.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @disk_events_mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %disk_block_events.exit.list_del_init.exit_crit_edge

disk_block_events.exit.list_del_init.exit_crit_edge: ; preds = %disk_block_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %disk_block_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %disk_block_events.exit.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #8
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_release_events(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ev = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 20
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %land.rhs

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %block = getelementptr inbounds %struct.disk_events, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %land.rhs.if.end31_crit_edge, label %land.rhs4

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs4:                                        ; preds = %land.rhs
  %.b44 = load i1, ptr @disk_release_events.__already_done, align 1
  br i1 %.b44, label %land.rhs4.if.end31_crit_edge, label %if.then, !prof !93

land.rhs4.if.end31_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @disk_release_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 502, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs4.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ev, align 4
  tail call void @kfree(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disk_check_events(ptr noundef %ev, ptr nocapture noundef %clearing_ptr) unnamed_addr #0 align 64 {
entry:
  %envp.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disk1 = getelementptr inbounds %struct.disk_events, ptr %ev, i32 0, i32 1
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 4
  %2 = ptrtoint ptr %clearing_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clearing_ptr, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %check_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_events, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %3) #8
  %lock = getelementptr inbounds %struct.disk_events, ptr %ev, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %pending = getelementptr inbounds %struct.disk_events, ptr %ev, i32 0, i32 5
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %call, %neg
  %or = or i32 %9, %call
  store i32 %or, ptr %pending, align 4
  %neg3 = xor i32 %3, -1
  %10 = ptrtoint ptr %clearing_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clearing_ptr, align 4
  %and4 = and i32 %11, %neg3
  store i32 %and4, ptr %clearing_ptr, align 4
  %ev1.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %ev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ev1.i, align 4
  %poll_msecs.i = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %poll_msecs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %poll_msecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %entry.if.else.i.i_crit_edge, label %if.else.i

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.else.i:                                        ; preds = %entry
  %event_flags.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %event_flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %event_flags.i, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %if.else.i.if.else.i.i_crit_edge, label %if.then3.i

if.else.i.if.else.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @disk_events_dfl_poll_msecs, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then3.i, %if.else.i.if.else.i.i_crit_edge, %entry.if.else.i.i_crit_edge
  %intv_msecs.0.i = phi i32 [ %19, %if.then3.i ], [ 0, %if.else.i.if.else.i.i_crit_edge ], [ %15, %entry.if.else.i.i_crit_edge ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %intv_msecs.0.i) #8
  %block = getelementptr inbounds %struct.disk_events, ptr %ev, i32 0, i32 4
  %20 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool6.not = icmp eq i32 %call2.i.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.else.i.i.if.end_crit_edge, label %if.then

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %22 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %dwork = getelementptr inbounds %struct.disk_events, ptr %ev, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %dwork, i32 noundef %call2.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %and9 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @inc_diskseq(ptr noundef %1) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %event_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %event_flags, align 2
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool14.not = icmp eq i16 %25, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #8
  %26 = call ptr @memset(ptr %envp.i, i32 0, i32 12)
  %events1.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %events1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %events1.i, align 4
  %conv.i = zext i16 %28 to i32
  %and2.i = and i32 %and9, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i34 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i34, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %if.then15
  %and.1.i = and i32 %and, 2
  %and2.1.i = and i32 %and.1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool.not.1.i = icmp eq i32 %and2.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.disk_event_uevent.exit_crit_edge, label %for.inc.i.for.inc.1.thread.i_crit_edge

for.inc.i.for.inc.1.thread.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread.i

for.inc.i.disk_event_uevent.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_event_uevent.exit

for.inc.i.thread:                                 ; preds = %if.then15
  %29 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.16, ptr %envp.i, align 4
  %and.1.i37 = and i32 %and, 2
  %and2.1.i38 = and i32 %and.1.i37, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i38)
  %tobool.not.1.i39 = icmp eq i32 %and2.1.i38, 0
  br i1 %tobool.not.1.i39, label %for.inc.i.thread.if.then6.i_crit_edge, label %for.inc.i.thread.for.inc.1.thread.i_crit_edge

for.inc.i.thread.for.inc.1.thread.i_crit_edge:    ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread.i

for.inc.i.thread.if.then6.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

for.inc.1.thread.i:                               ; preds = %for.inc.i.thread.for.inc.1.thread.i_crit_edge, %for.inc.i.for.inc.1.thread.i_crit_edge
  %nr_events.1.i40 = phi i32 [ 1, %for.inc.i.thread.for.inc.1.thread.i_crit_edge ], [ 0, %for.inc.i.for.inc.1.thread.i_crit_edge ]
  %arrayidx3.1.i = getelementptr [3 x ptr], ptr %envp.i, i32 0, i32 %nr_events.1.i40
  %30 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.17, ptr %arrayidx3.1.i, align 4
  br label %if.then6.i

if.then6.i:                                       ; preds = %for.inc.1.thread.i, %for.inc.i.thread.if.then6.i_crit_edge
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 10
  %call.i35 = call i32 @kobject_uevent_env(ptr noundef %bd_device.i, i32 noundef 2, ptr noundef nonnull %envp.i) #8
  br label %disk_event_uevent.exit

disk_event_uevent.exit:                           ; preds = %if.then6.i, %for.inc.i.disk_event_uevent.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #8
  br label %if.end16

if.end16:                                         ; preds = %disk_event_uevent.exit, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_diskseq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_events_set_dfl_poll_msecs(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_ulong(ptr noundef %val, ptr noundef %kp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @disk_events_mutex, i32 noundef 0) #8
  %ev.010 = load ptr, ptr @disk_events, align 4
  %cmp1.not11 = icmp eq ptr %ev.010, @disk_events
  br i1 %cmp1.not11, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %disk_flush_events.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %ev.012 = phi ptr [ %ev.0, %disk_flush_events.exit.for.body_crit_edge ], [ %ev.010, %if.end.for.body_crit_edge ]
  %disk = getelementptr inbounds %struct.disk_events, ptr %ev.012, i32 0, i32 1
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 4
  %ev1.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.disk_flush_events.exit_crit_edge, label %if.end.i

for.body.disk_flush_events.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %disk_flush_events.exit

if.end.i:                                         ; preds = %for.body
  %lock.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %block.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %6 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %dwork.i = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %dwork.i, i32 noundef 0) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  br label %disk_flush_events.exit

disk_flush_events.exit:                           ; preds = %if.end4.i, %for.body.disk_flush_events.exit_crit_edge
  %7 = ptrtoint ptr %ev.012 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ev.0 = load ptr, ptr %ev.012, align 4
  %cmp1.not = icmp eq ptr %ev.0, @disk_events
  br i1 %cmp1.not, label %disk_flush_events.exit.for.end_crit_edge, label %disk_flush_events.exit.for.body_crit_edge

disk_flush_events.exit.for.body_crit_edge:        ; preds = %disk_flush_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

disk_flush_events.exit.for.end_crit_edge:         ; preds = %disk_flush_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %disk_flush_events.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_ulong(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/disk-events.c", i32 285, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bdev_check_media_change._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bdev_check_media_change._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_bdev_check_media_change, !7, !"__ksymtab_bdev_check_media_change", i1 false, i1 false}
!7 = !{!"../block/disk-events.c", i32 290, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/disk-events.c", i32 311, i32 3}
!10 = !{ptr @disk_force_media_change._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @disk_force_media_change._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_disk_force_media_change, !13, !"__ksymtab_disk_force_media_change", i1 false, i1 false}
!13 = !{!"../block/disk-events.c", i32 316, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/disk-events.c", i32 405, i32 1}
!16 = !{ptr @dev_attr_events, !15, !"dev_attr_events", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/disk-events.c", i32 406, i32 1}
!19 = !{ptr @dev_attr_events_async, !18, !"dev_attr_events_async", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/disk-events.c", i32 407, i32 1}
!22 = !{ptr @dev_attr_events_poll_msecs, !21, !"dev_attr_events_poll_msecs", i1 false, i1 false}
!23 = !{ptr @__param_events_dfl_poll_msecs, !24, !"__param_events_dfl_poll_msecs", i1 false, i1 false}
!24 = !{!"../block/disk-events.c", i32 441, i32 1}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../block/disk-events.c", i32 456, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @disk_alloc_events._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @disk_alloc_events._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @disk_alloc_events.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../block/disk-events.c", i32 462, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @disk_alloc_events.__key.10, !34, !"__key", i1 false, i1 false}
!34 = !{!"../block/disk-events.c", i32 463, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @disk_alloc_events.__key.12, !37, !"__key", i1 false, i1 false}
!37 = !{!"../block/disk-events.c", i32 466, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @disk_alloc_events.__key.14, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../block/disk-events.c", i32 502, i32 2}
!43 = !{ptr @disk_events_dfl_poll_msecs, !44, !"disk_events_dfl_poll_msecs", i1 false, i1 false}
!44 = !{!"../block/disk-events.c", i32 39, i32 22}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../block/disk-events.c", i32 106, i32 6}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../block/disk-events.c", i32 260, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../block/disk-events.c", i32 30, i32 37}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../block/disk-events.c", i32 31, i32 38}
!53 = distinct !{null, !54, !"disk_uevents", i1 false, i1 false}
!54 = !{!"../block/disk-events.c", i32 29, i32 14}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../block/disk-events.c", i32 341, i32 22}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/disk-events.c", i32 347, i32 30}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../block/disk-events.c", i32 349, i32 12}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../block/disk-events.c", i32 352, i32 29}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../block/disk-events.c", i32 25, i32 37}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../block/disk-events.c", i32 26, i32 38}
!67 = distinct !{null, !68, !"disk_events_strs", i1 false, i1 false}
!68 = !{!"../block/disk-events.c", i32 24, i32 20}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../block/disk-events.c", i32 379, i32 23}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../block/disk-events.c", i32 380, i32 22}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../block/disk-events.c", i32 390, i32 29}
!75 = !{ptr @__param_str_events_dfl_poll_msecs, !24, !"__param_str_events_dfl_poll_msecs", i1 false, i1 false}
!76 = !{ptr @disk_events_dfl_poll_msecs_param_ops, !77, !"disk_events_dfl_poll_msecs_param_ops", i1 false, i1 false}
!77 = !{!"../block/disk-events.c", i32 433, i32 38}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../block/disk-events.c", i32 35, i32 8}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @disk_events_mutex, !79, !"disk_events_mutex", i1 false, i1 false}
!82 = !{ptr @disk_events, !83, !"disk_events", i1 false, i1 false}
!83 = !{!"../block/disk-events.c", i32 36, i32 8}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{!"auto-init"}

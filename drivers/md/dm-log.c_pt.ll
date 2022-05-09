; ModuleID = '/llk/IR_all_yes/drivers/md/dm-log.c_pt.bc'
source_filename = "../drivers/md/dm-log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dm_dirty_log_type_register\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_dirty_log_type_register\09\09\09\09"
module asm "\09.long\09__crc_dm_dirty_log_type_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_dirty_log_type_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_dirty_log_type_register\22\09\09\09\09\09"
module asm "__kstrtabns_dm_dirty_log_type_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_dirty_log_type_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_dirty_log_type_unregister\09\09\09\09"
module asm "\09.long\09__crc_dm_dirty_log_type_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_dirty_log_type_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_dirty_log_type_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dm_dirty_log_type_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_dirty_log_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_dirty_log_create\09\09\09\09"
module asm "\09.long\09__crc_dm_dirty_log_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_dirty_log_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_dirty_log_create\22\09\09\09\09\09"
module asm "__kstrtabns_dm_dirty_log_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_dirty_log_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_dirty_log_destroy\09\09\09\09"
module asm "\09.long\09__crc_dm_dirty_log_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_dirty_log_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_dirty_log_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dm_dirty_log_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dm_dirty_log_type = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_dirty_log = type { ptr, ptr, ptr }
%struct.log_c = type { ptr, i32, i32, i32, i32, i32, i64, i32, ptr, ptr, ptr, i32, i32, %struct.dm_io_request, i32, i32, ptr, %struct.log_header_core, %struct.dm_io_region, ptr }
%struct.dm_io_request = type { i32, i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }
%struct.log_header_core = type { i32, i32, i64 }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.log_header_disk = type { i32, i32, i64 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@_log_types = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @_log_types, ptr @_log_types }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_dm_dirty_log_type_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_dirty_log_type_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_dirty_log_type_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_dirty_log_type_register to i32), ptr @__kstrtab_dm_dirty_log_type_register, ptr @__kstrtabns_dm_dirty_log_type_register }, section "___ksymtab+dm_dirty_log_type_register", align 4
@__kstrtab_dm_dirty_log_type_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_dirty_log_type_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_dirty_log_type_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_dirty_log_type_unregister to i32), ptr @__kstrtab_dm_dirty_log_type_unregister, ptr @__kstrtabns_dm_dirty_log_type_unregister }, section "___ksymtab+dm_dirty_log_type_unregister", align 4
@__kstrtab_dm_dirty_log_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_dirty_log_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_dirty_log_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_dirty_log_create to i32), ptr @__kstrtab_dm_dirty_log_create, ptr @__kstrtabns_dm_dirty_log_create }, section "___ksymtab+dm_dirty_log_create", align 4
@__kstrtab_dm_dirty_log_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_dirty_log_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_dirty_log_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_dirty_log_destroy to i32), ptr @__kstrtab_dm_dirty_log_destroy, ptr @__kstrtabns_dm_dirty_log_destroy }, section "___ksymtab+dm_dirty_log_destroy", align 4
@_disk_type = internal global { %struct.dm_dirty_log_type, [48 x i8] } { %struct.dm_dirty_log_type { ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr @disk_ctr, ptr @disk_dtr, ptr null, ptr @disk_flush, ptr @disk_resume, ptr @core_get_region_size, ptr @core_is_clean, ptr @core_in_sync, ptr @disk_flush, ptr @core_mark_region, ptr @core_clear_region, ptr @core_get_resync_work, ptr @core_set_region_sync, ptr @core_get_sync_count, ptr @disk_status, ptr null }, [48 x i8] zeroinitializer }, align 32
@_core_type = internal global { %struct.dm_dirty_log_type, [48 x i8] } { %struct.dm_dirty_log_type { ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr @core_ctr, ptr @core_dtr, ptr null, ptr null, ptr @core_resume, ptr @core_get_region_size, ptr @core_is_clean, ptr @core_in_sync, ptr @core_flush, ptr @core_mark_region, ptr @core_clear_region, ptr @core_get_resync_work, ptr @core_set_region_sync, ptr @core_get_sync_count, ptr @core_status, ptr null }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_log__267_895_dm_dirty_log_init6 = internal global ptr @dm_dirty_log_init, section ".initcall6.init", align 4
@__exitcall_dm_dirty_log_exit = internal global ptr @dm_dirty_log_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description268 = internal constant [50 x i8] c"dm_log.description=device-mapper dirty region log\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [68 x i8] c"dm_log.author=Joe Thornber, Heinz Mauelshagen <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [30 x i8] c"dm_log.file=drivers/md/dm-log\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [19 x i8] c"dm_log.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_lock\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014device-mapper: dirty region log: No memory left to attempt log module load for \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_type\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/md/dm-log.c\00", [44 x i8] zeroinitializer }, align 32
@get_type._entry_ptr = internal global ptr @get_type._entry, section ".printk_index", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dm-log-%s\00", [22 x i8] zeroinitializer }, align 32
@get_type._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014device-mapper: dirty region log: Module for logging type \22%s\22 not found.\0A\00", [52 x i8] zeroinitializer }, align 32
@get_type._entry_ptr.7 = internal global ptr @get_type._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disk\00", [27 x i8] zeroinitializer }, align 32
@disk_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014device-mapper: dirty region log: wrong number of arguments to disk dirty region log\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disk_ctr\00", [23 x i8] zeroinitializer }, align 32
@disk_ctr._entry_ptr = internal global ptr @disk_ctr._entry, section ".printk_index", align 4
@create_log_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014device-mapper: dirty region log: wrong number of arguments to dirty region log\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create_log_context\00", [45 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr = internal global ptr @create_log_context._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nosync\00", [25 x i8] zeroinitializer }, align 32
@create_log_context._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014device-mapper: dirty region log: unrecognised sync argument to dirty region log: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.17 = internal global ptr @create_log_context._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@create_log_context._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: dirty region log: invalid region size %s\0A\00", [37 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.21 = internal global ptr @create_log_context._entry.19, section ".printk_index", align 4
@create_log_context._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014device-mapper: dirty region log: couldn't allocate core log\0A\00", [33 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.24 = internal global ptr @create_log_context._entry.22, section ".printk_index", align 4
@create_log_context._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.3, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014device-mapper: dirty region log: couldn't allocate clean bitset\0A\00", [61 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.27 = internal global ptr @create_log_context._entry.25, section ".printk_index", align 4
@create_log_context._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014device-mapper: dirty region log: log device %s too small: need %llu bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.30 = internal global ptr @create_log_context._entry.28, section ".printk_index", align 4
@create_log_context._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014device-mapper: dirty region log: couldn't allocate disk io client\0A\00", [59 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.33 = internal global ptr @create_log_context._entry.31, section ".printk_index", align 4
@create_log_context._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014device-mapper: dirty region log: couldn't allocate disk log buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.36 = internal global ptr @create_log_context._entry.34, section ".printk_index", align 4
@create_log_context._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014device-mapper: dirty region log: couldn't allocate sync bitset\0A\00", [62 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.39 = internal global ptr @create_log_context._entry.37, section ".printk_index", align 4
@create_log_context._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@create_log_context._entry_ptr.41 = internal global ptr @create_log_context._entry.40, section ".printk_index", align 4
@disk_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014device-mapper: dirty region log: %s: Failed to read header on dirty region log device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disk_resume\00", [20 x i8] zeroinitializer }, align 32
@disk_resume._entry_ptr = internal global ptr @disk_resume._entry, section ".printk_index", align 4
@disk_resume._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014device-mapper: dirty region log: %s: Failed to write header on dirty region log device\0A\00", [38 x i8] zeroinitializer }, align 32
@disk_resume._entry_ptr.46 = internal global ptr @disk_resume._entry.44, section ".printk_index", align 4
@read_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014device-mapper: dirty region log: incompatible disk log version\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_header\00", [20 x i8] zeroinitializer }, align 32
@read_header._entry_ptr = internal global ptr @read_header._entry, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"3 %s %s %c\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %u %s %u \00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%ssync \00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1 %s\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %u %u \00", [22 x i8] zeroinitializer }, align 32
@dm_dirty_log_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014device-mapper: dirty region log: couldn't register core log\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm_dirty_log_init\00", [46 x i8] zeroinitializer }, align 32
@dm_dirty_log_init._entry_ptr = internal global ptr @dm_dirty_log_init._entry, section ".printk_index", align 4
@dm_dirty_log_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: dirty region log: couldn't register disk type\0A\00", [32 x i8] zeroinitializer }, align 32
@dm_dirty_log_init._entry_ptr.61 = internal global ptr @dm_dirty_log_init._entry.59, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"_lock\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"_log_types\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 19, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"_disk_type\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 853, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"_core_type\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 835, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 20, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 79, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 84, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 93, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 854, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 549, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 377, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 382, i32 24 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 384, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 387, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 393, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 395, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 403, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 430, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 451, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 464, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 471, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 486, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 500, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 595, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 641, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 339, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 814, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 821, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 824, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 836, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 789, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 793, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 878, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [23 x i8] c"../drivers/md/dm-log.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 882, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_dm_dirty_log_exit, ptr @__initcall__kmod_dm_log__267_895_dm_dirty_log_init6, ptr @__ksymtab_dm_dirty_log_create, ptr @__ksymtab_dm_dirty_log_destroy, ptr @__ksymtab_dm_dirty_log_type_register, ptr @__ksymtab_dm_dirty_log_type_unregister, ptr @create_log_context._entry, ptr @create_log_context._entry.15, ptr @create_log_context._entry.19, ptr @create_log_context._entry.22, ptr @create_log_context._entry.25, ptr @create_log_context._entry.28, ptr @create_log_context._entry.31, ptr @create_log_context._entry.34, ptr @create_log_context._entry.37, ptr @create_log_context._entry.40, ptr @create_log_context._entry_ptr, ptr @create_log_context._entry_ptr.17, ptr @create_log_context._entry_ptr.21, ptr @create_log_context._entry_ptr.24, ptr @create_log_context._entry_ptr.27, ptr @create_log_context._entry_ptr.30, ptr @create_log_context._entry_ptr.33, ptr @create_log_context._entry_ptr.36, ptr @create_log_context._entry_ptr.39, ptr @create_log_context._entry_ptr.41, ptr @disk_ctr._entry, ptr @disk_ctr._entry_ptr, ptr @disk_resume._entry, ptr @disk_resume._entry.44, ptr @disk_resume._entry_ptr, ptr @disk_resume._entry_ptr.46, ptr @dm_dirty_log_exit, ptr @dm_dirty_log_init._entry, ptr @dm_dirty_log_init._entry.59, ptr @dm_dirty_log_init._entry_ptr, ptr @dm_dirty_log_init._entry_ptr.61, ptr @get_type._entry, ptr @get_type._entry.5, ptr @get_type._entry_ptr, ptr @get_type._entry_ptr.7, ptr @read_header._entry, ptr @read_header._entry_ptr, ptr @_lock, ptr @_log_types, ptr @_disk_type, ptr @_core_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_log_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_disk_type to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_core_type to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_type._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_log_context._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_resume._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dirty_log_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dirty_log_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_dirty_log_type_register(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_log_types, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_log_types
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %log_type.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %log_type.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log_type.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_dirty_log_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__find_dirty_log_type.exit:                       ; preds = %for.body.i
  %log_type.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %log_type.0.i.le, null
  br i1 %tobool.not, label %__find_dirty_log_type.exit.if.then_crit_edge, label %__find_dirty_log_type.exit.if.end_crit_edge

__find_dirty_log_type.exit.if.end_crit_edge:      ; preds = %__find_dirty_log_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

__find_dirty_log_type.exit.if.then_crit_edge:     ; preds = %__find_dirty_log_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %__find_dirty_log_type.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %list = getelementptr inbounds %struct.dm_dirty_log_type, ptr %type, i32 0, i32 2
  %5 = load ptr, ptr @_log_types, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @_log_types, ptr noundef %5) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %type, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @_log_types, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @_log_types, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %__find_dirty_log_type.exit.if.end_crit_edge
  %r.0 = phi i32 [ -17, %__find_dirty_log_type.exit.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  ret i32 %r.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_dirty_log_type_unregister(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_log_types, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_log_types
  br i1 %cmp.not.i, label %for.cond.i.return_crit_edge, label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.i:                                       ; preds = %for.cond.i
  %log_type.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %log_type.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log_type.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_dirty_log_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__find_dirty_log_type.exit:                       ; preds = %for.body.i
  %log_type.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %log_type.0.i.le, null
  br i1 %tobool.not, label %__find_dirty_log_type.exit.return_crit_edge, label %if.end

__find_dirty_log_type.exit.return_crit_edge:      ; preds = %__find_dirty_log_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %__find_dirty_log_type.exit
  %list = getelementptr inbounds %struct.dm_dirty_log_type, ptr %type, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %type, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %type, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit, %__find_dirty_log_type.exit.return_crit_edge, %for.cond.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %__find_dirty_log_type.exit.return_crit_edge ], [ -22, %for.cond.i.return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_dirty_log_create(ptr noundef %type_name, ptr noundef %ti, ptr noundef %flush_callback_fn, i32 noundef %argc, ptr noundef %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %type_name, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i
  %.pn.in.i.i.i = phi ptr [ @_log_types, %if.end.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, @_log_types
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end3.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end3.i_crit_edge:               ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %log_type.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -8
  %2 = ptrtoint ptr %log_type.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_type.0.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %type_name, ptr noundef %3) #17
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__find_dirty_log_type.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.i

__find_dirty_log_type.exit.i.i:                   ; preds = %for.body.i.i.i
  %log_type.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -8
  %tobool.not.i.i = icmp eq ptr %log_type.0.i.i.i.le, null
  br i1 %tobool.not.i.i, label %__find_dirty_log_type.exit.i.i.if.end3.i_crit_edge, label %land.lhs.true.i.i

__find_dirty_log_type.exit.i.i.if.end3.i_crit_edge: ; preds = %__find_dirty_log_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

land.lhs.true.i.i:                                ; preds = %__find_dirty_log_type.exit.i.i
  %module.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %4 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module.i.i, align 4
  %call1.i.i = tail call zeroext i1 @try_module_get(ptr noundef %5) #14
  br i1 %call1.i.i, label %get_type.exit.thread28, label %land.lhs.true.i.i.if.end3.i_crit_edge

land.lhs.true.i.i.if.end3.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

get_type.exit.thread28:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  br label %if.end4

if.end3.i:                                        ; preds = %land.lhs.true.i.i.if.end3.i_crit_edge, %__find_dirty_log_type.exit.i.i.if.end3.i_crit_edge, %for.cond.i.i.i.if.end3.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  %call4.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %type_name, i32 noundef 3264) #14
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.end3.i.while.cond.i_crit_edge

if.end3.i.while.cond.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.cond.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %type_name) #19
  br label %if.then3

while.cond.i:                                     ; preds = %if.end16.i, %if.end3.i.while.cond.i_crit_edge
  %call9.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef nonnull %call4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  br label %for.cond.i.i42.i

for.cond.i.i42.i:                                 ; preds = %for.body.i.i46.i.for.cond.i.i42.i_crit_edge, %lor.rhs.i
  %.pn.in.i.i39.i = phi ptr [ @_log_types, %lor.rhs.i ], [ %.pn.i.i40.i, %for.body.i.i46.i.for.cond.i.i42.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i40.i = load ptr, ptr %.pn.in.i.i39.i, align 4
  %cmp.not.i.i41.i = icmp eq ptr %.pn.i.i40.i, @_log_types
  br i1 %cmp.not.i.i41.i, label %for.cond.i.i42.i._get_dirty_log_type.exit55.thread.i_crit_edge, label %for.body.i.i46.i

for.cond.i.i42.i._get_dirty_log_type.exit55.thread.i_crit_edge: ; preds = %for.cond.i.i42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_get_dirty_log_type.exit55.thread.i

for.body.i.i46.i:                                 ; preds = %for.cond.i.i42.i
  %log_type.0.i.i43.i = getelementptr i8, ptr %.pn.i.i40.i, i32 -8
  %7 = ptrtoint ptr %log_type.0.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_type.0.i.i43.i, align 4
  %call.i.i44.i = tail call i32 @strcmp(ptr noundef nonnull %type_name, ptr noundef %8) #17
  %tobool.not.i.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool.not.i.i45.i, label %__find_dirty_log_type.exit.i49.i, label %for.body.i.i46.i.for.cond.i.i42.i_crit_edge

for.body.i.i46.i.for.cond.i.i42.i_crit_edge:      ; preds = %for.body.i.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i42.i

__find_dirty_log_type.exit.i49.i:                 ; preds = %for.body.i.i46.i
  %log_type.0.i.i43.i.le = getelementptr i8, ptr %.pn.i.i40.i, i32 -8
  %tobool.not.i48.i = icmp eq ptr %log_type.0.i.i43.i.le, null
  br i1 %tobool.not.i48.i, label %__find_dirty_log_type.exit.i49.i._get_dirty_log_type.exit55.thread.i_crit_edge, label %land.lhs.true.i53.i

__find_dirty_log_type.exit.i49.i._get_dirty_log_type.exit55.thread.i_crit_edge: ; preds = %__find_dirty_log_type.exit.i49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_get_dirty_log_type.exit55.thread.i

land.lhs.true.i53.i:                              ; preds = %__find_dirty_log_type.exit.i49.i
  %module.i50.i = getelementptr i8, ptr %.pn.i.i40.i, i32 -4
  %9 = ptrtoint ptr %module.i50.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %module.i50.i, align 4
  %call1.i51.i = tail call zeroext i1 @try_module_get(ptr noundef %10) #14
  br i1 %call1.i51.i, label %get_type.exit, label %land.lhs.true.i53.i._get_dirty_log_type.exit55.thread.i_crit_edge

land.lhs.true.i53.i._get_dirty_log_type.exit55.thread.i_crit_edge: ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_get_dirty_log_type.exit55.thread.i

_get_dirty_log_type.exit55.thread.i:              ; preds = %land.lhs.true.i53.i._get_dirty_log_type.exit55.thread.i_crit_edge, %__find_dirty_log_type.exit.i49.i._get_dirty_log_type.exit55.thread.i_crit_edge, %for.cond.i.i42.i._get_dirty_log_type.exit55.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  br label %while.body.i

while.body.i:                                     ; preds = %_get_dirty_log_type.exit55.thread.i, %while.cond.i.while.body.i_crit_edge
  %call13.i = tail call ptr @strrchr(ptr noundef nonnull %call4.i, i32 noundef 45) #14
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %get_type.exit.thread32, label %if.end16.i

if.end16.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call13.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %call13.i, align 1
  br label %while.cond.i

get_type.exit.thread32:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %type_name) #19
  tail call void @kfree(ptr noundef nonnull %call4.i) #14
  br label %if.then3

get_type.exit:                                    ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  tail call void @kfree(ptr noundef nonnull %call4.i) #14
  br label %if.end4

if.then3:                                         ; preds = %get_type.exit.thread32, %do.end.i, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end4:                                          ; preds = %get_type.exit, %get_type.exit.thread28
  %retval.0.i31 = phi ptr [ %log_type.0.i.i.i.le, %get_type.exit.thread28 ], [ %log_type.0.i.i43.i.le, %get_type.exit ]
  %flush_callback_fn5 = getelementptr inbounds %struct.dm_dirty_log, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %flush_callback_fn5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %flush_callback_fn, ptr %flush_callback_fn5, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i31, ptr %call7.i, align 8
  %ctr = getelementptr inbounds %struct.dm_dirty_log_type, ptr %retval.0.i31, i32 0, i32 3
  %14 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctr, align 4
  %call7 = tail call i32 %15(ptr noundef nonnull %call7.i, ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end.i23

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i23:                                       ; preds = %if.end4
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  %16 = ptrtoint ptr %retval.0.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i31, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i23
  %.pn.in.i.i = phi ptr [ @_log_types, %if.end.i23 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @_log_types
  br i1 %cmp.not.i.i, label %for.cond.i.i.put_type.exit_crit_edge, label %for.body.i.i

for.cond.i.i.put_type.exit_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_type.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %log_type.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %19 = ptrtoint ptr %log_type.0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %log_type.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %17, ptr noundef %20) #17
  %tobool.not.i.i24 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i24, label %__find_dirty_log_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

__find_dirty_log_type.exit.i:                     ; preds = %for.body.i.i
  %log_type.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool1.not.i = icmp eq ptr %log_type.0.i.i.le, null
  br i1 %tobool1.not.i, label %__find_dirty_log_type.exit.i.put_type.exit_crit_edge, label %if.end3.i25

__find_dirty_log_type.exit.i.put_type.exit_crit_edge: ; preds = %__find_dirty_log_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_type.exit

if.end3.i25:                                      ; preds = %__find_dirty_log_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %module.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %retval.0.i31, i32 0, i32 1
  %21 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %22) #14
  br label %put_type.exit

put_type.exit:                                    ; preds = %if.end3.i25, %__find_dirty_log_type.exit.i.put_type.exit_crit_edge, %for.cond.i.i.put_type.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %put_type.exit, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %put_type.exit ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_dirty_log_destroy(ptr noundef %log) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 4
  %dtr = getelementptr inbounds %struct.dm_dirty_log_type, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dtr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtr, align 4
  tail call void %3(ptr noundef %log) #14
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.put_type.exit_crit_edge, label %if.end.i

entry.put_type.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_type.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ @_log_types, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @_log_types
  br i1 %cmp.not.i.i, label %for.cond.i.i.out.i_crit_edge, label %for.body.i.i

for.cond.i.i.out.i_crit_edge:                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %log_type.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %9 = ptrtoint ptr %log_type.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log_type.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %10) #17
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__find_dirty_log_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

__find_dirty_log_type.exit.i:                     ; preds = %for.body.i.i
  %log_type.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool1.not.i = icmp eq ptr %log_type.0.i.i.le, null
  br i1 %tobool1.not.i, label %__find_dirty_log_type.exit.i.out.i_crit_edge, label %if.end3.i

__find_dirty_log_type.exit.i.out.i_crit_edge:     ; preds = %__find_dirty_log_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end3.i:                                        ; preds = %__find_dirty_log_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %module.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %12) #14
  br label %out.i

out.i:                                            ; preds = %if.end3.i, %__find_dirty_log_type.exit.i.out.i_crit_edge, %for.cond.i.i.out.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #14
  br label %put_type.exit

put_type.exit:                                    ; preds = %out.i, %entry.put_type.exit_crit_edge
  tail call void @kfree(ptr noundef %log) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_dirty_log_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @dm_dirty_log_type_unregister(ptr noundef nonnull @_disk_type)
  %call1 = tail call i32 @dm_dirty_log_type_unregister(ptr noundef nonnull @_core_type)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dirty_log_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_dirty_log_type_register(ptr noundef nonnull @_core_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @dm_dirty_log_type_register(ptr noundef nonnull @_disk_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %do.end7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #19
  %call10 = tail call i32 @dm_dirty_log_type_unregister(ptr noundef nonnull @_core_type)
  br label %if.end11

if.end11:                                         ; preds = %do.end7, %if.end.if.end11_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_ctr(ptr nocapture noundef writeonly %log, ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !139
  %1 = and i32 %argc, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ti, align 8
  %call2 = tail call i32 @dm_table_get_mode(ptr noundef %5) #14
  %call3 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %3, i32 noundef %call2, ptr noundef nonnull %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub = add nsw i32 %argc, -1
  %add.ptr = getelementptr ptr, ptr %argv, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call6 = call fastcc i32 @create_log_context(ptr noundef %log, ptr noundef %ti, i32 noundef %sub, ptr noundef %add.ptr, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %if.then8 ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disk_dtr(ptr nocapture noundef readonly %log) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %log_dev = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %log_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log_dev, align 8
  tail call void @dm_put_device(ptr noundef %3, ptr noundef %5) #14
  %disk_header = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %disk_header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk_header, align 8
  tail call void @vfree(ptr noundef %7) #14
  %client = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13, i32 4
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  tail call void @dm_io_client_destroy(ptr noundef %9) #14
  %sync_bits.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %sync_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sync_bits.i, align 8
  tail call void @vfree(ptr noundef %11) #14
  %recovering_bits.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %recovering_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recovering_bits.i, align 4
  tail call void @vfree(ptr noundef %13) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_flush(ptr nocapture noundef readonly %log) #0 align 64 {
entry:
  %null_location.i = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %touched_cleaned = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %touched_cleaned to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %touched_cleaned, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  %touched_dirtied = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %touched_dirtied to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %touched_dirtied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true4:                                   ; preds = %entry
  %flush_callback_fn = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 1
  %6 = ptrtoint ptr %flush_callback_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush_callback_fn, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true4.if.end10_crit_edge, label %land.lhs.true6

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call = tail call i32 %7(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end10_crit_edge, label %if.then9

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true6
  %flush_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flush_failed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %flush_failed, align 4
  %region_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp57.not = icmp eq i32 %12, 0
  br i1 %cmp57.not, label %if.then9.if.end10_crit_edge, label %for.body.lr.ph

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.lr.ph:                                   ; preds = %if.then9
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %touched_dirtied.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clean_bits, align 4
  %xor.i.i = and i32 %i.058, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %i.058, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %14, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %16, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %17 = ptrtoint ptr %touched_dirtied.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %touched_dirtied.i, align 4
  %inc = add nuw i32 %i.058, 1
  %18 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %region_count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %land.lhs.true6.if.end10_crit_edge, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %io_req.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %io_req.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %io_req.i, align 8
  %bi_op_flags.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %bi_op_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bi_op_flags.i, align 4
  %header_location.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @dm_io(ptr noundef %io_req.i, i32 noundef 1, ptr noundef %header_location.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %log_dev_failed.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %log_dev_failed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_dev_failed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %log_dev_failed.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %log_dev_failed.i, align 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void @dm_table_event(ptr noundef %28) #14
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %touched_dirtied14 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %touched_dirtied14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %touched_dirtied14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  br i1 %tobool15.not, label %if.else.if.end23_crit_edge, label %if.then16

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then16:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %null_location.i) #14
  %31 = call ptr @memset(ptr %null_location.i, i32 0, i32 24)
  %32 = ptrtoint ptr %header_location.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %header_location.i, align 8
  %34 = ptrtoint ptr %null_location.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %null_location.i, align 8
  %35 = ptrtoint ptr %io_req.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %io_req.i, align 8
  %36 = ptrtoint ptr %bi_op_flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 262144, ptr %bi_op_flags.i, align 4
  %call.i52 = call i32 @dm_io(ptr noundef %io_req.i, i32 noundef 1, ptr noundef nonnull %null_location.i, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %null_location.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool18.not = icmp eq i32 %call.i52, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.then16
  %log_dev_flush_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %log_dev_flush_failed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %log_dev_flush_failed, align 4
  %log_dev_failed.i53 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %log_dev_failed.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %log_dev_failed.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i54 = icmp eq i32 %39, 0
  br i1 %tobool.not.i54, label %if.end.i55, label %if.then19.if.end23_crit_edge

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end.i55:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %log_dev_failed.i53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %log_dev_failed.i53, align 8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  call void @dm_table_event(ptr noundef %44) #14
  br label %if.end23

if.else20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %touched_dirtied14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %touched_dirtied14, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.end.i55, %if.then19.if.end23_crit_edge, %if.else.if.end23_crit_edge
  %r.0 = phi i32 [ 0, %if.else20 ], [ 0, %if.else.if.end23_crit_edge ], [ %call.i52, %if.then19.if.end23_crit_edge ], [ %call.i52, %if.end.i55 ]
  %46 = ptrtoint ptr %touched_cleaned to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %touched_cleaned, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.i, %if.then13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %r.0, %if.end23 ], [ %call.i, %if.then13.cleanup_crit_edge ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_resume(ptr nocapture noundef readonly %log) #0 align 64 {
entry:
  %null_location.i = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %bitset_uint32_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bitset_uint32_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitset_uint32_count, align 8
  %mul = shl i32 %3, 2
  %io_req.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %io_req.i.i, align 8
  %bi_op_flags.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %bi_op_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bi_op_flags.i.i, align 4
  %header_location.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 18
  %call.i.i = tail call i32 @dm_io(ptr noundef %io_req.i.i, i32 noundef 1, ptr noundef %header_location.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %header.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17
  %disk_header.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %disk_header.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk_header.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %11 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %header.i, align 8
  %version.i.i = getelementptr inbounds %struct.log_header_disk, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %version.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %version.i.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  %version2.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %version2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %version2.i.i, align 4
  %nr_regions.i.i = getelementptr inbounds %struct.log_header_disk, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %nr_regions.i.i, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #14
  %nr_regions3.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %nr_regions3.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %nr_regions3.i.i, align 8
  %sync.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1918003533, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 1918003533
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp2.not.i, i1 false
  br i1 %or.cond.i, label %if.end8.i, label %if.end8.thread.i

if.end8.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1298748018, ptr %header.i, align 8
  %23 = ptrtoint ptr %version2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %version2.i.i, align 4
  br label %if.end.sink.split

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cmp11.not.i = icmp eq i32 %13, 33554432
  br i1 %cmp11.not.i, label %if.end8.i.if.end_crit_edge, label %do.end.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #19
  br label %do.end

do.end:                                           ; preds = %do.end.i, %entry.do.end_crit_edge
  %log_dev = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %log_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log_dev, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %25, i32 0, i32 3
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name) #19
  %log_dev_failed.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %log_dev_failed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %log_dev_failed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i101 = icmp eq i32 %27, 0
  br i1 %tobool.not.i101, label %if.end.i102, label %do.end.fail_log_device.exit_crit_edge

do.end.fail_log_device.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_log_device.exit

if.end.i102:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %log_dev_failed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %log_dev_failed.i, align 8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void @dm_table_event(ptr noundef %32) #14
  br label %fail_log_device.exit

fail_log_device.exit:                             ; preds = %if.end.i102, %do.end.fail_log_device.exit_crit_edge
  %nr_regions = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 2
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %fail_log_device.exit, %if.end8.thread.i
  %nr_regions3.i.i.sink = phi ptr [ %nr_regions3.i.i, %if.end8.thread.i ], [ %nr_regions, %fail_log_device.exit ]
  %33 = ptrtoint ptr %nr_regions3.i.i.sink to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %nr_regions3.i.i.sink, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end8.i.if.end_crit_edge
  %sync = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp = icmp eq i32 %35, 1
  %nr_regions4 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 2
  %36 = ptrtoint ptr %nr_regions4 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %nr_regions4, align 8
  %conv = trunc i64 %37 to i32
  %region_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %region_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv)
  %cmp5133 = icmp ugt i32 %39, %conv
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp5133, label %for.body.lr.ph, label %if.then2.if.end19_crit_edge

if.then2.if.end19_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body.lr.ph:                                   ; preds = %if.then2
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %touched_cleaned.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %40 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clean_bits, align 4
  %xor.i.i = and i32 %i.0134, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %i.0134, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %41, i32 %div2.i.i.i
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %43, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %44 = ptrtoint ptr %touched_cleaned.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %touched_cleaned.i, align 8
  %inc = add nuw i32 %i.0134, 1
  %45 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %region_count, align 4
  %cmp5 = icmp ult i32 %inc, %46
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else:                                          ; preds = %if.end
  br i1 %cmp5133, label %for.body14.lr.ph, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body14.lr.ph:                                 ; preds = %if.else
  %clean_bits15 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %touched_dirtied.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.1132 = phi i32 [ %conv, %for.body14.lr.ph ], [ %inc17, %for.body14.for.body14_crit_edge ]
  %47 = ptrtoint ptr %clean_bits15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clean_bits15, align 4
  %xor.i.i103 = and i32 %i.1132, 31
  %rem.i.i.i104 = xor i32 %xor.i.i103, 24
  %shl.i.i.i105 = shl nuw i32 1, %rem.i.i.i104
  %div2.i.i.i106 = lshr i32 %i.1132, 5
  %add.ptr.i.i.i107 = getelementptr i32, ptr %48, i32 %div2.i.i.i106
  %neg.i.i.i = xor i32 %shl.i.i.i105, -1
  %49 = ptrtoint ptr %add.ptr.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i.i107, align 4
  %and.i.i.i = and i32 %50, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i107, align 4
  %51 = ptrtoint ptr %touched_dirtied.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %touched_dirtied.i, align 4
  %inc17 = add nuw i32 %i.1132, 1
  %52 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %region_count, align 4
  %cmp12 = icmp ult i32 %inc17, %53
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.if.end19_crit_edge

for.body14.if.end19_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

if.end19:                                         ; preds = %for.body14.if.end19_crit_edge, %if.else.if.end19_crit_edge, %for.body.if.end19_crit_edge, %if.then2.if.end19_crit_edge
  %region_count20 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %region_count20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %region_count20, align 4
  %rem135 = and i32 %55, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem135)
  %tobool22.not136 = icmp eq i32 %rem135, 0
  br i1 %tobool22.not136, label %if.end19.for.end27_crit_edge, label %for.body23.lr.ph

if.end19.for.end27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end27

for.body23.lr.ph:                                 ; preds = %if.end19
  %clean_bits24 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %touched_dirtied.i115 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %rem138 = phi i32 [ %rem135, %for.body23.lr.ph ], [ %rem, %for.body23.for.body23_crit_edge ]
  %i.2137 = phi i32 [ %55, %for.body23.lr.ph ], [ %inc26, %for.body23.for.body23_crit_edge ]
  %56 = ptrtoint ptr %clean_bits24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clean_bits24, align 4
  %rem.i.i.i109 = xor i32 %rem138, 24
  %shl.i.i.i110 = shl nuw i32 1, %rem.i.i.i109
  %div2.i.i.i111 = lshr i32 %i.2137, 5
  %add.ptr.i.i.i112 = getelementptr i32, ptr %57, i32 %div2.i.i.i111
  %neg.i.i.i113 = xor i32 %shl.i.i.i110, -1
  %58 = ptrtoint ptr %add.ptr.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i112, align 4
  %and.i.i.i114 = and i32 %59, %neg.i.i.i113
  store i32 %and.i.i.i114, ptr %add.ptr.i.i.i112, align 4
  %60 = ptrtoint ptr %touched_dirtied.i115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %touched_dirtied.i115, align 4
  %inc26 = add i32 %i.2137, 1
  %rem = and i32 %inc26, 31
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %for.body23.for.end27_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23

for.body23.for.end27_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end27

for.end27:                                        ; preds = %for.body23.for.end27_crit_edge, %if.end19.for.end27_crit_edge
  %sync_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %sync_bits to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sync_bits, align 8
  %clean_bits28 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %clean_bits28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clean_bits28, align 4
  %65 = call ptr @memcpy(ptr %62, ptr %64, i32 %mul)
  %66 = load ptr, ptr %clean_bits28, align 4
  %67 = ptrtoint ptr %bitset_uint32_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bitset_uint32_count, align 8
  %mul31 = shl i32 %68, 2
  %call32 = tail call i32 @memweight(ptr noundef %66, i32 noundef %mul31) #14
  %conv33 = zext i32 %call32 to i64
  %sync_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %sync_count to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv33, ptr %sync_count, align 8
  %sync_search = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %sync_search to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %sync_search, align 8
  %71 = ptrtoint ptr %region_count20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %region_count20, align 4
  %conv35 = zext i32 %72 to i64
  %header36 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17
  %nr_regions37 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 2
  %73 = ptrtoint ptr %nr_regions37 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv35, ptr %nr_regions37, align 8
  %disk_header = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 19
  %74 = ptrtoint ptr %disk_header to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %disk_header, align 8
  %76 = ptrtoint ptr %header36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %header36, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #14
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %75, align 1
  %version.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 17, i32 1
  %80 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %version.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #14
  %version2.i = getelementptr inbounds %struct.log_header_disk, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %version2.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %version2.i, align 1
  %84 = ptrtoint ptr %nr_regions37 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %nr_regions37, align 8
  %86 = tail call i64 @llvm.bswap.i64(i64 %85) #14
  %nr_regions3.i = getelementptr inbounds %struct.log_header_disk, ptr %75, i32 0, i32 2
  %87 = ptrtoint ptr %nr_regions3.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %nr_regions3.i, align 1
  %88 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %io_req.i.i, align 8
  %89 = ptrtoint ptr %bi_op_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %bi_op_flags.i.i, align 4
  %call.i = tail call i32 @dm_io(ptr noundef %io_req.i.i, i32 noundef 1, ptr noundef %header_location.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.then41, label %for.end27.do.end51_crit_edge

for.end27.do.end51_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

if.then41:                                        ; preds = %for.end27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %null_location.i) #14
  %90 = call ptr @memset(ptr %null_location.i, i32 0, i32 24)
  %91 = ptrtoint ptr %header_location.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %header_location.i.i, align 8
  %93 = ptrtoint ptr %null_location.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %null_location.i, align 8
  %94 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %io_req.i.i, align 8
  %95 = ptrtoint ptr %bi_op_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 262144, ptr %bi_op_flags.i.i, align 4
  %call.i119 = call i32 @dm_io(ptr noundef %io_req.i.i, i32 noundef 1, ptr noundef nonnull %null_location.i, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %null_location.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool43.not = icmp eq i32 %call.i119, 0
  br i1 %tobool43.not, label %if.then41.if.end57_crit_edge, label %if.then44

if.then41.if.end57_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %log_dev_flush_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %96 = ptrtoint ptr %log_dev_flush_failed to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %log_dev_flush_failed, align 4
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %for.end27.do.end51_crit_edge
  %r.0.ph = phi i32 [ %call.i119, %if.then44 ], [ %call.i, %for.end27.do.end51_crit_edge ]
  %log_dev53 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %97 = ptrtoint ptr %log_dev53 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %log_dev53, align 8
  %name54 = getelementptr inbounds %struct.dm_dev, ptr %98, i32 0, i32 3
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name54) #19
  %log_dev_failed.i120 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %99 = ptrtoint ptr %log_dev_failed.i120 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %log_dev_failed.i120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i121 = icmp eq i32 %100, 0
  br i1 %tobool.not.i121, label %if.end.i122, label %do.end51.if.end57_crit_edge

do.end51.if.end57_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.end.i122:                                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %log_dev_failed.i120 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %log_dev_failed.i120, align 8
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  call void @dm_table_event(ptr noundef %105) #14
  br label %if.end57

if.end57:                                         ; preds = %if.end.i122, %do.end51.if.end57_crit_edge, %if.then41.if.end57_crit_edge
  %r.0129 = phi i32 [ 0, %if.then41.if.end57_crit_edge ], [ %r.0.ph, %do.end51.if.end57_crit_edge ], [ %r.0.ph, %if.end.i122 ]
  ret i32 %r.0129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @core_get_region_size(ptr nocapture noundef readonly %log) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %region_size = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %region_size, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @core_is_clean(ptr nocapture noundef readonly %log, i64 noundef %region) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clean_bits, align 4
  %conv = trunc i64 %region to i32
  %div3.i.i.i = lshr i32 %conv, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %3, i32 %div3.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %6 = lshr i32 %5, %and.i.i.i
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @core_in_sync(ptr nocapture noundef readonly %log, i64 noundef %region, i32 noundef %block) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sync_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sync_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_bits, align 8
  %conv = trunc i64 %region to i32
  %div3.i.i.i = lshr i32 %conv, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %3, i32 %div3.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %6 = lshr i32 %5, %and.i.i.i
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @core_mark_region(ptr nocapture noundef readonly %log, i64 noundef %region) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clean_bits, align 4
  %conv = trunc i64 %region to i32
  %xor.i.i = and i32 %conv, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %3, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %5, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %touched_dirtied.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %touched_dirtied.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %touched_dirtied.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @core_clear_region(ptr nocapture noundef readonly %log, i64 noundef %region) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flush_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flush_failed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flush_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clean_bits, align 4
  %conv = trunc i64 %region to i32
  %xor.i.i = and i32 %conv, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %5, i32 %div2.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %7, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %touched_cleaned.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %touched_cleaned.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %touched_cleaned.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_get_resync_work(ptr nocapture noundef readonly %log, ptr nocapture noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sync_search = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sync_search to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_search, align 8
  %region_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %sync_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %recovering_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %6 = ptrtoint ptr %sync_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_bits, align 8
  %8 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %region_count, align 4
  %10 = ptrtoint ptr %sync_search to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync_search, align 8
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %7, i32 noundef %9, i32 noundef %11) #14
  %conv = sext i32 %call.i to i64
  %12 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %region, align 8
  %add = add i32 %call.i, 1
  %13 = ptrtoint ptr %sync_search to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %sync_search, align 8
  %14 = load i64, ptr %region, align 8
  %15 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %region_count, align 4
  %conv6 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv6)
  %cmp7.not = icmp ult i64 %14, %conv6
  br i1 %cmp7.not, label %do.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %17 = ptrtoint ptr %recovering_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recovering_bits, align 4
  %conv11 = trunc i64 %14 to i32
  %div3.i.i.i = lshr i32 %conv11, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %18, i32 %div3.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %conv11, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %21 = shl nuw i32 1, %and.i.i.i
  %22 = and i32 %20, %21
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i.le = getelementptr i32, ptr %18, i32 %div3.i.i.i
  %or.i.i.i = or i32 %20, %21
  %23 = ptrtoint ptr %arrayidx.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i.le, align 4
  %touched_cleaned.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %touched_cleaned.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %touched_cleaned.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @core_set_region_sync(ptr nocapture noundef readonly %log, i64 noundef %region, i32 noundef %in_sync) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %recovering_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %recovering_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recovering_bits, align 4
  %conv = trunc i64 %region to i32
  %xor.i.i = and i32 %conv, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %3, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %5, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %touched_dirtied.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %touched_dirtied.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %touched_dirtied.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_sync)
  %tobool.not = icmp eq i32 %in_sync, 0
  %sync_bits2 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sync_bits2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sync_bits2, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 %div2.i.i.i
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %10, %shl.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %touched_cleaned.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %touched_cleaned.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %touched_cleaned.i, align 8
  %sync_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %sync_count to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sync_count, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %sync_count, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %16 = and i32 %15, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.else.if.end9_crit_edge, label %if.then5

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sync_count6 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %sync_count6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sync_count6, align 8
  %dec = add i64 %18, -1
  store i64 %dec, ptr %sync_count6, align 8
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i34 = and i32 %20, %neg.i.i.i
  store i32 %and.i.i.i34, ptr %arrayidx.i.i.i, align 4
  %21 = ptrtoint ptr %touched_dirtied.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %touched_dirtied.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @core_get_sync_count(ptr nocapture noundef readonly %log) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sync_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sync_count to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sync_count, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_status(ptr nocapture noundef readonly %log, i32 noundef %status, ptr noundef %result, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb39
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  %3 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %log_dev = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %log_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_dev, align 8
  %name1 = getelementptr inbounds %struct.dm_dev, ptr %8, i32 0, i32 3
  %log_dev_flush_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %log_dev_flush_failed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %log_dev_flush_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %cond.false3, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  %log_dev_failed = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %log_dev_failed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %log_dev_failed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool4.not, i32 65, i32 68
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.false.cond.end_crit_edge
  %cond5 = phi i32 [ %cond, %cond.false3 ], [ 70, %cond.false.cond.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.49, ptr noundef %6, ptr noundef %name1, i32 noundef %cond5) #14
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp9 = icmp eq i32 %maxlen, 0
  br i1 %cmp9, label %cond.end22.thread, label %cond.end22

cond.end22:                                       ; preds = %sw.bb8
  %13 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %sync = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16 = icmp eq i32 %18, 0
  %cond17 = select i1 %cmp16, i32 2, i32 3
  %log_dev18 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %log_dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %log_dev18, align 8
  %name19 = getelementptr inbounds %struct.dm_dev, ptr %20, i32 0, i32 3
  %region_size = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %region_size, align 8
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.50, ptr noundef %16, i32 noundef %cond17, ptr noundef %name19, i32 noundef %22) #14
  %23 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26.not = icmp eq i32 %24, 0
  br i1 %cmp26.not, label %cond.end22.sw.epilog_crit_edge, label %if.then

cond.end22.sw.epilog_crit_edge:                   ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.end22.thread:                                ; preds = %sw.bb8
  %sync2570 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %sync2570 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sync2570, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26.not71 = icmp eq i32 %26, 0
  br i1 %cmp26.not71, label %cond.end22.thread.sw.epilog_crit_edge, label %cond.end22.thread.cond.end36_crit_edge

cond.end22.thread.cond.end36_crit_edge:           ; preds = %cond.end22.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end36

cond.end22.thread.sw.epilog_crit_edge:            ; preds = %cond.end22.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %cond.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %maxlen)
  %cmp27.not = icmp ult i32 %call21, %maxlen
  br i1 %cmp27.not, label %cond.false29, label %if.then.cond.end36_crit_edge

if.then.cond.end36_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end36

cond.false29:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr30 = getelementptr i8, ptr %result, i32 %call21
  %sub31 = sub i32 %maxlen, %call21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp33 = icmp eq i32 %24, 1
  %cond34 = select i1 %cmp33, ptr @.str.52, ptr @.str.53
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond34) #14
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false29, %if.then.cond.end36_crit_edge, %cond.end22.thread.cond.end36_crit_edge
  %cond237275 = phi i32 [ %call21, %cond.false29 ], [ %call21, %if.then.cond.end36_crit_edge ], [ 0, %cond.end22.thread.cond.end36_crit_edge ]
  %cond37 = phi i32 [ %call35, %cond.false29 ], [ 0, %if.then.cond.end36_crit_edge ], [ 0, %cond.end22.thread.cond.end36_crit_edge ]
  %add38 = add i32 %cond37, %cond237275
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %cond.end36, %cond.end22.thread.sw.epilog_crit_edge, %cond.end22.sw.epilog_crit_edge, %cond.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %sz.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb39 ], [ %add38, %cond.end36 ], [ %call21, %cond.end22.sw.epilog_crit_edge ], [ %call, %cond.end ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %cond.end22.thread.sw.epilog_crit_edge ]
  ret i32 %sz.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_log_context(ptr nocapture noundef writeonly %log, ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %region_size = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %region_size) #14
  %0 = ptrtoint ptr %region_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region_size, align 4, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #14
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !139
  %2 = add i32 %argc, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp2 = icmp eq i32 %argc, 2
  br i1 %cmp2, label %if.then3, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(5) @.str.13) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end19_crit_edge, label %if.else

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.else:                                          ; preds = %if.then3
  %call7 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.14) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end19_crit_edge, label %do.end13

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %5) #19
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then3.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %cmp346 = phi i1 [ false, %if.end.if.end19_crit_edge ], [ false, %if.then3.if.end19_crit_edge ], [ true, %if.else.if.end19_crit_edge ]
  %sync.0 = phi i32 [ 0, %if.end.if.end19_crit_edge ], [ 2, %if.then3.if.end19_crit_edge ], [ 1, %if.else.if.end19_crit_edge ]
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %argv, align 4
  %call21 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %region_size, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %lor.lhs.false23, label %if.end19.do.end29_crit_edge

if.end19.do.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

lor.lhs.false23:                                  ; preds = %if.end19
  %8 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %region_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp ult i32 %9, 2
  br i1 %cmp.i, label %lor.lhs.false23.do.end29_crit_edge, label %lor.lhs.false.i

lor.lhs.false23.do.end29_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

lor.lhs.false.i:                                  ; preds = %lor.lhs.false23
  %conv.i = zext i32 %9 to i64
  %len.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv.i)
  %cmp1.i = icmp ult i64 %11, %conv.i
  %12 = call i32 @llvm.ctpop.i32(i32 %9) #14, !range !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i.i = icmp ugt i32 %12, 1
  %or.cond = or i1 %cmp1.i.i, %cmp1.i
  br i1 %or.cond, label %lor.lhs.false.i.do.end29_crit_edge, label %if.end33

lor.lhs.false.i.do.end29_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false.i.do.end29_crit_edge, %lor.lhs.false23.do.end29_crit_edge, %if.end19.do.end29_crit_edge
  %13 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %argv, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %14) #19
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false.i
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len.i, align 8
  %add = add nsw i64 %conv.i, -1
  %sub = add i64 %add, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp208 = icmp ult i64 %sub, 4294967296
  br i1 %cmp208, label %if.then212, label %if.else218, !prof !140

if.then212:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %conv213 = trunc i64 %sub to i32
  %div216 = udiv i32 %conv213, %9
  br label %if.end222

if.else218:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub) #21, !srcloc !142
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t598 = trunc i64 %asmresult1.i to i32
  br label %if.end222

if.end222:                                        ; preds = %if.else218, %if.then212
  %_r.0.off0 = phi i32 [ %div216, %if.then212 ], [ %extract.t598, %if.else218 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 152) #18
  %tobool227.not = icmp eq ptr %call7.i, null
  br i1 %tobool227.not, label %do.end231, label %if.end234

do.end231:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %cleanup

if.end234:                                        ; preds = %if.end222
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ti, ptr %call7.i, align 8
  %touched_dirtied = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %touched_dirtied to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %touched_dirtied, align 4
  %touched_cleaned = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %touched_cleaned to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %touched_cleaned, align 8
  %flush_failed = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 3
  %22 = ptrtoint ptr %flush_failed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flush_failed, align 4
  %23 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %region_size, align 4
  %region_size236 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 4
  %25 = ptrtoint ptr %region_size236 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %region_size236, align 8
  %region_count237 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %region_count237 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %_r.0.off0, ptr %region_count237, align 4
  %sync238 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 12
  %27 = ptrtoint ptr %sync238 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sync.0, ptr %sync238, align 4
  %sub240 = add i32 %_r.0.off0, 31
  %div241543 = lshr i32 %sub240, 3
  %shr243 = and i32 %div241543, 536870908
  %div244544 = lshr i32 %sub240, 5
  %bitset_uint32_count = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 7
  %28 = ptrtoint ptr %bitset_uint32_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div244544, ptr %bitset_uint32_count, align 8
  %tobool245.not = icmp eq ptr %dev, null
  br i1 %tobool245.not, label %if.then246, label %if.else257

if.then246:                                       ; preds = %if.end234
  %call247 = call noalias ptr @vmalloc(i32 noundef %shr243) #22
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 8
  %29 = ptrtoint ptr %clean_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call247, ptr %clean_bits, align 4
  %tobool249.not = icmp eq ptr %call247, null
  br i1 %tobool249.not, label %do.end253, label %if.end256

do.end253:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #16
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #19
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end256:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #16
  %disk_header = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 19
  %30 = ptrtoint ptr %disk_header to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %disk_header, align 8
  br label %if.end325

if.else257:                                       ; preds = %if.end234
  %log_dev = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 16
  %31 = ptrtoint ptr %log_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %log_dev, align 8
  %log_dev_failed = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 14
  %32 = ptrtoint ptr %log_dev_failed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %log_dev_failed, align 8
  %log_dev_flush_failed = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 15
  %33 = ptrtoint ptr %log_dev_flush_failed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %log_dev_flush_failed, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %header_location = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 18
  %36 = ptrtoint ptr %header_location to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %header_location, align 8
  %sector = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %sector, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 18
  %38 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %bdev_logical_block_size.exit555.thread, label %land.lhs.true.i.i561

bdev_logical_block_size.exit555.thread:           ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #16
  %sub266591 = add nuw nsw i32 %shr243, 1535
  %div270595600 = lshr i32 %sub266591, 9
  br label %bdev_logical_block_size.exit563

land.lhs.true.i.i561:                             ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 9
  %40 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i.i = icmp eq i32 %41, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %41
  %add265 = add nuw nsw i32 %shr243, 1023
  %sub266 = add i32 %add265, %spec.select.i.i
  %div270 = udiv i32 %sub266, %spec.select.i.i
  br label %bdev_logical_block_size.exit563

bdev_logical_block_size.exit563:                  ; preds = %land.lhs.true.i.i561, %bdev_logical_block_size.exit555.thread
  %div270596 = phi i32 [ %div270, %land.lhs.true.i.i561 ], [ %div270595600, %bdev_logical_block_size.exit555.thread ]
  %retval1.0.i.i562 = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i561 ], [ 512, %bdev_logical_block_size.exit555.thread ]
  %mul274 = mul i32 %retval1.0.i.i562, %div270596
  %conv275 = zext i32 %mul274 to i64
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %43, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %conv275)
  %cmp278 = icmp slt i64 %shl.i, %conv275
  br i1 %cmp278, label %do.end283, label %if.end287

do.end283:                                        ; preds = %bdev_logical_block_size.exit563
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.dm_dev, ptr %dev, i32 0, i32 3
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i64 noundef %conv275) #19
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end287:                                        ; preds = %bdev_logical_block_size.exit563
  %shr288 = lshr i32 %mul274, 9
  %conv289 = zext i32 %shr288 to i64
  %count = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 18, i32 2
  %44 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv289, ptr %count, align 8
  %mem = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 2
  %45 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %mem, align 8
  %notify = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 3
  %46 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %notify, align 4
  %call292 = call ptr @dm_io_client_create() #14
  %client = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 4
  %47 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call292, ptr %client, align 4
  %cmp.i564 = icmp ugt ptr %call292, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i564, label %if.then297, label %if.end306

if.then297:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %call292 to i32
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #19
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end306:                                        ; preds = %if.end287
  %call307 = call noalias ptr @vmalloc(i32 noundef %mul274) #22
  %disk_header308 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 19
  %49 = ptrtoint ptr %disk_header308 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call307, ptr %disk_header308, align 8
  %tobool310.not = icmp eq ptr %call307, null
  br i1 %tobool310.not, label %do.end314, label %if.end319

do.end314:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #16
  %call316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #19
  %50 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client, align 4
  call void @dm_io_client_destroy(ptr noundef %51) #14
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end319:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #16
  %ptr = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 2, i32 2
  %52 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call307, ptr %ptr, align 8
  %add.ptr = getelementptr i8, ptr %call307, i32 1024
  %clean_bits324 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 8
  %53 = ptrtoint ptr %clean_bits324 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %clean_bits324, align 4
  br label %if.end325

if.end325:                                        ; preds = %if.end319, %if.end256
  %clean_bits326 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 8
  %54 = ptrtoint ptr %clean_bits326 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clean_bits326, align 4
  %56 = call ptr @memset(ptr %55, i32 255, i32 %shr243)
  %call327 = call noalias ptr @vmalloc(i32 noundef %shr243) #22
  %sync_bits = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 9
  %57 = ptrtoint ptr %sync_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call327, ptr %sync_bits, align 8
  %tobool329.not = icmp eq ptr %call327, null
  br i1 %tobool329.not, label %do.end333, label %if.end344

do.end333:                                        ; preds = %if.end325
  %call335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #19
  br i1 %tobool245.not, label %if.then337, label %if.else339

if.then337:                                       ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %clean_bits326 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clean_bits326, align 4
  call void @vfree(ptr noundef %59) #14
  br label %if.end342

if.else339:                                       ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #16
  %client341 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 4
  %60 = ptrtoint ptr %client341 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client341, align 4
  call void @dm_io_client_destroy(ptr noundef %61) #14
  br label %if.end342

if.end342:                                        ; preds = %if.else339, %if.then337
  %disk_header343 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 19
  %62 = ptrtoint ptr %disk_header343 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disk_header343, align 8
  call void @vfree(ptr noundef %63) #14
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end344:                                        ; preds = %if.end325
  %64 = sext i1 %cmp346 to i8
  %65 = zext i8 %64 to i32
  %66 = call ptr @memset(ptr %call327, i32 %65, i32 %shr243)
  %67 = zext i32 %_r.0.off0 to i64
  %conv355 = select i1 %cmp346, i64 %67, i64 0
  %sync_count = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 6
  %68 = ptrtoint ptr %sync_count to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv355, ptr %sync_count, align 8
  %call356 = call noalias ptr @vzalloc(i32 noundef %shr243) #22
  %recovering_bits = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 10
  %69 = ptrtoint ptr %recovering_bits to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call356, ptr %recovering_bits, align 4
  %tobool358.not = icmp eq ptr %call356, null
  br i1 %tobool358.not, label %do.end362, label %if.end374

do.end362:                                        ; preds = %if.end344
  %call364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #19
  %70 = ptrtoint ptr %sync_bits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sync_bits, align 8
  call void @vfree(ptr noundef %71) #14
  br i1 %tobool245.not, label %if.then367, label %if.else369

if.then367:                                       ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %clean_bits326 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clean_bits326, align 4
  call void @vfree(ptr noundef %73) #14
  br label %if.end372

if.else369:                                       ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #16
  %client371 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 13, i32 4
  %74 = ptrtoint ptr %client371 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client371, align 4
  call void @dm_io_client_destroy(ptr noundef %75) #14
  br label %if.end372

if.end372:                                        ; preds = %if.else369, %if.then367
  %disk_header373 = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 19
  %76 = ptrtoint ptr %disk_header373 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disk_header373, align 8
  call void @vfree(ptr noundef %77) #14
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end374:                                        ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #16
  %sync_search = getelementptr inbounds %struct.log_c, ptr %call7.i, i32 0, i32 11
  %78 = ptrtoint ptr %sync_search to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %sync_search, align 8
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %79 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end374, %if.end372, %if.end342, %do.end314, %if.then297, %do.end283, %do.end253, %do.end231, %do.end29, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ -22, %do.end29 ], [ -22, %do.end283 ], [ %48, %if.then297 ], [ 0, %if.end374 ], [ -12, %if.end372 ], [ -12, %if.end342 ], [ -12, %do.end314 ], [ -12, %do.end253 ], [ -12, %do.end231 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %region_size) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_io_client_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_io(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_ctr(ptr nocapture noundef writeonly %log, ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @create_log_context(ptr noundef %log, ptr noundef %ti, i32 noundef %argc, ptr noundef %argv, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @core_dtr(ptr nocapture noundef readonly %log) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %clean_bits = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clean_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clean_bits, align 4
  tail call void @vfree(ptr noundef %3) #14
  %sync_bits.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sync_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_bits.i, align 8
  tail call void @vfree(ptr noundef %5) #14
  %recovering_bits.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %recovering_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recovering_bits.i, align 4
  tail call void @vfree(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @core_resume(ptr nocapture noundef readonly %log) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sync_search = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sync_search to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sync_search, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @core_flush(ptr nocapture noundef readnone %log) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_status(ptr nocapture noundef readonly %log, i32 noundef %status, ptr noundef %result, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.55, ptr noundef %6) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp2 = icmp eq i32 %maxlen, 0
  br i1 %cmp2, label %cond.end12.thread, label %cond.end12

cond.end12:                                       ; preds = %sw.bb1
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %sync = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp eq i32 %12, 0
  %cond10 = select i1 %cmp9, i32 1, i32 2
  %region_size = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %region_size, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.56, ptr noundef %10, i32 noundef %cond10, i32 noundef %14) #14
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.not = icmp eq i32 %16, 0
  br i1 %cmp16.not, label %cond.end12.sw.epilog_crit_edge, label %if.then

cond.end12.sw.epilog_crit_edge:                   ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.end12.thread:                                ; preds = %sw.bb1
  %sync1556 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %sync1556 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sync1556, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16.not57 = icmp eq i32 %18, 0
  br i1 %cmp16.not57, label %cond.end12.thread.sw.epilog_crit_edge, label %cond.end12.thread.cond.end26_crit_edge

cond.end12.thread.cond.end26_crit_edge:           ; preds = %cond.end12.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end26

cond.end12.thread.sw.epilog_crit_edge:            ; preds = %cond.end12.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %cond.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %maxlen)
  %cmp17.not = icmp ult i32 %call11, %maxlen
  br i1 %cmp17.not, label %cond.false19, label %if.then.cond.end26_crit_edge

if.then.cond.end26_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end26

cond.false19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr20 = getelementptr i8, ptr %result, i32 %call11
  %sub21 = sub i32 %maxlen, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp23 = icmp eq i32 %16, 1
  %cond24 = select i1 %cmp23, ptr @.str.52, ptr @.str.53
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond24) #14
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false19, %if.then.cond.end26_crit_edge, %cond.end12.thread.cond.end26_crit_edge
  %cond135861 = phi i32 [ %call11, %cond.false19 ], [ %call11, %if.then.cond.end26_crit_edge ], [ 0, %cond.end12.thread.cond.end26_crit_edge ]
  %cond27 = phi i32 [ %call25, %cond.false19 ], [ 0, %if.then.cond.end26_crit_edge ], [ 0, %cond.end12.thread.cond.end26_crit_edge ]
  %add28 = add i32 %cond27, %cond135861
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %cond.end26, %cond.end12.thread.sw.epilog_crit_edge, %cond.end12.sw.epilog_crit_edge, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %sz.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb29 ], [ %add28, %cond.end26 ], [ %call11, %cond.end12.sw.epilog_crit_edge ], [ %call, %cond.false ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %cond.end12.thread.sw.epilog_crit_edge ]
  ret i32 %sz.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__ksymtab_dm_dirty_log_type_register, !1, !"__ksymtab_dm_dirty_log_type_register", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-log.c", i32 128, i32 1}
!2 = !{ptr @__ksymtab_dm_dirty_log_type_unregister, !3, !"__ksymtab_dm_dirty_log_type_unregister", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-log.c", i32 145, i32 1}
!4 = !{ptr @__ksymtab_dm_dirty_log_create, !5, !"__ksymtab_dm_dirty_log_create", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-log.c", i32 175, i32 1}
!6 = !{ptr @__ksymtab_dm_dirty_log_destroy, !7, !"__ksymtab_dm_dirty_log_destroy", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-log.c", i32 183, i32 1}
!8 = !{ptr @__initcall__kmod_dm_log__267_895_dm_dirty_log_init6, !9, !"__initcall__kmod_dm_log__267_895_dm_dirty_log_init6", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-log.c", i32 895, i32 1}
!10 = !{ptr @__exitcall_dm_dirty_log_exit, !11, !"__exitcall_dm_dirty_log_exit", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-log.c", i32 896, i32 1}
!12 = !{ptr @__UNIQUE_ID_description268, !13, !"__UNIQUE_ID_description268", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-log.c", i32 898, i32 1}
!14 = !{ptr @__UNIQUE_ID_author269, !15, !"__UNIQUE_ID_author269", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-log.c", i32 899, i32 1}
!16 = !{ptr @__UNIQUE_ID_file270, !17, !"__UNIQUE_ID_file270", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-log.c", i32 900, i32 1}
!18 = !{ptr @__UNIQUE_ID_license271, !17, !"__UNIQUE_ID_license271", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-log.c", i32 20, i32 8}
!21 = !{ptr @_lock, !20, !"_lock", i1 false, i1 false}
!22 = !{ptr @_log_types, !23, !"_log_types", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-log.c", i32 19, i32 8}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-log.c", i32 79, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @get_type._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @get_type._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-log.c", i32 84, i32 9}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-log.c", i32 93, i32 3}
!34 = !{ptr @get_type._entry.5, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @get_type._entry_ptr.7, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-log.c", i32 854, i32 10}
!38 = !{ptr @_disk_type, !39, !"_disk_type", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-log.c", i32 853, i32 33}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-log.c", i32 549, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @disk_ctr._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @disk_ctr._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-log.c", i32 377, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @create_log_context._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @create_log_context._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-log.c", i32 382, i32 24}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-log.c", i32 384, i32 29}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-log.c", i32 387, i32 4}
!56 = !{ptr @create_log_context._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @create_log_context._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/dm-log.c", i32 393, i32 22}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-log.c", i32 395, i32 3}
!62 = !{ptr @create_log_context._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @create_log_context._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-log.c", i32 403, i32 3}
!66 = !{ptr @create_log_context._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @create_log_context._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-log.c", i32 430, i32 4}
!70 = !{ptr @create_log_context._entry.25, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @create_log_context._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-log.c", i32 451, i32 4}
!74 = !{ptr @create_log_context._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @create_log_context._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-log.c", i32 464, i32 4}
!78 = !{ptr @create_log_context._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @create_log_context._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-log.c", i32 471, i32 4}
!82 = !{ptr @create_log_context._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @create_log_context._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-log.c", i32 486, i32 3}
!86 = !{ptr @create_log_context._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @create_log_context._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @create_log_context._entry.40, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-log.c", i32 500, i32 3}
!90 = !{ptr @create_log_context._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-log.c", i32 595, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @disk_resume._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @disk_resume._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-log.c", i32 641, i32 3}
!98 = !{ptr @disk_resume._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @disk_resume._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-log.c", i32 339, i32 3}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @read_header._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @read_header._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-log.c", i32 814, i32 3}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-log.c", i32 821, i32 3}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-log.c", i32 824, i32 3}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-log.c", i32 836, i32 10}
!115 = !{ptr @_core_type, !116, !"_core_type", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-log.c", i32 835, i32 33}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-log.c", i32 789, i32 3}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-log.c", i32 793, i32 3}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-log.c", i32 878, i32 3}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dm_dirty_log_init._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dm_dirty_log_init._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-log.c", i32 882, i32 3}
!128 = !{ptr @dm_dirty_log_init._entry.59, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @dm_dirty_log_init._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i32 0, i32 33}
!142 = !{i64 2148448982, i64 2148449262, i64 2148449596, i64 2148449930}

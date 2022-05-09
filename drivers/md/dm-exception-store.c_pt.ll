; ModuleID = '/llk/IR_all_yes/drivers/md/dm-exception-store.c_pt.bc'
source_filename = "../drivers/md/dm-exception-store.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dm_exception_store_type_register\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_exception_store_type_register\09\09\09\09"
module asm "\09.long\09__crc_dm_exception_store_type_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_exception_store_type_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_exception_store_type_register\22\09\09\09\09\09"
module asm "__kstrtabns_dm_exception_store_type_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_exception_store_type_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_exception_store_type_unregister\09\09\09\09"
module asm "\09.long\09__crc_dm_exception_store_type_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_exception_store_type_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_exception_store_type_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dm_exception_store_type_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_exception_store_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_exception_store_create\09\09\09\09"
module asm "\09.long\09__crc_dm_exception_store_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_exception_store_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_exception_store_create\22\09\09\09\09\09"
module asm "__kstrtabns_dm_exception_store_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_exception_store_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_exception_store_destroy\09\09\09\09"
module asm "\09.long\09__crc_dm_exception_store_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_exception_store_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_exception_store_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dm_exception_store_destroy:\09\09\09\09\09"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_exception_store_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.dm_exception_store = type { ptr, ptr, i32, i32, i32, ptr, i8 }
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
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }

@_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@_exception_store_types = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @_exception_store_types, ptr @_exception_store_types }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_dm_exception_store_type_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_exception_store_type_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_exception_store_type_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_exception_store_type_register to i32), ptr @__kstrtab_dm_exception_store_type_register, ptr @__kstrtabns_dm_exception_store_type_register }, section "___ksymtab+dm_exception_store_type_register", align 4
@__kstrtab_dm_exception_store_type_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_exception_store_type_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_exception_store_type_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_exception_store_type_unregister to i32), ptr @__kstrtab_dm_exception_store_type_unregister, ptr @__kstrtabns_dm_exception_store_type_unregister }, section "___ksymtab+dm_exception_store_type_unregister", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chunk size is not a power of 2\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Chunk size is not a multiple of device blocksize\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chunk size is too high\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Insufficient exception store arguments\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Exception store allocation failed\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Exception store type is not P or N\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Exception store type not recognised\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Exception store type constructor failed\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_dm_exception_store_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_exception_store_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_exception_store_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_exception_store_create to i32), ptr @__kstrtab_dm_exception_store_create, ptr @__kstrtabns_dm_exception_store_create }, section "___ksymtab+dm_exception_store_create", align 4
@__kstrtab_dm_exception_store_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_exception_store_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_exception_store_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_exception_store_destroy to i32), ptr @__kstrtab_dm_exception_store_destroy, ptr @__kstrtabns_dm_exception_store_destroy }, section "___ksymtab+dm_exception_store_destroy", align 4
@dm_exception_store_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013device-mapper: snapshot exception stores: Unable to register transient exception store type.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_exception_store_init\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/md/dm-exception-store.c\00", [32 x i8] zeroinitializer }, align 32
@dm_exception_store_init._entry_ptr = internal global ptr @dm_exception_store_init._entry, section ".printk_index", align 4
@dm_exception_store_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.12, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013device-mapper: snapshot exception stores: Unable to register persistent exception store type\0A\00", [32 x i8] zeroinitializer }, align 32
@dm_exception_store_init._entry_ptr.15 = internal global ptr @dm_exception_store_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_lock\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@get_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.12, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: snapshot exception stores: No memory left to attempt load for \22%s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_type\00", [23 x i8] zeroinitializer }, align 32
@get_type._entry_ptr = internal global ptr @get_type._entry, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm-exstore-%s\00", [18 x i8] zeroinitializer }, align 32
@get_type._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.12, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014device-mapper: snapshot exception stores: Module for exstore type \22%s\22 not found.\0A\00", [43 x i8] zeroinitializer }, align 32
@get_type._entry_ptr.22 = internal global ptr @get_type._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid chunk size\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 78, i64 80]
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"_exception_store_types\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 19, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 166, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 175, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 180, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 202, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 208, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 214, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 216, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 218, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 224, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 238, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 268, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 274, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 20, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 83, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 87, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 96, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [35 x i8] c"../drivers/md/dm-exception-store.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 148, i32 12 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_dm_exception_store_create, ptr @__ksymtab_dm_exception_store_destroy, ptr @__ksymtab_dm_exception_store_type_register, ptr @__ksymtab_dm_exception_store_type_unregister, ptr @dm_exception_store_init._entry, ptr @dm_exception_store_init._entry.13, ptr @dm_exception_store_init._entry_ptr, ptr @dm_exception_store_init._entry_ptr.15, ptr @get_type._entry, ptr @get_type._entry.20, ptr @get_type._entry_ptr, ptr @get_type._entry_ptr.22, ptr @_lock, ptr @_exception_store_types, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_exception_store_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_exception_store_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_exception_store_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_type._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_exception_store_type_register(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_exception_store_types, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_exception_store_types
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %type.0.i = getelementptr i8, ptr %.pn.i, i32 -48
  %3 = ptrtoint ptr %type.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_exception_store_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__find_exception_store_type.exit:                 ; preds = %for.body.i
  %type.0.i.le = getelementptr i8, ptr %.pn.i, i32 -48
  %tobool.not = icmp eq ptr %type.0.i.le, null
  br i1 %tobool.not, label %__find_exception_store_type.exit.if.then_crit_edge, label %__find_exception_store_type.exit.if.end_crit_edge

__find_exception_store_type.exit.if.end_crit_edge: ; preds = %__find_exception_store_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__find_exception_store_type.exit.if.then_crit_edge: ; preds = %__find_exception_store_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %__find_exception_store_type.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %list = getelementptr inbounds %struct.dm_exception_store_type, ptr %type, i32 0, i32 12
  %5 = load ptr, ptr @_exception_store_types, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @_exception_store_types, ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %type, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @_exception_store_types, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @_exception_store_types, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %__find_exception_store_type.exit.if.end_crit_edge
  %r.0 = phi i32 [ -17, %__find_exception_store_type.exit.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  ret i32 %r.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_exception_store_type_unregister(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_exception_store_types, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_exception_store_types
  br i1 %cmp.not.i, label %for.cond.i.return_crit_edge, label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.body.i:                                       ; preds = %for.cond.i
  %type.0.i = getelementptr i8, ptr %.pn.i, i32 -48
  %3 = ptrtoint ptr %type.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_exception_store_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__find_exception_store_type.exit:                 ; preds = %for.body.i
  %type.0.i.le = getelementptr i8, ptr %.pn.i, i32 -48
  %tobool.not = icmp eq ptr %type.0.i.le, null
  br i1 %tobool.not, label %__find_exception_store_type.exit.return_crit_edge, label %if.end

__find_exception_store_type.exit.return_crit_edge: ; preds = %__find_exception_store_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %__find_exception_store_type.exit
  %list = getelementptr inbounds %struct.dm_exception_store_type, ptr %type, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %type, i32 0, i32 12, i32 1
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
  %prev.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %type, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit, %__find_exception_store_type.exit.return_crit_edge, %for.cond.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %__find_exception_store_type.exit.return_crit_edge ], [ -22, %for.cond.i.return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_exception_store_set_chunk_size(ptr nocapture noundef %store, i32 noundef %chunk_size, ptr nocapture noundef writeonly %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.ctpop.i32(i32 %chunk_size) #7, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %error, align 4
  br label %return

if.end:                                           ; preds = %entry
  %snap = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 1
  %3 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %snap, align 4
  %call1 = tail call ptr @dm_snap_cow(ptr noundef %4) #7
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end.bdev_logical_block_size.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 9
  %9 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i.i = icmp eq i32 %10, 0
  %.op = lshr i32 %10, 9
  %phi.bo = select i1 %tobool2.not.i.i, i32 1, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 1, %if.end.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %rem = urem i32 %chunk_size, %retval1.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %bdev_logical_block_size.exit.if.then10_crit_edge

bdev_logical_block_size.exit.if.then10_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false:                                    ; preds = %bdev_logical_block_size.exit
  %11 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %snap, align 4
  %call4 = tail call ptr @dm_snap_origin(ptr noundef %12) #7
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call4, align 4
  %bd_queue.i.i28 = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bd_queue.i.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i.i28, align 4
  %tobool.not.i.i29 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i29, label %lor.lhs.false.bdev_logical_block_size.exit35_crit_edge, label %land.lhs.true.i.i33

lor.lhs.false.bdev_logical_block_size.exit35_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_logical_block_size.exit35

land.lhs.true.i.i33:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i30 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 9
  %17 = ptrtoint ptr %logical_block_size.i.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_block_size.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i31 = icmp eq i32 %18, 0
  %.op37 = lshr i32 %18, 9
  %phi.bo36 = select i1 %tobool2.not.i.i31, i32 1, i32 %.op37
  br label %bdev_logical_block_size.exit35

bdev_logical_block_size.exit35:                   ; preds = %land.lhs.true.i.i33, %lor.lhs.false.bdev_logical_block_size.exit35_crit_edge
  %retval1.0.i.i34 = phi i32 [ 1, %lor.lhs.false.bdev_logical_block_size.exit35_crit_edge ], [ %phi.bo36, %land.lhs.true.i.i33 ]
  %rem8 = urem i32 %chunk_size, %retval1.0.i.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem8)
  %tobool9.not = icmp eq i32 %rem8, 0
  br i1 %tobool9.not, label %if.end11, label %bdev_logical_block_size.exit35.if.then10_crit_edge

bdev_logical_block_size.exit35.if.then10_crit_edge: ; preds = %bdev_logical_block_size.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %bdev_logical_block_size.exit35.if.then10_crit_edge, %bdev_logical_block_size.exit.if.then10_crit_edge
  %19 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.1, ptr %error, align 4
  br label %return

if.end11:                                         ; preds = %bdev_logical_block_size.exit35
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %chunk_size)
  %cmp = icmp ugt i32 %chunk_size, 4194303
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %error, align 4
  br label %return

if.end13:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_size14 = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 2
  %21 = ptrtoint ptr %chunk_size14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %chunk_size, ptr %chunk_size14, align 4
  %sub = add nsw i32 %chunk_size, -1
  %chunk_mask = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 3
  %22 = ptrtoint ptr %chunk_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %chunk_mask, align 4
  %23 = tail call i32 @llvm.cttz.i32(i32 %chunk_size, i1 false) #7, !range !65
  %chunk_shift = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 4
  %24 = ptrtoint ptr %chunk_shift to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %chunk_shift, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then10, %if.then
  %retval.0 = phi i32 [ -22, %if.then10 ], [ -22, %if.then12 ], [ 0, %if.end13 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_snap_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_snap_origin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_exception_store_create(ptr nocapture noundef writeonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr noundef %snap, ptr nocapture noundef writeonly %args_used, ptr nocapture noundef writeonly %store) #0 align 64 {
entry:
  %chunk_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.3, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.4, ptr %error2, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  %sub.i = add i8 %6, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %6, i8 %sub.i
  %10 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %spec.select.i, label %if.else14 [
    i8 80, label %if.end3.if.end17_crit_edge
    i8 78, label %if.then12
  ]

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %error15 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %11 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.7, ptr %error15, align 8
  br label %bad_type

if.end17:                                         ; preds = %if.then12, %if.end3.if.end17_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %if.then12 ], [ @.str.5, %if.end3.if.end17_crit_edge ]
  %call13 = tail call fastcc ptr @get_type(ptr noundef nonnull %.str.6.sink)
  %tobool18.not = icmp eq ptr %call13, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %error20 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %12 = ptrtoint ptr %error20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.8, ptr %error20, align 8
  br label %bad_type

if.end21:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %call7.i.i, align 8
  %snap23 = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %snap23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %snap, ptr %snap23, align 4
  %arrayidx24 = getelementptr ptr, ptr %argv, i32 1
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  %error25 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk_size.i) #7
  %17 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %chunk_size.i, align 4, !annotation !66
  %call.i = call i32 @kstrtouint(ptr noundef %16, i32 noundef 10, ptr noundef nonnull %chunk_size.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.set_chunk_size.exit.thread_crit_edge

if.end21.set_chunk_size.exit.thread_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chunk_size.exit.thread

if.end.i:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %chunk_shift.i, align 8
  %chunk_mask.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %chunk_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %chunk_mask.i, align 4
  %chunk_size3.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %chunk_size3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %chunk_size3.i, align 8
  br label %if.end29

if.end4.i:                                        ; preds = %if.end.i
  %23 = call i32 @llvm.ctpop.i32(i32 %19) #7, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %if.end.i.i, label %if.end4.i.set_chunk_size.exit.thread_crit_edge

if.end4.i.set_chunk_size.exit.thread_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chunk_size.exit.thread

if.end.i.i:                                       ; preds = %if.end4.i
  %25 = ptrtoint ptr %snap23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %snap23, align 4
  %call1.i.i = call ptr @dm_snap_cow(ptr noundef %26) #7
  %27 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call1.i.i, align 4
  %bd_queue.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %bd_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_queue.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.bdev_logical_block_size.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.bdev_logical_block_size.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_logical_block_size.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 9
  %31 = ptrtoint ptr %logical_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %logical_block_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i.i.i.i = icmp eq i32 %32, 0
  %.op.i.i = lshr i32 %32, 9
  %phi.bo.i.i = select i1 %tobool2.not.i.i.i.i, i32 1, i32 %.op.i.i
  br label %bdev_logical_block_size.exit.i.i

bdev_logical_block_size.exit.i.i:                 ; preds = %land.lhs.true.i.i.i.i, %if.end.i.i.bdev_logical_block_size.exit.i.i_crit_edge
  %retval1.0.i.i.i.i = phi i32 [ 1, %if.end.i.i.bdev_logical_block_size.exit.i.i_crit_edge ], [ %phi.bo.i.i, %land.lhs.true.i.i.i.i ]
  %rem.i.i = urem i32 %19, %retval1.0.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %bdev_logical_block_size.exit.i.i.set_chunk_size.exit.thread_crit_edge

bdev_logical_block_size.exit.i.i.set_chunk_size.exit.thread_crit_edge: ; preds = %bdev_logical_block_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chunk_size.exit.thread

lor.lhs.false.i.i:                                ; preds = %bdev_logical_block_size.exit.i.i
  %33 = ptrtoint ptr %snap23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %snap23, align 4
  %call4.i.i = call ptr @dm_snap_origin(ptr noundef %34) #7
  %35 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call4.i.i, align 4
  %bd_queue.i.i28.i.i = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %bd_queue.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_queue.i.i28.i.i, align 4
  %tobool.not.i.i29.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i29.i.i, label %lor.lhs.false.i.i.bdev_logical_block_size.exit35.i.i_crit_edge, label %land.lhs.true.i.i33.i.i

lor.lhs.false.i.i.bdev_logical_block_size.exit35.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_logical_block_size.exit35.i.i

land.lhs.true.i.i33.i.i:                          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i30.i.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 9
  %39 = ptrtoint ptr %logical_block_size.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %logical_block_size.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool2.not.i.i31.i.i = icmp eq i32 %40, 0
  %.op37.i.i = lshr i32 %40, 9
  %phi.bo36.i.i = select i1 %tobool2.not.i.i31.i.i, i32 1, i32 %.op37.i.i
  br label %bdev_logical_block_size.exit35.i.i

bdev_logical_block_size.exit35.i.i:               ; preds = %land.lhs.true.i.i33.i.i, %lor.lhs.false.i.i.bdev_logical_block_size.exit35.i.i_crit_edge
  %retval1.0.i.i34.i.i = phi i32 [ 1, %lor.lhs.false.i.i.bdev_logical_block_size.exit35.i.i_crit_edge ], [ %phi.bo36.i.i, %land.lhs.true.i.i33.i.i ]
  %rem8.i.i = urem i32 %19, %retval1.0.i.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem8.i.i)
  %tobool9.not.i.i = icmp eq i32 %rem8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %bdev_logical_block_size.exit35.i.i.set_chunk_size.exit.thread_crit_edge

bdev_logical_block_size.exit35.i.i.set_chunk_size.exit.thread_crit_edge: ; preds = %bdev_logical_block_size.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chunk_size.exit.thread

if.end11.i.i:                                     ; preds = %bdev_logical_block_size.exit35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 4194303
  br i1 %cmp.i.i, label %if.end11.i.i.set_chunk_size.exit.thread_crit_edge, label %if.end13.i.i

if.end11.i.i.set_chunk_size.exit.thread_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_chunk_size.exit.thread

if.end13.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_size14.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %chunk_size14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %19, ptr %chunk_size14.i.i, align 8
  %sub.i.i = add nsw i32 %19, -1
  %chunk_mask.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %chunk_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i.i, ptr %chunk_mask.i.i, align 4
  %43 = call i32 @llvm.cttz.i32(i32 %19, i1 true) #7, !range !65
  %chunk_shift.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %chunk_shift.i.i, align 8
  br label %if.end29

set_chunk_size.exit.thread:                       ; preds = %if.end11.i.i.set_chunk_size.exit.thread_crit_edge, %bdev_logical_block_size.exit35.i.i.set_chunk_size.exit.thread_crit_edge, %bdev_logical_block_size.exit.i.i.set_chunk_size.exit.thread_crit_edge, %if.end4.i.set_chunk_size.exit.thread_crit_edge, %if.end21.set_chunk_size.exit.thread_crit_edge
  %.str.23.sink = phi ptr [ @.str.23, %if.end21.set_chunk_size.exit.thread_crit_edge ], [ @.str, %if.end4.i.set_chunk_size.exit.thread_crit_edge ], [ @.str.1, %bdev_logical_block_size.exit35.i.i.set_chunk_size.exit.thread_crit_edge ], [ @.str.1, %bdev_logical_block_size.exit.i.i.set_chunk_size.exit.thread_crit_edge ], [ @.str.2, %if.end11.i.i.set_chunk_size.exit.thread_crit_edge ]
  %45 = ptrtoint ptr %error25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.str.23.sink, ptr %error25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_size.i) #7
  br label %bad

if.end29:                                         ; preds = %if.end13.i.i, %if.then2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_size.i) #7
  %ctr = getelementptr inbounds %struct.dm_exception_store_type, ptr %call13, i32 0, i32 2
  %46 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctr, align 4
  %48 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %argv, align 4
  %call31 = call i32 @strlen(ptr noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp ugt i32 %call31, 1
  %arrayidx35 = getelementptr i8, ptr %49, i32 1
  %spec.select = select i1 %cmp32, ptr %arrayidx35, ptr null
  %call36 = call i32 %47(ptr noundef nonnull %call7.i.i, ptr noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %error25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.9, ptr %error25, align 8
  br label %bad

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %args_used to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %args_used, align 4
  %52 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %store, align 4
  br label %cleanup

bad:                                              ; preds = %if.then38, %set_chunk_size.exit.thread
  %r.0 = phi i32 [ %call36, %if.then38 ], [ -22, %set_chunk_size.exit.thread ]
  call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  %module.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %call13, i32 0, i32 1
  %53 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %module.i, align 4
  call void @module_put(ptr noundef %54) #7
  call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  br label %bad_type

bad_type:                                         ; preds = %bad, %if.then19, %if.else14
  %r.1 = phi i32 [ %r.0, %bad ], [ -22, %if.then19 ], [ -22, %if.else14 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bad_type, %if.end40, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %r.1, %bad_type ], [ 0, %if.end40 ], [ -12, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_type(ptr noundef %type_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ @_exception_store_types, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @_exception_store_types
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.body.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %type.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -48
  %1 = ptrtoint ptr %type.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %type_name, ptr noundef %2) #10
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__find_exception_store_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__find_exception_store_type.exit.i:               ; preds = %for.body.i.i
  %type.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -48
  %tobool.not.i = icmp eq ptr %type.0.i.i.le, null
  br i1 %tobool.not.i, label %__find_exception_store_type.exit.i.if.end_crit_edge, label %land.lhs.true.i

__find_exception_store_type.exit.i.if.end_crit_edge: ; preds = %__find_exception_store_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %__find_exception_store_type.exit.i
  %module.i = getelementptr i8, ptr %.pn.i.i, i32 -44
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #7
  br i1 %call1.i, label %_get_exception_store_type.exit, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

_get_exception_store_type.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %__find_exception_store_type.exit.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %type_name, i32 noundef 3264) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %type_name) #13
  br label %cleanup

while.cond:                                       ; preds = %if.end13, %if.end.while.cond_crit_edge
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  br label %for.cond.i.i38

for.cond.i.i38:                                   ; preds = %for.body.i.i42.for.cond.i.i38_crit_edge, %lor.rhs
  %.pn.in.i.i35 = phi ptr [ @_exception_store_types, %lor.rhs ], [ %.pn.i.i36, %for.body.i.i42.for.cond.i.i38_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i35 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i36 = load ptr, ptr %.pn.in.i.i35, align 4
  %cmp.not.i.i37 = icmp eq ptr %.pn.i.i36, @_exception_store_types
  br i1 %cmp.not.i.i37, label %for.cond.i.i38._get_exception_store_type.exit51.thread_crit_edge, label %for.body.i.i42

for.cond.i.i38._get_exception_store_type.exit51.thread_crit_edge: ; preds = %for.cond.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %_get_exception_store_type.exit51.thread

for.body.i.i42:                                   ; preds = %for.cond.i.i38
  %type.0.i.i39 = getelementptr i8, ptr %.pn.i.i36, i32 -48
  %6 = ptrtoint ptr %type.0.i.i39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.0.i.i39, align 4
  %call.i.i40 = tail call i32 @strcmp(ptr noundef %type_name, ptr noundef %7) #10
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %__find_exception_store_type.exit.i45, label %for.body.i.i42.for.cond.i.i38_crit_edge

for.body.i.i42.for.cond.i.i38_crit_edge:          ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i38

__find_exception_store_type.exit.i45:             ; preds = %for.body.i.i42
  %type.0.i.i39.le = getelementptr i8, ptr %.pn.i.i36, i32 -48
  %tobool.not.i44 = icmp eq ptr %type.0.i.i39.le, null
  br i1 %tobool.not.i44, label %__find_exception_store_type.exit.i45._get_exception_store_type.exit51.thread_crit_edge, label %land.lhs.true.i49

__find_exception_store_type.exit.i45._get_exception_store_type.exit51.thread_crit_edge: ; preds = %__find_exception_store_type.exit.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %_get_exception_store_type.exit51.thread

land.lhs.true.i49:                                ; preds = %__find_exception_store_type.exit.i45
  %module.i46 = getelementptr i8, ptr %.pn.i.i36, i32 -44
  %8 = ptrtoint ptr %module.i46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i46, align 4
  %call1.i47 = tail call zeroext i1 @try_module_get(ptr noundef %9) #7
  br i1 %call1.i47, label %while.end.thread, label %land.lhs.true.i49._get_exception_store_type.exit51.thread_crit_edge

land.lhs.true.i49._get_exception_store_type.exit51.thread_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %_get_exception_store_type.exit51.thread

_get_exception_store_type.exit51.thread:          ; preds = %land.lhs.true.i49._get_exception_store_type.exit51.thread_crit_edge, %__find_exception_store_type.exit.i45._get_exception_store_type.exit51.thread_crit_edge, %for.cond.i.i38._get_exception_store_type.exit51.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  br label %while.body

while.end.thread:                                 ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  br label %if.end21

while.body:                                       ; preds = %_get_exception_store_type.exit51.thread, %while.cond.while.body_crit_edge
  %call10 = tail call ptr @strrchr(ptr noundef nonnull %call1, i32 noundef 45)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end18, label %if.end13

if.end13:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call10, align 1
  br label %while.cond

do.end18:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %type_name) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %while.end.thread
  %type.259 = phi ptr [ %type.0.i.i39.le, %while.end.thread ], [ null, %do.end18 ]
  tail call void @kfree(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %_get_exception_store_type.exit
  %retval.0 = phi ptr [ %type.259, %if.end21 ], [ null, %do.end ], [ %type.0.i.i.le, %_get_exception_store_type.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_exception_store_destroy(ptr noundef %store) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %dtr = getelementptr inbounds %struct.dm_exception_store_type, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dtr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtr, align 4
  tail call void %3(ptr noundef %store) #7
  %4 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %store, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @_lock) #7
  %module.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %7) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_lock) #7
  tail call void @kfree(ptr noundef %store) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_exception_store_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_transient_snapshot_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dm_persistent_snapshot_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  tail call void @dm_transient_snapshot_exit() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %do.end ], [ %call2, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_transient_snapshot_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_persistent_snapshot_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_transient_snapshot_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_exception_store_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_persistent_snapshot_exit() #7
  tail call void @dm_transient_snapshot_exit() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_persistent_snapshot_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_dm_exception_store_type_register, !1, !"__ksymtab_dm_exception_store_type_register", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-exception-store.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_dm_exception_store_type_unregister, !3, !"__ksymtab_dm_exception_store_type_unregister", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-exception-store.c", i32 140, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-exception-store.c", i32 166, i32 12}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-exception-store.c", i32 175, i32 12}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-exception-store.c", i32 180, i32 12}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-exception-store.c", i32 202, i32 15}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-exception-store.c", i32 208, i32 15}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-exception-store.c", i32 214, i32 19}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-exception-store.c", i32 216, i32 19}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-exception-store.c", i32 218, i32 15}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-exception-store.c", i32 224, i32 15}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-exception-store.c", i32 238, i32 15}
!24 = !{ptr @__ksymtab_dm_exception_store_create, !25, !"__ksymtab_dm_exception_store_create", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-exception-store.c", i32 252, i32 1}
!26 = !{ptr @__ksymtab_dm_exception_store_destroy, !27, !"__ksymtab_dm_exception_store_destroy", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-exception-store.c", i32 260, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-exception-store.c", i32 268, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dm_exception_store_init._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @dm_exception_store_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-exception-store.c", i32 274, i32 3}
!36 = !{ptr @dm_exception_store_init._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dm_exception_store_init._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-exception-store.c", i32 20, i32 8}
!40 = !{ptr @_lock, !39, !"_lock", i1 false, i1 false}
!41 = !{ptr @_exception_store_types, !42, !"_exception_store_types", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-exception-store.c", i32 19, i32 8}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-exception-store.c", i32 83, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @get_type._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @get_type._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-exception-store.c", i32 87, i32 9}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-exception-store.c", i32 96, i32 3}
!52 = !{ptr @get_type._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @get_type._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-exception-store.c", i32 148, i32 12}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i32 0, i32 33}
!66 = !{!"auto-init"}

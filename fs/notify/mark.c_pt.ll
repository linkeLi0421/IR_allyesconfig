; ModuleID = '/llk/IR_all_yes/fs/notify/mark.c_pt.bc'
source_filename = "../fs/notify/mark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsnotify_put_mark\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_put_mark\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_put_mark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_put_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_put_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_put_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_destroy_mark\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_destroy_mark\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_destroy_mark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_destroy_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_destroy_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_destroy_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_add_mark\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_add_mark\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_add_mark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_add_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_add_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_add_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_find_mark\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_find_mark\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_find_mark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_find_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_find_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_find_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_init_mark\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_init_mark\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_init_mark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_init_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_init_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_init_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_wait_marks_destroyed\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_wait_marks_destroyed\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_wait_marks_destroyed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_wait_marks_destroyed:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_wait_marks_destroyed\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_wait_marks_destroyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.69, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.69 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.76 }
%union.anon.76 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsnotify_iter_info = type { [5 x ptr], i32, i32 }

@fsnotify_get_mark.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/notify/mark.c\00", [47 x i8] zeroinitializer }, align 32
@destroy_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@connector_destroy_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@connector_reaper_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @connector_reaper_work, i64 4), ptr getelementptr (i8, ptr @connector_reaper_work, i64 4) }, ptr @fsnotify_connector_destroy_workfn, %struct.lockdep_map { ptr @connector_reaper_work, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@destroy_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @destroy_list, ptr @destroy_list }, [24 x i8] zeroinitializer }, align 32
@reaper_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @reaper_work, i64 4), ptr getelementptr (i8, ptr @reaper_work, i64 4) }, ptr @fsnotify_mark_destroy_workfn, %struct.lockdep_map { ptr @reaper_work, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.6, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_fsnotify_put_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_put_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_put_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_put_mark to i32), ptr @__kstrtab_fsnotify_put_mark, ptr @__kstrtabns_fsnotify_put_mark }, section "___ksymtab_gpl+fsnotify_put_mark", align 4
@fsnotify_mark_srcu = dso_local global { %struct.srcu_struct, [200 x i8] } zeroinitializer, align 32
@fsnotify_detach_mark.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_detach_mark.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fsnotify_destroy_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_destroy_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_destroy_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_destroy_mark to i32), ptr @__kstrtab_fsnotify_destroy_mark, ptr @__kstrtabns_fsnotify_destroy_mark }, section "___ksymtab_gpl+fsnotify_destroy_mark", align 4
@__kstrtab_fsnotify_add_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_add_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_add_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_add_mark to i32), ptr @__kstrtab_fsnotify_add_mark, ptr @__kstrtabns_fsnotify_add_mark }, section "___ksymtab_gpl+fsnotify_add_mark", align 4
@__kstrtab_fsnotify_find_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_find_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_find_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_find_mark to i32), ptr @__kstrtab_fsnotify_find_mark, ptr @__kstrtabns_fsnotify_find_mark }, section "___ksymtab_gpl+fsnotify_find_mark", align 4
@fsnotify_init_mark.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mark->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_fsnotify_init_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_init_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_init_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_init_mark to i32), ptr @__kstrtab_fsnotify_init_mark, ptr @__kstrtabns_fsnotify_init_mark }, section "___ksymtab_gpl+fsnotify_init_mark", align 4
@__kstrtab_fsnotify_wait_marks_destroyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_wait_marks_destroyed = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_wait_marks_destroyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_wait_marks_destroyed to i32), ptr @__kstrtab_fsnotify_wait_marks_destroyed, ptr @__kstrtabns_fsnotify_wait_marks_destroyed }, section "___ksymtab_gpl+fsnotify_wait_marks_destroyed", align 4
@fsnotify_mark_connector_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@fsnotify_final_mark_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_drop_object.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"destroy_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"connector_reaper_work\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(reaper_work).work\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/notify/mark.c:89\00", [44 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@fsnotify_add_mark_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_add_mark_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fsnotify_add_mark_list = private unnamed_addr constant [23 x i8] c"fsnotify_add_mark_list\00", align 1
@fsnotify_add_mark_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.fsnotify_add_mark_list, ptr @.str, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: fsid mismatch on object of type %u: %x.%x != %x.%x\0A\00", [38 x i8] zeroinitializer }, align 32
@fsnotify_add_mark_list._entry_ptr = internal global ptr @fsnotify_add_mark_list._entry, section ".printk_index", align 4
@fsnotify_attach_connector_to_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&conn->lock\00", [20 x i8] zeroinitializer }, align 32
@fsnotify_grab_connector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@switch.table.fsnotify_conn_mask = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -4, i32 4, i32 -4], [20 x i8] zeroinitializer }, align 32
@switch.table.fsnotify_recalc_mask = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -4, i32 4, i32 -4], [20 x i8] zeroinitializer }, align 32
@switch.table.fsnotify_put_mark = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -4, i32 4, i32 -4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 96, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"destroy_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"connector_destroy_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 86, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"connector_reaper_work\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"destroy_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 85, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"reaper_work\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"fsnotify_mark_srcu\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 81, i32 20 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 842, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"fsnotify_mark_connector_cachep\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 82, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 84, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 92, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 89, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 189, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 616, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 508, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [20 x i8] c"../fs/notify/mark.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 554, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"switch.table.fsnotify_conn_mask\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [34 x i8] c"switch.table.fsnotify_recalc_mask\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"switch.table.fsnotify_put_mark\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_fsnotify_add_mark, ptr @__ksymtab_fsnotify_destroy_mark, ptr @__ksymtab_fsnotify_find_mark, ptr @__ksymtab_fsnotify_init_mark, ptr @__ksymtab_fsnotify_put_mark, ptr @__ksymtab_fsnotify_wait_marks_destroyed, ptr @fsnotify_add_mark_list._entry, ptr @fsnotify_add_mark_list._entry_ptr, ptr @.str, ptr @destroy_lock, ptr @connector_destroy_list, ptr @connector_reaper_work, ptr @destroy_list, ptr @reaper_work, ptr @fsnotify_mark_srcu, ptr @fsnotify_init_mark.__key, ptr @.str.2, ptr @fsnotify_mark_connector_cachep, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @fsnotify_add_mark_list._rs, ptr @.str.8, ptr @.str.9, ptr @fsnotify_attach_connector_to_object.__key, ptr @.str.10, ptr @.str.11, ptr @switch.table.fsnotify_conn_mask, ptr @switch.table.fsnotify_recalc_mask, ptr @switch.table.fsnotify_put_mark], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_destroy_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_reaper_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reaper_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_mark_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_init_mark.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_mark_connector_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_add_mark_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_add_mark_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_attach_connector_to_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsnotify_conn_mask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsnotify_recalc_mask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsnotify_put_mark to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_get_mark(ptr noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !71

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !72
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end29.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !73

if.end29.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end29
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end29.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end29.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_conn_mask(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.i = icmp ult i16 %1, 3
  br i1 %cmp.i, label %switch.lookup, label %do.end, !prof !71

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_conn_mask, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %s_fsnotify_mask.i = getelementptr i8, ptr %6, i32 %switch.load
  %7 = ptrtoint ptr %s_fsnotify_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_fsnotify_mask.i, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %8, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_recalc_mask(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull %conn) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %conn, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !73

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

do.end9.i:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 3
  br i1 %cmp.i.i, label %if.end12.i, label %do.end9.i.__fsnotify_recalc_mask.exit_crit_edge

do.end9.i.__fsnotify_recalc_mask.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fsnotify_recalc_mask.exit

if.end12.i:                                       ; preds = %do.end9.i
  %list.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 5
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %tobool13.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -64
  %tobool15.not4448.i = icmp eq ptr %add.ptr.i, null
  %tobool15.not44.i = or i1 %tobool13.not.i, %tobool15.not4448.i
  br i1 %tobool15.not44.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %new_mask.047.i = phi i32 [ %new_mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  %mark.045.i = phi ptr [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end12.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.045.i, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then17.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mark.045.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mark.045.i, align 4
  %or.i = or i32 %9, %new_mask.047.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %for.body.i.for.inc.i_crit_edge
  %new_mask.1.i = phi i32 [ %or.i, %if.then17.i ], [ %new_mask.047.i, %for.body.i.for.inc.i_crit_edge ]
  %obj_list.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.045.i, i32 0, i32 5
  %10 = ptrtoint ptr %obj_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj_list.i, align 4
  %tobool21.not.i = icmp eq ptr %11, null
  %add.ptr25.i = getelementptr i8, ptr %11, i32 -64
  %tobool15.not49.i = icmp eq ptr %add.ptr25.i, null
  %tobool15.not.i = or i1 %tobool21.not.i, %tobool15.not49.i
  br i1 %tobool15.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %new_mask.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %12 = icmp ult i16 %3, 3
  br i1 %12, label %switch.lookup, label %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge

for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_conn_mask_p.exit.i

switch.lookup:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = sext i16 %3 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_recalc_mask, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %s_fsnotify_mask.i.i = getelementptr i8, ptr %17, i32 %switch.load
  br label %fsnotify_conn_mask_p.exit.i

fsnotify_conn_mask_p.exit.i:                      ; preds = %switch.lookup, %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge ], [ %s_fsnotify_mask.i.i, %switch.lookup ]
  %18 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %new_mask.0.lcssa.i, ptr %retval.0.i.i, align 4
  br label %__fsnotify_recalc_mask.exit

__fsnotify_recalc_mask.exit:                      ; preds = %fsnotify_conn_mask_p.exit.i, %do.end9.i.__fsnotify_recalc_mask.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %conn) #7
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp = icmp eq i16 %20, 0
  br i1 %cmp, label %if.then3, label %__fsnotify_recalc_mask.exit.if.end4_crit_edge

__fsnotify_recalc_mask.exit.if.end4_crit_edge:    ; preds = %__fsnotify_recalc_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %__fsnotify_recalc_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr.i10 = getelementptr i8, ptr %23, i32 -768
  tail call void @__fsnotify_update_child_dentry_flags(ptr noundef %add.ptr.i10) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %__fsnotify_recalc_mask.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_update_child_dentry_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_put_mark(ptr noundef %mark) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 6
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %connector, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %tobool.not = icmp eq ptr %1, null
  %refcnt = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 1
  br i1 %tobool.not, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !71

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #7
  br label %cleanup

if.then1:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  %group1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %4 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.then1
  %.b46.i = load i1, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !71

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %free_mark.i = getelementptr inbounds %struct.fsnotify_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %free_mark.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_mark.i, align 4
  tail call void %9(ptr noundef %mark) #7
  tail call void @fsnotify_put_group(ptr noundef nonnull %5) #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %refcnt, ptr noundef nonnull %1) #7
  br i1 %call4, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %pprev.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i, label %if.end6.hlist_del_init_rcu.exit_crit_edge, label %if.then.i44

if.end6.hlist_del_init_rcu.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init_rcu.exit

if.then.i44:                                      ; preds = %if.end6
  %obj_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5
  %12 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj_list, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i7.i = icmp eq ptr %13, null
  br i1 %tobool.not.i7.i, label %if.then.i44.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i44.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i44.__hlist_del.exit.i_crit_edge
  %16 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.end6.hlist_del_init_rcu.exit_crit_edge
  %list = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %list, align 4
  %tobool.not.i45 = icmp eq ptr %18, null
  br i1 %tobool.not.i45, label %if.then9, label %if.else

if.then9:                                         ; preds = %hlist_del_init_rcu.exit
  %call10 = call fastcc ptr @fsnotify_detach_connector_from_object(ptr noundef nonnull %1, ptr noundef nonnull %type)
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %connector, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #7
  %tobool.not.i46 = icmp eq ptr %call10, null
  br i1 %tobool.not.i46, label %if.then9.fsnotify_drop_object.exit_crit_edge, label %if.end.i

if.then9.fsnotify_drop_object.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_drop_object.exit

if.end.i:                                         ; preds = %if.then9
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.end40.critedge.i, label %land.rhs.i47

land.rhs.i47:                                     ; preds = %if.end.i
  %.b44.i = load i1, ptr @fsnotify_drop_object.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i47.fsnotify_drop_object.exit_crit_edge, label %if.then8.i, !prof !71

land.rhs.i47.fsnotify_drop_object.exit_crit_edge: ; preds = %land.rhs.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_drop_object.exit

if.then8.i:                                       ; preds = %land.rhs.i47
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_drop_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #7
  br label %fsnotify_drop_object.exit

if.end40.critedge.i:                              ; preds = %if.end.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i, align 4
  tail call void @iput(ptr noundef nonnull %call10) #7
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i.i, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i.i, ptr %s_fsnotify_connectors.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end40.critedge.i.fsnotify_drop_object.exit_crit_edge

if.end40.critedge.i.fsnotify_drop_object.exit_crit_edge: ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_drop_object.exit

if.then.i.i:                                      ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wake_up_var(ptr noundef %s_fsnotify_connectors.i.i) #7
  br label %fsnotify_drop_object.exit

fsnotify_drop_object.exit:                        ; preds = %if.then.i.i, %if.end40.critedge.i.fsnotify_drop_object.exit_crit_edge, %if.then8.i, %land.rhs.i47.fsnotify_drop_object.exit_crit_edge, %if.then9.fsnotify_drop_object.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #7
  %25 = load ptr, ptr @connector_destroy_list, align 4
  %26 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %26, align 4
  store ptr %1, ptr @connector_destroy_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @destroy_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %28 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef nonnull @connector_reaper_work) #7
  br label %if.end26

if.else:                                          ; preds = %hlist_del_init_rcu.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %1, align 4
  %30 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !73

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

do.end9.i:                                        ; preds = %if.else
  %type.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp.i.i = icmp ult i16 %32, 3
  br i1 %cmp.i.i, label %if.end12.i, label %do.end9.i.__fsnotify_recalc_mask.exit_crit_edge

do.end9.i.__fsnotify_recalc_mask.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fsnotify_recalc_mask.exit

if.end12.i:                                       ; preds = %do.end9.i
  %add.ptr.i = getelementptr i8, ptr %18, i32 -64
  %tobool15.not4448.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool15.not4448.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %new_mask.047.i = phi i32 [ %new_mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  %mark.045.i = phi ptr [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end12.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.045.i, i32 0, i32 8
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then17.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %mark.045.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mark.045.i, align 4
  %or.i = or i32 %36, %new_mask.047.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %for.body.i.for.inc.i_crit_edge
  %new_mask.1.i = phi i32 [ %or.i, %if.then17.i ], [ %new_mask.047.i, %for.body.i.for.inc.i_crit_edge ]
  %obj_list.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.045.i, i32 0, i32 5
  %37 = ptrtoint ptr %obj_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %obj_list.i, align 4
  %tobool21.not.i = icmp eq ptr %38, null
  %add.ptr25.i = getelementptr i8, ptr %38, i32 -64
  %tobool15.not49.i = icmp eq ptr %add.ptr25.i, null
  %tobool15.not.i = or i1 %tobool21.not.i, %tobool15.not49.i
  br i1 %tobool15.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %new_mask.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %39 = icmp ult i16 %32, 3
  br i1 %39, label %switch.lookup, label %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge

for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_conn_mask_p.exit.i

switch.lookup:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = sext i16 %32 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_put_mark, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  %42 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %s_fsnotify_mask.i.i = getelementptr i8, ptr %44, i32 %switch.load
  br label %fsnotify_conn_mask_p.exit.i

fsnotify_conn_mask_p.exit.i:                      ; preds = %switch.lookup, %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %for.end.i.fsnotify_conn_mask_p.exit.i_crit_edge ], [ %s_fsnotify_mask.i.i, %switch.lookup ]
  %45 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %new_mask.0.lcssa.i, ptr %retval.0.i.i, align 4
  br label %__fsnotify_recalc_mask.exit

__fsnotify_recalc_mask.exit:                      ; preds = %fsnotify_conn_mask_p.exit.i, %do.end9.i.__fsnotify_recalc_mask.exit_crit_edge
  %46 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr null, ptr %connector, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #7
  br label %if.end26

if.end26:                                         ; preds = %__fsnotify_recalc_mask.exit, %fsnotify_drop_object.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #7
  %g_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3
  %47 = load ptr, ptr @destroy_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %g_list, ptr noundef nonnull @destroy_list, ptr noundef %47) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add.exit_crit_edge

if.end26.list_add.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %g_list, ptr %prev1.i.i, align 4
  %49 = ptrtoint ptr %g_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %g_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @destroy_list, ptr %prev3.i.i, align 4
  store volatile ptr %g_list, ptr @destroy_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end26.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @destroy_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %51 = load ptr, ptr @system_unbound_wq, align 4
  %call.i48 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef nonnull @reaper_work, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end2.cleanup_crit_edge, %if.end40.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fsnotify_detach_connector_from_object(ptr nocapture noundef %conn, ptr nocapture noundef writeonly %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type1, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %type, align 4
  %3 = load i16, ptr %type1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.end25_crit_edge [
    i16 3, label %entry.cleanup_crit_edge
    i16 0, label %if.then9
    i16 1, label %if.then14
    i16 2, label %if.then21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -768
  %i_fsnotify_mask = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %i_fsnotify_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %i_fsnotify_mask, align 4
  br label %if.end25thread-pre-split

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %mnt_fsnotify_mask = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %mnt_fsnotify_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mnt_fsnotify_mask, align 4
  br label %if.end25thread-pre-split

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %s_fsnotify_mask = getelementptr i8, ptr %15, i32 -4
  %16 = ptrtoint ptr %s_fsnotify_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %s_fsnotify_mask, align 8
  br label %if.end25thread-pre-split

if.end25thread-pre-split:                         ; preds = %if.then21, %if.then14, %if.then9
  %inode.0.ph = phi ptr [ null, %if.then21 ], [ null, %if.then14 ], [ %add.ptr.i, %if.then9 ]
  %17 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %type1, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %entry.if.end25_crit_edge
  %18 = phi i16 [ %.pr, %if.end25thread-pre-split ], [ %3, %entry.if.end25_crit_edge ]
  %inode.0 = phi ptr [ %inode.0.ph, %if.end25thread-pre-split ], [ null, %entry.if.end25_crit_edge ]
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %18, label %if.end25.fsnotify_put_sb_connectors.exit_crit_edge [
    i16 0, label %sw.bb.i.i
    i16 1, label %sw.bb1.i.i
    i16 2, label %sw.bb3.i.i
  ]

if.end25.fsnotify_put_sb_connectors.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit

sw.bb.i.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %20 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %i_sb.i.i = getelementptr i8, ptr %22, i32 -740
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  br label %fsnotify_connector_sb.exit.i

sw.bb1.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %mnt_sb.i.i = getelementptr i8, ptr %27, i32 -120
  %28 = ptrtoint ptr %mnt_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mnt_sb.i.i, align 4
  br label %fsnotify_connector_sb.exit.i

sw.bb3.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %30 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %32, i32 -1100
  br label %fsnotify_connector_sb.exit.i

fsnotify_connector_sb.exit.i:                     ; preds = %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i9.i.i, %sw.bb3.i.i ], [ %29, %sw.bb1.i.i ], [ %24, %sw.bb.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %fsnotify_connector_sb.exit.i.fsnotify_put_sb_connectors.exit_crit_edge, label %land.lhs.true.i

fsnotify_connector_sb.exit.i.fsnotify_put_sb_connectors.exit_crit_edge: ; preds = %fsnotify_connector_sb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit

land.lhs.true.i:                                  ; preds = %fsnotify_connector_sb.exit.i
  %s_fsnotify_connectors.i = getelementptr inbounds %struct.super_block, ptr %retval.0.i.i, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i, ptr %s_fsnotify_connectors.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i, label %land.lhs.true.i.fsnotify_put_sb_connectors.exit_crit_edge

land.lhs.true.i.fsnotify_put_sb_connectors.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wake_up_var(ptr noundef %s_fsnotify_connectors.i) #7
  br label %fsnotify_put_sb_connectors.exit

fsnotify_put_sb_connectors.exit:                  ; preds = %if.then.i, %land.lhs.true.i.fsnotify_put_sb_connectors.exit_crit_edge, %fsnotify_connector_sb.exit.i.fsnotify_put_sb_connectors.exit_crit_edge, %if.end25.fsnotify_put_sb_connectors.exit_crit_edge
  %34 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr null, ptr %36, align 4
  store ptr null, ptr %34, align 4
  %38 = ptrtoint ptr %type1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3, ptr %type1, align 4
  br label %cleanup

cleanup:                                          ; preds = %fsnotify_put_sb_connectors.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %inode.0, %fsnotify_put_sb_connectors.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fsnotify_prepare_user_wait(ptr nocapture noundef readonly %iter_info) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp36 = phi i1 [ true, %entry ], [ %cmp, %for.inc.for.body_crit_edge ]
  %type.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %refcnt.i = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %4 = phi i32 [ %3, %if.end.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #7, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !71

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.fsnotify_get_mark_safe.exit_crit_edge, label %if.then1.i

refcount_inc_not_zero.exit.i.fsnotify_get_mark_safe.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_get_mark_safe.exit

if.then1.i:                                       ; preds = %refcount_inc_not_zero.exit.i
  %lock.i = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %flags.i = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %group.i = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group.i, align 4
  %user_waits.i = getelementptr inbounds %struct.fsnotify_group, ptr %17, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %user_waits.i, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i, ptr %user_waits.i, i32 1, ptr elementtype(i32) %user_waits.i) #7, !srcloc !82
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %for.inc

if.end5.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  call void @fsnotify_put_mark(ptr noundef nonnull %1) #7
  br label %fsnotify_get_mark_safe.exit

fsnotify_get_mark_safe.exit:                      ; preds = %if.end5.i, %refcount_inc_not_zero.exit.i.fsnotify_get_mark_safe.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.034)
  %cmp238.not = icmp eq i32 %type.034, 0
  br i1 %cmp238.not, label %fsnotify_get_mark_safe.exit.cleanup_crit_edge, label %for.body3

fsnotify_get_mark_safe.exit.cleanup_crit_edge:    ; preds = %fsnotify_get_mark_safe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.then3.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %type.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.034)
  %cmp = icmp ult i32 %type.034, 4
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %srcu_idx = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 2
  %19 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool.not.i17 = icmp ult i32 %20, 2
  br i1 %tobool.not.i17, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !71

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #7
  call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %20) #7
  br label %cleanup

for.body3:                                        ; preds = %fsnotify_get_mark_safe.exit
  %type.139 = add nsw i32 %type.034, -1
  %arrayidx5 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.139
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i18 = icmp eq ptr %22, null
  br i1 %tobool.not.i18, label %for.body3.fsnotify_put_mark_wake.exit_crit_edge, label %if.then.i21

for.body3.fsnotify_put_mark_wake.exit_crit_edge:  ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

if.then.i21:                                      ; preds = %for.body3
  %group1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group1.i, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %22) #7
  %user_waits.i19 = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 10
  %call.i.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i19, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @llvm.prefetch.p0(ptr %user_waits.i19, i32 1, i32 3, i32 1) #7
  %25 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i19, ptr %user_waits.i19, i32 1, ptr elementtype(i32) %user_waits.i19) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i, label %if.then.i21.fsnotify_put_mark_wake.exit_crit_edge

if.then.i21.fsnotify_put_mark_wake.exit_crit_edge: ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

land.lhs.true.i:                                  ; preds = %if.then.i21
  %shutdown.i = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 8
  %26 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shutdown.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i22 = icmp eq i8 %27, 0
  br i1 %tobool2.not.i22, label %land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge, label %if.then3.i23

land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

if.then3.i23:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %notification_waitq.i = getelementptr inbounds %struct.fsnotify_group, ptr %24, i32 0, i32 4
  call void @__wake_up(ptr noundef %notification_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %fsnotify_put_mark_wake.exit

fsnotify_put_mark_wake.exit:                      ; preds = %if.then3.i23, %land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge, %if.then.i21.fsnotify_put_mark_wake.exit_crit_edge, %for.body3.fsnotify_put_mark_wake.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.034)
  %cmp2 = icmp ugt i32 %type.034, 1
  br i1 %cmp2, label %for.body3.1, label %fsnotify_put_mark_wake.exit.cleanup_crit_edge

fsnotify_put_mark_wake.exit.cleanup_crit_edge:    ; preds = %fsnotify_put_mark_wake.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3.1:                                      ; preds = %fsnotify_put_mark_wake.exit
  %type.139.1 = add nsw i32 %type.034, -2
  %arrayidx5.1 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.139.1
  %28 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.1, align 4
  %tobool.not.i18.1 = icmp eq ptr %29, null
  br i1 %tobool.not.i18.1, label %for.body3.1.fsnotify_put_mark_wake.exit.1_crit_edge, label %if.then.i21.1

for.body3.1.fsnotify_put_mark_wake.exit.1_crit_edge: ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.1

if.then.i21.1:                                    ; preds = %for.body3.1
  %group1.i.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %group1.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group1.i.1, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %29) #7
  %user_waits.i19.1 = getelementptr inbounds %struct.fsnotify_group, ptr %31, i32 0, i32 10
  %call.i.i.i20.1 = call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i19.1, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @llvm.prefetch.p0(ptr %user_waits.i19.1, i32 1, i32 3, i32 1) #7
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i19.1, ptr %user_waits.i19.1, i32 1, ptr elementtype(i32) %user_waits.i19.1) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.1 = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.1)
  %cmp.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.i.i.1, 0
  br i1 %cmp.i.i.i.1, label %land.lhs.true.i.1, label %if.then.i21.1.fsnotify_put_mark_wake.exit.1_crit_edge

if.then.i21.1.fsnotify_put_mark_wake.exit.1_crit_edge: ; preds = %if.then.i21.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.1

land.lhs.true.i.1:                                ; preds = %if.then.i21.1
  %shutdown.i.1 = getelementptr inbounds %struct.fsnotify_group, ptr %31, i32 0, i32 8
  %33 = ptrtoint ptr %shutdown.i.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shutdown.i.1, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.not.i22.1 = icmp eq i8 %34, 0
  br i1 %tobool2.not.i22.1, label %land.lhs.true.i.1.fsnotify_put_mark_wake.exit.1_crit_edge, label %if.then3.i23.1

land.lhs.true.i.1.fsnotify_put_mark_wake.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.1

if.then3.i23.1:                                   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %notification_waitq.i.1 = getelementptr inbounds %struct.fsnotify_group, ptr %31, i32 0, i32 4
  call void @__wake_up(ptr noundef %notification_waitq.i.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %fsnotify_put_mark_wake.exit.1

fsnotify_put_mark_wake.exit.1:                    ; preds = %if.then3.i23.1, %land.lhs.true.i.1.fsnotify_put_mark_wake.exit.1_crit_edge, %if.then.i21.1.fsnotify_put_mark_wake.exit.1_crit_edge, %for.body3.1.fsnotify_put_mark_wake.exit.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.034)
  %cmp2.1 = icmp ugt i32 %type.034, 2
  br i1 %cmp2.1, label %for.body3.2, label %fsnotify_put_mark_wake.exit.1.cleanup_crit_edge

fsnotify_put_mark_wake.exit.1.cleanup_crit_edge:  ; preds = %fsnotify_put_mark_wake.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3.2:                                      ; preds = %fsnotify_put_mark_wake.exit.1
  %type.139.2 = add nsw i32 %type.034, -3
  %arrayidx5.2 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.139.2
  %35 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx5.2, align 4
  %tobool.not.i18.2 = icmp eq ptr %36, null
  br i1 %tobool.not.i18.2, label %for.body3.2.fsnotify_put_mark_wake.exit.2_crit_edge, label %if.then.i21.2

for.body3.2.fsnotify_put_mark_wake.exit.2_crit_edge: ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.2

if.then.i21.2:                                    ; preds = %for.body3.2
  %group1.i.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %group1.i.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %group1.i.2, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %36) #7
  %user_waits.i19.2 = getelementptr inbounds %struct.fsnotify_group, ptr %38, i32 0, i32 10
  %call.i.i.i20.2 = call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i19.2, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @llvm.prefetch.p0(ptr %user_waits.i19.2, i32 1, i32 3, i32 1) #7
  %39 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i19.2, ptr %user_waits.i19.2, i32 1, ptr elementtype(i32) %user_waits.i19.2) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.2 = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.2)
  %cmp.i.i.i.2 = icmp eq i32 %asmresult.i.i.i.i.i.i.2, 0
  br i1 %cmp.i.i.i.2, label %land.lhs.true.i.2, label %if.then.i21.2.fsnotify_put_mark_wake.exit.2_crit_edge

if.then.i21.2.fsnotify_put_mark_wake.exit.2_crit_edge: ; preds = %if.then.i21.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.2

land.lhs.true.i.2:                                ; preds = %if.then.i21.2
  %shutdown.i.2 = getelementptr inbounds %struct.fsnotify_group, ptr %38, i32 0, i32 8
  %40 = ptrtoint ptr %shutdown.i.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %shutdown.i.2, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool2.not.i22.2 = icmp eq i8 %41, 0
  br i1 %tobool2.not.i22.2, label %land.lhs.true.i.2.fsnotify_put_mark_wake.exit.2_crit_edge, label %if.then3.i23.2

land.lhs.true.i.2.fsnotify_put_mark_wake.exit.2_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit.2

if.then3.i23.2:                                   ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %notification_waitq.i.2 = getelementptr inbounds %struct.fsnotify_group, ptr %38, i32 0, i32 4
  call void @__wake_up(ptr noundef %notification_waitq.i.2, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %fsnotify_put_mark_wake.exit.2

fsnotify_put_mark_wake.exit.2:                    ; preds = %if.then3.i23.2, %land.lhs.true.i.2.fsnotify_put_mark_wake.exit.2_crit_edge, %if.then.i21.2.fsnotify_put_mark_wake.exit.2_crit_edge, %for.body3.2.fsnotify_put_mark_wake.exit.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type.034)
  %cmp2.2 = icmp ugt i32 %type.034, 3
  br i1 %cmp2.2, label %for.body3.3, label %fsnotify_put_mark_wake.exit.2.cleanup_crit_edge

fsnotify_put_mark_wake.exit.2.cleanup_crit_edge:  ; preds = %fsnotify_put_mark_wake.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3.3:                                      ; preds = %fsnotify_put_mark_wake.exit.2
  %type.139.3 = add nsw i32 %type.034, -4
  %arrayidx5.3 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.139.3
  %42 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5.3, align 4
  %tobool.not.i18.3 = icmp eq ptr %43, null
  br i1 %tobool.not.i18.3, label %for.body3.3.cleanup_crit_edge, label %if.then.i21.3

for.body3.3.cleanup_crit_edge:                    ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i21.3:                                    ; preds = %for.body3.3
  %group1.i.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %group1.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %group1.i.3, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %43) #7
  %user_waits.i19.3 = getelementptr inbounds %struct.fsnotify_group, ptr %45, i32 0, i32 10
  %call.i.i.i20.3 = call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i19.3, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @llvm.prefetch.p0(ptr %user_waits.i19.3, i32 1, i32 3, i32 1) #7
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i19.3, ptr %user_waits.i19.3, i32 1, ptr elementtype(i32) %user_waits.i19.3) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.3 = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.3)
  %cmp.i.i.i.3 = icmp eq i32 %asmresult.i.i.i.i.i.i.3, 0
  br i1 %cmp.i.i.i.3, label %land.lhs.true.i.3, label %if.then.i21.3.cleanup_crit_edge

if.then.i21.3.cleanup_crit_edge:                  ; preds = %if.then.i21.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.3:                                ; preds = %if.then.i21.3
  %shutdown.i.3 = getelementptr inbounds %struct.fsnotify_group, ptr %45, i32 0, i32 8
  %47 = ptrtoint ptr %shutdown.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %shutdown.i.3, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool2.not.i22.3 = icmp eq i8 %48, 0
  br i1 %tobool2.not.i22.3, label %land.lhs.true.i.3.cleanup_crit_edge, label %if.then3.i23.3

land.lhs.true.i.3.cleanup_crit_edge:              ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i23.3:                                   ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %notification_waitq.i.3 = getelementptr inbounds %struct.fsnotify_group, ptr %45, i32 0, i32 4
  call void @__wake_up(ptr noundef %notification_waitq.i.3, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i23.3, %land.lhs.true.i.3.cleanup_crit_edge, %if.then.i21.3.cleanup_crit_edge, %for.body3.3.cleanup_crit_edge, %fsnotify_put_mark_wake.exit.2.cleanup_crit_edge, %fsnotify_put_mark_wake.exit.1.cleanup_crit_edge, %fsnotify_put_mark_wake.exit.cleanup_crit_edge, %srcu_read_unlock.exit, %fsnotify_get_mark_safe.exit.cleanup_crit_edge
  %cmp27 = phi i1 [ %cmp, %srcu_read_unlock.exit ], [ %cmp36, %fsnotify_get_mark_safe.exit.cleanup_crit_edge ], [ %cmp36, %for.body3.3.cleanup_crit_edge ], [ %cmp36, %if.then.i21.3.cleanup_crit_edge ], [ %cmp36, %land.lhs.true.i.3.cleanup_crit_edge ], [ %cmp36, %if.then3.i23.3 ], [ %cmp36, %fsnotify_put_mark_wake.exit.2.cleanup_crit_edge ], [ %cmp36, %fsnotify_put_mark_wake.exit.1.cleanup_crit_edge ], [ %cmp36, %fsnotify_put_mark_wake.exit.cleanup_crit_edge ]
  %49 = xor i1 %cmp27, true
  ret i1 %49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_finish_user_wait(ptr nocapture noundef %iter_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #7
  %srcu_idx = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 2
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %srcu_idx, align 4
  br label %for.body

for.body:                                         ; preds = %fsnotify_put_mark_wake.exit.for.body_crit_edge, %entry
  %type.04 = phi i32 [ 0, %entry ], [ %inc, %fsnotify_put_mark_wake.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.fsnotify_put_mark_wake.exit_crit_edge, label %if.then.i

for.body.fsnotify_put_mark_wake.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

if.then.i:                                        ; preds = %for.body
  %group1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group1.i, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %2) #7
  %user_waits.i = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_waits.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %user_waits.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_waits.i, ptr %user_waits.i, i32 1, ptr elementtype(i32) %user_waits.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i, label %if.then.i.fsnotify_put_mark_wake.exit_crit_edge

if.then.i.fsnotify_put_mark_wake.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %shutdown.i = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 8
  %6 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shutdown.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge, label %if.then3.i

land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_mark_wake.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %notification_waitq.i = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %notification_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %fsnotify_put_mark_wake.exit

fsnotify_put_mark_wake.exit:                      ; preds = %if.then3.i, %land.lhs.true.i.fsnotify_put_mark_wake.exit_crit_edge, %if.then.i.fsnotify_put_mark_wake.exit_crit_edge, %for.body.fsnotify_put_mark_wake.exit_crit_edge
  %inc = add nuw nsw i32 %type.04, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %fsnotify_put_mark_wake.exit.for.body_crit_edge

fsnotify_put_mark_wake.exit.for.body_crit_edge:   ; preds = %fsnotify_put_mark_wake.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %fsnotify_put_mark_wake.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_detach_mark(ptr noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mark_mutex) #7
  br i1 %call, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b124 = load i1, ptr @fsnotify_detach_mark.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !71

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_detach_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end29.if.end92_crit_edge, label %srcu_read_lock_held.exit

if.end29.if.end92_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

srcu_read_lock_held.exit:                         ; preds = %if.end29
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool39.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool39.not, label %land.rhs40, label %srcu_read_lock_held.exit.if.end92_crit_edge

srcu_read_lock_held.exit.if.end92_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

land.rhs40:                                       ; preds = %srcu_read_lock_held.exit
  %refcnt = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 2
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.lobit)
  %cmp.not = icmp ugt i32 %3, %and.lobit
  br i1 %cmp.not, label %land.rhs40.if.end92_crit_edge, label %land.rhs54

land.rhs40.if.end92_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

land.rhs54:                                       ; preds = %land.rhs40
  %.b122123 = load i1, ptr @fsnotify_detach_mark.__already_done.1, align 1
  br i1 %.b122123, label %land.rhs54.if.end92_crit_edge, label %if.then65, !prof !71

land.rhs54.if.end92_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_detach_mark.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef null) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %land.rhs54.if.end92_crit_edge, %land.rhs40.if.end92_crit_edge, %srcu_read_lock_held.exit.if.end92_crit_edge, %if.end29.if.end92_crit_edge
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %flags100 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 8
  %6 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags100, align 4
  %and101 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end105:                                        ; preds = %if.end92
  %and107 = and i32 %7, -5
  %8 = ptrtoint ptr %flags100 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and107, ptr %flags100, align 4
  %g_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3
  %call.i.i126 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %g_list) #7
  br i1 %call.i.i126, label %if.end.i.i, label %if.end105.list_del_init.exit_crit_edge

if.end105.list_del_init.exit_crit_edge:           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %g_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end105.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %g_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %g_list, ptr %g_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %g_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  tail call void @fsnotify_put_mark(ptr noundef %mark)
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then103
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_free_mark(ptr noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %3, -3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %freeing_mark = getelementptr inbounds %struct.fsnotify_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %freeing_mark to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freeing_mark, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %mark, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_mark(ptr noundef %mark, ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 1) #7
  tail call void @fsnotify_detach_mark(ptr noundef %mark)
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #7
  %group1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1.i, align 4
  %lock.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %flags.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %fsnotify_free_mark.exit

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %3, -3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4.i, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %freeing_mark.i = getelementptr inbounds %struct.fsnotify_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %freeing_mark.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freeing_mark.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %if.end.i.fsnotify_free_mark.exit_crit_edge, label %if.then7.i

if.end.i.fsnotify_free_mark.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_free_mark.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %mark, ptr noundef %1) #7
  br label %fsnotify_free_mark.exit

fsnotify_free_mark.exit:                          ; preds = %if.then7.i, %if.end.i.fsnotify_free_mark.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fsnotify_compare_groups(ptr noundef readonly %a, ptr noundef readonly %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  %tobool3.not = icmp eq ptr %b, null
  br i1 %tobool3.not, label %if.end2.return_crit_edge, label %if.end5

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end2
  %priority = getelementptr inbounds %struct.fsnotify_group, ptr %a, i32 0, i32 7
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  %priority6 = getelementptr inbounds %struct.fsnotify_group, ptr %b, i32 0, i32 7
  %2 = ptrtoint ptr %priority6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp7 = icmp ult i32 %1, %3
  br i1 %cmp7, label %if.end5.return_crit_edge, label %if.end9

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp12 = icmp ugt i32 %1, %3
  br i1 %cmp12, label %if.end9.return_crit_edge, label %if.end14

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %cmp15 = icmp ult ptr %a, %b
  %. = select i1 %cmp15, i32 1, i32 -1
  br label %return

return:                                           ; preds = %if.end14, %if.end9.return_crit_edge, %if.end5.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ -1, %if.end2.return_crit_edge ], [ 1, %if.end5.return_crit_edge ], [ -1, %if.end9.return_crit_edge ], [ %., %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_add_mark_locked(ptr noundef %mark, ptr noundef %connp, i32 noundef %obj_type, i32 noundef %allow_dups, ptr noundef readonly %fsid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mark_mutex) #7
  br i1 %call, label %do.end9, label %do.body4, !prof !71

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #7, !srcloc !84
  unreachable

do.end9:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 6
  store i32 %or, ptr %flags, align 4
  %g_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3
  %marks_list = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %marks_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %marks_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %g_list, ptr noundef %marks_list, ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_add.exit_crit_edge

do.end9.list_add.exit_crit_edge:                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %g_list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %g_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %g_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %marks_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %marks_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %g_list, ptr %marks_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end9.list_add.exit_crit_edge
  tail call void @fsnotify_get_mark(ptr noundef %mark)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %obj_type)
  %cmp.i.i = icmp ult i32 %obj_type, 3
  br i1 %cmp.i.i, label %if.end22.i, label %list_add.exit.err.sink.split_crit_edge, !prof !71

list_add.exit.err.sink.split_crit_edge:           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

if.end22.i:                                       ; preds = %list_add.exit
  %tobool23.not.i = icmp eq ptr %fsid, null
  br i1 %tobool23.not.i, label %if.end22.i.if.end83.i_crit_edge, label %land.lhs.true.i

if.end22.i.if.end83.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end22.i
  %10 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool24.not.i = icmp eq i32 %11, 0
  br i1 %tobool24.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end83.i_crit_edge

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %arrayidx26.i = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not.i = icmp eq i32 %13, 0
  br i1 %tobool27.not.i, label %land.rhs35.i, label %land.rhs.i.if.end83.i_crit_edge

land.rhs.i.if.end83.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

land.rhs35.i:                                     ; preds = %land.rhs.i
  %.b278.i = load i1, ptr @fsnotify_add_mark_list.__already_done, align 1
  br i1 %.b278.i, label %land.rhs35.i.err_crit_edge, label %if.then46.i, !prof !71

land.rhs35.i.err_crit_edge:                       ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then46.i:                                      ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_add_mark_list.__already_done, align 1
  br label %err.sink.split

if.end83.i:                                       ; preds = %land.rhs.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %if.end22.i.if.end83.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %call84305.i = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %connp) #7
  %tobool85.not306.i = icmp eq ptr %call84305.i, null
  br i1 %tobool85.not306.i, label %if.then86.lr.ph.i, label %if.end83.i.if.else.i_crit_edge

if.end83.i.if.else.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then86.lr.ph.i:                                ; preds = %if.end83.i
  %conv.i.i = trunc i32 %obj_type to i16
  br label %if.then86.i

if.then86.i:                                      ; preds = %fsnotify_attach_connector_to_object.exit.i.if.then86.i_crit_edge, %if.then86.lr.ph.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %14 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  %call.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3264) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i39, null
  br i1 %tobool.not.i.i, label %if.then86.i.err_crit_edge, label %do.body.i.i

if.then86.i.err_crit_edge:                        ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body.i.i:                                      ; preds = %if.then86.i
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i39, ptr noundef nonnull @.str.10, ptr noundef nonnull @fsnotify_attach_connector_to_object.__key, i16 noundef signext 3) #7
  %list.i.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 5
  %15 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %list.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 1
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %type.i.i, align 4
  %17 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %connp, ptr %17, align 8
  %fsid5.i.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 3
  br i1 %tobool23.not.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %fsid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %fsid, align 4
  %21 = ptrtoint ptr %fsid5.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %fsid5.i.i, align 8
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %fsid5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %fsid5.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then3.i.i
  %.sink.i.i = phi i16 [ 0, %if.else.i.i ], [ 1, %if.then3.i.i ]
  %24 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call.i.i39, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink.i.i, ptr %24, align 2
  %26 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i281.i = icmp eq i16 %27, 0
  br i1 %cmp.i281.i, label %if.then14.i.i, label %if.end10.i.i.if.end16.i.i_crit_edge

if.end10.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 -768
  tail call void @ihold(ptr noundef %add.ptr.i.i.i) #7
  %i_sb.i.i.i = getelementptr i8, ptr %29, i32 -740
  %30 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i.i.i, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i.i.i, ptr %s_fsnotify_connectors.i.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i.i.i) #7, !srcloc !82
  %33 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %.pr.i.i = load i16, ptr %type.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %if.end10.i.i.if.end16.i.i_crit_edge
  %34 = phi i16 [ %.pr.i.i, %if.then14.i.i ], [ %27, %if.end10.i.i.if.end16.i.i_crit_edge ]
  %inode.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then14.i.i ], [ null, %if.end10.i.i.if.end16.i.i_crit_edge ]
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %34, label %if.end16.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge [
    i16 0, label %sw.bb.i.i.i.i
    i16 1, label %sw.bb1.i.i.i.i
    i16 2, label %sw.bb3.i.i.i.i
  ]

if.end16.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_get_sb_connectors.exit.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %17, align 8
  %i_sb.i.i.i.i = getelementptr i8, ptr %37, i32 -740
  %38 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i.i.i.i, align 4
  br label %fsnotify_connector_sb.exit.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %17, align 8
  %mnt_sb.i.i.i.i = getelementptr i8, ptr %41, i32 -120
  %42 = ptrtoint ptr %mnt_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mnt_sb.i.i.i.i, align 4
  br label %fsnotify_connector_sb.exit.i.i.i

sw.bb3.i.i.i.i:                                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %17, align 8
  %add.ptr.i9.i.i.i.i = getelementptr i8, ptr %45, i32 -1100
  br label %fsnotify_connector_sb.exit.i.i.i

fsnotify_connector_sb.exit.i.i.i:                 ; preds = %sw.bb3.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i9.i.i.i.i, %sw.bb3.i.i.i.i ], [ %43, %sw.bb1.i.i.i.i ], [ %39, %sw.bb.i.i.i.i ]
  %tobool.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %fsnotify_connector_sb.exit.i.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge, label %if.then.i.i.i

fsnotify_connector_sb.exit.i.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge: ; preds = %fsnotify_connector_sb.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_get_sb_connectors.exit.i.i

if.then.i.i.i:                                    ; preds = %fsnotify_connector_sb.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_fsnotify_connectors.i62.i.i = getelementptr inbounds %struct.super_block, ptr %retval.0.i.i.i.i, i32 0, i32 48
  %call.i.i.i63.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i62.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i62.i.i, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i62.i.i, ptr %s_fsnotify_connectors.i62.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i62.i.i) #7, !srcloc !82
  br label %fsnotify_get_sb_connectors.exit.i.i

fsnotify_get_sb_connectors.exit.i.i:              ; preds = %if.then.i.i.i, %fsnotify_connector_sb.exit.i.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge, %if.end16.i.i.fsnotify_get_sb_connectors.exit.i.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connp, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  %47 = ptrtoint ptr %call.i.i39 to i32
  tail call void @llvm.prefetch.p0(ptr %connp, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %fsnotify_get_sb_connectors.exit.i.i
  %48 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %connp, i32 0, i32 %47) #7, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %48, 0
  %tobool.not.i64.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i64.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool35.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %tobool35.not.i.i, label %__cmpxchg.exit.i.i.fsnotify_attach_connector_to_object.exit.i_crit_edge, label %if.then36.i.i

__cmpxchg.exit.i.i.fsnotify_attach_connector_to_object.exit.i_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_attach_connector_to_object.exit.i

if.then36.i.i:                                    ; preds = %__cmpxchg.exit.i.i
  %tobool37.not.i.i = icmp eq ptr %inode.0.i.i, null
  br i1 %tobool37.not.i.i, label %if.then36.i.i.if.end39.i.i_crit_edge, label %if.then38.i.i

if.then36.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then38.i.i:                                    ; preds = %if.then36.i.i
  %i_sb.i65.i.i = getelementptr inbounds %struct.inode, ptr %inode.0.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i65.i.i, align 4
  tail call void @iput(ptr noundef nonnull %inode.0.i.i) #7
  %s_fsnotify_connectors.i66.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 48
  %call.i.i.i67.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i66.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i66.i.i, i32 1, i32 3, i32 1) #7
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i66.i.i, ptr %s_fsnotify_connectors.i66.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i66.i.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i68.i.i, label %if.then38.i.i.if.end39.i.i_crit_edge

if.then38.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then.i68.i.i:                                  ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wake_up_var(ptr noundef %s_fsnotify_connectors.i66.i.i) #7
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then.i68.i.i, %if.then38.i.i.if.end39.i.i_crit_edge, %if.then36.i.i.if.end39.i.i_crit_edge
  %52 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %type.i.i, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %53, label %if.end39.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge [
    i16 0, label %sw.bb.i.i71.i.i
    i16 1, label %sw.bb1.i.i73.i.i
    i16 2, label %sw.bb3.i.i75.i.i
  ]

if.end39.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit.i.i

sw.bb.i.i71.i.i:                                  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %17, align 8
  %i_sb.i.i70.i.i = getelementptr i8, ptr %56, i32 -740
  %57 = ptrtoint ptr %i_sb.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb.i.i70.i.i, align 4
  br label %fsnotify_connector_sb.exit.i78.i.i

sw.bb1.i.i73.i.i:                                 ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %17, align 8
  %mnt_sb.i.i72.i.i = getelementptr i8, ptr %60, i32 -120
  %61 = ptrtoint ptr %mnt_sb.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mnt_sb.i.i72.i.i, align 4
  br label %fsnotify_connector_sb.exit.i78.i.i

sw.bb3.i.i75.i.i:                                 ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %17, align 8
  %add.ptr.i9.i.i74.i.i = getelementptr i8, ptr %64, i32 -1100
  br label %fsnotify_connector_sb.exit.i78.i.i

fsnotify_connector_sb.exit.i78.i.i:               ; preds = %sw.bb3.i.i75.i.i, %sw.bb1.i.i73.i.i, %sw.bb.i.i71.i.i
  %retval.0.i.i76.i.i = phi ptr [ %add.ptr.i9.i.i74.i.i, %sw.bb3.i.i75.i.i ], [ %62, %sw.bb1.i.i73.i.i ], [ %58, %sw.bb.i.i71.i.i ]
  %tobool.not.i77.i.i = icmp eq ptr %retval.0.i.i76.i.i, null
  br i1 %tobool.not.i77.i.i, label %fsnotify_connector_sb.exit.i78.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

fsnotify_connector_sb.exit.i78.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge: ; preds = %fsnotify_connector_sb.exit.i78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %fsnotify_connector_sb.exit.i78.i.i
  %s_fsnotify_connectors.i79.i.i = getelementptr inbounds %struct.super_block, ptr %retval.0.i.i76.i.i, i32 0, i32 48
  %call.i.i.i80.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i79.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i79.i.i, i32 1, i32 3, i32 1) #7
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i79.i.i, ptr %s_fsnotify_connectors.i79.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i79.i.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.i81.i.i = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81.i.i)
  %cmp.i.i.i.i82.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i81.i.i, 0
  br i1 %cmp.i.i.i.i82.i.i, label %if.then.i83.i.i, label %land.lhs.true.i.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge

land.lhs.true.i.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_put_sb_connectors.exit.i.i

if.then.i83.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wake_up_var(ptr noundef %s_fsnotify_connectors.i79.i.i) #7
  br label %fsnotify_put_sb_connectors.exit.i.i

fsnotify_put_sb_connectors.exit.i.i:              ; preds = %if.then.i83.i.i, %land.lhs.true.i.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge, %fsnotify_connector_sb.exit.i78.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge, %if.end39.i.i.fsnotify_put_sb_connectors.exit.i.i_crit_edge
  %66 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef nonnull %call.i.i39) #7
  br label %fsnotify_attach_connector_to_object.exit.i

fsnotify_attach_connector_to_object.exit.i:       ; preds = %fsnotify_put_sb_connectors.exit.i.i, %__cmpxchg.exit.i.i.fsnotify_attach_connector_to_object.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %call84.i = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %connp) #7
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %fsnotify_attach_connector_to_object.exit.i.if.then86.i_crit_edge, label %fsnotify_attach_connector_to_object.exit.i.if.else.i_crit_edge

fsnotify_attach_connector_to_object.exit.i.if.else.i_crit_edge: ; preds = %fsnotify_attach_connector_to_object.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

fsnotify_attach_connector_to_object.exit.i.if.then86.i_crit_edge: ; preds = %fsnotify_attach_connector_to_object.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i

if.else.i:                                        ; preds = %fsnotify_attach_connector_to_object.exit.i.if.else.i_crit_edge, %if.end83.i.if.else.i_crit_edge
  %call84.lcssa.i = phi ptr [ %call84305.i, %if.end83.i.if.else.i_crit_edge ], [ %call84.i, %fsnotify_attach_connector_to_object.exit.i.if.else.i_crit_edge ]
  br i1 %tobool23.not.i, label %if.else.i.if.end151.i_crit_edge, label %land.lhs.true93.i

if.else.i.if.end151.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151.i

land.lhs.true93.i:                                ; preds = %if.else.i
  %flags.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 2
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags.i, align 2
  %69 = and i16 %68, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool94.not.i = icmp eq i16 %69, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %land.lhs.true113.i

if.then95.i:                                      ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #9
  %fsid96.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 3
  %70 = ptrtoint ptr %fsid to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %fsid, align 4
  %72 = ptrtoint ptr %fsid96.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %fsid96.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags.i, align 2
  %75 = or i16 %74, 1
  store i16 %75, ptr %flags.i, align 2
  br label %if.end151.i

land.lhs.true113.i:                               ; preds = %land.lhs.true93.i
  %76 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fsid, align 4
  %fsid116.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 3
  %78 = ptrtoint ptr %fsid116.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fsid116.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp119.not.i = icmp eq i32 %77, %79
  br i1 %cmp119.not.i, label %lor.lhs.false.i, label %land.lhs.true113.i.if.then128.i_crit_edge

land.lhs.true113.i.if.then128.i_crit_edge:        ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then128.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true113.i
  %arrayidx122.i = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx122.i, align 4
  %arrayidx125.i = getelementptr %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 3, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx125.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp126.not.i = icmp eq i32 %81, %83
  br i1 %cmp126.not.i, label %lor.lhs.false.i.if.end151.i_crit_edge, label %lor.lhs.false.i.if.then128.i_crit_edge

lor.lhs.false.i.if.then128.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then128.i

lor.lhs.false.i.if.end151.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151.i

if.then128.i:                                     ; preds = %lor.lhs.false.i.if.then128.i_crit_edge, %land.lhs.true113.i.if.then128.i_crit_edge
  %call129.i = tail call i32 @___ratelimit(ptr noundef nonnull @fsnotify_add_mark_list._rs, ptr noundef nonnull @__func__.fsnotify_add_mark_list) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.then128.i.fsnotify_add_mark_list.exit_crit_edge, label %do.end134.i

if.then128.i.fsnotify_add_mark_list.exit_crit_edge: ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_add_mark_list.exit

do.end134.i:                                      ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #9
  %type.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 1
  %84 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %type.i, align 4
  %conv136.i = zext i16 %85 to i32
  %86 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fsid, align 4
  %arrayidx140.i = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx140.i, align 4
  %90 = ptrtoint ptr %fsid116.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fsid116.i, align 4
  %arrayidx146.i = getelementptr %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 3, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx146.i, align 4
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.fsnotify_add_mark_list, i32 noundef %conv136.i, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #10
  br label %fsnotify_add_mark_list.exit

if.end151.i:                                      ; preds = %lor.lhs.false.i.if.end151.i_crit_edge, %if.then95.i, %if.else.i.if.end151.i_crit_edge
  %list.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call84.lcssa.i, i32 0, i32 5
  %94 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %list.i, align 4
  %tobool.not.i282.i = icmp eq ptr %95, null
  br i1 %tobool.not.i282.i, label %if.then154.i, label %if.end156.i

if.then154.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  %obj_list.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5
  %96 = ptrtoint ptr %obj_list.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %obj_list.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %list.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  %98 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %obj_list.i, ptr %list.i, align 4
  br label %do.body218.i

if.end156.i:                                      ; preds = %if.end151.i
  %add.ptr.i = getelementptr i8, ptr %95, i32 -64
  %tobool161.not308.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool161.not308.i, label %do.body203.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end156.i
  %99 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %group1, align 4
  %tobool3.not.i.i = icmp eq ptr %100, null
  %priority6.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %100, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lmark.0309.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr189.i, %for.inc.i.for.body.i_crit_edge ]
  %group.i = getelementptr inbounds %struct.fsnotify_mark, ptr %lmark.0309.i, i32 0, i32 2
  %101 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %group.i, align 4
  %cmp163.i = icmp eq ptr %102, %100
  br i1 %cmp163.i, label %land.lhs.true165.i, label %if.end.i.i40

land.lhs.true165.i:                               ; preds = %for.body.i
  %flags166.i = getelementptr inbounds %struct.fsnotify_mark, ptr %lmark.0309.i, i32 0, i32 8
  %103 = ptrtoint ptr %flags166.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags166.i, align 4
  %and167.i = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp ne i32 %and167.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_dups)
  %tobool170.not.i = icmp eq i32 %allow_dups, 0
  %or.cond.i = and i1 %tobool170.not.i, %tobool168.not.i
  br i1 %or.cond.i, label %land.lhs.true165.i.fsnotify_add_mark_list.exit_crit_edge, label %land.lhs.true165.i.if.then178.i_crit_edge

land.lhs.true165.i.if.then178.i_crit_edge:        ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then178.i

land.lhs.true165.i.fsnotify_add_mark_list.exit_crit_edge: ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_add_mark_list.exit

if.end.i.i40:                                     ; preds = %for.body.i
  %tobool.not.i285.i = icmp eq ptr %102, null
  br i1 %tobool.not.i285.i, label %if.end.i.i40.if.then178.i_crit_edge, label %if.end2.i.i

if.end.i.i40.if.then178.i_crit_edge:              ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then178.i

if.end2.i.i:                                      ; preds = %if.end.i.i40
  br i1 %tobool3.not.i.i, label %if.end2.i.i.for.inc.i_crit_edge, label %if.end5.i.i

if.end2.i.i.for.inc.i_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i.i:                                      ; preds = %if.end2.i.i
  %priority.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %102, i32 0, i32 7
  %105 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %priority.i.i, align 4
  %107 = ptrtoint ptr %priority6.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %priority6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp7.i.i = icmp ult i32 %106, %108
  br i1 %cmp7.i.i, label %if.end5.i.i.if.then178.i_crit_edge, label %if.end9.i.i

if.end5.i.i.if.then178.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then178.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp12.i.i = icmp ule i32 %106, %108
  %cmp15.i.i = icmp ult ptr %102, %100
  %or.cond296.i = select i1 %cmp12.i.i, i1 %cmp15.i.i, i1 false
  br i1 %or.cond296.i, label %if.end9.i.i.if.then178.i_crit_edge, label %if.end9.i.i.for.inc.i_crit_edge

if.end9.i.i.for.inc.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end9.i.i.if.then178.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then178.i

if.then178.i:                                     ; preds = %if.end9.i.i.if.then178.i_crit_edge, %if.end5.i.i.if.then178.i_crit_edge, %if.end.i.i40.if.then178.i_crit_edge, %land.lhs.true165.i.if.then178.i_crit_edge
  %obj_list179.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5
  %obj_list180.i = getelementptr inbounds %struct.fsnotify_mark, ptr %lmark.0309.i, i32 0, i32 5
  %pprev.i287.i = getelementptr inbounds %struct.fsnotify_mark, ptr %lmark.0309.i, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %pprev.i287.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pprev.i287.i, align 4
  %pprev3.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %pprev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %110, ptr %pprev3.i.i, align 4
  %112 = ptrtoint ptr %obj_list179.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %obj_list180.i, ptr %obj_list179.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  %113 = ptrtoint ptr %pprev3.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pprev3.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %obj_list179.i, ptr %114, align 4
  %116 = ptrtoint ptr %pprev.i287.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %obj_list179.i, ptr %pprev.i287.i, align 4
  br label %do.body218.i

for.inc.i:                                        ; preds = %if.end9.i.i.for.inc.i_crit_edge, %if.end2.i.i.for.inc.i_crit_edge
  %obj_list183.i = getelementptr inbounds %struct.fsnotify_mark, ptr %lmark.0309.i, i32 0, i32 5
  %117 = ptrtoint ptr %obj_list183.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %obj_list183.i, align 4
  %tobool185.not.i = icmp eq ptr %118, null
  %add.ptr189.i = getelementptr i8, ptr %118, i32 -64
  %tobool161.not321.i = icmp eq ptr %add.ptr189.i, null
  %tobool161.not.i = or i1 %tobool185.not.i, %tobool161.not321.i
  br i1 %tobool161.not.i, label %do.end211.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body203.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 648, 0\0A.popsection", ""() #7, !srcloc !91
  unreachable

do.end211.i:                                      ; preds = %for.inc.i
  %obj_list212.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5
  %119 = ptrtoint ptr %obj_list212.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %obj_list212.i, align 4
  %pprev.i288.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %pprev.i288.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %obj_list183.i, ptr %pprev.i288.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  %121 = ptrtoint ptr %obj_list183.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %obj_list212.i, ptr %obj_list183.i, align 4
  %122 = ptrtoint ptr %obj_list212.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %obj_list212.i, align 4
  %tobool.not.i289.i = icmp eq ptr %123, null
  br i1 %tobool.not.i289.i, label %do.end211.i.do.body218.i_crit_edge, label %do.body47.i.i

do.end211.i.do.body218.i_crit_edge:               ; preds = %do.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body218.i

do.body47.i.i:                                    ; preds = %do.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev50.i.i = getelementptr inbounds %struct.hlist_node, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %pprev50.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %obj_list212.i, ptr %pprev50.i.i, align 4
  br label %do.body218.i

do.body218.i:                                     ; preds = %do.body47.i.i, %do.end211.i.do.body218.i_crit_edge, %if.then178.i, %if.then154.i
  %connector.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 6
  %125 = ptrtoint ptr %connector.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %call84.lcssa.i, ptr %connector.i, align 4
  br label %fsnotify_add_mark_list.exit

fsnotify_add_mark_list.exit:                      ; preds = %do.body218.i, %land.lhs.true165.i.fsnotify_add_mark_list.exit_crit_edge, %do.end134.i, %if.then128.i.fsnotify_add_mark_list.exit_crit_edge
  %tobool12.not = phi i1 [ false, %if.then128.i.fsnotify_add_mark_list.exit_crit_edge ], [ false, %do.end134.i ], [ false, %land.lhs.true165.i.fsnotify_add_mark_list.exit_crit_edge ], [ true, %do.body218.i ]
  %err.1.i = phi i32 [ -18, %if.then128.i.fsnotify_add_mark_list.exit_crit_edge ], [ -18, %do.end134.i ], [ -17, %land.lhs.true165.i.fsnotify_add_mark_list.exit_crit_edge ], [ 0, %do.body218.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call84.lcssa.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br i1 %tobool12.not, label %if.end14, label %fsnotify_add_mark_list.exit.err_crit_edge

fsnotify_add_mark_list.exit.err_crit_edge:        ; preds = %fsnotify_add_mark_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end14:                                         ; preds = %fsnotify_add_mark_list.exit
  %126 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool15.not = icmp eq i32 %127, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 6
  %128 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %connector, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %129)
  br label %cleanup

err.sink.split:                                   ; preds = %if.then46.i, %list_add.exit.err.sink.split_crit_edge
  %.sink = phi i32 [ 588, %if.then46.i ], [ 584, %list_add.exit.err.sink.split_crit_edge ]
  %retval.0.i46.ph = phi i32 [ -19, %if.then46.i ], [ -22, %list_add.exit.err.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %err

err:                                              ; preds = %err.sink.split, %fsnotify_add_mark_list.exit.err_crit_edge, %if.then86.i.err_crit_edge, %land.rhs35.i.err_crit_edge
  %retval.0.i46 = phi i32 [ %err.1.i, %fsnotify_add_mark_list.exit.err_crit_edge ], [ -19, %land.rhs35.i.err_crit_edge ], [ %retval.0.i46.ph, %err.sink.split ], [ -12, %if.then86.i.err_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags, align 4
  %and = and i32 %131, -7
  store i32 %and, ptr %flags, align 4
  %call.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %g_list) #7
  br i1 %call.i.i41, label %if.end.i.i42, label %err.list_del_init.exit_crit_edge

err.list_del_init.exit_crit_edge:                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i42:                                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %132 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i.i, align 4
  %134 = ptrtoint ptr %g_list to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %g_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev1.i.i.i, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %135, ptr %133, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i42, %err.list_del_init.exit_crit_edge
  %138 = ptrtoint ptr %g_list to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %g_list, ptr %g_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 3, i32 1
  %139 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %g_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  tail call void @fsnotify_put_mark(ptr noundef %mark)
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then16, %if.end14.cleanup_crit_edge
  %retval.0.i45 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then16 ], [ %retval.0.i46, %list_del_init.exit ]
  ret i32 %retval.0.i45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_add_mark(ptr noundef %mark, ptr noundef %connp, i32 noundef %obj_type, i32 noundef %allow_dups, ptr noundef %fsid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 0) #7
  %call = tail call i32 @fsnotify_add_mark_locked(ptr noundef %mark, ptr noundef %connp, i32 noundef %obj_type, i32 noundef %allow_dups, ptr noundef %fsid)
  tail call void @mutex_unlock(ptr noundef %mark_mutex) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsnotify_find_mark(ptr noundef %connp, ptr noundef readnone %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %connp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %tobool1.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %tobool3.not3539 = icmp eq ptr %add.ptr, null
  %tobool3.not35 = or i1 %tobool1.not, %tobool3.not3539
  br i1 %tobool3.not35, label %if.end.cleanup.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %mark.036 = phi ptr [ %add.ptr14, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %group4 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.036, i32 0, i32 2
  %2 = ptrtoint ptr %group4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group4, align 4
  %cmp = icmp eq ptr %3, %group
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.036, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fsnotify_get_mark(ptr noundef nonnull %mark.036)
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %obj_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.036, i32 0, i32 5
  %6 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %obj_list, align 4
  %tobool10.not = icmp eq ptr %7, null
  %add.ptr14 = getelementptr i8, ptr %7, i32 -64
  %tobool3.not41 = icmp eq ptr %add.ptr14, null
  %tobool3.not = or i1 %tobool10.not, %tobool3.not41
  br i1 %tobool3.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then6, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %mark.036, %if.then6 ], [ null, %if.end.cleanup.sink.split_crit_edge ], [ null, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fsnotify_grab_connector(ptr noundef %connp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #7
  %0 = ptrtoint ptr %connp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %connp, align 4
  %call.i24 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i, label %entry.do.end8_crit_edge, label %srcu_read_lock_held.exit

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end8_crit_edge

srcu_read_lock_held.exit.do.end8_crit_edge:       ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @fsnotify_grab_connector.__warned, align 1
  br i1 %.b23, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_grab_connector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @.str.11) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %srcu_read_lock_held.exit.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.out_crit_edge, label %if.end12

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %do.end8
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #7
  %type = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp eq i16 %3, 3
  br i1 %cmp, label %if.then14, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then14:                                        ; preds = %if.end12
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i25 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i25, label %if.then14.cleanup_crit_edge, label %land.rhs.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %if.then14
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.cleanup.sink.split_crit_edge, !prof !71

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out:                                              ; preds = %if.end12.out_crit_edge, %do.end8.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i26 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i26, label %out.cleanup_crit_edge, label %land.rhs.i28

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i28:                                     ; preds = %out
  %.b1.i27 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i27, label %land.rhs.i28.cleanup_crit_edge, label %land.rhs.i28.cleanup.sink.split_crit_edge, !prof !71

land.rhs.i28.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.rhs.i28.cleanup_crit_edge:                   ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs.i28.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ null, %land.rhs.i.cleanup.sink.split_crit_edge ], [ %1, %land.rhs.i28.cleanup.sink.split_crit_edge ]
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i28.cleanup_crit_edge, %out.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then14.cleanup_crit_edge ], [ null, %land.rhs.i.cleanup_crit_edge ], [ %1, %out.cleanup_crit_edge ], [ %1, %land.rhs.i28.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #7
  tail call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %call.i) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_clear_marks_by_group(ptr noundef %group, i32 noundef %obj_type) local_unnamed_addr #0 align 64 {
entry:
  %to_free = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_free) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %to_free, i32 0, i32 1
  %1 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_free, ptr %to_free, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_free, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %obj_type)
  %cmp = icmp eq i32 %obj_type, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %marks_list = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 11
  br label %clear

if.end:                                           ; preds = %entry
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 1) #7
  %marks_list1 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 11
  %3 = ptrtoint ptr %marks_list1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %marks_list1, align 4
  %cmp9.not49 = icmp eq ptr %4, %marks_list1
  br i1 %cmp9.not49, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in50 = phi ptr [ %.pn52, %for.inc.for.body_crit_edge ], [ %4, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn52 = load ptr, ptr %.pn.in50, align 4
  %connector = getelementptr i8, ptr %.pn.in50, i32 60
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 4
  %type = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %obj_type)
  %cmp10 = icmp eq i32 %conv, %obj_type
  br i1 %cmp10, label %if.then12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in50) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.__list_del_entry.exit.i_crit_edge

if.then12.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then12.__list_del_entry.exit.i_crit_edge
  %16 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %to_free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in50, ptr noundef nonnull %to_free, ptr noundef %17) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in50, ptr %prev1.i.i2.i, align 4
  %19 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %.pn.in50, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %to_free, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in50, ptr %to_free, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp9.not = icmp eq ptr %.pn52, %marks_list1
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mark_mutex) #7
  br label %clear

clear:                                            ; preds = %for.end, %if.then
  %head.0 = phi ptr [ %marks_list, %if.then ], [ %to_free, %for.end ]
  %mark_mutex21 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mark_mutex21, i32 noundef 1) #7
  %22 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %head.0, align 4
  %cmp.i.not53 = icmp eq ptr %23, %head.0
  br i1 %cmp.i.not53, label %clear.if.then22_crit_edge, label %clear.if.end24_crit_edge

clear.if.end24_crit_edge:                         ; preds = %clear
  br label %if.end24

clear.if.then22_crit_edge:                        ; preds = %clear
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %fsnotify_free_mark.exit.if.then22_crit_edge, %clear.if.then22_crit_edge
  call void @mutex_unlock(ptr noundef %mark_mutex21) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_free) #7
  ret void

if.end24:                                         ; preds = %fsnotify_free_mark.exit.if.end24_crit_edge, %clear.if.end24_crit_edge
  %24 = phi ptr [ %35, %fsnotify_free_mark.exit.if.end24_crit_edge ], [ %23, %clear.if.end24_crit_edge ]
  %add.ptr28 = getelementptr i8, ptr %24, i32 -12
  call void @fsnotify_get_mark(ptr noundef %add.ptr28)
  call void @fsnotify_detach_mark(ptr noundef %add.ptr28)
  call void @mutex_unlock(ptr noundef %mark_mutex21) #7
  %group1.i = getelementptr i8, ptr %24, i32 -4
  %25 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group1.i, align 4
  %lock.i = getelementptr i8, ptr %24, i32 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %flags.i = getelementptr i8, ptr %24, i32 68
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %fsnotify_free_mark.exit

if.end.i:                                         ; preds = %if.end24
  %and4.i = and i32 %28, -3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and4.i, ptr %flags.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 4
  %freeing_mark.i = getelementptr inbounds %struct.fsnotify_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %freeing_mark.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freeing_mark.i, align 4
  %tobool6.not.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i, label %if.end.i.fsnotify_free_mark.exit_crit_edge, label %if.then7.i

if.end.i.fsnotify_free_mark.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_free_mark.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %33(ptr noundef %add.ptr28, ptr noundef %26) #7
  br label %fsnotify_free_mark.exit

fsnotify_free_mark.exit:                          ; preds = %if.then7.i, %if.end.i.fsnotify_free_mark.exit_crit_edge, %if.then.i
  call void @fsnotify_put_mark(ptr noundef %add.ptr28)
  call void @mutex_lock_nested(ptr noundef %mark_mutex21, i32 noundef 1) #7
  %34 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %head.0, align 4
  %cmp.i.not = icmp eq ptr %35, %head.0
  br i1 %cmp.i.not, label %fsnotify_free_mark.exit.if.then22_crit_edge, label %fsnotify_free_mark.exit.if.end24_crit_edge

fsnotify_free_mark.exit.if.end24_crit_edge:       ; preds = %fsnotify_free_mark.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

fsnotify_free_mark.exit.if.then22_crit_edge:      ; preds = %fsnotify_free_mark.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_marks(ptr noundef %connp) local_unnamed_addr #0 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !93
  %call = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %connp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %tobool1.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -64
  %tobool3.not4649 = icmp eq ptr %add.ptr, null
  %tobool3.not46 = or i1 %tobool1.not, %tobool3.not4649
  br i1 %tobool3.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %if.end.for.body_crit_edge
  %mark.048 = phi ptr [ %add.ptr14, %if.end6.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %old_mark.047 = phi ptr [ %mark.048, %if.end6.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  tail call void @fsnotify_get_mark(ptr noundef nonnull %mark.048)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #7
  %tobool4.not = icmp eq ptr %old_mark.047, null
  br i1 %tobool4.not, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fsnotify_put_mark(ptr noundef nonnull %old_mark.047)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %group = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.048, i32 0, i32 2
  %3 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group, align 4
  tail call void @fsnotify_destroy_mark(ptr noundef nonnull %mark.048, ptr noundef %4)
  tail call void @_raw_spin_lock(ptr noundef nonnull %call) #7
  %obj_list = getelementptr inbounds %struct.fsnotify_mark, ptr %mark.048, i32 0, i32 5
  %5 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj_list, align 4
  %tobool10.not = icmp eq ptr %6, null
  %add.ptr14 = getelementptr i8, ptr %6, i32 -64
  %tobool3.not50 = icmp eq ptr %add.ptr14, null
  %tobool3.not = or i1 %tobool10.not, %tobool3.not50
  br i1 %tobool3.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %old_mark.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %mark.048, %if.end6.for.end_crit_edge ]
  %call18 = call fastcc ptr @fsnotify_detach_connector_from_object(ptr noundef nonnull %call, ptr noundef nonnull %type)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #7
  %tobool20.not = icmp eq ptr %old_mark.0.lcssa, null
  br i1 %tobool20.not, label %for.end.if.end22_crit_edge, label %if.then21

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fsnotify_put_mark(ptr noundef nonnull %old_mark.0.lcssa)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  %tobool.not.i = icmp eq ptr %call18, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end40.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b44.i = load i1, ptr @fsnotify_drop_object.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.cleanup_crit_edge, label %if.then8.i, !prof !71

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_drop_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40.critedge.i:                              ; preds = %if.end.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call18, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  tail call void @iput(ptr noundef nonnull %call18) #7
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %s_fsnotify_connectors.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_fsnotify_connectors.i.i, ptr %s_fsnotify_connectors.i.i, i32 1, ptr elementtype(i32) %s_fsnotify_connectors.i.i) #7, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end40.critedge.i.cleanup_crit_edge

if.end40.critedge.i.cleanup_crit_edge:            ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wake_up_var(ptr noundef %s_fsnotify_connectors.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end40.critedge.i.cleanup_crit_edge, %if.then8.i, %land.rhs.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_init_mark(ptr noundef %mark, ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mark, i32 0, i32 84)
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @fsnotify_init_mark.__key, i16 noundef signext 3) #7
  %refcnt = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcnt, align 4
  tail call void @fsnotify_get_group(ptr noundef %group) #7
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 2
  %2 = ptrtoint ptr %group1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group, ptr %group1, align 4
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %mark, i32 0, i32 6
  %3 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %connector, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_get_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_wait_marks_destroyed() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef nonnull @reaper_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsnotify_connector_destroy_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #7
  %0 = load ptr, ptr @connector_destroy_list, align 4
  store ptr null, ptr @connector_destroy_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @destroy_lock) #7
  tail call void @synchronize_srcu(ptr noundef nonnull @fsnotify_mark_srcu) #7
  %tobool.not3 = icmp eq ptr %0, null
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %conn.04 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %conn.04, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef nonnull %conn.04) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsnotify_mark_destroy_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %private_destroy_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %private_destroy_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %private_destroy_list, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #7
  %1 = load ptr, ptr @destroy_list, align 4
  %2 = ptrtoint ptr %private_destroy_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_destroy_list, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private_destroy_list, ptr %prev.i.i, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @destroy_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %private_destroy_list, ptr %4, align 4
  store volatile ptr @destroy_list, ptr @destroy_list, align 4
  store ptr @destroy_list, ptr getelementptr inbounds (%struct.list_head, ptr @destroy_list, i32 0, i32 1), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @destroy_lock) #7
  call void @synchronize_srcu(ptr noundef nonnull @fsnotify_mark_srcu) #7
  %7 = ptrtoint ptr %private_destroy_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_destroy_list, align 4
  %cmp.not19 = icmp eq ptr %8, %private_destroy_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %fsnotify_final_mark_destroy.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %fsnotify_final_mark_destroy.exit.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %mark.0 = getelementptr i8, ptr %.pn.in20, i32 -12
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i18 = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i18, align 4
  %12 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn.in20, ptr %.pn.in20, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in20, ptr %prev.i3.i, align 4
  %group1.i = getelementptr i8, ptr %.pn.in20, i32 -4
  %18 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group1.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %list_del_init.exit
  %.b46.i = load i1, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.fsnotify_final_mark_destroy.exit_crit_edge, label %if.then.i, !prof !71

land.rhs.i.fsnotify_final_mark_destroy.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_final_mark_destroy.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #7
  br label %fsnotify_final_mark_destroy.exit

if.end40.i:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %free_mark.i = getelementptr inbounds %struct.fsnotify_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %free_mark.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_mark.i, align 4
  call void %23(ptr noundef %mark.0) #7
  call void @fsnotify_put_group(ptr noundef nonnull %19) #7
  br label %fsnotify_final_mark_destroy.exit

fsnotify_final_mark_destroy.exit:                 ; preds = %if.end40.i, %if.then.i, %land.rhs.i.fsnotify_final_mark_destroy.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %private_destroy_list
  br i1 %cmp.not, label %fsnotify_final_mark_destroy.exit.for.end_crit_edge, label %fsnotify_final_mark_destroy.exit.for.body_crit_edge

fsnotify_final_mark_destroy.exit.for.body_crit_edge: ; preds = %fsnotify_final_mark_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

fsnotify_final_mark_destroy.exit.for.end_crit_edge: ; preds = %fsnotify_final_mark_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %fsnotify_final_mark_destroy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %private_destroy_list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !55, !56, !58, !59, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/notify/mark.c", i32 96, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_fsnotify_put_mark, !4, !"__ksymtab_fsnotify_put_mark", i1 false, i1 false}
!4 = !{!"../fs/notify/mark.c", i32 303, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/notify/mark.c", i32 403, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../fs/notify/mark.c", i32 404, i32 2}
!9 = !{ptr @__ksymtab_fsnotify_destroy_mark, !10, !"__ksymtab_fsnotify_destroy_mark", i1 false, i1 false}
!10 = !{!"../fs/notify/mark.c", i32 460, i32 1}
!11 = !{ptr @__ksymtab_fsnotify_add_mark, !12, !"__ksymtab_fsnotify_add_mark", i1 false, i1 false}
!12 = !{!"../fs/notify/mark.c", i32 722, i32 1}
!13 = !{ptr @__ksymtab_fsnotify_find_mark, !14, !"__ksymtab_fsnotify_find_mark", i1 false, i1 false}
!14 = !{!"../fs/notify/mark.c", i32 749, i32 1}
!15 = !{ptr @fsnotify_init_mark.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/notify/mark.c", i32 842, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_fsnotify_init_mark, !19, !"__ksymtab_fsnotify_init_mark", i1 false, i1 false}
!19 = !{!"../fs/notify/mark.c", i32 848, i32 1}
!20 = !{ptr @__ksymtab_fsnotify_wait_marks_destroyed, !21, !"__ksymtab_fsnotify_wait_marks_destroyed", i1 false, i1 false}
!21 = !{!"../fs/notify/mark.c", i32 877, i32 1}
!22 = !{ptr @fsnotify_mark_srcu, !23, !"fsnotify_mark_srcu", i1 false, i1 false}
!23 = !{!"../fs/notify/mark.c", i32 81, i32 20}
!24 = !{ptr @fsnotify_mark_connector_cachep, !25, !"fsnotify_mark_connector_cachep", i1 false, i1 false}
!25 = !{!"../fs/notify/mark.c", i32 82, i32 20}
!26 = !{ptr @connector_destroy_list, !27, !"connector_destroy_list", i1 false, i1 false}
!27 = !{!"../fs/notify/mark.c", i32 86, i32 40}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/notify/mark.c", i32 234, i32 6}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../fs/notify/mark.c", i32 246, i32 6}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/notify/mark.c", i32 84, i32 8}
!34 = !{ptr @destroy_lock, !33, !"destroy_lock", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/notify/mark.c", i32 92, i32 8}
!37 = !{ptr @connector_reaper_work, !36, !"connector_reaper_work", i1 false, i1 false}
!38 = !{ptr @destroy_list, !39, !"destroy_list", i1 false, i1 false}
!39 = !{!"../fs/notify/mark.c", i32 85, i32 8}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/notify/mark.c", i32 89, i32 8}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @reaper_work, !41, !"reaper_work", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/notify/mark.c", i32 588, i32 14}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/notify/mark.c", i32 616, i32 3}
!51 = !{ptr @fsnotify_add_mark_list._rs, !50, !"_rs", i1 false, i1 false}
!52 = !{ptr @__func__.fsnotify_add_mark_list, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fsnotify_add_mark_list._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsnotify_add_mark_list._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @fsnotify_attach_connector_to_object.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../fs/notify/mark.c", i32 508, i32 2}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../fs/notify/mark.c", i32 554, i32 9}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148678020, i64 2148678052, i64 2148678081, i64 2148678115, i64 2148678146, i64 2148678169}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2153809316, i64 2153809797, i64 2153809353, i64 2153809409, i64 2153809443, i64 2153809467, i64 2153809508, i64 2153809529, i64 2153809557, i64 2153809591}
!75 = !{i64 2148766045}
!76 = !{i64 2148680485, i64 2148680517, i64 2148680546, i64 2148680580, i64 2148680611, i64 2148680634}
!77 = !{i64 2150387134}
!78 = !{i64 2148764966}
!79 = !{i64 2148679675, i64 2148679707, i64 2148679736, i64 2148679770, i64 2148679801, i64 2148679824}
!80 = !{i64 2148765195}
!81 = !{i64 1162003, i64 1162027, i64 1162048, i64 1162065, i64 1162082}
!82 = !{i64 2148676490, i64 2148676516, i64 2148676545, i64 2148676579, i64 2148676610, i64 2148676633}
!83 = !{i8 0, i8 2}
!84 = !{i64 2153852294, i64 2153852775, i64 2153852331, i64 2153852387, i64 2153852421, i64 2153852445, i64 2153852486, i64 2153852507, i64 2153852535, i64 2153852569}
!85 = !{i64 2153835446}
!86 = !{i64 1185982, i64 1186003, i64 1186026, i64 1186045, i64 1186064}
!87 = !{i64 2153835860}
!88 = !{i64 2153841702}
!89 = !{i64 2149590547}
!90 = !{i64 2149618394}
!91 = !{i64 2153848506, i64 2153848987, i64 2153848543, i64 2153848599, i64 2153848633, i64 2153848657, i64 2153848698, i64 2153848719, i64 2153848747, i64 2153848781}
!92 = !{i64 2149637426}
!93 = !{!"auto-init"}

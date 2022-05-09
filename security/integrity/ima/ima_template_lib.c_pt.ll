; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_template_lib.c_pt.bc'
source_filename = "../security/integrity/ima/ima_template_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ima_field_data = type { ptr, i32 }
%struct.anon.78 = type { %struct.ima_digest_data, [64 x i8] }
%struct.ima_digest_data = type { i8, i8, %union.anon.75, [0 x i8] }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i8, i8 }
%struct.ima_event_data = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
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

@ima_canonical_fmt = external dso_local local_unnamed_addr global i8, align 1
@ima_parse_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ima: %s: nr of fields mismatch: expected: %d, current: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ima_parse_buf\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"security/integrity/ima/ima_template_lib.c\00", [54 x i8] zeroinitializer }, align 32
@ima_parse_buf._entry_ptr = internal global ptr @ima_parse_buf._entry, section ".printk_index", align 4
@ima_parse_buf._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ima: %s: buf end mismatch: expected: %p, current: %p\0A\00", [40 x i8] zeroinitializer }, align 32
@ima_parse_buf._entry_ptr.5 = internal global ptr @ima_parse_buf._entry.3, section ".printk_index", align 4
@boot_aggregate_name = external dso_local constant [0 x i8], align 1
@ima_tpm_chip = external dso_local local_unnamed_addr global ptr, align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@ima_hash_algo = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"collect_data\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.evm\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 247, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 253, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 357, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 358, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 543, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 78, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 96, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [45 x i8] c"../security/integrity/ima/ima_template_lib.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 114, i32 19 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @ima_parse_buf._entry, ptr @ima_parse_buf._entry.3, ptr @ima_parse_buf._entry_ptr, ptr @ima_parse_buf._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_parse_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_parse_buf._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_digest(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 0, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef %datafmt, ptr nocapture noundef readonly %field_data) unnamed_addr #0 align 64 {
entry:
  %field_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %show to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %show, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %cond.end.thread.i
    i32 0, label %entry.cond.end.i_crit_edge
    i32 1, label %entry.cond.end.i_crit_edge11
  ]

entry.cond.end.i_crit_edge11:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %field_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %5 = zext i32 %datafmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %datafmt, label %sw.bb.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb.sw.bb5.i_crit_edge
    i32 3, label %sw.bb.sw.bb5.i_crit_edge12
    i32 2, label %sw.bb8.i
    i32 4, label %sw.bb9.i
  ]

sw.bb.sw.bb5.i_crit_edge12:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

sw.bb.sw.bb5.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %call.i = tail call ptr @strnchr(ptr noundef %2, i32 noundef %4, i32 noundef 58) #9
  %6 = ptrtoint ptr %field_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field_data, align 4
  %cmp.not.i = icmp eq ptr %call.i, %7
  br i1 %cmp.not.i, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %7) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 2
  %8 = ptrtoint ptr %field_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field_data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.neg.i = sub i32 %4, %sub.ptr.lhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.neg.i, %sub.ptr.rhs.cast.i
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %if.end.i, %sw.bb.sw.bb5.i_crit_edge, %sw.bb.sw.bb5.i_crit_edge12
  %buf_ptr.0.i = phi ptr [ %2, %sw.bb.sw.bb5.i_crit_edge ], [ %2, %sw.bb.sw.bb5.i_crit_edge12 ], [ %add.ptr.i, %if.end.i ]
  %buflen.0.i = phi i32 [ %4, %sw.bb.sw.bb5.i_crit_edge ], [ %4, %sw.bb.sw.bb5.i_crit_edge12 ], [ %sub.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.0.i)
  %tobool.not.i = icmp eq i32 %buflen.0.i, 0
  br i1 %tobool.not.i, label %sw.bb5.i.sw.epilog_crit_edge, label %if.end7.i

sw.bb5.i.sw.epilog_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ima_print_digest(ptr noundef %m, ptr noundef %buf_ptr.0.i, i32 noundef %buflen.0.i) #9
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %2) #9
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %sw.bb
  %10 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %sw.bb9.i.sw.epilog_crit_edge [
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb12.i
    i32 4, label %sw.bb18.i
    i32 8, label %sw.bb23.i
  ]

sw.bb9.i.sw.epilog_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #9
  br label %sw.epilog

sw.bb12.i:                                        ; preds = %sw.bb9.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %13 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not.i = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %conv15.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %conv15.i) #9
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv16.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %conv16.i) #9
  br label %sw.epilog

sw.bb18.i:                                        ; preds = %sw.bb9.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %17 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  br i1 %tobool19.not.i, label %if.else21.i, label %if.then20.i

if.then20.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %20) #9
  br label %sw.epilog

if.else21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %19) #9
  br label %sw.epilog

sw.bb23.i:                                        ; preds = %sw.bb9.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %21 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not.i = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %2, align 8
  br i1 %tobool24.not.i, label %if.else26.i, label %if.then25.i

if.then25.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i64 noundef %24) #9
  br label %sw.epilog

if.else26.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i64 noundef %23) #9
  br label %sw.epilog

cond.end.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %field_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %field_data, align 4
  %call.i7 = tail call i32 @strlen(ptr noundef %26) #12
  br label %if.then.i9

cond.end.i:                                       ; preds = %entry.cond.end.i_crit_edge, %entry.cond.end.i_crit_edge11
  %len1.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %27 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %show)
  %cmp2.not.i = icmp eq i32 %show, 1
  br i1 %cmp2.not.i, label %cond.end.i.if.end.i10_crit_edge, label %cond.end.i.if.then.i9_crit_edge

cond.end.i.if.then.i9_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i9

cond.end.i.if.end.i10_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i10

if.then.i9:                                       ; preds = %cond.end.i.if.then.i9_crit_edge, %cond.end.thread.i
  %cond3.i = phi i32 [ %call.i7, %cond.end.thread.i ], [ %28, %cond.end.i.if.then.i9_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %field_len.i) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %29 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i8 = icmp eq i8 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %cond3.i) #9
  %cond6.i = select i1 %tobool.not.i8, i32 %cond3.i, i32 %30
  %31 = ptrtoint ptr %field_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond6.i, ptr %field_len.i, align 4
  call void @ima_putc(ptr noundef %m, ptr noundef nonnull %field_len.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %field_len.i) #9
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i9, %cond.end.i.if.end.i10_crit_edge
  %cond4.i = phi i32 [ %cond3.i, %if.then.i9 ], [ %28, %cond.end.i.if.end.i10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond4.i)
  %tobool7.not.i = icmp eq i32 %cond4.i, 0
  br i1 %tobool7.not.i, label %if.end.i10.sw.epilog_crit_edge, label %if.end9.i

if.end.i10.sw.epilog_crit_edge:                   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %field_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %field_data, align 4
  call void @ima_putc(ptr noundef %m, ptr noundef %33, i32 noundef %cond4.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9.i, %if.end.i10.sw.epilog_crit_edge, %if.else26.i, %if.then25.i, %if.else21.i, %if.then20.i, %if.else.i, %if.then14.i, %sw.bb11.i, %sw.bb9.i.sw.epilog_crit_edge, %sw.bb8.i, %if.end7.i, %sw.bb5.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_digest_ng(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 1, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_string(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 2, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_sig(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 3, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_buf(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 3, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_show_template_uint(ptr noundef %m, i32 noundef %show, ptr nocapture noundef readonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ima_show_template_field_data(ptr noundef %m, i32 noundef %show, i32 noundef 4, ptr noundef %field_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_parse_buf(ptr noundef %bufstartp, ptr noundef %bufendp, ptr noundef writeonly %bufcurp, i32 noundef %maxfields, ptr nocapture noundef %fields, ptr noundef writeonly %curfields, ptr noundef %len_mask, i32 noundef %enforce_mask, ptr noundef %bufname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxfields)
  %cmp78 = icmp sgt i32 %maxfields, 0
  br i1 %cmp78, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq ptr %len_mask, null
  %add.ptr = getelementptr i8, ptr %bufendp, i32 -4
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %bufp.081 = phi ptr [ %bufstartp, %for.body.lr.ph ], [ %add.ptr20, %if.end16.for.body_crit_edge ]
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  br i1 %cmp1, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %div3.i = lshr i32 %i.079, 5
  %arrayidx.i = getelementptr i32, ptr %len_mask, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.079, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %cmp2 = icmp ugt ptr %bufp.081, %add.ptr
  br i1 %cmp2, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %4 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %bufp.081 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bufp.081, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %.sink = select i1 %tobool4.not, i32 %6, i32 %7
  %8 = getelementptr %struct.ima_field_data, ptr %fields, i32 %i.079, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  %add.ptr9 = getelementptr i8, ptr %bufp.081, i32 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %lor.lhs.false.if.end10_crit_edge
  %bufp.1 = phi ptr [ %add.ptr9, %if.end ], [ %bufp.081, %lor.lhs.false.if.end10_crit_edge ]
  %len12 = getelementptr %struct.ima_field_data, ptr %fields, i32 %i.079, i32 1
  %10 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len12, align 4
  %idx.neg = sub i32 0, %11
  %add.ptr13 = getelementptr i8, ptr %bufendp, i32 %idx.neg
  %cmp14 = icmp ugt ptr %bufp.1, %add.ptr13
  br i1 %cmp14, label %if.end10.for.end_crit_edge, label %if.end16

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end16:                                         ; preds = %if.end10
  %arrayidx11 = getelementptr %struct.ima_field_data, ptr %fields, i32 %i.079
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bufp.1, ptr %arrayidx11, align 4
  %add.ptr20 = getelementptr i8, ptr %bufp.1, i32 %11
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %maxfields
  br i1 %exitcond.not, label %if.end16.if.end25_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.079, %if.end10.for.end_crit_edge ], [ %i.079, %if.then.for.end_crit_edge ]
  %bufp.2 = phi ptr [ %bufstartp, %entry.for.end_crit_edge ], [ %bufp.081, %if.then.for.end_crit_edge ], [ %bufp.1, %if.end10.for.end_crit_edge ]
  %and = and i32 %enforce_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %maxfields)
  %cmp22.not = icmp eq i32 %i.0.lcssa, %maxfields
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %for.end.if.end25_crit_edge, label %do.end

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %bufname, i32 noundef %maxfields, i32 noundef %i.0.lcssa) #13
  br label %cleanup

if.end25:                                         ; preds = %for.end.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %bufp.295 = phi ptr [ %bufp.2, %for.end.if.end25_crit_edge ], [ %add.ptr20, %if.end16.if.end25_crit_edge ]
  %i.0.lcssa94 = phi i32 [ %i.0.lcssa, %for.end.if.end25_crit_edge ], [ %maxfields, %if.end16.if.end25_crit_edge ]
  %and26 = and i32 %enforce_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cmp29.not = icmp eq ptr %bufp.295, %bufendp
  %or.cond77 = select i1 %tobool27.not, i1 true, i1 %cmp29.not
  br i1 %or.cond77, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %bufname, ptr noundef %bufendp, ptr noundef %bufp.295) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %tobool37.not = icmp eq ptr %curfields, null
  br i1 %tobool37.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %curfields to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.0.lcssa94, ptr %curfields, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  %tobool40.not = icmp eq ptr %bufcurp, null
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bufcurp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bufp.295, ptr %bufcurp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ 0, %if.then41 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventdigest_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [194 x i8], align 1
  %hash = alloca %struct.anon.78, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %hash) #9
  %0 = call ptr @memset(ptr %hash, i32 0, i32 68)
  %violation = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 6
  %1 = ptrtoint ptr %violation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %violation, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %out.thread

out.thread:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 194, ptr nonnull %buffer.i)
  %3 = call ptr @memset(ptr %buffer.i, i32 0, i32 194)
  br label %if.end7.i

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %event_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_data, align 4
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ima_hash, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %algo.off.i = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %algo.off.i)
  %switch.i = icmp ult i8 %algo.off.i, 2
  br i1 %switch.i, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %digest = getelementptr inbounds %struct.ima_digest_data, ptr %7, i32 0, i32 3
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %length, align 1
  %conv = zext i8 %11 to i32
  br label %out

if.end6:                                          ; preds = %if.end
  %filename = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %12 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filename, align 4
  %cmp = icmp eq ptr %13, @boot_aggregate_name
  br i1 %cmp, label %if.then8, label %if.end30

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %14 = load ptr, ptr @ima_tpm_chip, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.then8.if.end26_crit_edge, label %if.then10

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then10:                                        ; preds = %if.then8
  %15 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %hash, align 1
  %call13 = call i32 @ima_calc_boot_aggregate(ptr noundef nonnull %hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then10
  %16 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hash, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp18.not = icmp eq i8 %17, 2
  br i1 %cmp18.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.if.then24_crit_edge

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end21:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp22 = icmp slt i32 %call13, 0
  br i1 %cmp22, label %if.end21.if.then24_crit_edge, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %if.end21.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge
  %18 = call ptr @memset(ptr %hash, i32 0, i32 68)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.then8.if.end26_crit_edge
  %digest28 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([20 x i32], ptr @hash_digest_size, i32 0, i32 2) to i32))
  %19 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @hash_digest_size, i32 0, i32 2), align 4
  br label %out

if.end30:                                         ; preds = %if.end6
  %file = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %f_inode.i = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %24 = load i32, ptr @ima_hash_algo, align 4
  %conv36 = trunc i32 %24 to i8
  %algo.off.i72 = add i8 %conv36, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %algo.off.i72)
  %switch.i73 = icmp ult i8 %algo.off.i72, 2
  %spec.select = select i1 %switch.i73, i8 %conv36, i8 2
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %hash, align 1
  %call44 = call i32 @ima_calc_file_hash(ptr noundef nonnull %21, ptr noundef nonnull %hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %filename, align 4
  call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %23, ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call44, i32 noundef 0) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %digest50 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %length53 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %28 = ptrtoint ptr %length53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %length53, align 1
  %conv54 = zext i8 %29 to i32
  br label %out

out:                                              ; preds = %if.end48, %if.end26, %if.then1
  %cur_digest.0 = phi ptr [ %digest, %if.then1 ], [ %digest28, %if.end26 ], [ %digest50, %if.end48 ]
  %cur_digestsize.0 = phi i32 [ %conv, %if.then1 ], [ %19, %if.end26 ], [ %conv54, %if.end48 ]
  call void @llvm.lifetime.start.p0(i64 194, ptr nonnull %buffer.i)
  %30 = call ptr @memset(ptr %buffer.i, i32 0, i32 194)
  %tobool.not.i = icmp eq ptr %cur_digest.0, null
  br i1 %tobool.not.i, label %out.if.end7.i_crit_edge, label %if.then4.i

out.if.end7.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then4.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %31 = call ptr @memcpy(ptr %buffer.i, ptr %cur_digest.0, i32 %cur_digestsize.0)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %out.if.end7.i_crit_edge, %out.thread
  %cur_digestsize.082 = phi i32 [ %cur_digestsize.0, %if.then4.i ], [ 0, %out.thread ], [ %cur_digestsize.0, %out.if.end7.i_crit_edge ]
  %offset.1.i = phi i32 [ 0, %if.then4.i ], [ 20, %out.thread ], [ 20, %out.if.end7.i_crit_edge ]
  %add9.i = add i32 %offset.1.i, %cur_digestsize.082
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.ima_eventdigest_init_common.exit_crit_edge, label %if.end2.i.i

if.end7.i.ima_eventdigest_init_common.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventdigest_init_common.exit

if.end2.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %buffer.i, i32 %add9.i)
  %33 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add9.i, ptr %len.i.i, align 4
  br label %ima_eventdigest_init_common.exit

ima_eventdigest_init_common.exit:                 ; preds = %if.end2.i.i, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end2.i.i ], [ -12, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 194, ptr nonnull %buffer.i)
  br label %cleanup

cleanup:                                          ; preds = %ima_eventdigest_init_common.exit, %if.then46, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %ima_eventdigest_init_common.exit ], [ %call44, %if.then46 ], [ -22, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %hash) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_boot_aggregate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_file_hash(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventdigest_ng_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [194 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %violation = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 6
  %0 = ptrtoint ptr %violation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %violation, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %out, label %out.thread

out.thread:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 194, ptr nonnull %buffer.i) #9
  %2 = call ptr @memset(ptr %buffer.i, i32 0, i32 194)
  br label %if.then.i

out:                                              ; preds = %entry
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_data, align 4
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ima_hash, align 8
  %digest = getelementptr inbounds %struct.ima_digest_data, ptr %6, i32 0, i32 3
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %length, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 194, ptr nonnull %buffer.i) #9
  %11 = call ptr @memset(ptr %buffer.i, i32 0, i32 194)
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %10)
  %cmp.i = icmp ult i8 %10, 20
  br i1 %cmp.i, label %out.if.then.i_crit_edge, label %out.if.end.i_crit_edge

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %out.thread
  %cur_digestsize.016 = phi i32 [ 0, %out.thread ], [ %conv, %out.if.then.i_crit_edge ]
  %hash_algo.014 = phi i8 [ 2, %out.thread ], [ %10, %out.if.then.i_crit_edge ]
  %cur_digest.013 = phi ptr [ null, %out.thread ], [ %digest, %out.if.then.i_crit_edge ]
  %conv.i = zext i8 %hash_algo.014 to i32
  %arrayidx.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer.i, i32 noundef 129, ptr noundef nonnull @.str.9, ptr noundef %13) #9
  %arrayidx2.i = getelementptr [194 x i8], ptr %buffer.i, i32 0, i32 %call.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 58, ptr %arrayidx2.i, align 1
  %add3.i = add i32 %call.i, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %out.if.end.i_crit_edge
  %cur_digestsize.015 = phi i32 [ %cur_digestsize.016, %if.then.i ], [ %conv, %out.if.end.i_crit_edge ]
  %cur_digest.012 = phi ptr [ %cur_digest.013, %if.then.i ], [ %digest, %out.if.end.i_crit_edge ]
  %offset.0.i = phi i32 [ %add3.i, %if.then.i ], [ 0, %out.if.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %cur_digest.012, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %offset.0.i
  %15 = call ptr @memcpy(ptr %add.ptr.i, ptr %cur_digest.012, i32 %cur_digestsize.015)
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add6.i = add i32 %offset.0.i, 20
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then4.i
  %offset.1.i = phi i32 [ %offset.0.i, %if.then4.i ], [ %add6.i, %if.else.i ]
  %add9.i = add i32 %offset.1.i, %cur_digestsize.015
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.ima_eventdigest_init_common.exit_crit_edge, label %if.end2.i.i

if.end7.i.ima_eventdigest_init_common.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventdigest_init_common.exit

if.end2.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %buffer.i, i32 %add9.i)
  %17 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add9.i, ptr %len.i.i, align 4
  br label %ima_eventdigest_init_common.exit

ima_eventdigest_init_common.exit:                 ; preds = %if.end2.i.i, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end2.i.i ], [ -12, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 194, ptr nonnull %buffer.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventdigest_modsig_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [194 x i8], align 1
  %hash_algo = alloca i32, align 4
  %cur_digest = alloca ptr, align 4
  %cur_digestsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash_algo) #9
  %0 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hash_algo, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_digest) #9
  %1 = ptrtoint ptr %cur_digest to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur_digest, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_digestsize) #9
  %2 = ptrtoint ptr %cur_digestsize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cur_digestsize, align 4, !annotation !32
  %modsig = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 5
  %3 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %modsig, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

if.end:                                           ; preds = %entry
  %violation = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 6
  %5 = ptrtoint ptr %violation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %violation, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %hash_algo, align 4
  %8 = ptrtoint ptr %cur_digest to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cur_digest, align 4
  %9 = ptrtoint ptr %cur_digestsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_digestsize, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call = call i32 @ima_get_modsig_digest(ptr noundef nonnull %4, ptr noundef nonnull %hash_algo, ptr noundef nonnull %cur_digest, ptr noundef nonnull %cur_digestsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.else6, label %if.else.cleanup13_crit_edge

if.else.cleanup13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

if.else6:                                         ; preds = %if.else
  %10 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp = icmp eq i32 %11, 20
  br i1 %cmp, label %if.else6.cleanup13_crit_edge, label %cleanup

if.else6.cleanup13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

cleanup:                                          ; preds = %if.else6
  %12 = ptrtoint ptr %cur_digestsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_digestsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not = icmp eq i32 %13, 0
  br i1 %cmp7.not, label %cleanup.cleanup13_crit_edge, label %if.end11thread-pre-split

cleanup.cleanup13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

if.end11thread-pre-split:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %cur_digest to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %cur_digest, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.then2
  %15 = phi ptr [ %.pr, %if.end11thread-pre-split ], [ null, %if.then2 ]
  %16 = ptrtoint ptr %cur_digestsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_digestsize, align 4
  %18 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash_algo, align 4
  %conv = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 194, ptr nonnull %buffer.i) #9
  %20 = call ptr @memset(ptr %buffer.i, i32 0, i32 194)
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %conv)
  %cmp.i = icmp ult i8 %conv, 20
  br i1 %cmp.i, label %if.then.i, label %if.end11.if.end.i_crit_edge

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = and i32 %19, 255
  %arrayidx.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer.i, i32 noundef 129, ptr noundef nonnull @.str.9, ptr noundef %22) #9
  %arrayidx2.i = getelementptr [194 x i8], ptr %buffer.i, i32 0, i32 %call.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 58, ptr %arrayidx2.i, align 1
  %add3.i = add i32 %call.i, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %add3.i, %if.then.i ], [ 0, %if.end11.if.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %offset.0.i
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %15, i32 %17)
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add6.i = add i32 %offset.0.i, 20
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then4.i
  %offset.1.i = phi i32 [ %offset.0.i, %if.then4.i ], [ %add6.i, %if.else.i ]
  %add9.i = add i32 %offset.1.i, %17
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.ima_eventdigest_init_common.exit_crit_edge, label %if.end2.i.i

if.end7.i.ima_eventdigest_init_common.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventdigest_init_common.exit

if.end2.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %buffer.i, i32 %add9.i)
  %26 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add9.i, ptr %len.i.i, align 4
  br label %ima_eventdigest_init_common.exit

ima_eventdigest_init_common.exit:                 ; preds = %if.end2.i.i, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end2.i.i ], [ -12, %if.end7.i.ima_eventdigest_init_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 194, ptr nonnull %buffer.i) #9
  br label %cleanup13

cleanup13:                                        ; preds = %ima_eventdigest_init_common.exit, %cleanup.cleanup13_crit_edge, %if.else6.cleanup13_crit_edge, %if.else.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.1 = phi i32 [ %retval.0.i.i, %ima_eventdigest_init_common.exit ], [ -22, %cleanup.cleanup13_crit_edge ], [ 0, %entry.cleanup13_crit_edge ], [ -22, %if.else6.cleanup13_crit_edge ], [ %call, %if.else.cleanup13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_digestsize) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_digest) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash_algo) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_modsig_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventname_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filename.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %0 = ptrtoint ptr %filename.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %land.rhs.i, label %if.then11.i

land.rhs.i:                                       ; preds = %entry
  %file.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %cmp1.i = icmp eq ptr %3, null
  br i1 %cmp1.i, label %do.body3.i, label %land.rhs.i.if.end18.i_crit_edge, !prof !33

land.rhs.i.if.end18.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/integrity/ima/ima_template_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 431, 0\0A.popsection", ""() #9, !srcloc !34
  unreachable

if.then11.i:                                      ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp15.i = icmp ult i32 %call.i, 256
  br i1 %cmp15.i, label %if.then11.i.out.i_crit_edge, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then11.i.out.i_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end18.i:                                       ; preds = %if.then11.i.if.end18.i_crit_edge, %land.rhs.i.if.end18.i_crit_edge
  %file19.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %4 = ptrtoint ptr %file19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file19.i, align 4
  %tobool20.not.i = icmp eq ptr %5, null
  br i1 %tobool20.not.i, label %if.end18.i.out.i_crit_edge, label %if.then21.i

if.end18.i.out.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %dentry.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 8
  %call23.i = tail call i32 @strlen(ptr noundef %9) #12
  br label %out.i

out.i:                                            ; preds = %if.then21.i, %if.end18.i.out.i_crit_edge, %if.then11.i.out.i_crit_edge
  %cur_filename.1.i = phi ptr [ %9, %if.then21.i ], [ %1, %if.then11.i.out.i_crit_edge ], [ %1, %if.end18.i.out.i_crit_edge ]
  %cur_filename_len.0.i = phi i32 [ %call23.i, %if.then21.i ], [ %call.i, %if.then11.i.out.i_crit_edge ], [ 255, %if.end18.i.out.i_crit_edge ]
  %spec.select.i.i = add i32 %cur_filename_len.0.i, 1
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %out.i.ima_eventname_init_common.exit_crit_edge, label %if.end2.i.i

out.i.ima_eventname_init_common.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventname_init_common.exit

if.end2.i.i:                                      ; preds = %out.i
  %10 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %cur_filename.1.i, i32 %cur_filename_len.0.i)
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_filename_len.0.i)
  %cmp531.not.i.i = icmp eq i32 %cur_filename_len.0.i, 0
  br i1 %cmp531.not.i.i, label %if.end2.i.i.if.end10.i.i_crit_edge, label %if.end2.i.i.for.body.i.i_crit_edge

if.end2.i.i.for.body.i.i_crit_edge:               ; preds = %if.end2.i.i
  br label %for.body.i.i

if.end2.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end2.i.i.for.body.i.i_crit_edge
  %buf_ptr.032.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call9.i.i.i.i, %if.end2.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %buf_ptr.032.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf_ptr.032.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp6.i.i = icmp eq i8 %12, 32
  br i1 %cmp6.i.i, label %if.then8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %buf_ptr.032.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 95, ptr %buf_ptr.032.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %buf_ptr.032.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp5.i.i = icmp ult i32 %sub.ptr.sub.i.i, %cur_filename_len.0.i
  br i1 %cmp5.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end10.i.i_crit_edge

for.inc.i.i.if.end10.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end10.i.i:                                     ; preds = %for.inc.i.i.if.end10.i.i_crit_edge, %if.end2.i.i.if.end10.i.i_crit_edge
  %14 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %len.i.i, align 4
  br label %ima_eventname_init_common.exit

ima_eventname_init_common.exit:                   ; preds = %if.end10.i.i, %out.i.ima_eventname_init_common.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end10.i.i ], [ -12, %out.i.ima_eventname_init_common.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventname_ng_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filename.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %0 = ptrtoint ptr %filename.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %land.rhs.i, label %if.then11.i

land.rhs.i:                                       ; preds = %entry
  %file.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %cmp1.i = icmp eq ptr %3, null
  br i1 %cmp1.i, label %do.body3.i, label %if.then21.i, !prof !33

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/integrity/ima/ima_template_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 431, 0\0A.popsection", ""() #9, !srcloc !34
  unreachable

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @strlen(ptr noundef nonnull %1) #12
  br label %out.i

if.then21.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %dentry.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 8
  %call23.i = tail call i32 @strlen(ptr noundef %7) #12
  br label %out.i

out.i:                                            ; preds = %if.then21.i, %if.then11.i
  %cur_filename.1.i = phi ptr [ %7, %if.then21.i ], [ %1, %if.then11.i ]
  %cur_filename_len.0.i = phi i32 [ %call23.i, %if.then21.i ], [ %call.i, %if.then11.i ]
  %spec.select.i.i = add i32 %cur_filename_len.0.i, 1
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %out.i.ima_eventname_init_common.exit_crit_edge, label %if.end2.i.i

out.i.ima_eventname_init_common.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventname_init_common.exit

if.end2.i.i:                                      ; preds = %out.i
  %8 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %cur_filename.1.i, i32 %cur_filename_len.0.i)
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_filename_len.0.i)
  %cmp531.not.i.i = icmp eq i32 %cur_filename_len.0.i, 0
  br i1 %cmp531.not.i.i, label %if.end2.i.i.if.end10.i.i_crit_edge, label %if.end2.i.i.for.body.i.i_crit_edge

if.end2.i.i.for.body.i.i_crit_edge:               ; preds = %if.end2.i.i
  br label %for.body.i.i

if.end2.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end2.i.i.for.body.i.i_crit_edge
  %buf_ptr.032.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call9.i.i.i.i, %if.end2.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %buf_ptr.032.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf_ptr.032.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp6.i.i = icmp eq i8 %10, 32
  br i1 %cmp6.i.i, label %if.then8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %buf_ptr.032.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 95, ptr %buf_ptr.032.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %buf_ptr.032.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp5.i.i = icmp ult i32 %sub.ptr.sub.i.i, %cur_filename_len.0.i
  br i1 %cmp5.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end10.i.i_crit_edge

for.inc.i.i.if.end10.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end10.i.i:                                     ; preds = %for.inc.i.i.if.end10.i.i_crit_edge, %if.end2.i.i.if.end10.i.i_crit_edge
  %12 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i.i, ptr %len.i.i, align 4
  br label %ima_eventname_init_common.exit

ima_eventname_init_common.exit:                   ; preds = %if.end10.i.i, %out.i.ima_eventname_init_common.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end10.i.i ], [ -12, %out.i.ima_eventname_init_common.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventsig_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr_value1 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 3
  %0 = ptrtoint ptr %xattr_value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_value1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @ima_eventevmsig_init(ptr noundef %event_data, ptr noundef %field_data)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %xattr_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 4
  %4 = ptrtoint ptr %xattr_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xattr_len, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %call9.i.i.i, ptr %1, i32 %5)
  %7 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end2.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventevmsig_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  %xattr_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_data) #9
  %0 = ptrtoint ptr %xattr_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %xattr_data, align 4
  %file = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %1 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !35

if.end.file_dentry.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %12(ptr noundef %4, ptr noundef %8) #9
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.end.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %4, %if.end.file_dentry.exit_crit_edge ]
  %call2 = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %xattr_data, i32 noundef 0, i32 noundef 3136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %file_dentry.exit.cleanup_crit_edge, label %if.end4

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %file_dentry.exit
  %13 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xattr_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp5.not = icmp eq i8 %16, 5
  br i1 %cmp5.not, label %if.end8.i.i.i, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8.i.i.i:                                    ; preds = %if.end4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call2, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.ima_write_template_field_data.exit_crit_edge, label %if.end2.i

if.end8.i.i.i.ima_write_template_field_data.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_write_template_field_data.exit

if.end2.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call ptr @memcpy(ptr %call9.i.i.i, ptr %14, i32 %call2)
  %18 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2, ptr %len.i, align 4
  br label %ima_write_template_field_data.exit

ima_write_template_field_data.exit:               ; preds = %if.end2.i, %if.end8.i.i.i.ima_write_template_field_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -12, %if.end8.i.i.i.ima_write_template_field_data.exit_crit_edge ]
  %20 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xattr_data, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ima_write_template_field_data.exit, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %21, %ima_write_template_field_data.exit ], [ %14, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i, %ima_write_template_field_data.exit ], [ 0, %if.end4.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %file_dentry.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %file_dentry.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventbuf_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %buf_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 8
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end8.i.i.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8.i.i.i:                                    ; preds = %lor.lhs.false
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.return_crit_edge, label %if.end2.i

if.end8.i.i.i.return_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %call9.i.i.i, ptr %1, i32 %3)
  %5 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %len.i, align 4
  br label %return

return:                                           ; preds = %if.end2.i, %if.end8.i.i.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.end2.i ], [ -12, %if.end8.i.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventmodsig_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca ptr, align 4
  %data_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_len) #9
  %1 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data_len, align 4, !annotation !32
  %modsig = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 5
  %2 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modsig, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ima_get_raw_modsig(ptr noundef nonnull %3, ptr noundef nonnull %data, ptr noundef nonnull %data_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.end2.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %call9.i.i.i, ptr %5, i32 %7)
  %9 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end2.i ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_raw_modsig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodeuid_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ima_eventinodedac_init_common.exit_crit_edge, label %if.end.i

entry.ima_eventinodedac_init_common.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventinodedac_init_common.exit

if.end.i:                                         ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %10 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.ima_eventinodedac_init_common.exit_crit_edge, label %if.end2.i.i

if.end.i.ima_eventinodedac_init_common.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventinodedac_init_common.exit

if.end2.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not.i = icmp eq i8 %10, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %call1.i.i) #9
  %spec.select.i = select i1 %tobool9.not.i, i32 %call1.i.i, i32 %12
  %13 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %call7.i.i.i.i, align 8
  %14 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %len.i.i, align 4
  br label %ima_eventinodedac_init_common.exit

ima_eventinodedac_init_common.exit:               ; preds = %if.end2.i.i, %if.end.i.ima_eventinodedac_init_common.exit_crit_edge, %entry.ima_eventinodedac_init_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ima_eventinodedac_init_common.exit_crit_edge ], [ 0, %if.end2.i.i ], [ -12, %if.end.i.ima_eventinodedac_init_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodegid_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file.i = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ima_eventinodedac_init_common.exit_crit_edge, label %if.end.i

entry.ima_eventinodedac_init_common.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventinodedac_init_common.exit

if.end.i:                                         ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i18.i = load i32, ptr %i_gid.i.i, align 8
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i18.i, 0
  %call1.i19.i = tail call i32 @from_kgid(ptr noundef %7, [1 x i32] %9) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %10 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.ima_eventinodedac_init_common.exit_crit_edge, label %if.end2.i.i

if.end.i.ima_eventinodedac_init_common.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ima_eventinodedac_init_common.exit

if.end2.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not.i = icmp eq i8 %10, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %call1.i19.i) #9
  %spec.select.i = select i1 %tobool9.not.i, i32 %call1.i19.i, i32 %12
  %13 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %call7.i.i.i.i, align 8
  %14 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %field_data, align 4
  %len.i.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %len.i.i, align 4
  br label %ima_eventinodedac_init_common.exit

ima_eventinodedac_init_common.exit:               ; preds = %if.end2.i.i, %if.end.i.ima_eventinodedac_init_common.exit_crit_edge, %entry.ima_eventinodedac_init_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ima_eventinodedac_init_common.exit_crit_edge ], [ 0, %if.end2.i.i ], [ -12, %if.end.i.ima_eventinodedac_init_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodemode_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %6 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %8 = tail call i16 @llvm.bswap.i16(i16 %5)
  %spec.select = select i1 %tobool2.not, i16 %5, i16 %8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.select, ptr %call7.i.i.i, align 8
  %10 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end2.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodexattrnames_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ima_eventinodexattrs_init_common(ptr noundef %event_data, ptr noundef %field_data, i8 noundef zeroext 110)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ima_eventinodexattrs_init_common(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i30 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i30, label %if.end.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !35

if.end.file_dentry.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %11(ptr noundef %3, ptr noundef %7) #9
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.end.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %3, %if.end.file_dentry.exit_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %12 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2 = icmp ne i8 %12, 0
  %call3 = tail call i32 @evm_read_protected_xattrs(ptr noundef %retval.0.i.i, ptr noundef null, i32 noundef 0, i8 noundef zeroext %type, i1 noundef zeroext %tobool2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %file_dentry.exit.cleanup_crit_edge, label %if.end8.i

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %file_dentry.exit
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3264) #14
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  %dentry.i31 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i31, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i.i32 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end9.file_dentry.exit40_crit_edge, label %if.then.i.i38, !prof !35

if.end9.file_dentry.exit40_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_dentry.exit40

if.then.i.i38:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i34 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode.i.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i.i34, align 8
  %d_op.i.i35 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %d_op.i.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_op.i.i35, align 8
  %d_real.i.i36 = getelementptr inbounds %struct.dentry_operations, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %d_real.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_real.i.i36, align 16
  %call.i.i37 = tail call ptr %24(ptr noundef %16, ptr noundef %20) #9
  br label %file_dentry.exit40

file_dentry.exit40:                               ; preds = %if.then.i.i38, %if.end9.file_dentry.exit40_crit_edge
  %retval.0.i.i39 = phi ptr [ %call.i.i37, %if.then.i.i38 ], [ %16, %if.end9.file_dentry.exit40_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %25 = load i8, ptr @ima_canonical_fmt, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12 = icmp ne i8 %25, 0
  %call13 = tail call i32 @evm_read_protected_xattrs(ptr noundef %retval.0.i.i39, ptr noundef nonnull %call9.i, i32 noundef %call3, i8 noundef zeroext %type, i1 noundef zeroext %tobool12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %file_dentry.exit40.out_crit_edge, label %if.end8.i.i.i

file_dentry.exit40.out_crit_edge:                 ; preds = %file_dentry.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.i.i.i:                                    ; preds = %file_dentry.exit40
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call13, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.out_crit_edge, label %if.end2.i

if.end8.i.i.i.out_crit_edge:                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call ptr @memcpy(ptr %call9.i.i.i, ptr %call9.i, i32 %call13)
  %27 = ptrtoint ptr %field_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i, ptr %field_data, align 4
  %len.i = getelementptr inbounds %struct.ima_field_data, ptr %field_data, i32 0, i32 1
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call13, ptr %len.i, align 4
  br label %out

out:                                              ; preds = %if.end2.i, %if.end8.i.i.i.out_crit_edge, %file_dentry.exit40.out_crit_edge
  %rc.0 = phi i32 [ 0, %file_dentry.exit40.out_crit_edge ], [ 0, %if.end2.i ], [ -12, %if.end8.i.i.i.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %file_dentry.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %file_dentry.exit.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodexattrlengths_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ima_eventinodexattrs_init_common(ptr noundef %event_data, ptr noundef %field_data, i8 noundef zeroext 108)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_eventinodexattrvalues_init(ptr nocapture noundef readonly %event_data, ptr nocapture noundef writeonly %field_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ima_eventinodexattrs_init_common(ptr noundef %event_data, ptr noundef %field_data, i8 noundef zeroext 118)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_print_digest(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_putc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_read_protected_xattrs(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_template_lib.c", i32 247, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ima_parse_buf._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ima_parse_buf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_template_lib.c", i32 253, i32 3}
!8 = !{ptr @ima_parse_buf._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ima_parse_buf._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_template_lib.c", i32 357, i32 31}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_template_lib.c", i32 358, i32 9}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/ima/ima_template_lib.c", i32 543, i32 5}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_template_lib.c", i32 78, i32 18}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/integrity/ima/ima_template_lib.c", i32 96, i32 18}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_template_lib.c", i32 114, i32 19}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"auto-init"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2154993673, i64 2154994179, i64 2154993710, i64 2154993766, i64 2154993800, i64 2154993824, i64 2154993865, i64 2154993886, i64 2154993914, i64 2154993948}
!35 = !{!"branch_weights", i32 2000, i32 1}

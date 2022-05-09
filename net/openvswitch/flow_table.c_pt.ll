; ModuleID = '/llk/IR_all_yes/net/openvswitch/flow_table.c_pt.bc'
source_filename = "../net/openvswitch/flow_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.26 }
%union.anon.26 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.sw_flow_mask = type { i32, %struct.callback_head, %struct.sw_flow_key_range, %struct.sw_flow_key }
%struct.callback_head = type { ptr, ptr }
%struct.sw_flow_key_range = type { i16, i16 }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.2, i8, i8, i32, i32, %struct.anon.3, i8, i8, %union.anon.4, i16, %struct.anon.6, %union.anon.7, %struct.anon.19 }
%struct.ip_tunnel_key = type { i64, %union.anon, i16, i8, i8, i32, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.anon.2 = type <{ i32, i32, i16 }>
%struct.anon.3 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i8, i8, i8, i8 }
%struct.anon.6 = type { i16, i16, i16 }
%union.anon.7 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.anon.14, i32, %union.anon.15 }
%struct.anon.14 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.19 = type { %struct.anon.20, i32, %struct.ovs_key_ct_labels }
%struct.anon.20 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.21 }
%union.anon.21 = type { [4 x i32] }
%struct.sw_flow = type { %struct.callback_head, %struct.anon.22, %struct.anon.22, i32, %struct.sw_flow_key, %struct.sw_flow_id, %struct.cpumask, ptr, ptr, [0 x ptr] }
%struct.anon.22 = type { [2 x %struct.hlist_node], i32 }
%struct.sw_flow_id = type { i32, %union.anon.23 }
%union.anon.23 = type { [4 x i32] }
%struct.sw_flow_stats = type { i64, i64, i32, %struct.spinlock, i16 }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.mask_cache = type { %struct.callback_head, i32, ptr }
%struct.mask_array = type { %struct.callback_head, i32, i32, ptr, ptr, [0 x ptr] }
%struct.hlist_head = type { ptr }
%struct.table_instance = type { ptr, i32, %struct.callback_head, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mask_cache_entry = type { i32, i32 }
%struct.mask_array_stats = type { %struct.u64_stats_sync, [0 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sw_flow_match = type { ptr, %struct.sw_flow_key_range, ptr }
%struct.mask_count = type { i32, i64 }

@flow_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@flow_stats_cache = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ovs_flow_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@ovs_flow_tbl_masks_cache_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/openvswitch/flow_table.c\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ovs_flow_tbl_dump_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ovs_flow_tbl_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ovs_flow_tbl_flush.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_stats.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_stats.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ovs_flow_tbl_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_exact.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_exact.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_exact.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_ufid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_lookup_ufid.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_num_masks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_masks_cache_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_tbl_remove.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_masks_rebalance.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_masks_rebalance.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ovs_flow_masks_rebalance.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_flow\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_flow_stats\00", [18 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tbl_mask_array_del_mask.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_del_mask.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_realloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_realloc.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_lookup.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@masked_flow_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_mask_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_mask_find.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_add_mask.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_add_mask.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tbl_mask_array_add_mask.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_key_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_table_copy_flows.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_table_copy_flows.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_ufid_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"flow_cache\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 45, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 90, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 393, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 539, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 631, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1198, i32 33 }
@___asan_gen_.52 = private constant [32 x i8] c"../net/openvswitch/flow_table.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1206, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 271, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @flow_cache, ptr @ovs_flow_alloc.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.21], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_mask_key(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i1 noundef zeroext %full, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %full, label %entry.for.body.preheader_crit_edge, label %cond.end8

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.preheader

cond.end8:                                        ; preds = %entry
  %range = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %range, align 4
  %conv = zext i16 %1 to i32
  %end.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end.i, align 2
  %sub.i = sub i16 %3, %1
  %conv7 = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp23.not = icmp eq i16 %3, %1
  br i1 %cmp23.not, label %cond.end8.for.end_crit_edge, label %cond.end8.for.body.preheader_crit_edge

cond.end8.for.body.preheader_crit_edge:           ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.preheader

cond.end8.for.end_crit_edge:                      ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %cond.end8.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  %cond932 = phi i32 [ %conv7, %cond.end8.for.body.preheader_crit_edge ], [ 464, %entry.for.body.preheader_crit_edge ]
  %cond2231 = phi i32 [ %conv, %cond.end8.for.body.preheader_crit_edge ], [ 0, %entry.for.body.preheader_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %dst, i32 %cond2231
  %add.ptr10 = getelementptr i8, ptr %src, i32 %cond2231
  %key = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %key, i32 %cond2231
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %d.026 = phi ptr [ %incdec.ptr14, %for.body.for.body_crit_edge ], [ %add.ptr11, %for.body.preheader ]
  %s.025 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr10, %for.body.preheader ]
  %m.024 = phi ptr [ %incdec.ptr13, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %s.025, i32 1
  %4 = ptrtoint ptr %s.025 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s.025, align 4
  %incdec.ptr13 = getelementptr i32, ptr %m.024, i32 1
  %6 = ptrtoint ptr %m.024 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m.024, align 4
  %and = and i32 %7, %5
  %incdec.ptr14 = getelementptr i32, ptr %d.026, i32 1
  %8 = ptrtoint ptr %d.026 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %d.026, align 4
  %add = add nuw nsw i32 %i.027, 4
  %cmp = icmp ult i32 %add, %cond932
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end8.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_alloc() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @flow_cache, align 4
  %call.i31 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i31, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_last_writer = getelementptr inbounds %struct.sw_flow, ptr %call.i31, i32 0, i32 3
  %1 = ptrtoint ptr %stats_last_writer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stats_last_writer, align 8
  %2 = load ptr, ptr @flow_stats_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #14
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %err, label %do.body

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sw_flow_stats, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ovs_flow_alloc.__key, i16 noundef signext 3) #14
  %stats15 = getelementptr inbounds %struct.sw_flow, ptr %call.i31, i32 0, i32 9
  %3 = ptrtoint ptr %stats15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call.i, ptr %stats15, align 8
  %cpu_used_mask = getelementptr inbounds %struct.sw_flow, ptr %call.i31, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %do.body.cpumask_set_cpu.exit_crit_edge

do.body.cpumask_set_cpu.exit_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %do.body
  %.b1.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !105

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %do.body.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cpu_used_mask) #14
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load ptr, ptr @flow_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef nonnull %call.i31) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %cpumask_set_cpu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i31, %cpumask_set_cpu.exit ], [ inttoptr (i32 -12 to ptr), %err ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ovs_flow_tbl_count(ptr nocapture noundef readonly %table) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_free(ptr noundef %flow, i1 noundef zeroext %deferred) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %flow, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end:                                           ; preds = %entry
  br i1 %deferred, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef nonnull %flow, ptr noundef nonnull @rcu_free_flow_callback) #14
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @flow_free(ptr noundef nonnull %flow)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_free_flow_callback(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @flow_free(ptr noundef %rcu)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flow_free(ptr noundef %flow) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %4) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sf_acts = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 8
  %5 = ptrtoint ptr %sf_acts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sf_acts, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ovs_nla_free_flow_actions(ptr noundef nonnull %6) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %cpu_used_mask = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cpu.023 = phi i32 [ 0, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sw_flow, ptr %flow, i32 0, i32 9, i32 %cpu.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = load ptr, ptr @flow_stats_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %9) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %call10 = tail call i32 @cpumask_next(i32 noundef %cpu.023, ptr noundef %cpu_used_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %12 = load ptr, ptr @flow_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %flow) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_masks_cache_resize(ptr noundef %table, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_cache = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mask_cache, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @ovs_flow_tbl_masks_cache_resize.__warned, align 1
  br i1 %.b71, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_masks_cache_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 393, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %cache_size = getelementptr inbounds %struct.mask_cache, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp = icmp eq i32 %3, %size
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %if.end12.if.end.i_crit_edge, label %is_power_of_2.exit.thread

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

is_power_of_2.exit.thread:                        ; preds = %if.end12
  %4 = tail call i32 @llvm.ctpop.i32(i32 %size) #14, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp ult i32 %4, 2
  %mul76 = shl i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %mul76)
  %cmp1777 = icmp ult i32 %mul76, 32769
  %5 = and i1 %cmp1777, %cmp1.i
  br i1 %5, label %is_power_of_2.exit.thread.if.end.i_crit_edge, label %is_power_of_2.exit.thread.cleanup_crit_edge

is_power_of_2.exit.thread.cleanup_crit_edge:      ; preds = %is_power_of_2.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_power_of_2.exit.thread.if.end.i_crit_edge:     ; preds = %is_power_of_2.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %is_power_of_2.exit.thread.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %cache_size.i = getelementptr inbounds %struct.mask_cache, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %cache_size.i, align 8
  br i1 %cmp.not.i, label %if.end4.i.do.body24_crit_edge, label %if.then7.i

if.end4.i.do.body24_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

if.then7.i:                                       ; preds = %if.end4.i
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 8) #14
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %retval.0.i.i = select i1 %9, i32 -1, i32 %10
  %call10.i = tail call noalias ptr @__alloc_percpu(i32 noundef %retval.0.i.i, i32 noundef 4) #19
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then7.i.do.body24_crit_edge

if.then7.i.do.body24_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

do.body24:                                        ; preds = %if.then7.i.do.body24_crit_edge, %if.end4.i.do.body24_crit_edge
  %cache.0.i = phi ptr [ %call10.i, %if.then7.i.do.body24_crit_edge ], [ null, %if.end4.i.do.body24_crit_edge ]
  %mask_cache.i = getelementptr inbounds %struct.mask_cache, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %mask_cache.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cache.0.i, ptr %mask_cache.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  %12 = ptrtoint ptr %mask_cache to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i.i, ptr %mask_cache, align 4
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @mask_cache_rcu_cb) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %if.then12.i, %if.end.i.cleanup_crit_edge, %is_power_of_2.exit.thread.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body24 ], [ 0, %do.end9.cleanup_crit_edge ], [ -22, %is_power_of_2.exit.thread.cleanup_crit_edge ], [ -12, %if.then12.i ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mask_cache_rcu_cb(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_cache.i = getelementptr inbounds %struct.mask_cache, ptr %rcu, i32 0, i32 2
  %0 = ptrtoint ptr %mask_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mask_cache.i, align 4
  tail call void @free_percpu(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %rcu) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_init(ptr noundef %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end4.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  %cache_size.i = getelementptr inbounds %struct.mask_cache, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %cache_size.i, align 8
  %call10.i = tail call noalias ptr @__alloc_percpu(i32 noundef 2048, i32 noundef 4) #19
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end

if.then12.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %mask_cache.i = getelementptr inbounds %struct.mask_cache, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %mask_cache.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10.i, ptr %mask_cache.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i184 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 216) #18
  %tobool.not.i185 = icmp eq ptr %call7.i.i.i184, null
  br i1 %tobool.not.i185, label %if.end.free_mask_cache_crit_edge, label %if.end.i

if.end.free_mask_cache_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_cache

if.end.i:                                         ; preds = %if.end
  %add.ptr4.i = getelementptr i8, ptr %call7.i.i.i184, i32 88
  %masks_usage_zero_cntr.i = getelementptr inbounds %struct.mask_array, ptr %call7.i.i.i184, i32 0, i32 4
  %4 = ptrtoint ptr %masks_usage_zero_cntr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr4.i, ptr %masks_usage_zero_cntr.i, align 4
  %call7.i = tail call noalias ptr @__alloc_percpu(i32 noundef 160, i32 noundef 8) #19
  %masks_usage_stats.i = getelementptr inbounds %struct.mask_array, ptr %call7.i.i.i184, i32 0, i32 3
  %5 = ptrtoint ptr %masks_usage_stats.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %masks_usage_stats.i, align 8
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end.i.free_mask_cache.sink.split_crit_edge, label %if.end4

if.end.i.free_mask_cache.sink.split_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_cache.sink.split

if.end4:                                          ; preds = %if.end.i
  %count.i = getelementptr inbounds %struct.mask_array, ptr %call7.i.i.i184, i32 0, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %count.i, align 8
  %max.i = getelementptr inbounds %struct.mask_array, ptr %call7.i.i.i184, i32 0, i32 2
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %max.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not.i187 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i187, label %if.end4.free_mask_array_crit_edge, label %if.end.i188

if.end4.free_mask_array_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_array

if.end.i188:                                      ; preds = %if.end4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3264, i32 noundef -1) #19
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i, ptr %call7.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i188.free_mask_array.sink.split_crit_edge, label %if.end.i188.for.body.i_crit_edge

if.end.i188.for.body.i_crit_edge:                 ; preds = %if.end.i188
  br label %for.body.i

if.end.i188.free_mask_array.sink.split_crit_edge: ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_array.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i188.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i188.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %11, i32 %i.023.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %table_instance_alloc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

table_instance_alloc.exit:                        ; preds = %for.body.i
  %n_buckets.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1024, ptr %n_buckets.i, align 4
  %node_ver.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %node_ver.i, align 8
  %hash_seed.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %hash_seed.i, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i190 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not.i191 = icmp eq ptr %call7.i.i190, null
  br i1 %tobool.not.i191, label %table_instance_alloc.exit.free_ti_crit_edge, label %if.end.i192

table_instance_alloc.exit.free_ti_crit_edge:      ; preds = %table_instance_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_ti

if.end.i192:                                      ; preds = %table_instance_alloc.exit
  %call.i.i.i193 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3264, i32 noundef -1) #19
  %16 = ptrtoint ptr %call7.i.i190 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i.i193, ptr %call7.i.i190, align 8
  %tobool3.not.i194 = icmp eq ptr %call.i.i.i193, null
  br i1 %tobool3.not.i194, label %if.then4.i196, label %if.end.i192.for.body.i201_crit_edge

if.end.i192.for.body.i201_crit_edge:              ; preds = %if.end.i192
  br label %for.body.i201

if.then4.i196:                                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i190) #14
  br label %free_ti

for.body.i201:                                    ; preds = %for.body.i201.for.body.i201_crit_edge, %if.end.i192.for.body.i201_crit_edge
  %i.023.i197 = phi i32 [ %inc.i199, %for.body.i201.for.body.i201_crit_edge ], [ 0, %if.end.i192.for.body.i201_crit_edge ]
  %17 = ptrtoint ptr %call7.i.i190 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i190, align 8
  %arrayidx.i198 = getelementptr %struct.hlist_head, ptr %18, i32 %i.023.i197
  %19 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i198, align 4
  %inc.i199 = add nuw nsw i32 %i.023.i197, 1
  %exitcond.not.i200 = icmp eq i32 %inc.i199, 1024
  br i1 %exitcond.not.i200, label %table_instance_alloc.exit207, label %for.body.i201.for.body.i201_crit_edge

for.body.i201.for.body.i201_crit_edge:            ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i201

table_instance_alloc.exit207:                     ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #16
  %n_buckets.i202 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i190, i32 0, i32 1
  %20 = ptrtoint ptr %n_buckets.i202 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %n_buckets.i202, align 4
  %node_ver.i203 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i190, i32 0, i32 3
  %21 = ptrtoint ptr %node_ver.i203 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %node_ver.i203, align 8
  %hash_seed.i204 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i190, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %hash_seed.i204, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %22 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %table, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  %ufid_ti76 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 1
  %23 = ptrtoint ptr %ufid_ti76 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i190, ptr %ufid_ti76, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %mask_array116 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %24 = ptrtoint ptr %mask_array116 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i.i184, ptr %mask_array116, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %mask_cache156 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 2
  %25 = ptrtoint ptr %mask_cache156 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i.i, ptr %mask_cache156, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %last_rehash = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 4
  %27 = ptrtoint ptr %last_rehash to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_rehash, align 4
  %count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %28 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count, align 4
  %ufid_count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 6
  %29 = ptrtoint ptr %ufid_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ufid_count, align 4
  br label %cleanup

free_ti:                                          ; preds = %if.then4.i196, %table_instance_alloc.exit.free_ti_crit_edge
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  tail call void @kvfree(ptr noundef %31) #14
  br label %free_mask_array.sink.split

free_mask_array.sink.split:                       ; preds = %free_ti, %if.end.i188.free_mask_array.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %free_mask_array

free_mask_array:                                  ; preds = %free_mask_array.sink.split, %if.end4.free_mask_array_crit_edge
  %32 = ptrtoint ptr %masks_usage_stats.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %masks_usage_stats.i, align 8
  tail call void @free_percpu(ptr noundef %33) #14
  br label %free_mask_cache.sink.split

free_mask_cache.sink.split:                       ; preds = %free_mask_array, %if.end.i.free_mask_cache.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i184) #14
  br label %free_mask_cache

free_mask_cache:                                  ; preds = %free_mask_cache.sink.split, %if.end.free_mask_cache_crit_edge
  %34 = ptrtoint ptr %mask_cache.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask_cache.i, align 4
  tail call void @free_percpu(ptr noundef %35) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_mask_cache, %table_instance_alloc.exit207, %if.then12.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %table_instance_alloc.exit207 ], [ -12, %free_mask_cache ], [ -12, %if.then12.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @table_instance_flow_flush(ptr noundef %table, ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %ufid_ti) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %n_buckets = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp71.not = icmp eq i32 %1, 0
  br i1 %cmp71.not, label %entry.for.end22_crit_edge, label %for.body.lr.ph

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %node_ver = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.072
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %cond.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end:                                         ; preds = %for.body
  %6 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_ver, align 4
  %.neg68 = mul i32 %7, -8
  %idx.neg = add i32 %.neg68, -8
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.neg
  %tobool3.not69 = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not69, label %cond.end.for.end_crit_edge, label %cond.end.ovs_flow_free.exit_crit_edge

cond.end.ovs_flow_free.exit_crit_edge:            ; preds = %cond.end
  br label %ovs_flow_free.exit

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

ovs_flow_free.exit:                               ; preds = %cond.end19.ovs_flow_free.exit_crit_edge, %cond.end.ovs_flow_free.exit_crit_edge
  %flow.070 = phi ptr [ %add.ptr17, %cond.end19.ovs_flow_free.exit_crit_edge ], [ %add.ptr, %cond.end.ovs_flow_free.exit_crit_edge ]
  %flow_table = getelementptr inbounds %struct.sw_flow, ptr %flow.070, i32 0, i32 1
  %8 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_ver, align 4
  %arrayidx5 = getelementptr [2 x %struct.hlist_node], ptr %flow_table, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 8
  tail call fastcc void @table_instance_flow_free(ptr noundef %table, ptr noundef %ti, ptr noundef %ufid_ti, ptr noundef nonnull %flow.070)
  tail call void @call_rcu(ptr noundef nonnull %flow.070, ptr noundef nonnull @rcu_free_flow_callback) #14
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %ovs_flow_free.exit.for.end_crit_edge, label %cond.end19

ovs_flow_free.exit.for.end_crit_edge:             ; preds = %ovs_flow_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end19:                                       ; preds = %ovs_flow_free.exit
  %12 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_ver, align 4
  %.neg = mul i32 %13, -8
  %idx.neg16 = add i32 %.neg, -8
  %add.ptr17 = getelementptr i8, ptr %11, i32 %idx.neg16
  %tobool3.not = icmp eq ptr %add.ptr17, null
  br i1 %tobool3.not, label %cond.end19.for.end_crit_edge, label %cond.end19.ovs_flow_free.exit_crit_edge

cond.end19.ovs_flow_free.exit_crit_edge:          ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_free.exit

cond.end19.for.end_crit_edge:                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cond.end19.for.end_crit_edge, %ovs_flow_free.exit.for.end_crit_edge, %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw i32 %i.072, 1
  %14 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_buckets, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end22_crit_edge

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %entry.for.end22_crit_edge
  %count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23.not = icmp eq i32 %17, 0
  br i1 %cmp23.not, label %lor.rhs, label %for.end22.do.end_crit_edge

for.end22.do.end_crit_edge:                       ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs:                                          ; preds = %for.end22
  %ufid_count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 6
  %18 = ptrtoint ptr %ufid_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ufid_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp24.not = icmp eq i32 %19, 0
  br i1 %cmp24.not, label %lor.rhs.if.end49_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !105

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs.if.end49_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %for.end22.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 499, i32 noundef 9, ptr noundef null) #14
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %count, align 4
  %ufid_count48 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 6
  %21 = ptrtoint ptr %ufid_count48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ufid_count48, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end, %lor.rhs.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @table_instance_flow_free(ptr noundef %table, ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %ufid_ti, ptr noundef %flow) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_table = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 1
  %node_ver = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  %0 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_ver, align 4
  %arrayidx = getelementptr [2 x %struct.hlist_node], ptr %flow_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %pprev2.i.i = getelementptr [2 x %struct.hlist_node], ptr %flow_table, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %count, align 4
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %hlist_del_rcu.exit.if.end_crit_edge, label %if.then

hlist_del_rcu.exit.if.end_crit_edge:              ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %hlist_del_rcu.exit
  %ufid_table = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 2
  %node_ver2 = getelementptr inbounds %struct.table_instance, ptr %ufid_ti, i32 0, i32 3
  %13 = ptrtoint ptr %node_ver2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_ver2, align 4
  %arrayidx3 = getelementptr [2 x %struct.hlist_node], ptr %ufid_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3, align 4
  %pprev2.i.i10 = getelementptr [2 x %struct.hlist_node], ptr %ufid_table, i32 0, i32 %14, i32 1
  %17 = ptrtoint ptr %pprev2.i.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev2.i.i10, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i11 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i11, label %if.then.hlist_del_rcu.exit14_crit_edge, label %do.body13.i.i13

if.then.hlist_del_rcu.exit14_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit14

do.body13.i.i13:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i12 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i12, align 4
  br label %hlist_del_rcu.exit14

hlist_del_rcu.exit14:                             ; preds = %do.body13.i.i13, %if.then.hlist_del_rcu.exit14_crit_edge
  %21 = ptrtoint ptr %pprev2.i.i10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i10, align 4
  %ufid_count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 6
  %22 = ptrtoint ptr %ufid_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ufid_count, align 4
  %dec4 = add i32 %23, -1
  store i32 %dec4, ptr %ufid_count, align 4
  br label %if.end

if.end:                                           ; preds = %hlist_del_rcu.exit14, %hlist_del_rcu.exit.if.end_crit_edge
  %mask = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 7
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mask, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.flow_mask_remove.exit_crit_edge, label %if.then.i

if.end.flow_mask_remove.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_mask_remove.exit

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !112

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 339, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not.i = icmp eq i32 %27, 0
  br i1 %tobool24.not.i, label %do.body34.i, label %do.end42.i, !prof !112

do.body34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/flow_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #14, !srcloc !113
  unreachable

do.end42.i:                                       ; preds = %if.end.i
  %dec.i = add i32 %27, -1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec.i, ptr %25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool45.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %do.end42.i.flow_mask_remove.exit_crit_edge

do.end42.i.flow_mask_remove.exit_crit_edge:       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_mask_remove.exit

if.then46.i:                                      ; preds = %do.end42.i
  %call.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i15, label %land.lhs.true.i.i, label %if.then46.i.do.end.i.i_crit_edge

if.then46.i.do.end.i.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then46.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b143.i.i = load i1, ptr @tbl_mask_array_del_mask.__warned, align 1
  br i1 %.b143.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_del_mask.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 303, ptr noundef nonnull @.str.4) #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then46.i.do.end.i.i_crit_edge
  %mask_array.i.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %29 = ptrtoint ptr %mask_array.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mask_array.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.mask_array, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp146.i.i = icmp sgt i32 %32, 0
  br i1 %cmp146.i.i, label %do.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i.do.body25.i.i_crit_edge

do.end.i.i.do.body25.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25.i.i

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %do.end20.i.i
  %inc.i.i = add nuw nsw i32 %i.0147.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %32
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body25.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.do.body25.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %i.0147.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %call10.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true12.i.i, label %for.body.i.i.do.end20.i.i_crit_edge

for.body.i.i.do.end20.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i.i

land.lhs.true12.i.i:                              ; preds = %for.body.i.i
  %call13.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true12.i.i.do.end20.i.i_crit_edge, label %land.lhs.true15.i.i

land.lhs.true12.i.i.do.end20.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i.i

land.lhs.true15.i.i:                              ; preds = %land.lhs.true12.i.i
  %.b141142.i.i = load i1, ptr @tbl_mask_array_del_mask.__warned.18, align 1
  br i1 %.b141142.i.i, label %land.lhs.true15.i.i.do.end20.i.i_crit_edge, label %if.then17.i.i

land.lhs.true15.i.i.do.end20.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_del_mask.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @.str.4) #14
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true15.i.i.do.end20.i.i_crit_edge, %land.lhs.true12.i.i.do.end20.i.i_crit_edge, %for.body.i.i.do.end20.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.mask_array, ptr %30, i32 0, i32 5, i32 %i.0147.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp22.i.i = icmp eq ptr %34, %25
  br i1 %cmp22.i.i, label %if.end106.i.i, label %for.cond.i.i

do.body25.i.i:                                    ; preds = %for.cond.i.i.do.body25.i.i_crit_edge, %do.end.i.i.do.body25.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/flow_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 312, 0\0A.popsection", ""() #14, !srcloc !114
  unreachable

if.end106.i.i:                                    ; preds = %do.end20.i.i
  %sub.i.i = add nsw i32 %32, -1
  %35 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %sub.i.i, ptr %count.i.i, align 4
  %arrayidx44.i.i = getelementptr %struct.mask_array, ptr %30, i32 0, i32 5, i32 %sub.i.i
  %36 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx44.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !115
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %37, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr null, ptr %arrayidx44.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %25, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  %max.i.i = getelementptr inbounds %struct.mask_array, ptr %30, i32 0, i32 2
  %40 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %41)
  %cmp109.i.i = icmp slt i32 %41, 32
  %div.i.i = sdiv i32 %41, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %div.i.i)
  %cmp112.not.i.i = icmp sgt i32 %32, %div.i.i
  %or.cond.i.i = select i1 %cmp109.i.i, i1 true, i1 %cmp112.not.i.i
  br i1 %or.cond.i.i, label %if.else117.i.i, label %if.then113.i.i

if.then113.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %div115144145.i.i = lshr i32 %41, 1
  %call116.i.i = tail call fastcc i32 @tbl_mask_array_realloc(ptr noundef %table, i32 noundef %div115144145.i.i) #14
  br label %flow_mask_remove.exit

if.else117.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @tbl_mask_array_reset_counters(ptr noundef %30) #14
  br label %flow_mask_remove.exit

flow_mask_remove.exit:                            ; preds = %if.else117.i.i, %if.then113.i.i, %do.end42.i.flow_mask_remove.exit_crit_edge, %if.end.flow_mask_remove.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_tbl_destroy(ptr noundef %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %table, align 4
  %ufid_ti7 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 1
  %2 = ptrtoint ptr %ufid_ti7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ufid_ti7, align 4
  %mask_cache = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 2
  %4 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mask_cache, align 4
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mask_array, align 4
  tail call void @call_rcu(ptr noundef %5, ptr noundef nonnull @mask_cache_rcu_cb) #14
  tail call void @call_rcu(ptr noundef %7, ptr noundef nonnull @mask_array_rcu_cb) #14
  %rcu.i = getelementptr inbounds %struct.table_instance, ptr %1, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  %rcu1.i = getelementptr inbounds %struct.table_instance, ptr %3, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu1.i, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mask_array_rcu_cb(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %masks_usage_stats.i = getelementptr inbounds %struct.mask_array, ptr %rcu, i32 0, i32 3
  %0 = ptrtoint ptr %masks_usage_stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks_usage_stats.i, align 4
  tail call void @free_percpu(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %rcu) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_tbl_dump_next(ptr nocapture noundef readonly %ti, ptr nocapture noundef %bucket, ptr nocapture noundef %last) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %node_ver = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  %0 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_ver, align 4
  %n_buckets = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 1
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket, align 4
  %4 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_buckets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp62 = icmp ult i32 %3, %5
  br i1 %cmp62, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %.neg53 = mul i32 %1, -8
  %idx.neg = add i32 %.neg53, -8
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %19, %for.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ti, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %8, i32 %6
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %while.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @ovs_flow_tbl_dump_next.__warned, align 1
  br i1 %.b54, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_dump_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.3) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.body.do.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 %idx.neg
  %tobool12.not5963 = icmp eq ptr %add.ptr, null
  %tobool12.not59 = select i1 %tobool10.not, i1 true, i1 %tobool12.not5963
  br i1 %tobool12.not59, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %11 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last, align 4
  br label %for.body

for.body:                                         ; preds = %if.then14.for.body_crit_edge, %for.body.lr.ph
  %flow.061 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr29, %if.then14.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then14.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.060, i32 %12)
  %exitcond.not = icmp eq i32 %i.060, %12
  br i1 %exitcond.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body
  %inc = add i32 %i.060, 1
  %flow_table = getelementptr inbounds %struct.sw_flow, ptr %flow.061, i32 0, i32 1
  %arrayidx21 = getelementptr [2 x %struct.hlist_node], ptr %flow_table, i32 0, i32 %1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx21, align 8
  %tobool24.not = icmp eq ptr %14, null
  %add.ptr29 = getelementptr i8, ptr %14, i32 %idx.neg
  %tobool12.not67 = icmp eq ptr %add.ptr29, null
  %tobool12.not = select i1 %tobool24.not, i1 true, i1 %tobool12.not67
  br i1 %tobool12.not, label %if.then14.for.end_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %12, 1
  %15 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %last, align 4
  br label %cleanup

for.end:                                          ; preds = %if.then14.for.end_crit_edge, %do.end.for.end_crit_edge
  %16 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bucket, align 4
  %inc33 = add i32 %17, 1
  store i32 %inc33, ptr %bucket, align 4
  %18 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %last, align 4
  %19 = load i32, ptr %bucket, align 4
  %20 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_buckets, align 4
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %for.end.while.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %flow.061, %if.end15 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_flush(ptr noundef %flow_table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3264, i32 noundef -1) #19
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i.i, ptr %call7.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %3, i32 %i.023.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %table_instance_alloc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

table_instance_alloc.exit:                        ; preds = %for.body.i
  %n_buckets.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %n_buckets.i, align 4
  %node_ver.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %node_ver.i, align 8
  %hash_seed.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %hash_seed.i, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not.i122 = icmp eq ptr %call7.i.i121, null
  br i1 %tobool.not.i122, label %table_instance_alloc.exit.err_free_ti_crit_edge, label %if.end.i123

table_instance_alloc.exit.err_free_ti_crit_edge:  ; preds = %table_instance_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ti

if.end.i123:                                      ; preds = %table_instance_alloc.exit
  %call.i.i.i124 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3264, i32 noundef -1) #19
  %8 = ptrtoint ptr %call7.i.i121 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i124, ptr %call7.i.i121, align 8
  %tobool3.not.i125 = icmp eq ptr %call.i.i.i124, null
  br i1 %tobool3.not.i125, label %if.then4.i127, label %if.end.i123.for.body.i132_crit_edge

if.end.i123.for.body.i132_crit_edge:              ; preds = %if.end.i123
  br label %for.body.i132

if.then4.i127:                                    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i121) #14
  br label %err_free_ti

for.body.i132:                                    ; preds = %for.body.i132.for.body.i132_crit_edge, %if.end.i123.for.body.i132_crit_edge
  %i.023.i128 = phi i32 [ %inc.i130, %for.body.i132.for.body.i132_crit_edge ], [ 0, %if.end.i123.for.body.i132_crit_edge ]
  %9 = ptrtoint ptr %call7.i.i121 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i121, align 8
  %arrayidx.i129 = getelementptr %struct.hlist_head, ptr %10, i32 %i.023.i128
  %11 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i129, align 4
  %inc.i130 = add nuw nsw i32 %i.023.i128, 1
  %exitcond.not.i131 = icmp eq i32 %inc.i130, 1024
  br i1 %exitcond.not.i131, label %table_instance_alloc.exit138, label %for.body.i132.for.body.i132_crit_edge

for.body.i132.for.body.i132_crit_edge:            ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i132

table_instance_alloc.exit138:                     ; preds = %for.body.i132
  %n_buckets.i133 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i121, i32 0, i32 1
  %12 = ptrtoint ptr %n_buckets.i133 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %n_buckets.i133, align 4
  %node_ver.i134 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i121, i32 0, i32 3
  %13 = ptrtoint ptr %node_ver.i134 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %node_ver.i134, align 8
  %hash_seed.i135 = getelementptr inbounds %struct.table_instance, ptr %call7.i.i121, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %hash_seed.i135, i32 noundef 4) #14
  %call5 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %table_instance_alloc.exit138.do.end_crit_edge

table_instance_alloc.exit138.do.end_crit_edge:    ; preds = %table_instance_alloc.exit138
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %table_instance_alloc.exit138
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b120 = load i1, ptr @ovs_flow_tbl_flush.__warned, align 1
  br i1 %.b120, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @.str.4) #14
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %table_instance_alloc.exit138.do.end_crit_edge
  %14 = ptrtoint ptr %flow_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flow_table, align 4
  %call14 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end.do.end24_crit_edge

do.end.do.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b118119 = load i1, ptr @ovs_flow_tbl_flush.__warned.5, align 1
  br i1 %.b118119, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_flush.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 632, ptr noundef nonnull @.str.4) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end.do.end24_crit_edge
  %ufid_ti = getelementptr inbounds %struct.flow_table, ptr %flow_table, i32 0, i32 1
  %16 = ptrtoint ptr %ufid_ti to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ufid_ti, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !116
  %18 = ptrtoint ptr %flow_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %flow_table, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !117
  %19 = ptrtoint ptr %ufid_ti to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i121, ptr %ufid_ti, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_rehash = getelementptr inbounds %struct.flow_table, ptr %flow_table, i32 0, i32 4
  %21 = ptrtoint ptr %last_rehash to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_rehash, align 4
  tail call void @table_instance_flow_flush(ptr noundef %flow_table, ptr noundef %15, ptr noundef %17)
  %rcu.i = getelementptr inbounds %struct.table_instance, ptr %15, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  %rcu1.i = getelementptr inbounds %struct.table_instance, ptr %17, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu1.i, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  br label %cleanup

err_free_ti:                                      ; preds = %if.then4.i127, %table_instance_alloc.exit.err_free_ti_crit_edge
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void @kvfree(ptr noundef %23) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_ti, %do.end24, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end24 ], [ -12, %err_free_ti ], [ -12, %if.then4.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_tbl_lookup_stats(ptr noundef %tbl, ptr nocapture noundef readonly %key, i32 noundef %skb_hash, ptr nocapture noundef %n_mask_hit, ptr nocapture noundef %n_cache_hit) local_unnamed_addr #2 align 64 {
entry:
  %mask_index = alloca i32, align 4
  %cache = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_cache = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 2
  %0 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mask_cache, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b138 = load i1, ptr @ovs_flow_tbl_lookup_stats.__warned, align 1
  br i1 %.b138, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 791, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 3
  %2 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mask_array, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end7.do.end24_crit_edge

do.end7.do.end24_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end7
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b134137 = load i1, ptr @ovs_flow_tbl_lookup_stats.__warned.6, align 1
  br i1 %.b134137, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_stats.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 792, ptr noundef nonnull @.str.2) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end7.do.end24_crit_edge
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tbl, align 4
  %call32 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %do.end24.do.end42_crit_edge

do.end24.do.end42_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true34:                                  ; preds = %do.end24
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b135136 = load i1, ptr @ovs_flow_tbl_lookup_stats.__warned.7, align 1
  br i1 %.b135136, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_stats.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 793, ptr noundef nonnull @.str.2) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %do.end24.do.end42_crit_edge
  %6 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %n_mask_hit, align 4
  %7 = ptrtoint ptr %n_cache_hit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %n_cache_hit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skb_hash)
  %tobool44.not = icmp eq i32 %skb_hash, 0
  br i1 %tobool44.not, label %do.end42.if.then47_crit_edge, label %lor.rhs, !prof !112

do.end42.if.then47_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

lor.rhs:                                          ; preds = %do.end42
  %cache_size = getelementptr inbounds %struct.mask_cache, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %lor.rhs.if.then47_crit_edge, label %if.end49, !prof !112

lor.rhs.if.then47_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.then47:                                        ; preds = %lor.rhs.if.then47_crit_edge, %do.end42.if.then47_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask_index) #14
  %10 = ptrtoint ptr %mask_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mask_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache) #14
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cache, align 4
  %call48 = call fastcc ptr @flow_lookup(ptr noundef %5, ptr noundef %3, ptr noundef %key, ptr noundef %n_mask_hit, ptr noundef nonnull %cache, ptr noundef nonnull %mask_index)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_index) #14
  br label %cleanup88

if.end49:                                         ; preds = %lor.rhs
  %recirc_id = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %12 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recirc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool50.not = icmp eq i32 %13, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %add1.i = add i32 %13, -559038733
  %add.i.i = add i32 %add1.i, %skb_hash
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #14
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #14
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #14
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #14
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #14
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #14
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #14
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  %skb_hash.addr.0 = phi i32 [ %sub20.i.i, %if.then51 ], [ %skb_hash, %if.end49.if.end54_crit_edge ]
  %mask_cache59 = getelementptr inbounds %struct.mask_cache, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %mask_cache59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask_cache59, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cache_size, align 4
  %sub = add i32 %25, -1
  %and = and i32 %sub, %skb_hash.addr.0
  %arrayidx64 = getelementptr %struct.mask_cache_entry, ptr %23, i32 %and
  %26 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %skb_hash.addr.0)
  %cmp66 = icmp eq i32 %27, %skb_hash.addr.0
  br i1 %cmp66, label %if.end54.if.then67_crit_edge, label %for.inc

if.end54.if.then67_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.then67:                                        ; preds = %for.inc.2.if.then67_crit_edge, %for.inc.1.if.then67_crit_edge, %for.inc.if.then67_crit_edge, %if.end54.if.then67_crit_edge
  %and.lcssa = phi i32 [ %and, %if.end54.if.then67_crit_edge ], [ %and.1, %for.inc.if.then67_crit_edge ], [ %and.2, %for.inc.1.if.then67_crit_edge ], [ %and.3, %for.inc.2.if.then67_crit_edge ]
  %arrayidx64.lcssa = phi ptr [ %arrayidx64, %if.end54.if.then67_crit_edge ], [ %arrayidx64.1, %for.inc.if.then67_crit_edge ], [ %arrayidx64.2, %for.inc.1.if.then67_crit_edge ], [ %arrayidx64.3, %for.inc.2.if.then67_crit_edge ]
  %mask_index68 = getelementptr %struct.mask_cache_entry, ptr %23, i32 %and.lcssa, i32 1
  %call69 = tail call fastcc ptr @flow_lookup(ptr noundef %5, ptr noundef %3, ptr noundef %key, ptr noundef %n_mask_hit, ptr noundef %n_cache_hit, ptr noundef %mask_index68)
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then71, label %if.then67.cleanup88_crit_edge

if.then67.cleanup88_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %arrayidx64.lcssa to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx64.lcssa, align 4
  br label %cleanup88

for.inc:                                          ; preds = %if.end54
  %shr = lshr i32 %skb_hash.addr.0, 8
  %and.1 = and i32 %sub, %shr
  %arrayidx64.1 = getelementptr %struct.mask_cache_entry, ptr %23, i32 %and.1
  %29 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx64.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %skb_hash.addr.0)
  %cmp66.1 = icmp eq i32 %30, %skb_hash.addr.0
  br i1 %cmp66.1, label %for.inc.if.then67_crit_edge, label %if.end74.1

for.inc.if.then67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.end74.1:                                       ; preds = %for.inc
  %tobool75.not.1 = icmp eq ptr %arrayidx64, null
  br i1 %tobool75.not.1, label %if.end74.1.if.then79.1_crit_edge, label %lor.lhs.false.1

if.end74.1.if.then79.1_crit_edge:                 ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.1

lor.lhs.false.1:                                  ; preds = %if.end74.1
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp78.1 = icmp ult i32 %30, %32
  br i1 %cmp78.1, label %lor.lhs.false.1.if.then79.1_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

lor.lhs.false.1.if.then79.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.1

if.then79.1:                                      ; preds = %lor.lhs.false.1.if.then79.1_crit_edge, %if.end74.1.if.then79.1_crit_edge
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then79.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %ce.1.1 = phi ptr [ %arrayidx64.1, %if.then79.1 ], [ %arrayidx64, %lor.lhs.false.1.for.inc.1_crit_edge ]
  %shr.1 = lshr i32 %skb_hash.addr.0, 16
  %and.2 = and i32 %sub, %shr.1
  %arrayidx64.2 = getelementptr %struct.mask_cache_entry, ptr %23, i32 %and.2
  %33 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx64.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %skb_hash.addr.0)
  %cmp66.2 = icmp eq i32 %34, %skb_hash.addr.0
  br i1 %cmp66.2, label %for.inc.1.if.then67_crit_edge, label %if.end74.2

for.inc.1.if.then67_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.end74.2:                                       ; preds = %for.inc.1
  %tobool75.not.2 = icmp eq ptr %ce.1.1, null
  br i1 %tobool75.not.2, label %if.end74.2.if.then79.2_crit_edge, label %lor.lhs.false.2

if.end74.2.if.then79.2_crit_edge:                 ; preds = %if.end74.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.2

lor.lhs.false.2:                                  ; preds = %if.end74.2
  %35 = ptrtoint ptr %ce.1.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ce.1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp78.2 = icmp ult i32 %34, %36
  br i1 %cmp78.2, label %lor.lhs.false.2.if.then79.2_crit_edge, label %lor.lhs.false.2.for.inc.2_crit_edge

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

lor.lhs.false.2.if.then79.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.2

if.then79.2:                                      ; preds = %lor.lhs.false.2.if.then79.2_crit_edge, %if.end74.2.if.then79.2_crit_edge
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then79.2, %lor.lhs.false.2.for.inc.2_crit_edge
  %ce.1.2 = phi ptr [ %arrayidx64.2, %if.then79.2 ], [ %ce.1.1, %lor.lhs.false.2.for.inc.2_crit_edge ]
  %shr.2 = lshr i32 %skb_hash.addr.0, 24
  %and.3 = and i32 %sub, %shr.2
  %arrayidx64.3 = getelementptr %struct.mask_cache_entry, ptr %23, i32 %and.3
  %37 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx64.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %skb_hash.addr.0)
  %cmp66.3 = icmp eq i32 %38, %skb_hash.addr.0
  br i1 %cmp66.3, label %for.inc.2.if.then67_crit_edge, label %if.end74.3

for.inc.2.if.then67_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.end74.3:                                       ; preds = %for.inc.2
  %tobool75.not.3 = icmp eq ptr %ce.1.2, null
  br i1 %tobool75.not.3, label %if.end74.3.if.then79.3_crit_edge, label %lor.lhs.false.3

if.end74.3.if.then79.3_crit_edge:                 ; preds = %if.end74.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.3

lor.lhs.false.3:                                  ; preds = %if.end74.3
  %39 = ptrtoint ptr %ce.1.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ce.1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp78.3 = icmp ult i32 %38, %40
  br i1 %cmp78.3, label %lor.lhs.false.3.if.then79.3_crit_edge, label %lor.lhs.false.3.for.inc.3_crit_edge

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

lor.lhs.false.3.if.then79.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79.3

if.then79.3:                                      ; preds = %lor.lhs.false.3.if.then79.3_crit_edge, %if.end74.3.if.then79.3_crit_edge
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then79.3, %lor.lhs.false.3.for.inc.3_crit_edge
  %ce.1.3 = phi ptr [ %arrayidx64.3, %if.then79.3 ], [ %ce.1.2, %lor.lhs.false.3.for.inc.3_crit_edge ]
  %mask_index82 = getelementptr inbounds %struct.mask_cache_entry, ptr %ce.1.3, i32 0, i32 1
  %call83 = tail call fastcc ptr @flow_lookup(ptr noundef %5, ptr noundef %3, ptr noundef %key, ptr noundef %n_mask_hit, ptr noundef %n_cache_hit, ptr noundef %mask_index82)
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %for.inc.3.if.end87_crit_edge, label %if.then85

for.inc.3.if.end87_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then85:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %ce.1.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %skb_hash.addr.0, ptr %ce.1.3, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %for.inc.3.if.end87_crit_edge
  %42 = ptrtoint ptr %n_cache_hit to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %n_cache_hit, align 4
  br label %cleanup88

cleanup88:                                        ; preds = %if.end87, %if.then71, %if.then67.cleanup88_crit_edge, %if.then47
  %retval.2 = phi ptr [ %call48, %if.then47 ], [ %call83, %if.end87 ], [ %call69, %if.then67.cleanup88_crit_edge ], [ null, %if.then71 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @flow_lookup(ptr nocapture noundef readonly %ti, ptr noundef %ma, ptr nocapture noundef readonly %key, ptr nocapture noundef %n_mask_hit, ptr nocapture noundef %n_cache_hit, ptr nocapture noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %masks_usage_stats = getelementptr inbounds %struct.mask_array, ptr %ma, i32 0, i32 3
  %0 = ptrtoint ptr %masks_usage_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks_usage_stats, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %max = getelementptr inbounds %struct.mask_array, ptr %ma, i32 0, i32 2
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %if.then, label %entry.if.end31_crit_edge, !prof !105

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr %struct.mask_array, ptr %ma, i32 0, i32 5, i32 %11
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx7, align 4
  %call9 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then.do.end19_crit_edge

if.then.do.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.then
  %call11 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true15

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b2 = load i1, ptr @flow_lookup.__warned, align 1
  br i1 %.b2, label %land.lhs.true15.do.end19_crit_edge, label %if.then17

land.lhs.true15.do.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 743, ptr noundef nonnull @.str.2) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %land.lhs.true15.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %if.then.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %do.end19.if.end31thread-pre-split_crit_edge, label %if.then22

do.end19.if.end31thread-pre-split_crit_edge:      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31thread-pre-split

if.then22:                                        ; preds = %do.end19
  %call23 = tail call fastcc ptr @masked_flow_lookup(ptr noundef %ti, ptr noundef %key, ptr noundef nonnull %15, ptr noundef %n_mask_hit)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then22.if.end31thread-pre-split_crit_edge, label %if.then25

if.then22.if.end31thread-pre-split_crit_edge:     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31thread-pre-split

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @u64_stats_update_begin(ptr noundef %9)
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %arrayidx26 = getelementptr %struct.mask_array_stats, ptr %9, i32 0, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx26, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %arrayidx26, align 8
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %9, i32 0, i32 1
  %20 = tail call ptr @llvm.returnaddress(i32 0) #14
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %21) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !118
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %9, align 4
  br label %cleanup.sink.split

if.end31thread-pre-split:                         ; preds = %if.then22.if.end31thread-pre-split_crit_edge, %do.end19.if.end31thread-pre-split_crit_edge
  %24 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %max, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31thread-pre-split, %entry.if.end31_crit_edge
  %25 = phi i32 [ %.pr, %if.end31thread-pre-split ], [ %13, %entry.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp336 = icmp sgt i32 %25, 0
  br i1 %cmp336, label %if.end31.for.body_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31.for.body_crit_edge
  %i.07 = phi i32 [ %inc79, %for.inc.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.07, i32 %27)
  %cmp34 = icmp eq i32 %i.07, %27
  br i1 %cmp34, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %arrayidx42 = getelementptr %struct.mask_array, ptr %ma, i32 0, i32 5, i32 %i.07
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx42, align 4
  %call44 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %if.end36.do.end57_crit_edge

if.end36.do.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end57

lor.lhs.false46:                                  ; preds = %if.end36
  %call47 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %lor.lhs.false46.do.end57_crit_edge

lor.lhs.false46.do.end57_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end57

land.lhs.true49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b1111 = load i1, ptr @flow_lookup.__warned.20, align 1
  br i1 %.b1111, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_lookup.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 761, ptr noundef nonnull @.str.2) #14
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true49.do.end57_crit_edge, %lor.lhs.false46.do.end57_crit_edge, %if.end36.do.end57_crit_edge
  %tobool59.not = icmp eq ptr %29, null
  br i1 %tobool59.not, label %do.end57.cleanup_crit_edge, label %if.end69, !prof !112

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end69:                                         ; preds = %do.end57
  %call70 = tail call fastcc ptr @masked_flow_lookup(ptr noundef %ti, ptr noundef %key, ptr noundef nonnull %29, ptr noundef %n_mask_hit)
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end69.for.inc_crit_edge, label %if.then72

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.07, ptr %index, align 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %9)
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %arrayidx75 = getelementptr %struct.mask_array_stats, ptr %9, i32 0, i32 1, i32 %32
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx75, align 8
  %inc76 = add i64 %34, 1
  store i64 %inc76, ptr %arrayidx75, align 8
  %dep_map.i.i3 = getelementptr inbounds %struct.seqcount, ptr %9, i32 0, i32 1
  %35 = tail call ptr @llvm.returnaddress(i32 0) #14
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i3, i32 noundef %36) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !118
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end69.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc79 = add nuw nsw i32 %i.07, 1
  %37 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max, align 4
  %cmp33 = icmp slt i32 %inc79, %38
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then72, %if.then25
  %.sink12 = phi ptr [ %9, %if.then72 ], [ %n_cache_hit, %if.then25 ]
  %retval.0.ph = phi ptr [ %call70, %if.then72 ], [ %call23, %if.then25 ]
  %39 = ptrtoint ptr %.sink12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %.sink12, align 4
  %inc.i.i.i4 = add i32 %40, 1
  store i32 %inc.i.i.i4, ptr %.sink12, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %do.end57.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end31.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc.cleanup_crit_edge ], [ null, %do.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_tbl_lookup(ptr noundef %tbl, ptr nocapture noundef readonly %key) local_unnamed_addr #2 align 64 {
entry:
  %n_mask_hit = alloca i32, align 4
  %n_cache_hit = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tbl, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @ovs_flow_tbl_lookup.__warned, align 1
  br i1 %.b37, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 852, ptr noundef nonnull @.str.2) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 3
  %2 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mask_array, align 4
  %call17 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %do.end10.do.end30_crit_edge

do.end10.do.end30_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

lor.lhs.false19:                                  ; preds = %do.end10
  %call20 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %lor.lhs.false19.do.end30_crit_edge

lor.lhs.false19.do.end30_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true22:                                  ; preds = %lor.lhs.false19
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b3536 = load i1, ptr @ovs_flow_tbl_lookup.__warned.8, align 1
  br i1 %.b3536, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 853, ptr noundef nonnull @.str.2) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %lor.lhs.false19.do.end30_crit_edge, %do.end10.do.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_mask_hit) #14
  %4 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %n_mask_hit, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_cache_hit) #14
  %5 = ptrtoint ptr %n_cache_hit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %n_cache_hit, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %index, align 4
  tail call fastcc void @local_bh_disable()
  %call32 = call fastcc ptr @flow_lookup(ptr noundef %1, ptr noundef %3, ptr noundef %key, ptr noundef nonnull %n_mask_hit, ptr noundef nonnull %n_cache_hit, ptr noundef nonnull %index)
  tail call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_cache_hit) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_mask_hit) #14
  ret ptr %call32
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_tbl_lookup_exact(ptr noundef %tbl, ptr nocapture noundef readonly %match) local_unnamed_addr #2 align 64 {
entry:
  %n_mask_hit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @ovs_flow_tbl_lookup_exact.__warned, align 1
  br i1 %.b67, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_exact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 872, ptr noundef nonnull @.str.4) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 3
  %0 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mask_array, align 4
  %max = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp76 = icmp sgt i32 %3, 0
  br i1 %cmp76, label %for.body.lr.ph, label %do.end.cleanup52_crit_edge

do.end.cleanup52_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

for.body.lr.ph:                                   ; preds = %do.end
  %end.i = getelementptr inbounds %struct.sw_flow_match, ptr %match, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tbl, align 4
  %call11 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %for.body.do.end23_crit_edge

for.body.do.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

lor.lhs.false:                                    ; preds = %for.body
  %call13 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b6366 = load i1, ptr @ovs_flow_tbl_lookup_exact.__warned.9, align 1
  br i1 %.b6366, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_exact.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 877, ptr noundef nonnull @.str.2) #14
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %lor.lhs.false.do.end23_crit_edge, %for.body.do.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_mask_hit) #14
  %6 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %n_mask_hit, align 4, !annotation !119
  %call26 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %do.end23.do.end36_crit_edge

do.end23.do.end36_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.end23
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b6465 = load i1, ptr @ovs_flow_tbl_lookup_exact.__warned.10, align 1
  br i1 %.b6465, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_exact.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @.str.4) #14
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.end23.do.end36_crit_edge
  %arrayidx = getelementptr %struct.mask_array, ptr %1, i32 0, i32 5, i32 %i.077
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool38.not = icmp eq ptr %8, null
  br i1 %tobool38.not, label %do.end36.for.inc_crit_edge, label %if.end40

do.end36.for.inc_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end40:                                         ; preds = %do.end36
  %9 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match, align 4
  %call41 = call fastcc ptr @masked_flow_lookup(ptr noundef %5, ptr noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %n_mask_hit)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.for.inc_crit_edge, label %land.lhs.true43

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true43:                                  ; preds = %if.end40
  %id = getelementptr inbounds %struct.sw_flow, ptr %call41, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %do.end9.i, label %land.lhs.true43.for.inc_crit_edge

land.lhs.true43.for.inc_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end9.i:                                        ; preds = %land.lhs.true43
  %13 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %match, align 4
  %tun_proto.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %tun_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tun_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %..i.i = select i1 %tobool.not.i.i, i32 312, i32 0
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %end.i, align 2
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i, i32 %conv.i)
  %cmp8.i.i = icmp ult i32 %..i.i, %conv.i
  br i1 %cmp8.i.i, label %for.body.preheader.i.i, label %do.end9.i.cleanup_crit_edge

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader.i.i:                           ; preds = %do.end9.i
  %19 = getelementptr inbounds %struct.sw_flow, ptr %call41, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %14, i32 %..i.i
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %..i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.011.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %..i.i, %for.body.preheader.i.i ]
  %cp2.010.i.i = phi ptr [ %incdec.ptr2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr1.i.i, %for.body.preheader.i.i ]
  %cp1.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %22 = ptrtoint ptr %cp1.09.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cp1.09.i.i, align 4
  %24 = ptrtoint ptr %cp2.010.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cp2.010.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %tobool.not.i15.i = icmp eq i32 %23, %25
  br i1 %tobool.not.i15.i, label %for.inc.i.i, label %for.body.i.i.for.inc_crit_edge

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr2.i.i = getelementptr i32, ptr %cp2.010.i.i, i32 1
  %incdec.ptr.i.i = getelementptr i32, ptr %cp1.09.i.i, i32 1
  %add.i.i = add nuw nsw i32 %i.011.i.i, 4
  %cmp.i.i = icmp ult i32 %add.i.i, %conv.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cleanup_crit_edge

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cleanup:                                          ; preds = %for.inc.i.i.cleanup_crit_edge, %do.end9.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_mask_hit) #14
  br label %cleanup52

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %land.lhs.true43.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %do.end36.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_mask_hit) #14
  %inc = add nuw nsw i32 %i.077, 1
  %26 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup52_crit_edge

for.inc.cleanup52_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup52:                                        ; preds = %for.inc.cleanup52_crit_edge, %cleanup, %do.end.cleanup52_crit_edge
  %retval.2 = phi ptr [ %call41, %cleanup ], [ null, %do.end.cleanup52_crit_edge ], [ null, %for.inc.cleanup52_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @masked_flow_lookup(ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %unmasked, ptr noundef readonly %mask, ptr nocapture noundef %n_mask_hit) unnamed_addr #2 align 64 {
entry:
  %masked_key = alloca %struct.sw_flow_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %masked_key) #14
  %0 = call ptr @memset(ptr %masked_key, i32 255, i32 464)
  %range.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2
  %1 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %range.i, align 4
  %end.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %end.i.i, align 2
  %sub.i.i = sub i16 %4, %2
  %conv7.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp23.not.i = icmp eq i16 %4, %2
  br i1 %cmp23.not.i, label %entry.ovs_flow_mask_key.exit_crit_edge, label %for.body.preheader.i

entry.ovs_flow_mask_key.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_mask_key.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i16 %2 to i32
  %add.ptr11.i = getelementptr i8, ptr %masked_key, i32 %conv.i
  %add.ptr10.i = getelementptr i8, ptr %unmasked, i32 %conv.i
  %key.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.027.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %d.026.i = phi ptr [ %incdec.ptr14.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr11.i, %for.body.preheader.i ]
  %s.025.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr10.i, %for.body.preheader.i ]
  %m.024.i = phi ptr [ %incdec.ptr13.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %s.025.i, i32 1
  %5 = ptrtoint ptr %s.025.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s.025.i, align 4
  %incdec.ptr13.i = getelementptr i32, ptr %m.024.i, i32 1
  %7 = ptrtoint ptr %m.024.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m.024.i, align 4
  %and.i = and i32 %8, %6
  %incdec.ptr14.i = getelementptr i32, ptr %d.026.i, i32 1
  %9 = ptrtoint ptr %d.026.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i, ptr %d.026.i, align 4
  %add.i = add nuw nsw i32 %i.027.i, 4
  %cmp.i = icmp ult i32 %add.i, %conv7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ovs_flow_mask_key.exit_crit_edge

for.body.i.ovs_flow_mask_key.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_mask_key.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

ovs_flow_mask_key.exit:                           ; preds = %for.body.i.ovs_flow_mask_key.exit_crit_edge, %entry.ovs_flow_mask_key.exit_crit_edge
  %call = call fastcc i32 @flow_hash(ptr noundef nonnull %masked_key, ptr noundef %range.i)
  %hash_seed.i = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 4
  %10 = ptrtoint ptr %hash_seed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_seed.i, align 4
  %add1.i.i = add i32 %11, -559038733
  %add.i.i.i = add i32 %add1.i.i, %call
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #14
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #14
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %12 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti, align 4
  %n_buckets.i = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 1
  %14 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_buckets.i, align 4
  %sub.i = add i32 %15, -1
  %and.i66 = and i32 %sub20.i.i.i, %sub.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %13, i32 %and.i66
  %16 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_mask_hit, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %n_mask_hit, align 4
  %call2 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %ovs_flow_mask_key.exit.do.end_crit_edge

ovs_flow_mask_key.exit.do.end_crit_edge:          ; preds = %ovs_flow_mask_key.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %ovs_flow_mask_key.exit
  %call3 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true5.do.end_crit_edge, label %land.lhs.true8

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %.b65 = load i1, ptr @masked_flow_lookup.__warned, align 1
  br i1 %.b65, label %land.lhs.true8.do.end_crit_edge, label %if.then

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @masked_flow_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 716, ptr noundef nonnull @.str.3) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true8.do.end_crit_edge, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %ovs_flow_mask_key.exit.do.end_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %cond.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end:                                         ; preds = %do.end
  %node_ver = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  %20 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %node_ver, align 4
  %.neg64 = mul i32 %21, -8
  %idx.neg = add i32 %.neg64, -8
  %add.ptr = getelementptr i8, ptr %19, i32 %idx.neg
  %tobool17.not72 = icmp eq ptr %add.ptr, null
  br i1 %tobool17.not72, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %node_ver33 = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flow.073 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr42, %for.inc.for.body_crit_edge ]
  %mask18 = getelementptr inbounds %struct.sw_flow, ptr %flow.073, i32 0, i32 7
  %22 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mask18, align 8
  %cmp = icmp eq ptr %23, %mask
  br i1 %cmp, label %land.lhs.true19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %hash20 = getelementptr inbounds %struct.sw_flow, ptr %flow.073, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %hash20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call)
  %cmp21 = icmp eq i32 %25, %call
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %26 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %range.i, align 2
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %end.i.i, align 2
  %conv2.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp8.i.i = icmp ult i16 %27, %29
  br i1 %cmp8.i.i, label %for.body.preheader.i.i, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader.i.i:                           ; preds = %land.lhs.true22
  %conv.i67 = zext i16 %27 to i32
  %key1.i = getelementptr inbounds %struct.sw_flow, ptr %flow.073, i32 0, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %masked_key, i32 %conv.i67
  %add.ptr.i.i = getelementptr i8, ptr %key1.i, i32 %conv.i67
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.011.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %conv.i67, %for.body.preheader.i.i ]
  %cp2.010.i.i = phi ptr [ %incdec.ptr2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr1.i.i, %for.body.preheader.i.i ]
  %cp1.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %30 = ptrtoint ptr %cp1.09.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cp1.09.i.i, align 4
  %32 = ptrtoint ptr %cp2.010.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cp2.010.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %tobool.not.i.i = icmp eq i32 %31, %33
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.inc_crit_edge

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr2.i.i = getelementptr i32, ptr %cp2.010.i.i, i32 1
  %incdec.ptr.i.i = getelementptr i32, ptr %cp1.09.i.i, i32 1
  %add.i.i = add nuw nsw i32 %i.011.i.i, 4
  %cmp.i.i = icmp ult i32 %add.i.i, %conv2.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cleanup_crit_edge

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %flow_table32 = getelementptr inbounds %struct.sw_flow, ptr %flow.073, i32 0, i32 1
  %34 = ptrtoint ptr %node_ver33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node_ver33, align 4
  %arrayidx = getelementptr [2 x %struct.hlist_node], ptr %flow_table32, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx, align 8
  %tobool36.not = icmp eq ptr %37, null
  %.neg = mul i32 %35, -8
  %idx.neg41 = add i32 %.neg, -8
  %add.ptr42 = getelementptr i8, ptr %37, i32 %idx.neg41
  %tobool17.not82 = icmp eq ptr %add.ptr42, null
  %tobool17.not = select i1 %tobool36.not, i1 true, i1 %tobool17.not82
  br i1 %tobool17.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %flow.071 = phi ptr [ null, %cond.end.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ %flow.073, %for.inc.i.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %flow.073, %land.lhs.true22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %masked_key) #14
  ret ptr %flow.071
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovs_flow_cmp(ptr nocapture noundef readonly %flow, ptr nocapture noundef readonly %match) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %do.end9.i, label %if.then

if.then:                                          ; preds = %entry
  %range = getelementptr inbounds %struct.sw_flow_match, ptr %match, i32 0, i32 1
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %range, align 2
  %end.i = getelementptr inbounds %struct.sw_flow_match, ptr %match, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %end.i, align 2
  %conv2.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp8.i.i = icmp ult i16 %3, %5
  br i1 %cmp8.i.i, label %for.body.preheader.i.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.preheader.i.i:                           ; preds = %if.then
  %6 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match, align 4
  %conv.i = zext i16 %3 to i32
  %key1.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 %conv.i
  %add.ptr.i.i = getelementptr i8, ptr %key1.i, i32 %conv.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.011.i.i = phi i32 [ %conv.i, %for.body.preheader.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cp2.010.i.i = phi ptr [ %add.ptr1.i.i, %for.body.preheader.i.i ], [ %incdec.ptr2.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cp1.09.i.i = phi ptr [ %add.ptr.i.i, %for.body.preheader.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %cp1.09.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cp1.09.i.i, align 4
  %10 = ptrtoint ptr %cp2.010.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cp2.010.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %tobool.not.i.i = icmp eq i32 %9, %11
  %incdec.ptr2.i.i = getelementptr i32, ptr %cp2.010.i.i, i32 1
  %incdec.ptr.i.i = getelementptr i32, ptr %cp1.09.i.i, i32 1
  %add.i.i = add nuw nsw i32 %i.011.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv2.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %conv2.i
  %or.cond = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.return_crit_edge

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end9.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %match, align 4
  %tun_proto.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tun_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tun_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i7 = icmp eq i8 %15, 0
  %..i.i = select i1 %tobool.not.i.i7, i32 312, i32 0
  %end.i8 = getelementptr inbounds %struct.sw_flow_match, ptr %match, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %end.i8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %end.i8, align 2
  %conv.i9 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i, i32 %conv.i9)
  %cmp8.i.i10 = icmp ult i32 %..i.i, %conv.i9
  br i1 %cmp8.i.i10, label %for.body.preheader.i.i13, label %do.end9.i.return_crit_edge

do.end9.i.return_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.preheader.i.i13:                         ; preds = %do.end9.i
  %18 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %add.ptr1.i.i11 = getelementptr i8, ptr %13, i32 %..i.i
  %add.ptr.i.i12 = getelementptr i8, ptr %20, i32 %..i.i
  br label %for.body.i.i17

for.body.i.i17:                                   ; preds = %for.body.i.i17.for.body.i.i17_crit_edge, %for.body.preheader.i.i13
  %i.011.i.i14 = phi i32 [ %..i.i, %for.body.preheader.i.i13 ], [ %add.i.i20, %for.body.i.i17.for.body.i.i17_crit_edge ]
  %cp2.010.i.i15 = phi ptr [ %add.ptr1.i.i11, %for.body.preheader.i.i13 ], [ %incdec.ptr2.i.i18, %for.body.i.i17.for.body.i.i17_crit_edge ]
  %cp1.09.i.i16 = phi ptr [ %add.ptr.i.i12, %for.body.preheader.i.i13 ], [ %incdec.ptr.i.i19, %for.body.i.i17.for.body.i.i17_crit_edge ]
  %21 = ptrtoint ptr %cp1.09.i.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cp1.09.i.i16, align 4
  %23 = ptrtoint ptr %cp2.010.i.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cp2.010.i.i15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %tobool.not.i15.i = icmp eq i32 %22, %24
  %incdec.ptr2.i.i18 = getelementptr i32, ptr %cp2.010.i.i15, i32 1
  %incdec.ptr.i.i19 = getelementptr i32, ptr %cp1.09.i.i16, i32 1
  %add.i.i20 = add nuw nsw i32 %i.011.i.i14, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i20, i32 %conv.i9)
  %cmp.i.i21 = icmp ult i32 %add.i.i20, %conv.i9
  %or.cond32 = select i1 %tobool.not.i15.i, i1 %cmp.i.i21, i1 false
  br i1 %or.cond32, label %for.body.i.i17.for.body.i.i17_crit_edge, label %for.body.i.i17.return_crit_edge

for.body.i.i17.return_crit_edge:                  ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.i.i17.for.body.i.i17_crit_edge:          ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i17

return:                                           ; preds = %for.body.i.i17.return_crit_edge, %do.end9.i.return_crit_edge, %for.body.i.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then.return_crit_edge ], [ true, %do.end9.i.return_crit_edge ], [ %tobool.not.i15.i, %for.body.i.i17.return_crit_edge ], [ %tobool.not.i.i, %for.body.i.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_flow_tbl_lookup_ufid(ptr noundef %tbl, ptr nocapture noundef readonly %ufid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ufid_ti = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 1
  %0 = ptrtoint ptr %ufid_ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ufid_ti, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @ovs_flow_tbl_lookup_ufid.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_ufid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 922, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call11 = tail call fastcc i32 @ufid_hash(ptr noundef %ufid)
  %hash_seed.i = getelementptr inbounds %struct.table_instance, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hash_seed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_seed.i, align 4
  %add1.i.i = add i32 %3, -559038733
  %add.i.i.i = add i32 %add1.i.i, %call11
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #14
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #14
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %n_buckets.i = getelementptr inbounds %struct.table_instance, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 4
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub20.i.i.i, %sub.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %and.i
  %call14 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end9.do.end27_crit_edge

do.end9.do.end27_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.lhs.true16:                                  ; preds = %do.end9
  %call17 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true16.do.end27_crit_edge

land.lhs.true16.do.end27_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b7678 = load i1, ptr @ovs_flow_tbl_lookup_ufid.__warned.11, align 1
  br i1 %.b7678, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_lookup_ufid.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 930, ptr noundef nonnull @.str.3) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %land.lhs.true16.do.end27_crit_edge, %do.end9.do.end27_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool34.not = icmp eq ptr %9, null
  br i1 %tobool34.not, label %do.end27.cleanup_crit_edge, label %cond.end

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end:                                         ; preds = %do.end27
  %node_ver = getelementptr inbounds %struct.table_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %node_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_ver, align 4
  %.neg77 = mul i32 %11, -8
  %idx.neg = add i32 %.neg77, -28
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.neg
  %tobool36.not81 = icmp eq ptr %add.ptr, null
  br i1 %tobool36.not81, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %12 = getelementptr inbounds %struct.sw_flow_id, ptr %ufid, i32 0, i32 1
  %node_ver48 = getelementptr inbounds %struct.table_instance, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flow.082 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr57, %for.inc.for.body_crit_edge ]
  %ufid_table = getelementptr inbounds %struct.sw_flow, ptr %flow.082, i32 0, i32 2
  %hash37 = getelementptr inbounds %struct.sw_flow, ptr %flow.082, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %hash37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call11)
  %cmp = icmp eq i32 %14, %call11
  br i1 %cmp, label %land.lhs.true38, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true38:                                  ; preds = %for.body
  %id.i = getelementptr inbounds %struct.sw_flow, ptr %flow.082, i32 0, i32 5
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 8
  %17 = ptrtoint ptr %ufid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ufid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp eq i32 %16, %18
  br i1 %cmp.not.i, label %ovs_flow_cmp_ufid.exit, label %land.lhs.true38.for.inc_crit_edge

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

ovs_flow_cmp_ufid.exit:                           ; preds = %land.lhs.true38
  %19 = getelementptr inbounds %struct.sw_flow, ptr %flow.082, i32 0, i32 5, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr %19, ptr %12, i32 %16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %ovs_flow_cmp_ufid.exit.cleanup_crit_edge, label %ovs_flow_cmp_ufid.exit.for.inc_crit_edge

ovs_flow_cmp_ufid.exit.for.inc_crit_edge:         ; preds = %ovs_flow_cmp_ufid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

ovs_flow_cmp_ufid.exit.cleanup_crit_edge:         ; preds = %ovs_flow_cmp_ufid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %ovs_flow_cmp_ufid.exit.for.inc_crit_edge, %land.lhs.true38.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %node_ver48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %node_ver48, align 4
  %arrayidx = getelementptr [2 x %struct.hlist_node], ptr %ufid_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  %tobool51.not = icmp eq ptr %23, null
  %.neg = mul i32 %21, -8
  %idx.neg56 = add i32 %.neg, -28
  %add.ptr57 = getelementptr i8, ptr %23, i32 %idx.neg56
  %tobool36.not86 = icmp eq ptr %add.ptr57, null
  %tobool36.not = select i1 %tobool51.not, i1 true, i1 %tobool36.not86
  br i1 %tobool36.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ovs_flow_cmp_ufid.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end27.cleanup_crit_edge
  %flow.0.lcssa = phi ptr [ null, %cond.end.cleanup_crit_edge ], [ null, %do.end27.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %flow.082, %ovs_flow_cmp_ufid.exit.cleanup_crit_edge ]
  ret ptr %flow.0.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufid_hash(ptr nocapture noundef readonly %sfid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sw_flow_id, ptr %sfid, i32 0, i32 1
  %1 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sfid, align 4
  %add.i = add i32 %2, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp13.i = icmp ugt i32 %2, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %0, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %2, %entry.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %4, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %6, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %7 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %8, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #14
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #14
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #14
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #14
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #14
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #14
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %2, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %0, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %9 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %12 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %13 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %14 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %15 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %16 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %17 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %18 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %19 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %20 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %21 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %22 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %23 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %24 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %25 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %26 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %27 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %28 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %29 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %30 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %31 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %32 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %33 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #14
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #14
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #14
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #14
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #14
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #14
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #14
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_num_masks(ptr noundef %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %0 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mask_array, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @ovs_flow_tbl_num_masks.__warned, align 1
  br i1 %.b15, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_num_masks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 940, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %count = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_masks_cache_size(ptr noundef %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_cache = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mask_cache, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @ovs_flow_tbl_masks_cache_size.__warned, align 1
  br i1 %.b15, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_masks_cache_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 946, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %cache_size = getelementptr inbounds %struct.mask_cache, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cache_size, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_tbl_remove(ptr noundef %table, ptr noundef %flow) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @ovs_flow_tbl_remove.__warned, align 1
  br i1 %.b38, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 960, ptr noundef nonnull @.str.4) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %call7 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %do.end.do.end17_crit_edge

do.end.do.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

land.lhs.true9:                                   ; preds = %do.end
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b3637 = load i1, ptr @ovs_flow_tbl_remove.__warned.12, align 1
  br i1 %.b3637, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_tbl_remove.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 961, ptr noundef nonnull @.str.4) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %do.end.do.end17_crit_edge
  %count = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body24, label %do.end32, !prof !112

do.body24:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/flow_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 963, 0\0A.popsection", ""() #14, !srcloc !120
  unreachable

do.end32:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  %ufid_ti19 = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %ufid_ti19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufid_ti19, align 4
  tail call fastcc void @table_instance_flow_free(ptr noundef %table, ptr noundef %1, ptr noundef %5, ptr noundef %flow)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_tbl_insert(ptr noundef %table, ptr noundef %flow, ptr nocapture noundef readonly %mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b32.i.i = load i1, ptr @flow_mask_find.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_mask_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 995, ptr noundef nonnull @.str.4) #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %mask_array.i.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %0 = ptrtoint ptr %mask_array.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mask_array.i.i, align 4
  %max.i.i = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36.i.i = icmp sgt i32 %3, 0
  br i1 %cmp36.i.i, label %for.body.lr.ph.i.i, label %do.end.i.i.if.then.i_crit_edge

do.end.i.i.if.then.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %range.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2
  %end.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2, i32 1
  %key.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.037.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call6.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %for.body.i.i.do.end16.i.i_crit_edge

for.body.i.i.do.end16.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i.i

land.lhs.true8.i.i:                               ; preds = %for.body.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.do.end16.i.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true8.i.i.do.end16.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true8.i.i
  %.b3031.i.i = load i1, ptr @flow_mask_find.__warned.22, align 1
  br i1 %.b3031.i.i, label %land.lhs.true11.i.i.do.end16.i.i_crit_edge, label %if.then13.i.i

land.lhs.true11.i.i.do.end16.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_mask_find.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 998, ptr noundef nonnull @.str.4) #14
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.then13.i.i, %land.lhs.true11.i.i.do.end16.i.i_crit_edge, %land.lhs.true8.i.i.do.end16.i.i_crit_edge, %for.body.i.i.do.end16.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.mask_array, ptr %1, i32 0, i32 5, i32 %i.037.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %5, null
  br i1 %tobool18.not.i.i, label %do.end16.i.i.for.inc.i.i_crit_edge, label %land.lhs.true19.i.i

do.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true19.i.i:                              ; preds = %do.end16.i.i
  %6 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %range.i.i.i, align 4
  %range2.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %range2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %range2.i.i.i, align 4
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %end.i.i.i, align 2
  %end9.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %5, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %end9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %end9.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.i.i.i = icmp eq i16 %11, %13
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp18.i.i.i = icmp eq i16 %7, %9
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp18.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %mask_equal.exit.i.i, label %land.lhs.true19.i.i.for.inc.i.i_crit_edge

land.lhs.true19.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

mask_equal.exit.i.i:                              ; preds = %land.lhs.true19.i.i
  %key1.i.i.i = getelementptr inbounds %struct.sw_flow_mask, ptr %5, i32 0, i32 3
  %conv4.i.i.i = zext i16 %7 to i32
  %add.ptr5.i.i.i = getelementptr i8, ptr %key1.i.i.i, i32 %conv4.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %key.i.i.i, i32 %conv4.i.i.i
  %sub.i.i.i.i = sub i16 %11, %7
  %conv21.i.i.i = zext i16 %sub.i.i.i.i to i32
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %add.ptr5.i.i.i, i32 %conv21.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp23.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp23.i.i.i, label %do.body.i, label %mask_equal.exit.i.i.for.inc.i.i_crit_edge

mask_equal.exit.i.i.for.inc.i.i_crit_edge:        ; preds = %mask_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %mask_equal.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true19.i.i.for.inc.i.i_crit_edge, %do.end16.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.037.i.i, 1
  %14 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.then.i_crit_edge

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.then.i:                                        ; preds = %for.inc.i.i.if.then.i_crit_edge, %do.end.i.i.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 480) #18
  %tobool.not.i36.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i36.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call7.i.i.i, align 8
  %key.i = getelementptr inbounds %struct.sw_flow_mask, ptr %call7.i.i.i, i32 0, i32 3
  %key4.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %key.i, ptr %key4.i, i32 464)
  %range.i = getelementptr inbounds %struct.sw_flow_mask, ptr %call7.i.i.i, i32 0, i32 2
  %range5.i = getelementptr inbounds %struct.sw_flow_mask, ptr %mask, i32 0, i32 2
  %19 = ptrtoint ptr %range5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %range5.i, align 4
  %21 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %range.i, align 4
  %call.i38.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i42.i, label %if.end.i.do.end.i47.i_crit_edge

if.end.i.do.end.i47.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i47.i

land.lhs.true.i42.i:                              ; preds = %if.end.i
  %call1.i40.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool2.not.i41.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool2.not.i41.i, label %land.lhs.true.i42.i.do.end.i47.i_crit_edge, label %land.lhs.true3.i43.i

land.lhs.true.i42.i.do.end.i47.i_crit_edge:       ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i47.i

land.lhs.true3.i43.i:                             ; preds = %land.lhs.true.i42.i
  %.b128.i.i = load i1, ptr @tbl_mask_array_add_mask.__warned, align 1
  br i1 %.b128.i.i, label %land.lhs.true3.i43.i.do.end.i47.i_crit_edge, label %if.then.i44.i

land.lhs.true3.i43.i.do.end.i47.i_crit_edge:      ; preds = %land.lhs.true3.i43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i47.i

if.then.i44.i:                                    ; preds = %land.lhs.true3.i43.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_add_mask.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 275, ptr noundef nonnull @.str.4) #14
  br label %do.end.i47.i

do.end.i47.i:                                     ; preds = %if.then.i44.i, %land.lhs.true3.i43.i.do.end.i47.i_crit_edge, %land.lhs.true.i42.i.do.end.i47.i_crit_edge, %if.end.i.do.end.i47.i_crit_edge
  %22 = ptrtoint ptr %mask_array.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mask_array.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.mask_array, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %count.i.i, align 4
  %max.i46.i = getelementptr inbounds %struct.mask_array, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %max.i46.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max.i46.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i.i = icmp slt i32 %25, %27
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %do.end.i47.i
  %add.i.i = add i32 %27, 16
  %call11.i.i = tail call fastcc i32 @tbl_mask_array_realloc(ptr noundef %table, i32 noundef %add.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body15.i.i, label %if.then8.i

do.body15.i.i:                                    ; preds = %if.then9.i.i
  %call16.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.body15.i.i.do.end26.i.i_crit_edge

do.body15.i.i.do.end26.i.i_crit_edge:             ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.body15.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b124127.i.i = load i1, ptr @tbl_mask_array_add_mask.__warned.23, align 1
  br i1 %.b124127.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_add_mask.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.4) #14
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.body15.i.i.do.end26.i.i_crit_edge
  %28 = ptrtoint ptr %mask_array.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mask_array.i.i, align 4
  br label %do.body31.i.i

if.else.i.i:                                      ; preds = %do.end.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @tbl_mask_array_reset_counters(ptr noundef %23) #14
  br label %do.body31.i.i

do.body31.i.i:                                    ; preds = %if.else.i.i, %do.end26.i.i
  %ma.0.i.i = phi ptr [ %29, %do.end26.i.i ], [ %23, %if.else.i.i ]
  %call32.i.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %land.lhs.true34.i.i, label %do.body31.i.i.do.end42.i.i_crit_edge

do.body31.i.i.do.end42.i.i_crit_edge:             ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42.i.i

land.lhs.true34.i.i:                              ; preds = %do.body31.i.i
  %call35.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %land.lhs.true34.i.i.do.end42.i.i_crit_edge, label %land.lhs.true37.i.i

land.lhs.true34.i.i.do.end42.i.i_crit_edge:       ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42.i.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true34.i.i
  %.b125126.i.i = load i1, ptr @tbl_mask_array_add_mask.__warned.24, align 1
  br i1 %.b125126.i.i, label %land.lhs.true37.i.i.do.end42.i.i_crit_edge, label %if.then39.i.i

land.lhs.true37.i.i.do.end42.i.i_crit_edge:       ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42.i.i

if.then39.i.i:                                    ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_add_mask.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @.str.4) #14
  br label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.then39.i.i, %land.lhs.true37.i.i.do.end42.i.i_crit_edge, %land.lhs.true34.i.i.do.end42.i.i_crit_edge, %do.body31.i.i.do.end42.i.i_crit_edge
  %arrayidx.i48.i = getelementptr %struct.mask_array, ptr %ma.0.i.i, i32 0, i32 5, i32 %25
  %30 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i48.i, align 4
  %tobool44.not.i.i = icmp eq ptr %31, null
  br i1 %tobool44.not.i.i, label %tbl_mask_array_add_mask.exit.thread.i, label %do.body48.i.i, !prof !105

do.body48.i.i:                                    ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/flow_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 292, 0\0A.popsection", ""() #14, !srcloc !121
  unreachable

tbl_mask_array_add_mask.exit.thread.i:            ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !122
  %32 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i48.i, align 4
  %add104.i.i = add i32 %25, 1
  %count105.i.i = getelementptr inbounds %struct.mask_array, ptr %ma.0.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %count105.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %add104.i.i, ptr %count105.i.i, align 4
  br label %if.end

if.then8.i:                                       ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

do.body.i:                                        ; preds = %mask_equal.exit.i.i
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not.i = icmp eq i32 %35, 0
  br i1 %tobool10.not.i, label %do.body15.i, label %do.end21.i, !prof !112

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/flow_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1028, 0\0A.popsection", ""() #14, !srcloc !123
  unreachable

do.end21.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %35, 1
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i, ptr %5, align 8
  br label %if.end

if.end:                                           ; preds = %do.end21.i, %tbl_mask_array_add_mask.exit.thread.i
  %mask.0.i = phi ptr [ %5, %do.end21.i ], [ %call7.i.i.i, %tbl_mask_array_add_mask.exit.thread.i ]
  %mask24.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 7
  %37 = ptrtoint ptr %mask24.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mask.0.i, ptr %mask24.i, align 8
  %key.i10 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 4
  %range.i11 = getelementptr inbounds %struct.sw_flow_mask, ptr %mask.0.i, i32 0, i32 2
  %call.i = tail call fastcc i32 @flow_hash(ptr noundef %key.i10, ptr noundef %range.i11) #14
  %hash.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i, ptr %hash.i, align 8
  %call1.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b74.i = load i1, ptr @flow_key_insert.__warned, align 1
  br i1 %.b74.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i12

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i12:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_key_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1043, ptr noundef nonnull @.str.4) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i12, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %39 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %table, align 4
  %flow_table.i.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 1
  %41 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash.i, align 8
  %hash_seed.i.i.i = getelementptr inbounds %struct.table_instance, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %hash_seed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash_seed.i.i.i, align 4
  %add1.i.i.i.i = add i32 %44, -559038733
  %add.i.i.i.i.i = add i32 %add1.i.i.i.i, %42
  %or.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #14
  %sub.i.i.i.i.i = sub i32 0, %or.i.i.i.i.i.i
  %xor3.i.i.i.i.i = xor i32 %add.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i1.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i.i, i32 %sub.i.i.i.i.i, i32 11) #14
  %sub5.i.i.i.i.i = sub i32 %xor3.i.i.i.i.i, %or.i1.i.i.i.i.i
  %xor6.i.i.i.i.i = xor i32 %sub5.i.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i, i32 %sub5.i.i.i.i.i, i32 25) #14
  %sub8.i.i.i.i.i = sub i32 %xor6.i.i.i.i.i, %or.i2.i.i.i.i.i
  %xor9.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i3.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i, i32 %sub8.i.i.i.i.i, i32 16) #14
  %sub11.i.i.i.i.i = sub i32 %xor9.i.i.i.i.i, %or.i3.i.i.i.i.i
  %xor12.i.i.i.i.i = xor i32 %sub11.i.i.i.i.i, %sub5.i.i.i.i.i
  %or.i4.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i, i32 %sub11.i.i.i.i.i, i32 4) #14
  %sub14.i.i.i.i.i = sub i32 %xor12.i.i.i.i.i, %or.i4.i.i.i.i.i
  %xor15.i.i.i.i.i = xor i32 %sub14.i.i.i.i.i, %sub8.i.i.i.i.i
  %or.i5.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i.i, i32 %sub14.i.i.i.i.i, i32 14) #14
  %sub17.i.i.i.i.i = sub i32 %xor15.i.i.i.i.i, %or.i5.i.i.i.i.i
  %xor18.i.i.i.i.i = xor i32 %sub17.i.i.i.i.i, %sub11.i.i.i.i.i
  %or.i6.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i.i, i32 %sub17.i.i.i.i.i, i32 24) #14
  %sub20.i.i.i.i.i = sub i32 %xor18.i.i.i.i.i, %or.i6.i.i.i.i.i
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  %n_buckets.i.i.i = getelementptr inbounds %struct.table_instance, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %n_buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_buckets.i.i.i, align 4
  %sub.i.i.i = add i32 %48, -1
  %and.i.i.i = and i32 %sub20.i.i.i.i.i, %sub.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %46, i32 %and.i.i.i
  %node_ver.i.i = getelementptr inbounds %struct.table_instance, ptr %40, i32 0, i32 3
  %49 = ptrtoint ptr %node_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %node_ver.i.i, align 4
  %arrayidx.i.i13 = getelementptr [2 x %struct.hlist_node], ptr %flow_table.i.i, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %53 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %arrayidx.i.i13, align 4
  %pprev.i.i.i = getelementptr [2 x %struct.hlist_node], ptr %flow_table.i.i, i32 0, i32 %50, i32 1
  %54 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx.i.i13, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %do.end.i.table_instance_insert.exit.i_crit_edge, label %do.body49.i.i.i

do.end.i.table_instance_insert.exit.i_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %table_instance_insert.exit.i

do.body49.i.i.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx.i.i13, ptr %pprev51.i.i.i, align 4
  br label %table_instance_insert.exit.i

table_instance_insert.exit.i:                     ; preds = %do.body49.i.i.i, %do.end.i.table_instance_insert.exit.i_crit_edge
  %count.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 5
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 4
  %inc.i14 = add i32 %58, 1
  store i32 %inc.i14, ptr %count.i, align 4
  %59 = ptrtoint ptr %n_buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n_buckets.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i14, i32 %60)
  %cmp.i = icmp ugt i32 %inc.i14, %60
  br i1 %cmp.i, label %if.then8.i16, label %if.else.i

if.then8.i16:                                     ; preds = %table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i = shl i32 %60, 1
  br label %if.end15.i

if.else.i:                                        ; preds = %table_instance_insert.exit.i
  %last_rehash.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 4
  %61 = ptrtoint ptr %last_rehash.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_rehash.i, align 4
  %add.i = add i32 %62, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp slt i32 %sub.i, 0
  br i1 %cmp10.i, label %if.else.i.if.end15.i_crit_edge, label %if.else.i.flow_key_insert.exit_crit_edge

if.else.i.flow_key_insert.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_key_insert.exit

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %if.then8.i16
  %.sink = phi i32 [ %mul.i.i, %if.then8.i16 ], [ %60, %if.else.i.if.end15.i_crit_edge ]
  %call13.i = tail call fastcc ptr @table_instance_rehash(ptr noundef %40, i32 noundef %.sink, i1 noundef zeroext false) #14
  %tobool16.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool16.not.i, label %if.end15.i.flow_key_insert.exit_crit_edge, label %do.body18.i

if.end15.i.flow_key_insert.exit_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_key_insert.exit

do.body18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !125
  %64 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call13.i, ptr %table, align 4
  %rcu.i = getelementptr inbounds %struct.table_instance, ptr %40, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %last_rehash58.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 4
  %66 = ptrtoint ptr %last_rehash58.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %last_rehash58.i, align 4
  br label %flow_key_insert.exit

flow_key_insert.exit:                             ; preds = %do.body18.i, %if.end15.i.flow_key_insert.exit_crit_edge, %if.else.i.flow_key_insert.exit_crit_edge
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not = icmp eq i32 %68, 0
  br i1 %tobool.i.not, label %flow_key_insert.exit.cleanup_crit_edge, label %if.then2

flow_key_insert.exit.cleanup_crit_edge:           ; preds = %flow_key_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %flow_key_insert.exit
  %call.i17 = tail call fastcc i32 @ufid_hash(ptr noundef %id) #14
  %hash.i18 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %hash.i18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i17, ptr %hash.i18, align 4
  %call1.i19 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i23, label %if.then2.do.end.i57_crit_edge

if.then2.do.end.i57_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i57

land.lhs.true.i23:                                ; preds = %if.then2
  %call2.i21 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %tobool3.not.i22 = icmp eq i32 %call2.i21, 0
  br i1 %tobool3.not.i22, label %land.lhs.true.i23.do.end.i57_crit_edge, label %land.lhs.true4.i24

land.lhs.true.i23.do.end.i57_crit_edge:           ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i57

land.lhs.true4.i24:                               ; preds = %land.lhs.true.i23
  %.b61.i = load i1, ptr @flow_ufid_insert.__warned, align 1
  br i1 %.b61.i, label %land.lhs.true4.i24.do.end.i57_crit_edge, label %if.then.i25

land.lhs.true4.i24.do.end.i57_crit_edge:          ; preds = %land.lhs.true4.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i57

if.then.i25:                                      ; preds = %land.lhs.true4.i24
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_ufid_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1066, ptr noundef nonnull @.str.4) #14
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then.i25, %land.lhs.true4.i24.do.end.i57_crit_edge, %land.lhs.true.i23.do.end.i57_crit_edge, %if.then2.do.end.i57_crit_edge
  %ufid_ti.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 1
  %70 = ptrtoint ptr %ufid_ti.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ufid_ti.i, align 4
  %ufid_table.i.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 2
  %72 = ptrtoint ptr %hash.i18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hash.i18, align 4
  %hash_seed.i.i.i26 = getelementptr inbounds %struct.table_instance, ptr %71, i32 0, i32 4
  %74 = ptrtoint ptr %hash_seed.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hash_seed.i.i.i26, align 4
  %add1.i.i.i.i27 = add i32 %75, -559038733
  %add.i.i.i.i.i28 = add i32 %add1.i.i.i.i27, %73
  %or.i.i.i.i.i.i29 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i27, i32 %add1.i.i.i.i27, i32 14) #14
  %sub.i.i.i.i.i30 = sub i32 0, %or.i.i.i.i.i.i29
  %xor3.i.i.i.i.i31 = xor i32 %add.i.i.i.i.i28, %sub.i.i.i.i.i30
  %or.i1.i.i.i.i.i32 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i.i30, i32 %sub.i.i.i.i.i30, i32 11) #14
  %sub5.i.i.i.i.i33 = sub i32 %xor3.i.i.i.i.i31, %or.i1.i.i.i.i.i32
  %xor6.i.i.i.i.i34 = xor i32 %sub5.i.i.i.i.i33, %add1.i.i.i.i27
  %or.i2.i.i.i.i.i35 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i33, i32 %sub5.i.i.i.i.i33, i32 25) #14
  %sub8.i.i.i.i.i36 = sub i32 %xor6.i.i.i.i.i34, %or.i2.i.i.i.i.i35
  %xor9.i.i.i.i.i37 = xor i32 %sub8.i.i.i.i.i36, %sub.i.i.i.i.i30
  %or.i3.i.i.i.i.i38 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i36, i32 %sub8.i.i.i.i.i36, i32 16) #14
  %sub11.i.i.i.i.i39 = sub i32 %xor9.i.i.i.i.i37, %or.i3.i.i.i.i.i38
  %xor12.i.i.i.i.i40 = xor i32 %sub11.i.i.i.i.i39, %sub5.i.i.i.i.i33
  %or.i4.i.i.i.i.i41 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i39, i32 %sub11.i.i.i.i.i39, i32 4) #14
  %sub14.i.i.i.i.i42 = sub i32 %xor12.i.i.i.i.i40, %or.i4.i.i.i.i.i41
  %xor15.i.i.i.i.i43 = xor i32 %sub14.i.i.i.i.i42, %sub8.i.i.i.i.i36
  %or.i5.i.i.i.i.i44 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i.i42, i32 %sub14.i.i.i.i.i42, i32 14) #14
  %sub17.i.i.i.i.i45 = sub i32 %xor15.i.i.i.i.i43, %or.i5.i.i.i.i.i44
  %xor18.i.i.i.i.i46 = xor i32 %sub17.i.i.i.i.i45, %sub11.i.i.i.i.i39
  %or.i6.i.i.i.i.i47 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i.i45, i32 %sub17.i.i.i.i.i45, i32 24) #14
  %sub20.i.i.i.i.i48 = sub i32 %xor18.i.i.i.i.i46, %or.i6.i.i.i.i.i47
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %71, align 4
  %n_buckets.i.i.i49 = getelementptr inbounds %struct.table_instance, ptr %71, i32 0, i32 1
  %78 = ptrtoint ptr %n_buckets.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_buckets.i.i.i49, align 4
  %sub.i.i.i50 = add i32 %79, -1
  %and.i.i.i51 = and i32 %sub20.i.i.i.i.i48, %sub.i.i.i50
  %arrayidx.i.i.i52 = getelementptr %struct.hlist_head, ptr %77, i32 %and.i.i.i51
  %node_ver.i.i53 = getelementptr inbounds %struct.table_instance, ptr %71, i32 0, i32 3
  %80 = ptrtoint ptr %node_ver.i.i53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %node_ver.i.i53, align 4
  %arrayidx.i.i54 = getelementptr [2 x %struct.hlist_node], ptr %ufid_table.i.i, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i.i52, align 4
  %84 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %arrayidx.i.i54, align 4
  %pprev.i.i.i55 = getelementptr [2 x %struct.hlist_node], ptr %ufid_table.i.i, i32 0, i32 %81, i32 1
  %85 = ptrtoint ptr %pprev.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %arrayidx.i.i.i52, ptr %pprev.i.i.i55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %86 = ptrtoint ptr %arrayidx.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %arrayidx.i.i54, ptr %arrayidx.i.i.i52, align 4
  %tobool.not.i.i.i56 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i56, label %do.end.i57.ufid_table_instance_insert.exit.i_crit_edge, label %do.body49.i.i.i59

do.end.i57.ufid_table_instance_insert.exit.i_crit_edge: ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %ufid_table_instance_insert.exit.i

do.body49.i.i.i59:                                ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i.i.i58 = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %pprev51.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %arrayidx.i.i54, ptr %pprev51.i.i.i58, align 4
  br label %ufid_table_instance_insert.exit.i

ufid_table_instance_insert.exit.i:                ; preds = %do.body49.i.i.i59, %do.end.i57.ufid_table_instance_insert.exit.i_crit_edge
  %ufid_count.i = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 6
  %88 = ptrtoint ptr %ufid_count.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ufid_count.i, align 4
  %inc.i60 = add i32 %89, 1
  store i32 %inc.i60, ptr %ufid_count.i, align 4
  %90 = ptrtoint ptr %n_buckets.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_buckets.i.i.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i60, i32 %91)
  %cmp.i61 = icmp ugt i32 %inc.i60, %91
  br i1 %cmp.i61, label %if.then7.i, label %ufid_table_instance_insert.exit.i.cleanup_crit_edge

ufid_table_instance_insert.exit.i.cleanup_crit_edge: ; preds = %ufid_table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7.i:                                       ; preds = %ufid_table_instance_insert.exit.i
  %mul.i.i62 = shl i32 %91, 1
  %call.i.i63 = tail call fastcc ptr @table_instance_rehash(ptr noundef %71, i32 noundef %mul.i.i62, i1 noundef zeroext true) #14
  %tobool9.not.i = icmp eq ptr %call.i.i63, null
  br i1 %tobool9.not.i, label %if.then7.i.cleanup_crit_edge, label %do.body11.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !126
  %92 = ptrtoint ptr %ufid_ti.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call.i.i63, ptr %ufid_ti.i, align 4
  %rcu.i64 = getelementptr inbounds %struct.table_instance, ptr %71, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu.i64, ptr noundef nonnull @flow_tbl_destroy_rcu_cb) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body11.i, %if.then7.i.cleanup_crit_edge, %ufid_table_instance_insert.exit.i.cleanup_crit_edge, %flow_key_insert.exit.cleanup_crit_edge, %if.then8.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %flow_key_insert.exit.cleanup_crit_edge ], [ 0, %ufid_table_instance_insert.exit.i.cleanup_crit_edge ], [ 0, %if.then7.i.cleanup_crit_edge ], [ 0, %do.body11.i ], [ -12, %if.then8.i ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_masks_rebalance(ptr noundef %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %table, i32 0, i32 3
  %0 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mask_array, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b230 = load i1, ptr @ovs_flow_masks_rebalance.__warned, align 1
  br i1 %.b230, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_masks_rebalance.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1109, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %max = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #14
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %do.end9.cleanup168_crit_edge, label %if.end7.i, !prof !112

do.end9.cleanup168_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup168

if.end7.i:                                        ; preds = %do.end9
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #19
  %tobool12.not = icmp eq ptr %call8.i, null
  br i1 %tobool12.not, label %if.end7.i.cleanup168_crit_edge, label %for.cond.preheader

if.end7.i.cleanup168_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup168

for.cond.preheader:                               ; preds = %if.end7.i
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp248 = icmp sgt i32 %8, 0
  br i1 %cmp248, label %for.body.lr.ph, label %for.cond.preheader.free_mask_entries_crit_edge

for.cond.preheader.free_mask_entries_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_entries

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %masks_usage_stats = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 3
  %masks_usage_zero_cntr = getelementptr inbounds %struct.mask_array, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mask_array, ptr %1, i32 0, i32 5, i32 %i.0249
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %for.body.do.end34_crit_edge

for.body.do.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

lor.lhs.false23:                                  ; preds = %for.body
  %call24 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %lor.lhs.false23.do.end34_crit_edge

lor.lhs.false23.do.end34_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b226229 = load i1, ptr @ovs_flow_masks_rebalance.__warned.13, align 1
  br i1 %.b226229, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_masks_rebalance.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1125, ptr noundef nonnull @.str.2) #14
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %lor.lhs.false23.do.end34_crit_edge, %for.body.do.end34_crit_edge
  %tobool36.not = icmp eq ptr %10, null
  br i1 %tobool36.not, label %for.end74, label %if.end41, !prof !112

if.end41:                                         ; preds = %do.end34
  %arrayidx42 = getelementptr %struct.mask_count, ptr %call8.i, i32 %i.0249
  %11 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.0249, ptr %arrayidx42, align 16
  %counter = getelementptr %struct.mask_count, ptr %call8.i, i32 %i.0249, i32 1
  %12 = ptrtoint ptr %counter to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %counter, align 8
  %call45245 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call45245, i32 %13)
  %cmp46246 = icmp ult i32 %call45245, %13
  br i1 %cmp46246, label %if.end41.for.body47_crit_edge, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end41.for.body47_crit_edge:                    ; preds = %if.end41
  br label %for.body47

for.body47:                                       ; preds = %do.end61.for.body47_crit_edge, %if.end41.for.body47_crit_edge
  %call45247 = phi i32 [ %call45, %do.end61.for.body47_crit_edge ], [ %call45245, %if.end41.for.body47_crit_edge ]
  %14 = ptrtoint ptr %masks_usage_stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %masks_usage_stats, align 4
  %16 = ptrtoint ptr %15 to i32
  %arrayidx54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call45247
  %17 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx54, align 4
  %add = add i32 %18, %16
  %19 = inttoptr i32 %add to ptr
  %arrayidx57 = getelementptr %struct.mask_array_stats, ptr %19, i32 0, i32 1, i32 %i.0249
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %for.body47
  %call56 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %19)
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx57, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %19, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %23, %call56
  br i1 %cmp.i.i.i.i.not, label %do.end61, label %do.body55.do.body55_crit_edge

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

do.end61:                                         ; preds = %do.body55
  %24 = ptrtoint ptr %counter to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %counter, align 8
  %add64 = add i64 %25, %21
  store i64 %add64, ptr %counter, align 8
  %call45 = tail call i32 @cpumask_next(i32 noundef %call45247, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp46 = icmp ult i32 %call45, %26
  br i1 %cmp46, label %do.end61.for.body47_crit_edge, label %do.end61.for.inc_crit_edge

do.end61.for.inc_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end61.for.body47_crit_edge:                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body47

for.inc:                                          ; preds = %do.end61.for.inc_crit_edge, %if.end41.for.inc_crit_edge
  %storemerge.lcssa = phi i64 [ 0, %if.end41.for.inc_crit_edge ], [ %add64, %do.end61.for.inc_crit_edge ]
  %27 = ptrtoint ptr %masks_usage_zero_cntr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %masks_usage_zero_cntr, align 4
  %arrayidx65 = getelementptr i64, ptr %28, i32 %i.0249
  %29 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx65, align 8
  %sub = sub i64 %storemerge.lcssa, %30
  %31 = ptrtoint ptr %counter to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub, ptr %counter, align 8
  %32 = load ptr, ptr %masks_usage_zero_cntr, align 4
  %arrayidx71 = getelementptr i64, ptr %32, i32 %i.0249
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx71, align 8
  %add72 = add i64 %34, %sub
  store i64 %add72, ptr %arrayidx71, align 8
  %inc = add nuw nsw i32 %i.0249, 1
  %35 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max, align 4
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body80.preheader_crit_edge

for.inc.for.body80.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body80.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end74:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0249)
  %cmp75 = icmp eq i32 %i.0249, 0
  br i1 %cmp75, label %for.end74.free_mask_entries_crit_edge, label %for.end74.for.body80.preheader_crit_edge

for.end74.for.body80.preheader_crit_edge:         ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body80.preheader

for.end74.free_mask_entries_crit_edge:            ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_entries

for.body80.preheader:                             ; preds = %for.end74.for.body80.preheader_crit_edge, %for.inc.for.body80.preheader_crit_edge
  %i.0249.sink = phi i32 [ %i.0249, %for.end74.for.body80.preheader_crit_edge ], [ %inc, %for.inc.for.body80.preheader_crit_edge ]
  tail call void @sort(ptr noundef nonnull %call8.i, i32 noundef %i.0249.sink, i32 noundef 16, ptr noundef nonnull @compare_mask_and_count, ptr noundef null) #14
  br label %for.body80

for.body80:                                       ; preds = %for.inc86.for.body80_crit_edge, %for.body80.preheader
  %i.1254 = phi i32 [ %inc87, %for.inc86.for.body80_crit_edge ], [ 0, %for.body80.preheader ]
  %arrayidx81 = getelementptr %struct.mask_count, ptr %call8.i, i32 %i.1254
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx81, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1254, i32 %38)
  %cmp83.not = icmp eq i32 %i.1254, %38
  br i1 %cmp83.not, label %for.inc86, label %for.end88

for.inc86:                                        ; preds = %for.body80
  %inc87 = add nuw nsw i32 %i.1254, 1
  %exitcond.not = icmp eq i32 %inc87, %i.0249.sink
  br i1 %exitcond.not, label %for.inc86.free_mask_entries_crit_edge, label %for.inc86.for.body80_crit_edge

for.inc86.for.body80_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body80

for.inc86.free_mask_entries_crit_edge:            ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_entries

for.end88:                                        ; preds = %for.body80
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1254, i32 %i.0249.sink)
  %cmp89 = icmp eq i32 %i.1254, %i.0249.sink
  br i1 %cmp89, label %for.end88.free_mask_entries_crit_edge, label %if.end91

for.end88.free_mask_entries_crit_edge:            ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_entries

if.end91:                                         ; preds = %for.end88
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 16) #14
  %mul.i = shl i32 %41, 2
  %mul1.i = shl i32 %41, 3
  %add.i = add i32 %mul.i, 24
  %add2.i = add i32 %add.i, %mul1.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3520) #19
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end91.free_mask_entries_crit_edge, label %if.end.i235

if.end91.free_mask_entries_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_mask_entries

if.end.i235:                                      ; preds = %if.end91
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 24
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %masks_usage_zero_cntr.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %masks_usage_zero_cntr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr4.i, ptr %masks_usage_zero_cntr.i, align 4
  %add6.i = add i32 %mul1.i, 32
  %call7.i = tail call noalias ptr @__alloc_percpu(i32 noundef %add6.i, i32 noundef 8) #19
  %masks_usage_stats.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %masks_usage_stats.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i, ptr %masks_usage_stats.i, align 16
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %tbl_mask_array_alloc.exit

if.then10.i:                                      ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %free_mask_entries

tbl_mask_array_alloc.exit:                        ; preds = %if.end.i235
  %count.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %count.i, align 8
  %max.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %max.i, align 4
  br label %for.body99

for.body99:                                       ; preds = %if.end125.for.body99_crit_edge, %tbl_mask_array_alloc.exit
  %i.2258 = phi i32 [ %inc127, %if.end125.for.body99_crit_edge ], [ 0, %tbl_mask_array_alloc.exit ]
  %arrayidx101 = getelementptr %struct.mask_count, ptr %call8.i, i32 %i.2258
  %46 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx101, align 16
  %call104 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %for.body99.do.end114_crit_edge

for.body99.do.end114_crit_edge:                   ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

land.lhs.true106:                                 ; preds = %for.body99
  %call107 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.do.end114_crit_edge, label %land.lhs.true109

land.lhs.true106.do.end114_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %.b227228 = load i1, ptr @ovs_flow_masks_rebalance.__warned.14, align 1
  br i1 %.b227228, label %land.lhs.true109.do.end114_crit_edge, label %if.then111

land.lhs.true109.do.end114_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

if.then111:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_masks_rebalance.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1180, ptr noundef nonnull @.str.4) #14
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %land.lhs.true109.do.end114_crit_edge, %land.lhs.true106.do.end114_crit_edge, %for.body99.do.end114_crit_edge
  %arrayidx117 = getelementptr %struct.mask_array, ptr %1, i32 0, i32 5, i32 %47
  %48 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %49, null
  br i1 %tobool118.not, label %do.end114.if.end125_crit_edge, label %if.then119

do.end114.if.end125_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

if.then119:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count.i, align 8
  %inc123 = add i32 %51, 1
  store i32 %inc123, ptr %count.i, align 8
  %arrayidx124 = getelementptr %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 5, i32 %51
  %52 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %arrayidx124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then119, %do.end114.if.end125_crit_edge
  %inc127 = add nuw nsw i32 %i.2258, 1
  %exitcond259.not = icmp eq i32 %inc127, %i.0249.sink
  br i1 %exitcond259.not, label %do.body129, label %if.end125.for.body99_crit_edge

if.end125.for.body99_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body99

do.body129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %53 = ptrtoint ptr %mask_array to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call9.i.i.i, ptr %mask_array, align 4
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @mask_array_rcu_cb) #14
  br label %free_mask_entries

free_mask_entries:                                ; preds = %do.body129, %if.then10.i, %if.end91.free_mask_entries_crit_edge, %for.end88.free_mask_entries_crit_edge, %for.inc86.free_mask_entries_crit_edge, %for.end74.free_mask_entries_crit_edge, %for.cond.preheader.free_mask_entries_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #14
  br label %cleanup168

cleanup168:                                       ; preds = %free_mask_entries, %if.end7.i.cleanup168_crit_edge, %do.end9.cleanup168_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !129
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !130
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !112

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !131
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !132
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !133
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_mask_and_count(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.mask_count, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %counter, align 8
  %counter1 = getelementptr inbounds %struct.mask_count, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %counter1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %counter1, align 8
  %sub = sub i64 %1, %3
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %mul = shl i32 %0, 2
  %add = add i32 %mul, 552
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.15, i32 noundef %add, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %call, ptr @flow_cache, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 72, i32 noundef 0, i32 noundef 8192, ptr noundef null) #14
  store ptr %call3, ptr @flow_stats_cache, align 4
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load ptr, ptr @flow_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #14
  store ptr null, ptr @flow_cache, align 4
  br label %return

return:                                           ; preds = %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @flow_stats_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  %1 = load ptr, ptr @flow_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_nla_free_flow_actions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tbl_mask_array_realloc(ptr noundef %tbl, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %size, i32 16) #14
  %mul.i = shl i32 %0, 2
  %mul1.i = shl i32 %0, 3
  %add.i = add i32 %mul.i, 24
  %add2.i = add i32 %add.i, %mul1.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3520) #19
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 24
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %masks_usage_zero_cntr.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %masks_usage_zero_cntr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr4.i, ptr %masks_usage_zero_cntr.i, align 4
  %add6.i = add i32 %mul1.i, 32
  %call7.i = tail call noalias ptr @__alloc_percpu(i32 noundef %add6.i, i32 noundef 8) #19
  %masks_usage_stats.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %masks_usage_stats.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %masks_usage_stats.i, align 16
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %tbl_mask_array_alloc.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %cleanup

tbl_mask_array_alloc.exit:                        ; preds = %if.end.i
  %count.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %count.i, align 8
  %max.i = getelementptr inbounds %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %0, ptr %max.i, align 4
  %call1 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %tbl_mask_array_alloc.exit.do.end_crit_edge

tbl_mask_array_alloc.exit.do.end_crit_edge:       ; preds = %tbl_mask_array_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %tbl_mask_array_alloc.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b87 = load i1, ptr @tbl_mask_array_realloc.__warned, align 1
  br i1 %.b87, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_realloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 256, ptr noundef nonnull @.str.4) #14
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %tbl_mask_array_alloc.exit.do.end_crit_edge
  %mask_array = getelementptr inbounds %struct.flow_table, ptr %tbl, i32 0, i32 3
  %5 = ptrtoint ptr %mask_array to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mask_array, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.end.do.body33_crit_edge, label %for.cond.preheader

do.end.do.body33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

for.cond.preheader:                               ; preds = %do.end
  %max = getelementptr inbounds %struct.mask_array, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp91 = icmp sgt i32 %8, 0
  br i1 %cmp91, label %for.cond.preheader.do.body11_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.do.body11_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body11

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %for.cond.preheader.do.body11_crit_edge
  %i.092 = phi i32 [ %inc31, %for.inc.do.body11_crit_edge ], [ 0, %for.cond.preheader.do.body11_crit_edge ]
  %call12 = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %do.body11.do.end22_crit_edge

do.body11.do.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

land.lhs.true14:                                  ; preds = %do.body11
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b8586 = load i1, ptr @tbl_mask_array_realloc.__warned.19, align 1
  br i1 %.b8586, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tbl_mask_array_realloc.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef nonnull @.str.4) #14
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true14.do.end22_crit_edge, %do.body11.do.end22_crit_edge
  %arrayidx = getelementptr %struct.mask_array, ptr %6, i32 0, i32 5, i32 %i.092
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %10, null
  br i1 %tobool24.not, label %do.end22.for.inc_crit_edge, label %if.then25

do.end22.for.inc_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count.i, align 8
  %arrayidx29 = getelementptr %struct.mask_array, ptr %call9.i.i.i, i32 0, i32 5, i32 %12
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %do.end22.for.inc_crit_edge
  %inc31 = add nuw nsw i32 %i.092, 1
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  %cmp = icmp slt i32 %inc31, %15
  br i1 %cmp, label %for.inc.do.body11_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @call_rcu(ptr noundef nonnull %6, ptr noundef nonnull @mask_array_rcu_cb) #14
  br label %do.body33

do.body33:                                        ; preds = %for.end, %do.end.do.body33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !135
  %16 = ptrtoint ptr %mask_array to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call9.i.i.i, ptr %mask_array, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.then10.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body33 ], [ -12, %if.then10.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tbl_mask_array_reset_counters(ptr nocapture noundef readonly %ma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.mask_array, ptr %ma, i32 0, i32 2
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31 = icmp sgt i32 %1, 0
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end16_crit_edge

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %masks_usage_zero_cntr = getelementptr inbounds %struct.mask_array, ptr %ma, i32 0, i32 4
  %masks_usage_stats = getelementptr inbounds %struct.mask_array, ptr %ma, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %masks_usage_zero_cntr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %masks_usage_zero_cntr, align 4
  %arrayidx = getelementptr i64, ptr %3, i32 %i.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %arrayidx, align 8
  %call28 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %5)
  %cmp229 = icmp ult i32 %call28, %5
  br i1 %cmp229, label %for.body.for.body3_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %do.end12.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %call30 = phi i32 [ %call, %do.end12.for.body3_crit_edge ], [ %call28, %for.body.for.body3_crit_edge ]
  %6 = ptrtoint ptr %masks_usage_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %masks_usage_stats, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx5 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call30
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %arrayidx8 = getelementptr %struct.mask_array_stats, ptr %11, i32 0, i32 1, i32 %i.032
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %for.body3
  %call7 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %11)
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx8, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %11, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %15, %call7
  br i1 %cmp.i.i.i.i.not, label %do.end12, label %do.body6.do.body6_crit_edge

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6

do.end12:                                         ; preds = %do.body6
  %16 = ptrtoint ptr %masks_usage_zero_cntr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %masks_usage_zero_cntr, align 4
  %arrayidx14 = getelementptr i64, ptr %17, i32 %i.032
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %19, %13
  store i64 %add15, ptr %arrayidx14, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call30, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call, %20
  br i1 %cmp2, label %do.end12.for.body3_crit_edge, label %do.end12.for.inc_crit_edge

do.end12.for.inc_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end12.for.body3_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.inc:                                          ; preds = %do.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end16_crit_edge

for.inc.for.end16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end16:                                        ; preds = %for.inc.for.end16_crit_edge, %entry.for.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_tbl_destroy_rcu_cb(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @kvfree(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !136
  %5 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !137
  %14 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %33 = tail call i32 @llvm.read_register.i32(metadata !95) #14
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !105

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !140
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flow_hash(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %range) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %range, align 2
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %key, i32 %conv
  %end.i = getelementptr inbounds %struct.sw_flow_key_range, ptr %range, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end.i, align 2
  %sub.i = sub i16 %3, %1
  %4 = lshr i16 %sub.i, 2
  %5 = zext i16 %4 to i32
  %shl.i = shl nuw nsw i32 %5, 2
  %add.i = add nuw nsw i32 %shl.i, -559038737
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %sub.i)
  %cmp13.i = icmp ugt i16 %sub.i, 15
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %c.018.i = phi i32 [ %xor26.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.017.i = phi i32 [ %add27.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.016.i = phi i32 [ %add23.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %k.addr.015.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub28.i, %while.body.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %k.addr.015.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %k.addr.015.i, align 4
  %add2.i = add i32 %7, %a.016.i
  %arrayidx3.i = getelementptr i32, ptr %k.addr.015.i, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %9, %b.017.i
  %arrayidx5.i = getelementptr i32, ptr %k.addr.015.i, i32 2
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %11, %c.018.i
  %sub.i4 = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #14
  %xor.i = xor i32 %sub.i4, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #14
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #14
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #14
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #14
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #14
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add27.i = add i32 %xor22.i, %add23.i
  %sub28.i = add i32 %length.addr.014.i, -3
  %add.ptr.i = getelementptr i32, ptr %k.addr.015.i, i32 3
  %cmp.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %5, %entry.while.end.i_crit_edge ], [ %sub28.i, %while.body.i.while.end.i_crit_edge ]
  %k.addr.0.lcssa.i = phi ptr [ %add.ptr, %entry.while.end.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add23.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add27.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor26.i, %while.body.i.while.end.i_crit_edge ]
  %12 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash2.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb31.i_crit_edge
    i32 1, label %while.end.i.sw.bb34.i_crit_edge
  ]

while.end.i.sw.bb34.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i

while.end.i.sw.bb31.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb31.i

while.end.i.jhash2.exit_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jhash2.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx29.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 2
  %13 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %14, %c.0.lcssa.i
  br label %sw.bb31.i

sw.bb31.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb31.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb31.i_crit_edge ], [ %add30.i, %sw.bb.i ]
  %arrayidx32.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 1
  %15 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %16, %b.0.lcssa.i
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb31.i, %while.end.i.sw.bb34.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %add33.i, %sw.bb31.i ]
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %c.1.i, %sw.bb31.i ]
  %17 = ptrtoint ptr %k.addr.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %k.addr.0.lcssa.i, align 4
  %add36.i = add i32 %18, %a.0.lcssa.i
  %xor37.i = xor i32 %c.2.i, %b.1.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.1.i, i32 %b.1.i, i32 14) #14
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #14
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %b.1.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #14
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #14
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #14
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #14
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #14
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %sw.bb34.i, %while.end.i.jhash2.exit_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash2.exit_crit_edge ], [ %sub57.i, %sw.bb34.i ]
  ret i32 %c.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @table_instance_rehash(ptr nocapture noundef readonly %ti, i32 noundef %n_buckets, i1 noundef zeroext %ufid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_buckets, i32 4) #14
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i, !prof !112

kvmalloc_array.exit.thread.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.then4.i

kvmalloc_array.exit.i:                            ; preds = %if.end.i
  %4 = extractvalue { i32, i1 } %1, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #19
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %call7.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %kvmalloc_array.exit.i.if.then4.i_crit_edge, label %for.cond.preheader.i

kvmalloc_array.exit.i.if.then4.i_crit_edge:       ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

for.cond.preheader.i:                             ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_buckets)
  %cmp22.not.i = icmp eq i32 %n_buckets, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.table_instance_alloc.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.table_instance_alloc.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %table_instance_alloc.exit

if.then4.i:                                       ; preds = %kvmalloc_array.exit.i.if.then4.i_crit_edge, %kvmalloc_array.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %7, i32 %i.023.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n_buckets
  br i1 %exitcond.not.i, label %for.body.i.table_instance_alloc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.table_instance_alloc.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %table_instance_alloc.exit

table_instance_alloc.exit:                        ; preds = %for.body.i.table_instance_alloc.exit_crit_edge, %for.cond.preheader.i.table_instance_alloc.exit_crit_edge
  %n_buckets.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n_buckets, ptr %n_buckets.i, align 4
  %node_ver.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %node_ver.i, align 8
  %hash_seed.i = getelementptr inbounds %struct.table_instance, ptr %call7.i.i, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %hash_seed.i, i32 noundef 4) #14
  %node_ver.i4 = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 3
  %11 = ptrtoint ptr %node_ver.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node_ver.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i5 = icmp eq i32 %12, 0
  %lnot.ext.i = zext i1 %tobool.not.i5 to i32
  %13 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.i, ptr %node_ver.i, align 8
  %n_buckets.i6 = getelementptr inbounds %struct.table_instance, ptr %ti, i32 0, i32 1
  %14 = ptrtoint ptr %n_buckets.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_buckets.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp174.not.i = icmp eq i32 %15, 0
  br i1 %cmp174.not.i, label %table_instance_alloc.exit.cleanup_crit_edge, label %for.body.lr.ph.i

table_instance_alloc.exit.cleanup_crit_edge:      ; preds = %table_instance_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %table_instance_alloc.exit
  %.neg124.i = mul i32 %12, -8
  %idx.neg66.i = add i32 %.neg124.i, -8
  %idx.neg.i = add i32 %.neg124.i, -28
  br label %for.body.i9

for.body.i9:                                      ; preds = %if.end95.i.for.body.i9_crit_edge, %for.body.lr.ph.i
  %i.0175.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i10, %if.end95.i.for.body.i9_crit_edge ]
  %16 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ti, align 4
  %arrayidx.i7 = getelementptr %struct.hlist_head, ptr %17, i32 %i.0175.i
  %call.i = tail call i32 @lockdep_ovsl_is_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i8 = icmp eq i32 %call.i, 0
  br i1 %ufid, label %do.body.i, label %do.body39.i

do.body.i:                                        ; preds = %for.body.i9
  br i1 %tobool3.not.i8, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call4.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  %.b128.i = load i1, ptr @flow_table_copy_flows.__warned, align 1
  br i1 %.b128.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_table_copy_flows.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 595, ptr noundef nonnull @.str.3) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %18 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i7, align 4
  %tobool17.not.i = icmp eq ptr %19, null
  %add.ptr.i = getelementptr i8, ptr %19, i32 %idx.neg.i
  %tobool20.not172178.i = icmp eq ptr %add.ptr.i, null
  %tobool20.not172.i = select i1 %tobool17.not.i, i1 true, i1 %tobool20.not172178.i
  br i1 %tobool20.not172.i, label %do.end.i.if.end95.i_crit_edge, label %do.end.i.for.body21.i_crit_edge

do.end.i.for.body21.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body21.i

do.end.i.if.end95.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i

for.body21.i:                                     ; preds = %ufid_table_instance_insert.exit.i.for.body21.i_crit_edge, %do.end.i.for.body21.i_crit_edge
  %flow.0173.i = phi ptr [ %add.ptr35.i, %ufid_table_instance_insert.exit.i.for.body21.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body21.i_crit_edge ]
  %ufid_table.i.i = getelementptr inbounds %struct.sw_flow, ptr %flow.0173.i, i32 0, i32 2
  %hash.i.i = getelementptr inbounds %struct.sw_flow, ptr %flow.0173.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash.i.i, align 4
  %22 = ptrtoint ptr %hash_seed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_seed.i, align 4
  %add1.i.i.i.i = add i32 %23, -559038733
  %add.i.i.i.i.i = add i32 %add1.i.i.i.i, %21
  %or.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #14
  %sub.i.i.i.i.i = sub i32 0, %or.i.i.i.i.i.i
  %xor3.i.i.i.i.i = xor i32 %add.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i1.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i.i, i32 %sub.i.i.i.i.i, i32 11) #14
  %sub5.i.i.i.i.i = sub i32 %xor3.i.i.i.i.i, %or.i1.i.i.i.i.i
  %xor6.i.i.i.i.i = xor i32 %sub5.i.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i, i32 %sub5.i.i.i.i.i, i32 25) #14
  %sub8.i.i.i.i.i = sub i32 %xor6.i.i.i.i.i, %or.i2.i.i.i.i.i
  %xor9.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i3.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i, i32 %sub8.i.i.i.i.i, i32 16) #14
  %sub11.i.i.i.i.i = sub i32 %xor9.i.i.i.i.i, %or.i3.i.i.i.i.i
  %xor12.i.i.i.i.i = xor i32 %sub11.i.i.i.i.i, %sub5.i.i.i.i.i
  %or.i4.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i, i32 %sub11.i.i.i.i.i, i32 4) #14
  %sub14.i.i.i.i.i = sub i32 %xor12.i.i.i.i.i, %or.i4.i.i.i.i.i
  %xor15.i.i.i.i.i = xor i32 %sub14.i.i.i.i.i, %sub8.i.i.i.i.i
  %or.i5.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i.i, i32 %sub14.i.i.i.i.i, i32 14) #14
  %sub17.i.i.i.i.i = sub i32 %xor15.i.i.i.i.i, %or.i5.i.i.i.i.i
  %xor18.i.i.i.i.i = xor i32 %sub17.i.i.i.i.i, %sub11.i.i.i.i.i
  %or.i6.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i.i, i32 %sub17.i.i.i.i.i, i32 24) #14
  %sub20.i.i.i.i.i = sub i32 %xor18.i.i.i.i.i, %or.i6.i.i.i.i.i
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %26 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_buckets.i, align 4
  %sub.i.i.i = add i32 %27, -1
  %and.i.i.i = and i32 %sub20.i.i.i.i.i, %sub.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %25, i32 %and.i.i.i
  %28 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_ver.i, align 8
  %arrayidx.i.i = getelementptr [2 x %struct.hlist_node], ptr %ufid_table.i.i, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx.i.i, align 4
  %pprev.i.i.i = getelementptr [2 x %struct.hlist_node], ptr %ufid_table.i.i, i32 0, i32 %29, i32 1
  %33 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.i.i, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %for.body21.i.ufid_table_instance_insert.exit.i_crit_edge, label %do.body49.i.i.i

for.body21.i.ufid_table_instance_insert.exit.i_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ufid_table_instance_insert.exit.i

do.body49.i.i.i:                                  ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx.i.i, ptr %pprev51.i.i.i, align 4
  br label %ufid_table_instance_insert.exit.i

ufid_table_instance_insert.exit.i:                ; preds = %do.body49.i.i.i, %for.body21.i.ufid_table_instance_insert.exit.i_crit_edge
  %arrayidx27.i = getelementptr [2 x %struct.hlist_node], ptr %ufid_table.i.i, i32 0, i32 %12
  %36 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx27.i, align 4
  %tobool30.not.i = icmp eq ptr %37, null
  %add.ptr35.i = getelementptr i8, ptr %37, i32 %idx.neg.i
  %tobool20.not181.i = icmp eq ptr %add.ptr35.i, null
  %tobool20.not.i = select i1 %tobool30.not.i, i1 true, i1 %tobool20.not181.i
  br i1 %tobool20.not.i, label %ufid_table_instance_insert.exit.i.if.end95.i_crit_edge, label %ufid_table_instance_insert.exit.i.for.body21.i_crit_edge

ufid_table_instance_insert.exit.i.for.body21.i_crit_edge: ; preds = %ufid_table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21.i

ufid_table_instance_insert.exit.i.if.end95.i_crit_edge: ; preds = %ufid_table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i

do.body39.i:                                      ; preds = %for.body.i9
  br i1 %tobool3.not.i8, label %land.lhs.true42.i, label %do.body39.i.do.end53.i_crit_edge

do.body39.i.do.end53.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53.i

land.lhs.true42.i:                                ; preds = %do.body39.i
  %call43.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true45.i, label %land.lhs.true42.i.do.end53.i_crit_edge

land.lhs.true42.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53.i

land.lhs.true45.i:                                ; preds = %land.lhs.true42.i
  %call46.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true45.i.do.end53.i_crit_edge, label %land.lhs.true48.i

land.lhs.true45.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53.i

land.lhs.true48.i:                                ; preds = %land.lhs.true45.i
  %.b123125.i = load i1, ptr @flow_table_copy_flows.__warned.25, align 1
  br i1 %.b123125.i, label %land.lhs.true48.i.do.end53.i_crit_edge, label %if.then50.i

land.lhs.true48.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53.i

if.then50.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @flow_table_copy_flows.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 600, ptr noundef nonnull @.str.3) #14
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then50.i, %land.lhs.true48.i.do.end53.i_crit_edge, %land.lhs.true45.i.do.end53.i_crit_edge, %land.lhs.true42.i.do.end53.i_crit_edge, %do.body39.i.do.end53.i_crit_edge
  %38 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %arrayidx.i7, align 4
  %tobool62.not.i = icmp eq ptr %39, null
  %add.ptr67.i = getelementptr i8, ptr %39, i32 %idx.neg66.i
  %tobool72.not170177.i = icmp eq ptr %add.ptr67.i, null
  %tobool72.not170.i = select i1 %tobool62.not.i, i1 true, i1 %tobool72.not170177.i
  br i1 %tobool72.not170.i, label %do.end53.i.if.end95.i_crit_edge, label %do.end53.i.for.body73.i_crit_edge

do.end53.i.for.body73.i_crit_edge:                ; preds = %do.end53.i
  br label %for.body73.i

do.end53.i.if.end95.i_crit_edge:                  ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i

for.body73.i:                                     ; preds = %table_instance_insert.exit.i.for.body73.i_crit_edge, %do.end53.i.for.body73.i_crit_edge
  %flow.1171.i = phi ptr [ %add.ptr90.i, %table_instance_insert.exit.i.for.body73.i_crit_edge ], [ %add.ptr67.i, %do.end53.i.for.body73.i_crit_edge ]
  %flow_table.i.i = getelementptr inbounds %struct.sw_flow, ptr %flow.1171.i, i32 0, i32 1
  %hash.i129.i = getelementptr inbounds %struct.sw_flow, ptr %flow.1171.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %hash.i129.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash.i129.i, align 8
  %42 = ptrtoint ptr %hash_seed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hash_seed.i, align 4
  %add1.i.i.i131.i = add i32 %43, -559038733
  %add.i.i.i.i132.i = add i32 %add1.i.i.i131.i, %41
  %or.i.i.i.i.i133.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i131.i, i32 %add1.i.i.i131.i, i32 14) #14
  %sub.i.i.i.i134.i = sub i32 0, %or.i.i.i.i.i133.i
  %xor3.i.i.i.i135.i = xor i32 %add.i.i.i.i132.i, %sub.i.i.i.i134.i
  %or.i1.i.i.i.i136.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i134.i, i32 %sub.i.i.i.i134.i, i32 11) #14
  %sub5.i.i.i.i137.i = sub i32 %xor3.i.i.i.i135.i, %or.i1.i.i.i.i136.i
  %xor6.i.i.i.i138.i = xor i32 %sub5.i.i.i.i137.i, %add1.i.i.i131.i
  %or.i2.i.i.i.i139.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i137.i, i32 %sub5.i.i.i.i137.i, i32 25) #14
  %sub8.i.i.i.i140.i = sub i32 %xor6.i.i.i.i138.i, %or.i2.i.i.i.i139.i
  %xor9.i.i.i.i141.i = xor i32 %sub8.i.i.i.i140.i, %sub.i.i.i.i134.i
  %or.i3.i.i.i.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i140.i, i32 %sub8.i.i.i.i140.i, i32 16) #14
  %sub11.i.i.i.i143.i = sub i32 %xor9.i.i.i.i141.i, %or.i3.i.i.i.i142.i
  %xor12.i.i.i.i144.i = xor i32 %sub11.i.i.i.i143.i, %sub5.i.i.i.i137.i
  %or.i4.i.i.i.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i143.i, i32 %sub11.i.i.i.i143.i, i32 4) #14
  %sub14.i.i.i.i146.i = sub i32 %xor12.i.i.i.i144.i, %or.i4.i.i.i.i145.i
  %xor15.i.i.i.i147.i = xor i32 %sub14.i.i.i.i146.i, %sub8.i.i.i.i140.i
  %or.i5.i.i.i.i148.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i146.i, i32 %sub14.i.i.i.i146.i, i32 14) #14
  %sub17.i.i.i.i149.i = sub i32 %xor15.i.i.i.i147.i, %or.i5.i.i.i.i148.i
  %xor18.i.i.i.i150.i = xor i32 %sub17.i.i.i.i149.i, %sub11.i.i.i.i143.i
  %or.i6.i.i.i.i151.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i149.i, i32 %sub17.i.i.i.i149.i, i32 24) #14
  %sub20.i.i.i.i152.i = sub i32 %xor18.i.i.i.i150.i, %or.i6.i.i.i.i151.i
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_buckets.i, align 4
  %sub.i.i154.i = add i32 %47, -1
  %and.i.i155.i = and i32 %sub20.i.i.i.i152.i, %sub.i.i154.i
  %arrayidx.i.i156.i = getelementptr %struct.hlist_head, ptr %45, i32 %and.i.i155.i
  %48 = ptrtoint ptr %node_ver.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %node_ver.i, align 8
  %arrayidx.i158.i = getelementptr [2 x %struct.hlist_node], ptr %flow_table.i.i, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i156.i, align 4
  %52 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %arrayidx.i158.i, align 4
  %pprev.i.i159.i = getelementptr [2 x %struct.hlist_node], ptr %flow_table.i.i, i32 0, i32 %49, i32 1
  %53 = ptrtoint ptr %pprev.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx.i.i156.i, ptr %pprev.i.i159.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %54 = ptrtoint ptr %arrayidx.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx.i158.i, ptr %arrayidx.i.i156.i, align 4
  %tobool.not.i.i160.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i160.i, label %for.body73.i.table_instance_insert.exit.i_crit_edge, label %do.body49.i.i162.i

for.body73.i.table_instance_insert.exit.i_crit_edge: ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %table_instance_insert.exit.i

do.body49.i.i162.i:                               ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i.i161.i = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %pprev51.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx.i158.i, ptr %pprev51.i.i161.i, align 4
  br label %table_instance_insert.exit.i

table_instance_insert.exit.i:                     ; preds = %do.body49.i.i162.i, %for.body73.i.table_instance_insert.exit.i_crit_edge
  %arrayidx81.i = getelementptr [2 x %struct.hlist_node], ptr %flow_table.i.i, i32 0, i32 %12
  %56 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx81.i, align 8
  %tobool85.not.i = icmp eq ptr %57, null
  %add.ptr90.i = getelementptr i8, ptr %57, i32 %idx.neg66.i
  %tobool72.not180.i = icmp eq ptr %add.ptr90.i, null
  %tobool72.not.i = select i1 %tobool85.not.i, i1 true, i1 %tobool72.not180.i
  br i1 %tobool72.not.i, label %table_instance_insert.exit.i.if.end95.i_crit_edge, label %table_instance_insert.exit.i.for.body73.i_crit_edge

table_instance_insert.exit.i.for.body73.i_crit_edge: ; preds = %table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body73.i

table_instance_insert.exit.i.if.end95.i_crit_edge: ; preds = %table_instance_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i

if.end95.i:                                       ; preds = %table_instance_insert.exit.i.if.end95.i_crit_edge, %do.end53.i.if.end95.i_crit_edge, %ufid_table_instance_insert.exit.i.if.end95.i_crit_edge, %do.end.i.if.end95.i_crit_edge
  %inc.i10 = add nuw i32 %i.0175.i, 1
  %58 = ptrtoint ptr %n_buckets.i6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_buckets.i6, align 4
  %cmp.i = icmp ult i32 %inc.i10, %59
  br i1 %cmp.i, label %if.end95.i.for.body.i9_crit_edge, label %if.end95.i.cleanup_crit_edge

if.end95.i.cleanup_crit_edge:                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end95.i.for.body.i9_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i9

cleanup:                                          ; preds = %if.end95.i.cleanup_crit_edge, %table_instance_alloc.exit.cleanup_crit_edge, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %table_instance_alloc.exit.cleanup_crit_edge ], [ null, %if.then4.i ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end95.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @ovs_flow_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/openvswitch/flow_table.c", i32 90, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/openvswitch/flow_table.c", i32 393, i32 26}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../net/openvswitch/flow_table.c", i32 539, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/openvswitch/flow_table.c", i32 631, i32 11}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/openvswitch/flow_table.c", i32 632, i32 16}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/openvswitch/flow_table.c", i32 791, i32 26}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/openvswitch/flow_table.c", i32 792, i32 26}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/openvswitch/flow_table.c", i32 793, i32 30}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/openvswitch/flow_table.c", i32 852, i32 30}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/openvswitch/flow_table.c", i32 853, i32 26}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/openvswitch/flow_table.c", i32 872, i32 26}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/openvswitch/flow_table.c", i32 877, i32 31}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/openvswitch/flow_table.c", i32 882, i32 10}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/openvswitch/flow_table.c", i32 922, i32 30}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/openvswitch/flow_table.c", i32 929, i32 2}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/openvswitch/flow_table.c", i32 940, i32 26}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/openvswitch/flow_table.c", i32 946, i32 26}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/openvswitch/flow_table.c", i32 960, i32 30}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/openvswitch/flow_table.c", i32 961, i32 35}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/openvswitch/flow_table.c", i32 1109, i32 26}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/openvswitch/flow_table.c", i32 1125, i32 10}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/openvswitch/flow_table.c", i32 1180, i32 7}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/openvswitch/flow_table.c", i32 1198, i32 33}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/openvswitch/flow_table.c", i32 1206, i32 23}
!53 = !{ptr @flow_cache, !54, !"flow_cache", i1 false, i1 false}
!54 = !{!"../net/openvswitch/flow_table.c", i32 45, i32 27}
!55 = !{ptr @flow_stats_cache, !56, !"flow_stats_cache", i1 false, i1 false}
!56 = !{!"../net/openvswitch/flow_table.c", i32 46, i32 20}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/openvswitch/flow_table.c", i32 303, i32 26}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/openvswitch/flow_table.c", i32 308, i32 15}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/openvswitch/flow_table.c", i32 256, i32 8}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/openvswitch/flow_table.c", i32 261, i32 8}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/openvswitch/flow_table.c", i32 743, i32 10}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/openvswitch/flow_table.c", i32 761, i32 10}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!74 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/openvswitch/flow_table.c", i32 715, i32 2}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/openvswitch/flow_table.c", i32 995, i32 7}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/openvswitch/flow_table.c", i32 998, i32 7}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/openvswitch/flow_table.c", i32 275, i32 26}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/openvswitch/flow_table.c", i32 284, i32 8}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/openvswitch/flow_table.c", i32 292, i32 2}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/openvswitch/flow_table.c", i32 1043, i32 7}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/openvswitch/flow_table.c", i32 593, i32 4}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/openvswitch/flow_table.c", i32 598, i32 4}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/openvswitch/flow_table.c", i32 1066, i32 7}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i32 0, i32 33}
!107 = !{i64 2158197526}
!108 = !{i64 2158204993}
!109 = !{i64 2158212508}
!110 = !{i64 2158220332}
!111 = !{i64 2158228243}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2158184822, i64 2158185315, i64 2158184859, i64 2158184915, i64 2158184949, i64 2158184973, i64 2158185014, i64 2158185035, i64 2158185063, i64 2158185097}
!114 = !{i64 2158168086, i64 2158168579, i64 2158168123, i64 2158168179, i64 2158168213, i64 2158168237, i64 2158168278, i64 2158168299, i64 2158168327, i64 2158168361}
!115 = !{i64 2158176504}
!116 = !{i64 2158323386}
!117 = !{i64 2158331344}
!118 = !{i64 2150345009}
!119 = !{!"auto-init"}
!120 = !{i64 2158440215, i64 2158440708, i64 2158440252, i64 2158440308, i64 2158440342, i64 2158440366, i64 2158440407, i64 2158440428, i64 2158440456, i64 2158440490}
!121 = !{i64 2158152107, i64 2158152600, i64 2158152144, i64 2158152200, i64 2158152234, i64 2158152258, i64 2158152299, i64 2158152320, i64 2158152348, i64 2158152382}
!122 = !{i64 2158158856}
!123 = !{i64 2158443642, i64 2158444136, i64 2158443679, i64 2158443735, i64 2158443769, i64 2158443793, i64 2158443834, i64 2158443855, i64 2158443883, i64 2158443917}
!124 = !{i64 2149829601}
!125 = !{i64 2158451079}
!126 = !{i64 2158459401}
!127 = !{i64 2150344359}
!128 = !{i64 2158477843}
!129 = !{i64 641971, i64 642032}
!130 = !{i64 644703}
!131 = !{i64 644988}
!132 = !{i64 2155097631}
!133 = !{i64 2155097473}
!134 = !{i64 2155097801}
!135 = !{i64 2158143141}
!136 = !{i64 2150236611}
!137 = !{i64 2150241545}
!138 = !{i64 2150263263}
!139 = !{i64 2150268157}
!140 = !{i64 2150344684}

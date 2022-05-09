; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_dumpspec = type { i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.nfp_dump_tl = type { i32, i32, [0 x i8] }
%struct.nfp_dumpspec_csr = type { %struct.nfp_dump_tl, %struct.nfp_dump_common_cpp, i32 }
%struct.nfp_dump_common_cpp = type { %struct.nfp_dumpspec_cpp_isl_id, i32, i32 }
%struct.nfp_dumpspec_cpp_isl_id = type { i8, i8, i8, i8 }
%struct.nfp_dumpspec_rtsym = type { %struct.nfp_dump_tl, [0 x i8] }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.nfp_dump_prolog = type { %struct.nfp_dump_tl, i32 }
%struct.nfp_dump_error = type { %struct.nfp_dump_tl, i32, [4 x i8], [0 x i8] }
%struct.nfp_dump_csr = type { %struct.nfp_dump_tl, %struct.nfp_dump_common_cpp, i32, i32, i32 }
%struct.nfp_dump_rtsym = type { %struct.nfp_dump_tl, %struct.nfp_dump_common_cpp, i32, i8, [0 x i8] }
%struct.nfp_rtsym = type { ptr, i64, i64, i32, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_abi_dump_spec\00", [17 x i8] zeroinitializer }, align 32
@nfp_net_dump_load_dumpspec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: Debug dump specification read failed.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_net_dump_load_dumpspec\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_net_dump_load_dumpspec._entry_ptr = internal global ptr @nfp_net_dump_load_dumpspec._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.8 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 163, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [58 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 177, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nfp_net_dump_load_dumpspec._entry, ptr @nfp_net_dump_load_dumpspec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_dump_load_dumpspec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_net_dump_load_dumpspec(ptr noundef %cpp, ptr noundef %rtbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_rtsym_lookup(ptr noundef %rtbl, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @nfp_rtsym_size(ptr noundef nonnull %call) #5
  %0 = trunc i64 %call1 to i32
  %conv = add i32 %0, 4
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %conv) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %call2, align 4
  %data = getelementptr inbounds %struct.nfp_dumpspec, ptr %call2, i32 0, i32 1
  %call8 = tail call i32 @nfp_rtsym_read(ptr noundef %cpp, ptr noundef nonnull %call, i64 noundef 0, ptr noundef %data, i32 noundef %0) #5
  %conv9 = sext i32 %call8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %conv9)
  %cmp.not = icmp eq i64 %call1, %conv9
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vfree(ptr noundef nonnull %call2) #5
  %call12 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #5
  %parent = getelementptr inbounds %struct.device, ptr %call12, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call2, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_rtsym_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_net_dump_calculate_size(ptr nocapture noundef readonly %pf, ptr noundef %spec, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i28 = icmp ugt i32 %1, 7
  br i1 %cmp.i28, label %while.body.i.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.i.lr.ph:                               ; preds = %entry
  %conv.i = zext i32 %1 to i64
  %data = getelementptr inbounds %struct.nfp_dumpspec, ptr %spec, i32 0, i32 1
  %hwinfo.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 21
  %rtbl1.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %mip.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %nfp_calc_specific_level_size.exit.while.body.i_crit_edge, %while.body.i.lr.ph
  %p.0.i32 = phi ptr [ %data, %while.body.i.lr.ph ], [ %add.ptr.i, %nfp_calc_specific_level_size.exit.while.body.i_crit_edge ]
  %remaining.0.i31 = phi i64 [ %conv.i, %while.body.i.lr.ph ], [ %sub15.i, %nfp_calc_specific_level_size.exit.while.body.i_crit_edge ]
  %lev_sz.sroa.5.029 = phi i32 [ 16, %while.body.i.lr.ph ], [ %lev_sz.sroa.5.2, %nfp_calc_specific_level_size.exit.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %p.0.i32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.0.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %length.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i32, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %length3.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i32, i32 0, i32 1
  %6 = ptrtoint ptr %length3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length3.i, align 4
  %conv4.i = zext i32 %7 to i64
  %sub.i = add nsw i64 %remaining.0.i31, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv4.i)
  %cmp5.i = icmp uge i64 %sub.i, %conv4.i
  %rem.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp10.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp5.i, %cmp10.not.i
  br i1 %or.cond.i, label %if.end13.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %add.i = add i32 %7, 8
  %add.ptr.i = getelementptr i8, ptr %p.0.i32, i32 %add.i
  %conv14.i = zext i32 %add.i to i64
  %sub15.i = sub nsw i64 %remaining.0.i31, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %flag)
  %cmp.not.i = icmp eq i32 %3, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp.i4.i = icmp ugt i32 %7, 7
  %or.cond = select i1 %cmp.not.i, i1 %cmp.i4.i, i1 false
  br i1 %or.cond, label %while.body.i.lr.ph.i, label %if.end13.i.nfp_calc_specific_level_size.exit_crit_edge

if.end13.i.nfp_calc_specific_level_size.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_calc_specific_level_size.exit

while.body.i.lr.ph.i:                             ; preds = %if.end13.i
  %data.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i32, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge, %while.body.i.lr.ph.i
  %lev_sz.sroa.5.1 = phi i32 [ %lev_sz.sroa.5.029, %while.body.i.lr.ph.i ], [ %add12.i.i, %nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge ]
  %p.0.i6.i = phi ptr [ %data.i, %while.body.i.lr.ph.i ], [ %add.ptr.i.i, %nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge ]
  %remaining.0.i5.i = phi i64 [ %conv4.i, %while.body.i.lr.ph.i ], [ %sub15.i.i, %nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %p.0.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p.0.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %length.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i6.i, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.nfp_calc_specific_level_size.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i.nfp_calc_specific_level_size.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_calc_specific_level_size.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %length3.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i6.i, i32 0, i32 1
  %12 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length3.i.i, align 4
  %conv4.i.i = zext i32 %13 to i64
  %sub.i.i = add nsw i64 %remaining.0.i5.i, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv4.i.i)
  %cmp5.i.i = icmp uge i64 %sub.i.i, %conv4.i.i
  %rem.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp10.not.i.i = icmp eq i32 %rem.i.i, 0
  %or.cond.i.i = and i1 %cmp5.i.i, %cmp10.not.i.i
  br i1 %or.cond.i.i, label %if.end13.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i.i:                                     ; preds = %if.end.i.i
  %add.i.i = add i32 %13, 8
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i6.i, i32 %add.i.i
  %conv14.i.i = zext i32 %add.i.i to i64
  %sub15.i.i = sub nsw i64 %remaining.0.i5.i, %conv14.i.i
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default.i.i [
    i32 6, label %sw.bb.i.i
    i32 0, label %if.end13.i.i.sw.bb1.i.i_crit_edge
    i32 1, label %if.end13.i.i.sw.bb1.i.i_crit_edge38
    i32 2, label %if.end13.i.i.sw.bb1.i.i_crit_edge39
    i32 3, label %sw.bb8.i.i
    i32 4, label %sw.bb21.i.i
    i32 5, label %sw.bb24.i.i
    i32 7, label %sw.bb30.i.i
  ]

if.end13.i.i.sw.bb1.i.i_crit_edge39:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end13.i.i.sw.bb1.i.i_crit_edge38:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end13.i.i.sw.bb1.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i:                                        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %mip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mip.i.i.i, align 4
  %call.i.i.i = tail call ptr @nfp_mip_name(ptr noundef %16) #5
  %call1.i.i.i = tail call i32 @strlen(ptr noundef %call.i.i.i) #10
  %17 = add i32 %call1.i.i.i, 16
  %add3.i.i.i = and i32 %17, -8
  br label %nfp_add_tlv_size.exit.i

sw.bb1.i.i:                                       ; preds = %if.end13.i.i.sw.bb1.i.i_crit_edge, %if.end13.i.i.sw.bb1.i.i_crit_edge38, %if.end13.i.i.sw.bb1.i.i_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i.i.i = icmp ult i32 %13, 16
  br i1 %cmp.i.i.i, label %sw.bb1.i.i.if.then.i.i_crit_edge, label %nfp_csr_spec_valid.exit.i.i

sw.bb1.i.i.if.then.i.i_crit_edge:                 ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

nfp_csr_spec_valid.exit.i.i:                      ; preds = %sw.bb1.i.i
  %register_width.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i6.i, i32 0, i32 2
  %18 = ptrtoint ptr %register_width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %register_width.i.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %19, label %nfp_csr_spec_valid.exit.i.i.if.then.i.i_crit_edge [
    i32 64, label %nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge
    i32 32, label %nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge40
  ]

nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge40: ; preds = %nfp_csr_spec_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

nfp_csr_spec_valid.exit.i.i.if.then.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nfp_csr_spec_valid.exit.i.i.if.then.i.i_crit_edge, %sw.bb1.i.i.if.then.i.i_crit_edge
  %add1.i.i.i = add i32 %13, 31
  %and.i.i.i = and i32 %add1.i.i.i, -8
  br label %nfp_add_tlv_size.exit.i

if.else.i.i:                                      ; preds = %nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge, %nfp_csr_spec_valid.exit.i.i.if.else.i.i_crit_edge40
  %dump_length.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i6.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %dump_length.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dump_length.i.i, align 4
  %23 = add i32 %22, 39
  %add6.i.i = and i32 %23, -8
  br label %nfp_add_tlv_size.exit.i

sw.bb8.i.i:                                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i58.i.i = icmp ult i32 %13, 16
  br i1 %cmp.i58.i.i, label %sw.bb8.i.i.if.then10.i.i_crit_edge, label %nfp_csr_spec_valid.exit65.i.i

sw.bb8.i.i.if.then10.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i.i

nfp_csr_spec_valid.exit65.i.i:                    ; preds = %sw.bb8.i.i
  %register_width.i59.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i6.i, i32 0, i32 2
  %24 = ptrtoint ptr %register_width.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %register_width.i59.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %25, label %nfp_csr_spec_valid.exit65.i.i.if.then10.i.i_crit_edge [
    i32 64, label %nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge
    i32 32, label %nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge41
  ]

nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge41: ; preds = %nfp_csr_spec_valid.exit65.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13.i.i

nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit65.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13.i.i

nfp_csr_spec_valid.exit65.i.i.if.then10.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit65.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %nfp_csr_spec_valid.exit65.i.i.if.then10.i.i_crit_edge, %sw.bb8.i.i.if.then10.i.i_crit_edge
  %add1.i67.i.i = add i32 %13, 31
  %and.i68.i.i = and i32 %add1.i67.i.i, -8
  br label %nfp_add_tlv_size.exit.i

if.else13.i.i:                                    ; preds = %nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge, %nfp_csr_spec_valid.exit65.i.i.if.else13.i.i_crit_edge41
  %dump_length15.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i6.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %dump_length15.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dump_length15.i.i, align 4
  %mul.i.i = shl i32 %28, 3
  %add18.i.i = add i32 %mul.i.i, 32
  br label %nfp_add_tlv_size.exit.i

sw.bb21.i.i:                                      ; preds = %if.end13.i.i
  %rtsym.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_rtsym, ptr %p.0.i6.i, i32 0, i32 1
  %call.i70.i.i = tail call i32 @strnlen(ptr noundef %rtsym.i.i.i, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.i.i, i32 %13)
  %cmp.i71.i.i = icmp eq i32 %call.i70.i.i, %13
  br i1 %cmp.i71.i.i, label %if.then.i.i.i, label %if.end.i72.i.i

if.then.i.i.i:                                    ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add1.i.i.i.i = add i32 %13, 31
  %and.i.i.i.i = and i32 %add1.i.i.i.i, -8
  br label %nfp_add_tlv_size.exit.i

if.end.i72.i.i:                                   ; preds = %sw.bb21.i.i
  %29 = ptrtoint ptr %rtbl1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtbl1.i.i.i, align 4
  %call5.i.i.i = tail call ptr @nfp_rtsym_lookup(ptr noundef %30, ptr noundef %rtsym.i.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.end8.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i72.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length3.i.i, align 4
  %add1.i28.i.i.i = add i32 %32, 31
  %and.i29.i.i.i = and i32 %add1.i28.i.i.i, -8
  br label %nfp_add_tlv_size.exit.i

if.end8.i.i.i:                                    ; preds = %if.end.i72.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add10.i.i.i = add i32 %call.i70.i.i, 33
  %and.i73.i.i = and i32 %add10.i.i.i, -8
  %call11.i.i.i = tail call i64 @nfp_rtsym_size(ptr noundef nonnull %call5.i.i.i) #5
  %33 = trunc i64 %call11.i.i.i to i32
  %34 = add i32 %33, 7
  %35 = and i32 %34, -8
  %conv15.i.i.i = add i32 %35, %and.i73.i.i
  br label %nfp_add_tlv_size.exit.i

sw.bb24.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %hwinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwinfo.i.i.i, align 4
  %call25.i.i = tail call i32 @nfp_hwinfo_get_packed_str_size(ptr noundef %37) #5
  %38 = add i32 %call25.i.i, 15
  %add28.i.i = and i32 %38, -8
  br label %nfp_add_tlv_size.exit.i

sw.bb30.i.i:                                      ; preds = %if.end13.i.i
  %data.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i6.i, i32 0, i32 2
  %call.i76.i.i = tail call i32 @strnlen(ptr noundef %data.i.i.i, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i76.i.i, i32 %13)
  %cmp.i77.i.i = icmp eq i32 %call.i76.i.i, %13
  br i1 %cmp.i77.i.i, label %if.then.i79.i.i, label %if.end.i81.i.i

if.then.i79.i.i:                                  ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add1.i.i78.i.i = add i32 %13, 31
  br label %nfp_calc_hwinfo_field_sz.exit.i.i

if.end.i81.i.i:                                   ; preds = %sw.bb30.i.i
  %39 = ptrtoint ptr %hwinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwinfo.i.i.i, align 4
  %call4.i.i.i = tail call ptr @nfp_hwinfo_lookup(ptr noundef %40, ptr noundef %data.i.i.i) #5
  %tobool.not.i80.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool.not.i80.i.i, label %if.then5.i.i.i, label %if.end7.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i81.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length3.i.i, align 4
  %add1.i22.i.i.i = add i32 %42, 31
  br label %nfp_calc_hwinfo_field_sz.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i81.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i.i.i = tail call i32 @strlen(ptr noundef nonnull %call4.i.i.i) #10
  %add.i.i.i = add i32 %call.i76.i.i, 17
  %43 = add i32 %add.i.i.i, %call8.i.i.i
  br label %nfp_calc_hwinfo_field_sz.exit.i.i

nfp_calc_hwinfo_field_sz.exit.i.i:                ; preds = %if.end7.i.i.i, %if.then5.i.i.i, %if.then.i79.i.i
  %retval.0.in.i.i.i = phi i32 [ %add1.i.i78.i.i, %if.then.i79.i.i ], [ %43, %if.end7.i.i.i ], [ %add1.i22.i.i.i, %if.then5.i.i.i ]
  %retval.0.i82.i.i = and i32 %retval.0.in.i.i.i, -8
  br label %nfp_add_tlv_size.exit.i

sw.default.i.i:                                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add1.i84.i.i = add i32 %13, 31
  %and.i85.i.i = and i32 %add1.i84.i.i, -8
  br label %nfp_add_tlv_size.exit.i

nfp_add_tlv_size.exit.i:                          ; preds = %sw.default.i.i, %nfp_calc_hwinfo_field_sz.exit.i.i, %sw.bb24.i.i, %if.end8.i.i.i, %if.then6.i.i.i, %if.then.i.i.i, %if.else13.i.i, %if.then10.i.i, %if.else.i.i, %if.then.i.i, %sw.bb.i.i
  %and.i68.sink.i.i = phi i32 [ %and.i68.i.i, %if.then10.i.i ], [ %lev_sz.sroa.5.1, %if.else13.i.i ], [ %and.i.i.i, %if.then.i.i ], [ %lev_sz.sroa.5.1, %if.else.i.i ], [ %lev_sz.sroa.5.1, %sw.default.i.i ], [ %retval.0.i82.i.i, %nfp_calc_hwinfo_field_sz.exit.i.i ], [ %lev_sz.sroa.5.1, %sw.bb24.i.i ], [ %lev_sz.sroa.5.1, %sw.bb.i.i ], [ %and.i.i.i.i, %if.then.i.i.i ], [ %conv15.i.i.i, %if.end8.i.i.i ], [ %and.i29.i.i.i, %if.then6.i.i.i ]
  %.sink.i.i = phi i32 [ %lev_sz.sroa.5.1, %if.then10.i.i ], [ %add18.i.i, %if.else13.i.i ], [ %lev_sz.sroa.5.1, %if.then.i.i ], [ %add6.i.i, %if.else.i.i ], [ %and.i85.i.i, %sw.default.i.i ], [ %lev_sz.sroa.5.1, %nfp_calc_hwinfo_field_sz.exit.i.i ], [ %add28.i.i, %sw.bb24.i.i ], [ %add3.i.i.i, %sw.bb.i.i ], [ %lev_sz.sroa.5.1, %if.then.i.i.i ], [ %lev_sz.sroa.5.1, %if.end8.i.i.i ], [ %lev_sz.sroa.5.1, %if.then6.i.i.i ]
  %add12.i.i = add i32 %.sink.i.i, %and.i68.sink.i.i
  %cmp.i.i = icmp sgt i64 %sub15.i.i, 7
  br i1 %cmp.i.i, label %nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge, label %nfp_add_tlv_size.exit.i.nfp_calc_specific_level_size.exit_crit_edge

nfp_add_tlv_size.exit.i.nfp_calc_specific_level_size.exit_crit_edge: ; preds = %nfp_add_tlv_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_calc_specific_level_size.exit

nfp_add_tlv_size.exit.i.while.body.i.i_crit_edge: ; preds = %nfp_add_tlv_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

nfp_calc_specific_level_size.exit:                ; preds = %nfp_add_tlv_size.exit.i.nfp_calc_specific_level_size.exit_crit_edge, %land.lhs.true.i.i.nfp_calc_specific_level_size.exit_crit_edge, %if.end13.i.nfp_calc_specific_level_size.exit_crit_edge
  %lev_sz.sroa.5.2 = phi i32 [ %lev_sz.sroa.5.029, %if.end13.i.nfp_calc_specific_level_size.exit_crit_edge ], [ %add12.i.i, %nfp_add_tlv_size.exit.i.nfp_calc_specific_level_size.exit_crit_edge ], [ %lev_sz.sroa.5.1, %land.lhs.true.i.i.nfp_calc_specific_level_size.exit_crit_edge ]
  %cmp.i = icmp sgt i64 %sub15.i, 7
  br i1 %cmp.i, label %nfp_calc_specific_level_size.exit.while.body.i_crit_edge, label %nfp_calc_specific_level_size.exit.if.end_crit_edge

nfp_calc_specific_level_size.exit.if.end_crit_edge: ; preds = %nfp_calc_specific_level_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

nfp_calc_specific_level_size.exit.while.body.i_crit_edge: ; preds = %nfp_calc_specific_level_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end:                                           ; preds = %nfp_calc_specific_level_size.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %lev_sz.sroa.5.0.lcssa = phi i32 [ 16, %entry.if.end_crit_edge ], [ %lev_sz.sroa.5.029, %land.lhs.true.i.if.end_crit_edge ], [ %lev_sz.sroa.5.2, %nfp_calc_specific_level_size.exit.if.end_crit_edge ]
  %conv2 = zext i32 %lev_sz.sroa.5.0.lcssa to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv2, %if.end ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_dump_populate_buffer(ptr nocapture noundef readonly %pf, ptr noundef %spec, ptr nocapture noundef %dump_param, ptr noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump_param, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flag, align 4
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump_param, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 16
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10000, ptr %dest, align 4
  %length.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dest, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %length.i.i, align 4
  %dump_level.i = getelementptr inbounds %struct.nfp_dump_prolog, ptr %dest, i32 0, i32 1
  %6 = ptrtoint ptr %dump_level.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %dump_level.i, align 4
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.i136 = icmp ugt i32 %8, 7
  br i1 %cmp.i136, label %while.body.i.lr.ph, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

while.body.i.lr.ph:                               ; preds = %if.end
  %conv.i = zext i32 %8 to i64
  %data = getelementptr inbounds %struct.nfp_dumpspec, ptr %spec, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %dest, i32 16
  %hwinfo.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 21
  %rtbl1.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %cpp40.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %mip.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %nfp_dump_specific_level.exit.while.body.i_crit_edge, %while.body.i.lr.ph
  %p.0.i141 = phi ptr [ %data, %while.body.i.lr.ph ], [ %add.ptr.i, %nfp_dump_specific_level.exit.while.body.i_crit_edge ]
  %remaining.0.i140 = phi i64 [ %conv.i, %while.body.i.lr.ph ], [ %sub15.i, %nfp_dump_specific_level.exit.while.body.i_crit_edge ]
  %dump.sroa.6.1138 = phi i32 [ 16, %while.body.i.lr.ph ], [ %dump.sroa.6.4, %nfp_dump_specific_level.exit.while.body.i_crit_edge ]
  %dump.sroa.67.1137 = phi ptr [ %add.ptr.i.i, %while.body.i.lr.ph ], [ %dump.sroa.67.4, %nfp_dump_specific_level.exit.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %p.0.i141 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p.0.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.i.if.end.i14_crit_edge

while.body.i.if.end.i14_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i14

land.lhs.true.i:                                  ; preds = %while.body.i
  %length.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i141, i32 0, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end4_crit_edge, label %land.lhs.true.i.if.end.i14_crit_edge

land.lhs.true.i.if.end.i14_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i14

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i14:                                       ; preds = %land.lhs.true.i.if.end.i14_crit_edge, %while.body.i.if.end.i14_crit_edge
  %length3.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i141, i32 0, i32 1
  %13 = ptrtoint ptr %length3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length3.i, align 4
  %conv4.i = zext i32 %14 to i64
  %sub.i = add nsw i64 %remaining.0.i140, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv4.i)
  %cmp5.i = icmp uge i64 %sub.i, %conv4.i
  %rem.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp10.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp5.i, %cmp10.not.i
  br i1 %or.cond.i, label %if.end13.i, label %if.end.i14.cleanup_crit_edge

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i14
  %add.i = add i32 %14, 8
  %add.ptr.i = getelementptr i8, ptr %p.0.i141, i32 %add.i
  %conv14.i = zext i32 %add.i to i64
  %sub15.i = sub nsw i64 %remaining.0.i140, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp.not.i = icmp eq i32 %10, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i19.i = icmp ugt i32 %14, 7
  %or.cond = select i1 %cmp.not.i, i1 %cmp.i19.i, i1 false
  br i1 %or.cond, label %while.body.i.lr.ph.i, label %if.end13.i.nfp_dump_specific_level.exit_crit_edge

if.end13.i.nfp_dump_specific_level.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_specific_level.exit

while.body.i.lr.ph.i:                             ; preds = %if.end13.i
  %data.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i141, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge, %while.body.i.lr.ph.i
  %dump.sroa.67.2 = phi ptr [ %dump.sroa.67.1137, %while.body.i.lr.ph.i ], [ %dump.sroa.67.3, %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge ]
  %dump.sroa.6.2 = phi i32 [ %dump.sroa.6.1138, %while.body.i.lr.ph.i ], [ %dump.sroa.6.3, %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge ]
  %p.0.i21.i = phi ptr [ %data.i, %while.body.i.lr.ph.i ], [ %add.ptr.i.i22, %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge ]
  %remaining.0.i20.i = phi i64 [ %conv4.i, %while.body.i.lr.ph.i ], [ %sub15.i.i, %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %p.0.i21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p.0.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i20_crit_edge

while.body.i.i.if.end.i.i20_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i20

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %length.i.i18 = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i21.i, i32 0, i32 1
  %17 = ptrtoint ptr %length.i.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.nfp_dump_specific_level.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i20_crit_edge

land.lhs.true.i.i.if.end.i.i20_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i20

land.lhs.true.i.i.nfp_dump_specific_level.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_specific_level.exit

if.end.i.i20:                                     ; preds = %land.lhs.true.i.i.if.end.i.i20_crit_edge, %while.body.i.i.if.end.i.i20_crit_edge
  %length3.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i21.i, i32 0, i32 1
  %19 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length3.i.i, align 4
  %conv4.i.i = zext i32 %20 to i64
  %sub.i.i19 = add nsw i64 %remaining.0.i20.i, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i19, i64 %conv4.i.i)
  %cmp5.i.i = icmp uge i64 %sub.i.i19, %conv4.i.i
  %rem.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp10.not.i.i = icmp eq i32 %rem.i.i, 0
  %or.cond.i.i = and i1 %cmp5.i.i, %cmp10.not.i.i
  br i1 %or.cond.i.i, label %if.end13.i.i, label %if.end.i.i20.cleanup_crit_edge

if.end.i.i20.cleanup_crit_edge:                   ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i.i:                                     ; preds = %if.end.i.i20
  %add.i.i21 = add i32 %20, 8
  %add.ptr.i.i22 = getelementptr i8, ptr %p.0.i21.i, i32 %add.i.i21
  %conv14.i.i = zext i32 %add.i.i21 to i64
  %sub15.i.i = sub nsw i64 %remaining.0.i20.i, %conv14.i.i
  %21 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %16, label %sw.default.i.i [
    i32 6, label %sw.bb.i.i
    i32 0, label %if.end13.i.i.sw.bb1.i.i_crit_edge
    i32 1, label %if.end13.i.i.sw.bb1.i.i_crit_edge206
    i32 2, label %if.end13.i.i.sw.bb1.i.i_crit_edge207
    i32 3, label %sw.bb6.i.i
    i32 4, label %sw.bb11.i.i
    i32 5, label %sw.bb16.i.i
    i32 7, label %sw.bb21.i.i
  ]

if.end13.i.i.sw.bb1.i.i_crit_edge207:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end13.i.i.sw.bb1.i.i_crit_edge206:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end13.i.i.sw.bb1.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i:                                        ; preds = %if.end13.i.i
  %22 = ptrtoint ptr %mip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mip.i.i.i, align 4
  %call.i.i.i = tail call ptr @nfp_mip_name(ptr noundef %23) #5
  %call1.i.i.i = tail call i32 @strlen(ptr noundef %call.i.i.i) #10
  %24 = add i32 %call1.i.i.i, 16
  %add3.i.i.i = and i32 %24, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add3.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %3, %add3.i.i.i
  %sub.i.i.i.i = sub i32 %3, %add3.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i.i.i = icmp ult i32 %sub.i.i.i.i, %dump.sroa.6.2
  %or.cond108 = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp2.i.i.i.i
  br i1 %or.cond108, label %sw.bb.i.i.cleanup_crit_edge, label %nfp_dump_fwname.exit.i.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nfp_dump_fwname.exit.i.i:                         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %dump.sroa.67.2, align 4
  %sub6.i.i.i.i = add i32 %add3.i.i.i, -8
  %length.i.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %26 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub6.i.i.i.i, ptr %length.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add3.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %data.i.i.i, ptr %call.i.i.i, i32 %call1.i.i.i)
  br label %nfp_dump_for_tlv.exit.i

sw.bb1.i.i:                                       ; preds = %if.end13.i.i.sw.bb1.i.i_crit_edge, %if.end13.i.i.sw.bb1.i.i_crit_edge206, %if.end13.i.i.sw.bb1.i.i_crit_edge207
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp.i.i66.i.i = icmp ult i32 %20, 16
  br i1 %cmp.i.i66.i.i, label %sw.bb1.i.i.if.then.i.i.i_crit_edge, label %nfp_csr_spec_valid.exit.i.i.i

sw.bb1.i.i.if.then.i.i.i_crit_edge:               ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

nfp_csr_spec_valid.exit.i.i.i:                    ; preds = %sw.bb1.i.i
  %register_width.i.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 2
  %28 = ptrtoint ptr %register_width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %register_width.i.i.i.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %29, label %nfp_csr_spec_valid.exit.i.i.i.if.then.i.i.i_crit_edge [
    i32 64, label %nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge
    i32 32, label %nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge208
  ]

nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge208: ; preds = %nfp_csr_spec_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i69.i.i

nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i69.i.i

nfp_csr_spec_valid.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %nfp_csr_spec_valid.exit.i.i.i.if.then.i.i.i_crit_edge, %sw.bb1.i.i.if.then.i.i.i_crit_edge
  %add2.i.i.i.i = add i32 %20, 31
  %and.i.i.i.i = and i32 %add2.i.i.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %3, %and.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %3, %and.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i.i.i.i = icmp ult i32 %sub.i.i.i.i.i, %dump.sroa.6.2
  %or.cond109 = select i1 %cmp.i.i.i.i.i, i1 true, i1 %cmp2.i.i.i.i.i
  br i1 %or.cond109, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i77.i.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i77.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i.i.i.i = add i32 %and.i.i.i.i, -8
  %length.i.i.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %32 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub6.i.i.i.i.i, ptr %length.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i.i.i.i
  %error3.i.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %33 = ptrtoint ptr %error3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %error3.i.i.i.i, align 4
  %spec4.i.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %spec4.i.i.i.i, ptr %p.0.i21.i, i32 %add.i.i21)
  br label %nfp_dump_for_tlv.exit.i

if.end.i69.i.i:                                   ; preds = %nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge, %nfp_csr_spec_valid.exit.i.i.i.if.end.i69.i.i_crit_edge208
  %div75.i.i.i = lshr i32 %29, 3
  %cpp.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1
  %dump_length.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %dump_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dump_length.i.i.i, align 4
  %37 = add i32 %36, 39
  %add2.i.i.i = and i32 %37, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add2.i.i.i)
  %cmp.i80.i.i.i = icmp ult i32 %3, %add2.i.i.i
  %sub.i.i70.i.i = sub i32 %3, %add2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i70.i.i, i32 %dump.sroa.6.2)
  %cmp2.i81.i.i.i = icmp ult i32 %sub.i.i70.i.i, %dump.sroa.6.2
  %or.cond110 = select i1 %cmp.i80.i.i.i, i1 true, i1 %cmp2.i81.i.i.i
  br i1 %or.cond110, label %if.end.i69.i.i.cleanup_crit_edge, label %if.end7.i.i.i

if.end.i69.i.i.cleanup_crit_edge:                 ; preds = %if.end.i69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end.i69.i.i
  %38 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %16, ptr %dump.sroa.67.2, align 4
  %sub6.i.i72.i.i = add i32 %add2.i.i.i, -8
  %length.i83.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %39 = ptrtoint ptr %length.i83.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub6.i.i72.i.i, ptr %length.i83.i.i.i, align 4
  %add.ptr.i.i73.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add2.i.i.i
  %cpp8.i.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %cpp8.i.i.i, ptr %cpp.i.i.i, i32 12)
  %41 = ptrtoint ptr %register_width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %register_width.i.i.i.i, align 4
  %register_width11.i.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 2
  %43 = ptrtoint ptr %register_width11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %register_width11.i.i.i, align 4
  %44 = ptrtoint ptr %cpp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cpp.i.i.i, align 1
  %46 = and i8 %45, 127
  %and.i86.i.i.i = zext i8 %46 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %and.i86.i.i.i, 24
  %token.i.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %token.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %token.i.i.i.i, align 1
  %conv1.i.i.i.i = zext i8 %48 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv1.i.i.i.i, 16
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %shl3.i.i.i.i
  %action.i.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %action.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %action.i.i.i.i, align 1
  %conv4.i.i.i.i = zext i8 %50 to i32
  %shl6.i.i.i.i = shl nuw nsw i32 %conv4.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl6.i.i.i.i
  %island.i.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 0, i32 3
  %51 = ptrtoint ptr %island.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %island.i.i.i.i, align 1
  %conv8.i.i.i.i = zext i8 %52 to i32
  %or11.i.i.i.i = or i32 %or7.i.i.i.i, %conv8.i.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset.i.i.i, align 4
  %55 = ptrtoint ptr %dump_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dump_length.i.i.i, align 4
  %add18.i.i.i = add i32 %56, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add18.i.i.i)
  %cmp100.i.i.i = icmp ult i32 %54, %add18.i.i.i
  br i1 %cmp100.i.i.i, label %while.body.lr.ph.i.i.i, label %if.end7.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge

if.end7.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge:  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_for_tlv.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end7.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 32
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end32.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %dest.0104.i.i.i = phi ptr [ %add.ptr.i.i.i, %while.body.lr.ph.i.i.i ], [ %add.ptr34.i.i.i, %if.end32.i.i.i.while.body.i.i.i_crit_edge ]
  %cpp_rd_addr.0101.i.i.i = phi i32 [ %54, %while.body.lr.ph.i.i.i ], [ %add33.i.i.i, %if.end32.i.i.i.while.body.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %cpp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cpp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %58)
  %cmp.i87.i.i.i = icmp eq i8 %58, 14
  br i1 %cmp.i87.i.i.i, label %land.lhs.true.i.i.i.i, label %while.body.i.i.i.if.else.i.i.i_crit_edge

while.body.i.i.i.if.else.i.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %while.body.i.i.i
  %59 = ptrtoint ptr %action.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %action.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp3.i.i.i.i = icmp eq i8 %60, 0
  br i1 %cmp3.i.i.i.i, label %is_xpb_read.exit.i.i.i, label %land.lhs.true.i.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.else.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i

is_xpb_read.exit.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %61 = ptrtoint ptr %token.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %token.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp6.i.i.i.i = icmp eq i8 %62, 0
  br i1 %cmp6.i.i.i.i, label %if.end29.i.i.i, label %is_xpb_read.exit.i.i.i.if.else.i.i.i_crit_edge

is_xpb_read.exit.i.i.i.if.else.i.i.i_crit_edge:   ; preds = %is_xpb_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %is_xpb_read.exit.i.i.i.if.else.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.else.i.i.i_crit_edge, %while.body.i.i.i.if.else.i.i.i_crit_edge
  %63 = ptrtoint ptr %cpp40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cpp40.i.i.i, align 4
  %conv.i.i.i = zext i32 %cpp_rd_addr.0101.i.i.i to i64
  %call26.i.i.i = tail call i32 @nfp_cpp_read(ptr noundef %64, i32 noundef %or11.i.i.i.i, i64 noundef %conv.i.i.i, ptr noundef %dest.0104.i.i.i, i32 noundef %div75.i.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i.i.i, i32 %div75.i.i.i)
  %cmp27.i.i.i = icmp eq i32 %call26.i.i.i, %div75.i.i.i
  br i1 %cmp27.i.i.i, label %if.else.i.i.i.if.end32.i.i.i_crit_edge, label %if.else.i.i.i.if.then31.i.i.i_crit_edge

if.else.i.i.i.if.then31.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i.i.i

if.else.i.i.i.if.end32.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i.i

if.end29.i.i.i:                                   ; preds = %is_xpb_read.exit.i.i.i
  %65 = ptrtoint ptr %cpp40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cpp40.i.i.i, align 4
  %call24.i.i.i = tail call i32 @nfp_xpb_readl(ptr noundef %66, i32 noundef %cpp_rd_addr.0101.i.i.i, ptr noundef %dest.0104.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %call24.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.end29.i.i.i.if.end32.i.i.i_crit_edge, label %if.end29.i.i.i.if.then31.i.i.i_crit_edge

if.end29.i.i.i.if.then31.i.i.i_crit_edge:         ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i.i.i

if.end29.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end29.i.i.i.if.then31.i.i.i_crit_edge, %if.else.i.i.i.if.then31.i.i.i_crit_edge
  %err.098.i.i.i = phi i32 [ %call24.i.i.i, %if.end29.i.i.i.if.then31.i.i.i_crit_edge ], [ -5, %if.else.i.i.i.if.then31.i.i.i_crit_edge ]
  %error.i.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 3
  %67 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %err.098.i.i.i, ptr %error.i.i.i, align 4
  %error_offset.i.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 4
  %68 = ptrtoint ptr %error_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cpp_rd_addr.0101.i.i.i, ptr %error_offset.i.i.i, align 4
  br label %nfp_dump_for_tlv.exit.i

if.end32.i.i.i:                                   ; preds = %if.end29.i.i.i.if.end32.i.i.i_crit_edge, %if.else.i.i.i.if.end32.i.i.i_crit_edge
  %add33.i.i.i = add i32 %cpp_rd_addr.0101.i.i.i, %div75.i.i.i
  %add.ptr34.i.i.i = getelementptr i8, ptr %dest.0104.i.i.i, i32 %div75.i.i.i
  %cmp.i.i.i = icmp ult i32 %add33.i.i.i, %add18.i.i.i
  br i1 %cmp.i.i.i, label %if.end32.i.i.i.while.body.i.i.i_crit_edge, label %if.end32.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge

if.end32.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge: ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_for_tlv.exit.i

if.end32.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

sw.bb6.i.i:                                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp.i.i77.i.i = icmp ult i32 %20, 16
  br i1 %cmp.i.i77.i.i, label %sw.bb6.i.i.if.then.i84.i.i_crit_edge, label %nfp_csr_spec_valid.exit.i79.i.i

sw.bb6.i.i.if.then.i84.i.i_crit_edge:             ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i84.i.i

nfp_csr_spec_valid.exit.i79.i.i:                  ; preds = %sw.bb6.i.i
  %register_width.i.i78.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 2
  %69 = ptrtoint ptr %register_width.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %register_width.i.i78.i.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %70, label %nfp_csr_spec_valid.exit.i79.i.i.if.then.i84.i.i_crit_edge [
    i32 64, label %nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge
    i32 32, label %nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge209
  ]

nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge209: ; preds = %nfp_csr_spec_valid.exit.i79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i.i

nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i.i

nfp_csr_spec_valid.exit.i79.i.i.if.then.i84.i.i_crit_edge: ; preds = %nfp_csr_spec_valid.exit.i79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i84.i.i

if.then.i84.i.i:                                  ; preds = %nfp_csr_spec_valid.exit.i79.i.i.if.then.i84.i.i_crit_edge, %sw.bb6.i.i.if.then.i84.i.i_crit_edge
  %add2.i.i80.i.i = add i32 %20, 31
  %and.i.i81.i.i = and i32 %add2.i.i80.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i.i81.i.i)
  %cmp.i.i.i83.i.i = icmp ult i32 %3, %and.i.i81.i.i
  %sub.i.i.i85.i.i = sub i32 %3, %and.i.i81.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i85.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i.i87.i.i = icmp ult i32 %sub.i.i.i85.i.i, %dump.sroa.6.2
  %or.cond111 = select i1 %cmp.i.i.i83.i.i, i1 true, i1 %cmp2.i.i.i87.i.i
  br i1 %or.cond111, label %if.then.i84.i.i.cleanup_crit_edge, label %if.end.i60.i.i.i

if.then.i84.i.i.cleanup_crit_edge:                ; preds = %if.then.i84.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i60.i.i.i:                                 ; preds = %if.then.i84.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i.i89.i.i = add i32 %and.i.i81.i.i, -8
  %length.i.i.i90.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %73 = ptrtoint ptr %length.i.i.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub6.i.i.i89.i.i, ptr %length.i.i.i90.i.i, align 4
  %add.ptr.i.i.i92.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i.i81.i.i
  %error3.i.i94.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %74 = ptrtoint ptr %error3.i.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -22, ptr %error3.i.i94.i.i, align 4
  %spec4.i.i95.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %75 = call ptr @memcpy(ptr %spec4.i.i95.i.i, ptr %p.0.i21.i, i32 %add.i.i21)
  br label %nfp_dump_for_tlv.exit.i

if.end.i99.i.i:                                   ; preds = %nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge, %nfp_csr_spec_valid.exit.i79.i.i.if.end.i99.i.i_crit_edge209
  %div58.i.i.i = lshr i32 %70, 3
  %dump_length.i96.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %dump_length.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dump_length.i96.i.i, align 4
  %mul.i.i.i = shl i32 %77, 3
  %add2.i97.i.i = add i32 %mul.i.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add2.i97.i.i)
  %cmp.i63.i.i.i = icmp ult i32 %3, %add2.i97.i.i
  %sub.i.i100.i.i = sub i32 %3, %add2.i97.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i100.i.i, i32 %dump.sroa.6.2)
  %cmp2.i64.i.i.i = icmp ult i32 %sub.i.i100.i.i, %dump.sroa.6.2
  %or.cond112 = select i1 %cmp.i63.i.i.i, i1 true, i1 %cmp2.i64.i.i.i
  br i1 %or.cond112, label %if.end.i99.i.i.cleanup_crit_edge, label %if.end7.i108.i.i

if.end.i99.i.i.cleanup_crit_edge:                 ; preds = %if.end.i99.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i108.i.i:                                 ; preds = %if.end.i99.i.i
  %78 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %dump.sroa.67.2, align 4
  %sub6.i.i102.i.i = add i32 %mul.i.i.i, 24
  %length.i66.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %79 = ptrtoint ptr %length.i66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub6.i.i102.i.i, ptr %length.i66.i.i.i, align 4
  %add.ptr.i.i103.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add2.i97.i.i
  %cpp.i104.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1
  %cpp8.i105.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 1
  %80 = call ptr @memcpy(ptr %cpp8.i105.i.i, ptr %cpp.i104.i.i, i32 12)
  %81 = ptrtoint ptr %register_width.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %register_width.i.i78.i.i, align 4
  %register_width11.i106.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 2
  %83 = ptrtoint ptr %register_width11.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %register_width11.i106.i.i, align 4
  %offset.i107.i.i = getelementptr inbounds %struct.nfp_dumpspec_csr, ptr %p.0.i21.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %offset.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset.i107.i.i, align 4
  %86 = ptrtoint ptr %dump_length.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dump_length.i96.i.i, align 4
  %add15.i.i.i = add i32 %87, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %add15.i.i.i)
  %cmp91.i.i.i = icmp ult i32 %85, %add15.i.i.i
  br i1 %cmp91.i.i.i, label %while.body.lr.ph.i110.i.i, label %if.end7.i108.i.i.nfp_dump_for_tlv.exit.i_crit_edge

if.end7.i108.i.i.nfp_dump_for_tlv.exit.i_crit_edge: ; preds = %if.end7.i108.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_for_tlv.exit.i

while.body.lr.ph.i110.i.i:                        ; preds = %if.end7.i108.i.i
  %add.ptr.i109.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 32
  %mul22.i.i.i = and i32 %70, -8
  br label %while.body.i111.i.i

while.body.i111.i.i:                              ; preds = %if.end20.i.i.i.while.body.i111.i.i_crit_edge, %while.body.lr.ph.i110.i.i
  %dest.093.i.i.i = phi ptr [ %add.ptr.i109.i.i, %while.body.lr.ph.i110.i.i ], [ %add.ptr23.i.i.i, %if.end20.i.i.i.while.body.i111.i.i_crit_edge ]
  %cpp_rd_addr.092.i.i.i = phi i32 [ %85, %while.body.lr.ph.i110.i.i ], [ %add21.i.i.i, %if.end20.i.i.i.while.body.i111.i.i_crit_edge ]
  %88 = ptrtoint ptr %cpp40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cpp40.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %cpp_rd_addr.092.i.i.i, -1024
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 32
  %conv9.i.i.i.i.i = zext i32 %or.i.i.i.i.i.i to i64
  %conv19.i.i.i.i.i = zext i32 %cpp_rd_addr.092.i.i.i to i64
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %if.end18.i.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %ctx.013.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 8
  br i1 %exitcond.not.i.i.i.i, label %if.end20.i.i.i, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %while.body.i111.i.i
  %ctx.013.i.i.i.i = phi i32 [ 0, %while.body.i111.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %mul.i.i.i.i = mul nuw i32 %ctx.013.i.i.i.i, %div58.i.i.i
  %add.ptr.i69.i.i.i = getelementptr i8, ptr %dest.093.i.i.i, i32 %mul.i.i.i.i
  %90 = ptrtoint ptr %cpp.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack.i.i.i.i = load i32, ptr %cpp.i104.i.i, align 4
  %91 = shl i32 %.unpack.i.i.i.i, 8
  %shl3.i.i.i.i.i = and i32 %91, 16711680
  %or.i.i.i.i.i = and i32 %.unpack.i.i.i.i, 2130706687
  %or4.i.i.i.i.i = or i32 %shl3.i.i.i.i.i, %or.i.i.i.i.i
  %or8.i.i.i.i.i = or i32 %or4.i.i.i.i.i, 768
  %call10.i.i.i.i.i = tail call i32 @nfp_cpp_writel(ptr noundef %89, i32 noundef %or8.i.i.i.i.i, i64 noundef %conv9.i.i.i.i.i, i32 noundef %ctx.013.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call10.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i70.i.i.i, label %for.body.i.i.i.i.if.then19.i.i.i_crit_edge

for.body.i.i.i.i.if.then19.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i.i.i

if.end.i.i70.i.i.i:                               ; preds = %for.body.i.i.i.i
  %92 = lshr i32 %.unpack.i.i.i.i, 8
  %shl6.i.i.i.i.i.i = and i32 %92, 65280
  %or11.i.i.i.i.i.i = or i32 %or4.i.i.i.i.i, %shl6.i.i.i.i.i.i
  %call13.i.i.i.i.i = tail call i32 @nfp_cpp_read(ptr noundef %89, i32 noundef %or11.i.i.i.i.i.i, i64 noundef %conv9.i.i.i.i.i, ptr noundef %add.ptr.i69.i.i.i, i32 noundef %div58.i.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i.i.i.i.i, i32 %div58.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call13.i.i.i.i.i, %div58.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end18.i.i.i.i.i, label %if.then15.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.end.i.i70.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i.i.i)
  %cmp16.i.i.i.i.i = icmp slt i32 %call13.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp16.i.i.i.i.i, i32 %call13.i.i.i.i.i, i32 -5
  br label %if.then19.i.i.i

if.end18.i.i.i.i.i:                               ; preds = %if.end.i.i70.i.i.i
  %call20.i.i.i.i.i = tail call i32 @nfp_cpp_read(ptr noundef %89, i32 noundef %or11.i.i.i.i.i.i, i64 noundef %conv19.i.i.i.i.i, ptr noundef %add.ptr.i69.i.i.i, i32 noundef %div58.i.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i.i.i.i.i, i32 %div58.i.i.i)
  %cmp21.not.i.i.i.i.i = icmp eq i32 %call20.i.i.i.i.i, %div58.i.i.i
  br i1 %cmp21.not.i.i.i.i.i, label %for.cond.i.i.i.i, label %if.then23.i.i.i.i.i

if.then23.i.i.i.i.i:                              ; preds = %if.end18.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i.i.i)
  %cmp24.i.i.i.i.i = icmp slt i32 %call20.i.i.i.i.i, 0
  %spec.select80.i.i.i = select i1 %cmp24.i.i.i.i.i, i32 %call20.i.i.i.i.i, i32 -5
  br label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %if.then23.i.i.i.i.i, %if.then15.i.i.i.i.i, %for.body.i.i.i.i.if.then19.i.i.i_crit_edge
  %retval.0.i72.ph.i.i.i = phi i32 [ %spec.select.i.i.i, %if.then15.i.i.i.i.i ], [ %spec.select80.i.i.i, %if.then23.i.i.i.i.i ], [ %call10.i.i.i.i.i, %for.body.i.i.i.i.if.then19.i.i.i_crit_edge ]
  %error.i112.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 3
  %93 = ptrtoint ptr %error.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i72.ph.i.i.i, ptr %error.i112.i.i, align 4
  %error_offset.i113.i.i = getelementptr inbounds %struct.nfp_dump_csr, ptr %dump.sroa.67.2, i32 0, i32 4
  %94 = ptrtoint ptr %error_offset.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cpp_rd_addr.092.i.i.i, ptr %error_offset.i113.i.i, align 4
  br label %nfp_dump_for_tlv.exit.i

if.end20.i.i.i:                                   ; preds = %for.cond.i.i.i.i
  %add21.i.i.i = add i32 %cpp_rd_addr.092.i.i.i, %div58.i.i.i
  %add.ptr23.i.i.i = getelementptr i8, ptr %dest.093.i.i.i, i32 %mul22.i.i.i
  %cmp.i114.i.i = icmp ult i32 %add21.i.i.i, %add15.i.i.i
  br i1 %cmp.i114.i.i, label %if.end20.i.i.i.while.body.i111.i.i_crit_edge, label %if.end20.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge

if.end20.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_for_tlv.exit.i

if.end20.i.i.i.while.body.i111.i.i_crit_edge:     ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i111.i.i

sw.bb11.i.i:                                      ; preds = %if.end13.i.i
  %rtsym.i.i.i = getelementptr inbounds %struct.nfp_dumpspec_rtsym, ptr %p.0.i21.i, i32 0, i32 1
  %call.i117.i.i = tail call i32 @strnlen(ptr noundef %rtsym.i.i.i, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i117.i.i, i32 %20)
  %cmp.i118.i.i = icmp eq i32 %call.i117.i.i, %20
  br i1 %cmp.i118.i.i, label %if.then.i123.i.i, label %if.end.i136.i.i

if.then.i123.i.i:                                 ; preds = %sw.bb11.i.i
  %add2.i.i119.i.i = add i32 %20, 31
  %and.i.i120.i.i = and i32 %add2.i.i119.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i.i120.i.i)
  %cmp.i.i.i122.i.i = icmp ult i32 %3, %and.i.i120.i.i
  %sub.i.i.i124.i.i = sub i32 %3, %and.i.i120.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i124.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i.i126.i.i = icmp ult i32 %sub.i.i.i124.i.i, %dump.sroa.6.2
  %or.cond113 = select i1 %cmp.i.i.i122.i.i, i1 true, i1 %cmp2.i.i.i126.i.i
  br i1 %or.cond113, label %if.then.i123.i.i.cleanup_crit_edge, label %if.end.i.i135.i.i

if.then.i123.i.i.cleanup_crit_edge:               ; preds = %if.then.i123.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i135.i.i:                                ; preds = %if.then.i123.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i.i128.i.i = add i32 %and.i.i120.i.i, -8
  %length.i.i.i129.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %96 = ptrtoint ptr %length.i.i.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub6.i.i.i128.i.i, ptr %length.i.i.i129.i.i, align 4
  %add.ptr.i.i.i131.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i.i120.i.i
  %error3.i.i133.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %97 = ptrtoint ptr %error3.i.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -22, ptr %error3.i.i133.i.i, align 4
  %spec4.i.i134.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %98 = call ptr @memcpy(ptr %spec4.i.i134.i.i, ptr %p.0.i21.i, i32 %add.i.i21)
  br label %nfp_dump_for_tlv.exit.i

if.end.i136.i.i:                                  ; preds = %sw.bb11.i.i
  %99 = ptrtoint ptr %rtbl1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rtbl1.i.i.i, align 4
  %call6.i.i.i = tail call ptr @nfp_rtsym_lookup(ptr noundef %100, ptr noundef %rtsym.i.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %call6.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.i, label %if.end10.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i136.i.i
  %101 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length3.i.i, align 4
  %add2.i96.i.i.i = add i32 %102, 31
  %and.i97.i.i.i = and i32 %add2.i96.i.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i97.i.i.i)
  %cmp.i.i99.i.i.i = icmp ult i32 %3, %and.i97.i.i.i
  %sub.i.i100.i.i.i = sub i32 %3, %and.i97.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i100.i.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i102.i.i.i = icmp ult i32 %sub.i.i100.i.i.i, %dump.sroa.6.2
  %or.cond114 = select i1 %cmp.i.i99.i.i.i, i1 true, i1 %cmp2.i.i102.i.i.i
  br i1 %or.cond114, label %if.then7.i.i.i.cleanup_crit_edge, label %if.end.i111.i.i.i

if.then7.i.i.i.cleanup_crit_edge:                 ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i111.i.i.i:                                ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i104.i.i.i = add i32 %and.i97.i.i.i, -8
  %length.i.i105.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %104 = ptrtoint ptr %length.i.i105.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub6.i.i104.i.i.i, ptr %length.i.i105.i.i.i, align 4
  %add.ptr.i.i107.i.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i97.i.i.i
  %add.i108.i.i.i = add i32 %102, 8
  %error3.i109.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %105 = ptrtoint ptr %error3.i109.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -2, ptr %error3.i109.i.i.i, align 4
  %spec4.i110.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %106 = call ptr @memcpy(ptr %spec4.i110.i.i.i, ptr %p.0.i21.i, i32 %add.i108.i.i.i)
  br label %nfp_dump_for_tlv.exit.i

if.end10.i.i.i:                                   ; preds = %if.end.i136.i.i
  %call11.i.i.i = tail call i64 @nfp_rtsym_size(ptr noundef nonnull %call6.i.i.i) #5
  %conv.i137.i.i = trunc i64 %call11.i.i.i to i32
  %add13.i.i.i = add i32 %call.i117.i.i, 33
  %and.i.i.i = and i32 %add13.i.i.i, -8
  %add14.i.i.i = add i32 %conv.i137.i.i, 7
  %and15.i.i.i = and i32 %add14.i.i.i, -8
  %add16.i.i.i = add i32 %and15.i.i.i, %and.i.i.i
  %add.ptr.i138.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add16.i.i.i)
  %cmp.i.i140.i.i = icmp ult i32 %3, %add16.i.i.i
  %sub.i.i141.i.i = sub i32 %3, %add16.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i141.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i143.i.i = icmp ult i32 %sub.i.i141.i.i, %dump.sroa.6.2
  %or.cond115 = select i1 %cmp.i.i140.i.i, i1 true, i1 %cmp2.i.i143.i.i
  br i1 %or.cond115, label %if.end10.i.i.i.cleanup_crit_edge, label %if.end22.i.i.i

if.end10.i.i.i.cleanup_crit_edge:                 ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22.i.i.i:                                   ; preds = %if.end10.i.i.i
  %107 = ptrtoint ptr %p.0.i21.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %p.0.i21.i, align 4
  %109 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %dump.sroa.67.2, align 4
  %sub6.i.i144.i.i = add i32 %add16.i.i.i, -8
  %length.i116.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %110 = ptrtoint ptr %length.i116.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub6.i.i144.i.i, ptr %length.i116.i.i.i, align 4
  %add.ptr.i.i145.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add16.i.i.i
  %111 = trunc i32 %and.i.i.i to i8
  %conv23.i.i.i = add i8 %111, -25
  %padded_name_length.i.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 3
  %112 = ptrtoint ptr %padded_name_length.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv23.i.i.i, ptr %padded_name_length.i.i.i, align 4
  %rtsym24.i.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 4
  %add28.i.i.i = add i32 %call.i117.i.i, 1
  %113 = call ptr @memcpy(ptr %rtsym24.i.i.i, ptr %rtsym.i.i.i, i32 %add28.i.i.i)
  %dump_length.i146.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %dump_length.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i137.i.i, ptr %dump_length.i146.i.i, align 4
  %type29.i.i.i = getelementptr inbounds %struct.nfp_rtsym, ptr %call6.i.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %type29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type29.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %116)
  %cmp30.not.i.i.i = icmp eq i32 %116, 3
  br i1 %cmp30.not.i.i.i, label %if.end22.i.i.i.if.end39.i.i.i_crit_edge, label %if.then32.i.i.i

if.end22.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cpp.i147.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1
  %target.i.i.i = getelementptr inbounds %struct.nfp_rtsym, ptr %call6.i.i.i, i32 0, i32 4
  %117 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %target.i.i.i, align 4
  %conv33.i.i.i = trunc i32 %118 to i8
  %domain.i.i.i = getelementptr inbounds %struct.nfp_rtsym, ptr %call6.i.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %domain.i.i.i, align 8
  %conv35.i.i.i = trunc i32 %120 to i8
  %121 = ptrtoint ptr %cpp.i147.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv33.i.i.i, ptr %cpp.i147.i.i, align 4
  %cpp_params.sroa.5.0.cpp_id.sroa_idx.i.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %cpp_params.sroa.5.0.cpp_id.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 32, ptr %cpp_params.sroa.5.0.cpp_id.sroa_idx.i.i.i, align 1
  %cpp_params.sroa.7.0.cpp_id.sroa_idx.i.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1, i32 0, i32 2
  %123 = ptrtoint ptr %cpp_params.sroa.7.0.cpp_id.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %cpp_params.sroa.7.0.cpp_id.sroa_idx.i.i.i, align 2
  %cpp_params.sroa.9.0.cpp_id.sroa_idx.i.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1, i32 0, i32 3
  %124 = ptrtoint ptr %cpp_params.sroa.9.0.cpp_id.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv35.i.i.i, ptr %cpp_params.sroa.9.0.cpp_id.sroa_idx.i.i.i, align 1
  %addr.i.i.i = getelementptr inbounds %struct.nfp_rtsym, ptr %call6.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %addr.i.i.i, align 8
  %conv37.i.i.i = trunc i64 %126 to i32
  %offset.i148.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %offset.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv37.i.i.i, ptr %offset.i148.i.i, align 4
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then32.i.i.i, %if.end22.i.i.i.if.end39.i.i.i_crit_edge
  %128 = ptrtoint ptr %cpp40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cpp40.i.i.i, align 4
  %call41.i.i.i = tail call i32 @nfp_rtsym_read(ptr noundef %129, ptr noundef nonnull %call6.i.i.i, i64 noundef 0, ptr noundef %add.ptr.i138.i.i, i32 noundef %conv.i137.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i.i.i, i32 %conv.i137.i.i)
  %cmp42.not.i.i.i = icmp eq i32 %call41.i.i.i, %conv.i137.i.i
  br i1 %cmp42.not.i.i.i, label %if.end39.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge, label %if.then44.i.i.i

if.end39.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge: ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_for_tlv.exit.i

if.then44.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp45.i.i.i = icmp sgt i32 %call41.i.i.i, -1
  %spec.store.select.i.i.i = select i1 %cmp45.i.i.i, i32 -5, i32 %call41.i.i.i
  %error.i149.i.i = getelementptr inbounds %struct.nfp_dump_rtsym, ptr %dump.sroa.67.2, i32 0, i32 2
  %130 = ptrtoint ptr %error.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %spec.store.select.i.i.i, ptr %error.i149.i.i, align 4
  br label %nfp_dump_for_tlv.exit.i

sw.bb16.i.i:                                      ; preds = %if.end13.i.i
  %131 = ptrtoint ptr %hwinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hwinfo.i.i.i, align 4
  %call.i152.i.i = tail call ptr @nfp_hwinfo_get_packed_strings(ptr noundef %132) #5
  %133 = ptrtoint ptr %hwinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hwinfo.i.i.i, align 4
  %call3.i.i.i = tail call i32 @nfp_hwinfo_get_packed_str_size(ptr noundef %134) #5
  %135 = add i32 %call3.i.i.i, 15
  %add4.i.i.i = and i32 %135, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add4.i.i.i)
  %cmp.i.i154.i.i = icmp ult i32 %3, %add4.i.i.i
  %sub.i.i155.i.i = sub i32 %3, %add4.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i155.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i157.i.i = icmp ult i32 %sub.i.i155.i.i, %dump.sroa.6.2
  %or.cond116 = select i1 %cmp.i.i154.i.i, i1 true, i1 %cmp2.i.i157.i.i
  br i1 %or.cond116, label %sw.bb16.i.i.cleanup_crit_edge, label %nfp_dump_hwinfo.exit.i.i

sw.bb16.i.i.cleanup_crit_edge:                    ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nfp_dump_hwinfo.exit.i.i:                         ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 5, ptr %dump.sroa.67.2, align 4
  %sub6.i.i159.i.i = add i32 %add4.i.i.i, -8
  %length.i.i160.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %137 = ptrtoint ptr %length.i.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub6.i.i159.i.i, ptr %length.i.i160.i.i, align 4
  %add.ptr.i.i162.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add4.i.i.i
  %data.i163.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 2
  %138 = call ptr @memcpy(ptr %data.i163.i.i, ptr %call.i152.i.i, i32 %call3.i.i.i)
  br label %nfp_dump_for_tlv.exit.i

sw.bb21.i.i:                                      ; preds = %if.end13.i.i
  %data.i168.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %p.0.i21.i, i32 0, i32 2
  %call.i169.i.i = tail call i32 @strnlen(ptr noundef %data.i168.i.i, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i169.i.i, i32 %20)
  %cmp.i170.i.i = icmp eq i32 %call.i169.i.i, %20
  br i1 %cmp.i170.i.i, label %if.then.i175.i.i, label %if.end.i189.i.i

if.then.i175.i.i:                                 ; preds = %sw.bb21.i.i
  %add2.i.i171.i.i = add i32 %20, 31
  %and.i.i172.i.i = and i32 %add2.i.i171.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i.i172.i.i)
  %cmp.i.i.i174.i.i = icmp ult i32 %3, %and.i.i172.i.i
  %sub.i.i.i176.i.i = sub i32 %3, %and.i.i172.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i176.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i.i178.i.i = icmp ult i32 %sub.i.i.i176.i.i, %dump.sroa.6.2
  %or.cond117 = select i1 %cmp.i.i.i174.i.i, i1 true, i1 %cmp2.i.i.i178.i.i
  br i1 %or.cond117, label %if.then.i175.i.i.cleanup_crit_edge, label %if.end.i.i187.i.i

if.then.i175.i.i.cleanup_crit_edge:               ; preds = %if.then.i175.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i187.i.i:                                ; preds = %if.then.i175.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i.i180.i.i = add i32 %and.i.i172.i.i, -8
  %length.i.i.i181.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %140 = ptrtoint ptr %length.i.i.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub6.i.i.i180.i.i, ptr %length.i.i.i181.i.i, align 4
  %add.ptr.i.i.i183.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i.i172.i.i
  %error3.i.i185.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %141 = ptrtoint ptr %error3.i.i185.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -22, ptr %error3.i.i185.i.i, align 4
  %spec4.i.i186.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %142 = call ptr @memcpy(ptr %spec4.i.i186.i.i, ptr %p.0.i21.i, i32 %add.i.i21)
  br label %nfp_dump_for_tlv.exit.i

if.end.i189.i.i:                                  ; preds = %sw.bb21.i.i
  %143 = ptrtoint ptr %hwinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hwinfo.i.i.i, align 4
  %call4.i.i.i = tail call ptr @nfp_hwinfo_lookup(ptr noundef %144, ptr noundef %data.i168.i.i) #5
  %tobool.not.i188.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool.not.i188.i.i, label %if.then5.i.i.i, label %if.end7.i192.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i189.i.i
  %145 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %length3.i.i, align 4
  %add2.i49.i.i.i = add i32 %146, 31
  %and.i50.i.i.i = and i32 %add2.i49.i.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i50.i.i.i)
  %cmp.i.i52.i.i.i = icmp ult i32 %3, %and.i50.i.i.i
  %sub.i.i53.i.i.i = sub i32 %3, %and.i50.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i53.i.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i55.i.i.i = icmp ult i32 %sub.i.i53.i.i.i, %dump.sroa.6.2
  %or.cond118 = select i1 %cmp.i.i52.i.i.i, i1 true, i1 %cmp2.i.i55.i.i.i
  br i1 %or.cond118, label %if.then5.i.i.i.cleanup_crit_edge, label %if.end.i64.i.i.i

if.then5.i.i.i.cleanup_crit_edge:                 ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i64.i.i.i:                                 ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i57.i.i.i = add i32 %and.i50.i.i.i, -8
  %length.i.i58.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %148 = ptrtoint ptr %length.i.i58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %sub6.i.i57.i.i.i, ptr %length.i.i58.i.i.i, align 4
  %add.ptr.i.i60.i.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i50.i.i.i
  %add.i61.i.i.i = add i32 %146, 8
  %error3.i62.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %149 = ptrtoint ptr %error3.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -2, ptr %error3.i62.i.i.i, align 4
  %spec4.i63.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %150 = call ptr @memcpy(ptr %spec4.i63.i.i.i, ptr %p.0.i21.i, i32 %add.i61.i.i.i)
  br label %nfp_dump_for_tlv.exit.i

if.end7.i192.i.i:                                 ; preds = %if.end.i189.i.i
  %call8.i.i.i = tail call i32 @strlen(ptr noundef nonnull %call4.i.i.i) #10
  %add.i.i.i = add i32 %call.i169.i.i, 17
  %151 = add i32 %add.i.i.i, %call8.i.i.i
  %add11.i.i.i = and i32 %151, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add11.i.i.i)
  %cmp.i.i191.i.i = icmp ult i32 %3, %add11.i.i.i
  %sub.i.i193.i.i = sub i32 %3, %add11.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i193.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i195.i.i = icmp ult i32 %sub.i.i193.i.i, %dump.sroa.6.2
  %or.cond119 = select i1 %cmp.i.i191.i.i, i1 true, i1 %cmp2.i.i195.i.i
  br i1 %or.cond119, label %if.end7.i192.i.i.cleanup_crit_edge, label %if.end15.i.i.i

if.end7.i192.i.i.cleanup_crit_edge:               ; preds = %if.end7.i192.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i.i.i:                                   ; preds = %if.end7.i192.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 7, ptr %dump.sroa.67.2, align 4
  %sub6.i.i196.i.i = add i32 %add11.i.i.i, -8
  %length.i69.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %153 = ptrtoint ptr %length.i69.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %sub6.i.i196.i.i, ptr %length.i69.i.i.i, align 4
  %add.ptr.i.i197.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %add11.i.i.i
  %data16.i.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 2
  %add18.i198.i.i = add i32 %call.i169.i.i, 1
  %154 = call ptr @memcpy(ptr %data16.i.i.i, ptr %data.i168.i.i, i32 %add18.i198.i.i)
  %add.ptr.i199.i.i = getelementptr i8, ptr %data16.i.i.i, i32 1
  %add.ptr21.i.i.i = getelementptr i8, ptr %add.ptr.i199.i.i, i32 %call.i169.i.i
  %add22.i.i.i = add i32 %call8.i.i.i, 1
  %155 = call ptr @memcpy(ptr %add.ptr21.i.i.i, ptr %call4.i.i.i, i32 %add22.i.i.i)
  br label %nfp_dump_for_tlv.exit.i

sw.default.i.i:                                   ; preds = %if.end13.i.i
  %add2.i203.i.i = add i32 %20, 31
  %and.i204.i.i = and i32 %add2.i203.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i204.i.i)
  %cmp.i.i206.i.i = icmp ult i32 %3, %and.i204.i.i
  %sub.i.i207.i.i = sub i32 %3, %and.i204.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i207.i.i, i32 %dump.sroa.6.2)
  %cmp2.i.i209.i.i = icmp ult i32 %sub.i.i207.i.i, %dump.sroa.6.2
  %or.cond120 = select i1 %cmp.i.i206.i.i, i1 true, i1 %cmp2.i.i209.i.i
  br i1 %or.cond120, label %sw.default.i.i.cleanup_crit_edge, label %nfp_dump_error_tlv.exit.i.i

sw.default.i.i.cleanup_crit_edge:                 ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nfp_dump_error_tlv.exit.i.i:                      ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %156 = ptrtoint ptr %dump.sroa.67.2 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 10001, ptr %dump.sroa.67.2, align 4
  %sub6.i.i211.i.i = add i32 %and.i204.i.i, -8
  %length.i.i212.i.i = getelementptr inbounds %struct.nfp_dump_tl, ptr %dump.sroa.67.2, i32 0, i32 1
  %157 = ptrtoint ptr %length.i.i212.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub6.i.i211.i.i, ptr %length.i.i212.i.i, align 4
  %add.ptr.i.i214.i.i = getelementptr i8, ptr %dump.sroa.67.2, i32 %and.i204.i.i
  %error3.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 1
  %158 = ptrtoint ptr %error3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -95, ptr %error3.i.i.i, align 4
  %spec4.i.i.i = getelementptr inbounds %struct.nfp_dump_error, ptr %dump.sroa.67.2, i32 0, i32 3
  %159 = call ptr @memcpy(ptr %spec4.i.i.i, ptr %p.0.i21.i, i32 %add.i.i21)
  br label %nfp_dump_for_tlv.exit.i

nfp_dump_for_tlv.exit.i:                          ; preds = %nfp_dump_error_tlv.exit.i.i, %if.end15.i.i.i, %if.end.i64.i.i.i, %if.end.i.i187.i.i, %nfp_dump_hwinfo.exit.i.i, %if.then44.i.i.i, %if.end39.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge, %if.end.i111.i.i.i, %if.end.i.i135.i.i, %if.end20.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge, %if.then19.i.i.i, %if.end7.i108.i.i.nfp_dump_for_tlv.exit.i_crit_edge, %if.end.i60.i.i.i, %if.end32.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge, %if.then31.i.i.i, %if.end7.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge, %if.end.i77.i.i.i, %nfp_dump_fwname.exit.i.i
  %dump.sroa.67.3 = phi ptr [ %add.ptr.i.i214.i.i, %nfp_dump_error_tlv.exit.i.i ], [ %add.ptr.i.i.i183.i.i, %if.end.i.i187.i.i ], [ %add.ptr.i.i60.i.i.i, %if.end.i64.i.i.i ], [ %add.ptr.i.i197.i.i, %if.end15.i.i.i ], [ %add.ptr.i.i162.i.i, %nfp_dump_hwinfo.exit.i.i ], [ %add.ptr.i.i.i131.i.i, %if.end.i.i135.i.i ], [ %add.ptr.i.i107.i.i.i, %if.end.i111.i.i.i ], [ %add.ptr.i.i145.i.i, %if.end39.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add.ptr.i.i145.i.i, %if.then44.i.i.i ], [ %add.ptr.i.i.i92.i.i, %if.end.i60.i.i.i ], [ %add.ptr.i.i103.i.i, %if.then19.i.i.i ], [ %add.ptr.i.i103.i.i, %if.end7.i108.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i77.i.i.i ], [ %add.ptr.i.i73.i.i, %if.then31.i.i.i ], [ %add.ptr.i.i73.i.i, %if.end7.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %nfp_dump_fwname.exit.i.i ], [ %add.ptr.i.i73.i.i, %if.end32.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add.ptr.i.i103.i.i, %if.end20.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ]
  %and.i204.i.i.pn = phi i32 [ %and.i204.i.i, %nfp_dump_error_tlv.exit.i.i ], [ %and.i.i172.i.i, %if.end.i.i187.i.i ], [ %and.i50.i.i.i, %if.end.i64.i.i.i ], [ %add11.i.i.i, %if.end15.i.i.i ], [ %add4.i.i.i, %nfp_dump_hwinfo.exit.i.i ], [ %and.i.i120.i.i, %if.end.i.i135.i.i ], [ %and.i97.i.i.i, %if.end.i111.i.i.i ], [ %add16.i.i.i, %if.end39.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add16.i.i.i, %if.then44.i.i.i ], [ %and.i.i81.i.i, %if.end.i60.i.i.i ], [ %add2.i97.i.i, %if.then19.i.i.i ], [ %add2.i97.i.i, %if.end7.i108.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %and.i.i.i.i, %if.end.i77.i.i.i ], [ %add2.i.i.i, %if.then31.i.i.i ], [ %add2.i.i.i, %if.end7.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add3.i.i.i, %nfp_dump_fwname.exit.i.i ], [ %add2.i.i.i, %if.end32.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ], [ %add2.i97.i.i, %if.end20.i.i.i.nfp_dump_for_tlv.exit.i_crit_edge ]
  %dump.sroa.6.3 = add i32 %and.i204.i.i.pn, %dump.sroa.6.2
  %cmp.i.i23 = icmp sgt i64 %sub15.i.i, 7
  br i1 %cmp.i.i23, label %nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge, label %nfp_dump_for_tlv.exit.i.nfp_dump_specific_level.exit_crit_edge

nfp_dump_for_tlv.exit.i.nfp_dump_specific_level.exit_crit_edge: ; preds = %nfp_dump_for_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_dump_specific_level.exit

nfp_dump_for_tlv.exit.i.while.body.i.i_crit_edge: ; preds = %nfp_dump_for_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

nfp_dump_specific_level.exit:                     ; preds = %nfp_dump_for_tlv.exit.i.nfp_dump_specific_level.exit_crit_edge, %land.lhs.true.i.i.nfp_dump_specific_level.exit_crit_edge, %if.end13.i.nfp_dump_specific_level.exit_crit_edge
  %dump.sroa.67.4 = phi ptr [ %dump.sroa.67.1137, %if.end13.i.nfp_dump_specific_level.exit_crit_edge ], [ %dump.sroa.67.3, %nfp_dump_for_tlv.exit.i.nfp_dump_specific_level.exit_crit_edge ], [ %dump.sroa.67.2, %land.lhs.true.i.i.nfp_dump_specific_level.exit_crit_edge ]
  %dump.sroa.6.4 = phi i32 [ %dump.sroa.6.1138, %if.end13.i.nfp_dump_specific_level.exit_crit_edge ], [ %dump.sroa.6.3, %nfp_dump_for_tlv.exit.i.nfp_dump_specific_level.exit_crit_edge ], [ %dump.sroa.6.2, %land.lhs.true.i.i.nfp_dump_specific_level.exit_crit_edge ]
  %cmp.i = icmp sgt i64 %sub15.i, 7
  br i1 %cmp.i, label %nfp_dump_specific_level.exit.while.body.i_crit_edge, label %nfp_dump_specific_level.exit.if.end4_crit_edge

nfp_dump_specific_level.exit.if.end4_crit_edge:   ; preds = %nfp_dump_specific_level.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

nfp_dump_specific_level.exit.while.body.i_crit_edge: ; preds = %nfp_dump_specific_level.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end4:                                          ; preds = %nfp_dump_specific_level.exit.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %dump.sroa.6.1.lcssa = phi i32 [ 16, %if.end.if.end4_crit_edge ], [ %dump.sroa.6.1138, %land.lhs.true.i.if.end4_crit_edge ], [ %dump.sroa.6.4, %nfp_dump_specific_level.exit.if.end4_crit_edge ]
  %160 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %dump.sroa.6.1.lcssa, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %sw.default.i.i.cleanup_crit_edge, %if.end7.i192.i.i.cleanup_crit_edge, %if.then5.i.i.i.cleanup_crit_edge, %if.then.i175.i.i.cleanup_crit_edge, %sw.bb16.i.i.cleanup_crit_edge, %if.end10.i.i.i.cleanup_crit_edge, %if.then7.i.i.i.cleanup_crit_edge, %if.then.i123.i.i.cleanup_crit_edge, %if.end.i99.i.i.cleanup_crit_edge, %if.then.i84.i.i.cleanup_crit_edge, %if.end.i69.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %if.end.i.i20.cleanup_crit_edge, %if.end.i14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -28, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i20.cleanup_crit_edge ], [ -28, %if.then.i.i.i.cleanup_crit_edge ], [ -28, %if.end.i69.i.i.cleanup_crit_edge ], [ -28, %if.then.i84.i.i.cleanup_crit_edge ], [ -28, %if.end.i99.i.i.cleanup_crit_edge ], [ -28, %sw.bb.i.i.cleanup_crit_edge ], [ -28, %if.then.i123.i.i.cleanup_crit_edge ], [ -28, %if.then7.i.i.i.cleanup_crit_edge ], [ -28, %if.end10.i.i.i.cleanup_crit_edge ], [ -28, %sw.bb16.i.i.cleanup_crit_edge ], [ -28, %if.then.i175.i.i.cleanup_crit_edge ], [ -28, %if.then5.i.i.i.cleanup_crit_edge ], [ -28, %if.end7.i192.i.i.cleanup_crit_edge ], [ -28, %sw.default.i.i.cleanup_crit_edge ], [ -22, %if.end.i14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_hwinfo_get_packed_str_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_mip_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_hwinfo_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_xpb_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writel(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_hwinfo_get_packed_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c", i32 163, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_debugdump.c", i32 177, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfp_net_dump_load_dumpspec._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfp_net_dump_load_dumpspec._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

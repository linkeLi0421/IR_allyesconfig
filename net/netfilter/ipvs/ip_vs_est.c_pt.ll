; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_est.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_est.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_cpu_stats = type { %struct.ip_vs_counters, %struct.u64_stats_sync }
%struct.ip_vs_counters = type { i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@ip_vs_estimator_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ipvs->est_lock\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_estimator_net_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&ipvs->est_timer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 195, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [34 x i8] c"../net/netfilter/ipvs/ip_vs_est.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 196, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @ip_vs_estimator_net_init.__key, ptr @.str, ptr @ip_vs_estimator_net_init.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_estimator_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_estimator_net_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_start_estimator(ptr noundef %ipvs, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %est1 = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %est1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %est1, ptr %est1, align 4
  %prev.i = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %est1, ptr %prev.i, align 4
  %est_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 63
  tail call void @_raw_spin_lock_bh(ptr noundef %est_lock) #6
  %est_list = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 62
  %2 = ptrtoint ptr %est_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %est_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %est1, ptr noundef %est_list, ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %est1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %est1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %est1, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %est_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %est_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %est1, ptr %est_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %est_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_stop_estimator(ptr noundef %ipvs, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %est1 = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1
  %est_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 63
  tail call void @_raw_spin_lock_bh(ptr noundef %est_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %est1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %est1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %est1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %est1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %est1, align 4
  %prev.i = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %est_lock) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ip_vs_zero_estimator(ptr nocapture noundef %stats) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inbytes = getelementptr inbounds %struct.ip_vs_kstats, ptr %stats, i32 0, i32 3
  %0 = ptrtoint ptr %inbytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %inbytes, align 8
  %last_inbytes = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %last_inbytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %last_inbytes, align 8
  %outbytes = getelementptr inbounds %struct.ip_vs_kstats, ptr %stats, i32 0, i32 4
  %3 = ptrtoint ptr %outbytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %outbytes, align 8
  %last_outbytes = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %last_outbytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %last_outbytes, align 8
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 8
  %last_conns = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %last_conns to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %last_conns, align 8
  %inpkts = getelementptr inbounds %struct.ip_vs_kstats, ptr %stats, i32 0, i32 1
  %9 = ptrtoint ptr %inpkts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %inpkts, align 8
  %last_inpkts = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %last_inpkts to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %last_inpkts, align 8
  %outpkts = getelementptr inbounds %struct.ip_vs_kstats, ptr %stats, i32 0, i32 2
  %12 = ptrtoint ptr %outpkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %outpkts, align 8
  %last_outpkts = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %last_outpkts to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %last_outpkts, align 8
  %cps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 6
  %15 = call ptr @memset(ptr %cps, i32 0, i32 40)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ip_vs_read_estimator(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %stats) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %cps to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cps, align 8
  %add = add i64 %1, 511
  %shr = lshr i64 %add, 10
  %cps1 = getelementptr inbounds %struct.ip_vs_kstats, ptr %dst, i32 0, i32 5
  %2 = ptrtoint ptr %cps1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shr, ptr %cps1, align 8
  %inpps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 7
  %3 = ptrtoint ptr %inpps to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %inpps, align 8
  %add2 = add i64 %4, 511
  %shr3 = lshr i64 %add2, 10
  %inpps4 = getelementptr inbounds %struct.ip_vs_kstats, ptr %dst, i32 0, i32 6
  %5 = ptrtoint ptr %inpps4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shr3, ptr %inpps4, align 8
  %outpps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %outpps to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %outpps, align 8
  %add5 = add i64 %7, 511
  %shr6 = lshr i64 %add5, 10
  %outpps7 = getelementptr inbounds %struct.ip_vs_kstats, ptr %dst, i32 0, i32 7
  %8 = ptrtoint ptr %outpps7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shr6, ptr %outpps7, align 8
  %inbps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %inbps to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %inbps, align 8
  %add8 = add i64 %10, 15
  %shr9 = lshr i64 %add8, 5
  %inbps10 = getelementptr inbounds %struct.ip_vs_kstats, ptr %dst, i32 0, i32 8
  %11 = ptrtoint ptr %inbps10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shr9, ptr %inbps10, align 8
  %outbps = getelementptr inbounds %struct.ip_vs_stats, ptr %stats, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %outbps to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %outbps, align 8
  %add11 = add i64 %13, 15
  %shr12 = lshr i64 %add11, 5
  %outbps13 = getelementptr inbounds %struct.ip_vs_kstats, ptr %dst, i32 0, i32 9
  %14 = ptrtoint ptr %outbps13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shr12, ptr %outbps13, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_estimator_net_init(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %est_list = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 62
  %0 = ptrtoint ptr %est_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %est_list, ptr %est_list, align 4
  %prev.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 62, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %est_list, ptr %prev.i, align 4
  %est_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 63
  tail call void @__raw_spin_lock_init(ptr noundef %est_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ip_vs_estimator_net_init.__key, i16 noundef signext 3) #6
  %est_timer = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 64
  tail call void @init_timer_key(ptr noundef %est_timer, ptr noundef nonnull @estimation_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @ip_vs_estimator_net_init.__key.1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 200
  %call4 = tail call i32 @mod_timer(ptr noundef %est_timer, i32 noundef %add) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @estimation_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_run_estimation.i = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %sysctl_run_estimation.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysctl_run_estimation.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.skip_crit_edge, label %if.end

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end:                                           ; preds = %entry
  %est_lock = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %est_lock) #6
  %est_list = getelementptr i8, ptr %t, i32 -52
  %2 = ptrtoint ptr %est_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %e.0111 = load ptr, ptr %est_list, align 4
  %cmp.not112 = icmp eq ptr %e.0111, %est_list
  br i1 %cmp.not112, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %ip_vs_read_cpu_stats.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %e.0113 = phi ptr [ %e.0, %ip_vs_read_cpu_stats.exit.for.body_crit_edge ], [ %e.0111, %if.end.for.body_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %e.0113, i32 -80
  %lock = getelementptr i8, ptr %e.0113, i32 92
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %call81.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81.i, i32 %3)
  %cmp82.i = icmp ult i32 %call81.i, %3
  br i1 %cmp82.i, label %for.body.lr.ph.i, label %for.body.ip_vs_read_cpu_stats.exit_crit_edge

for.body.ip_vs_read_cpu_stats.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip_vs_read_cpu_stats.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %cpustats = getelementptr i8, ptr %e.0113, i32 88
  %4 = ptrtoint ptr %cpustats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpustats, align 8
  %6 = ptrtoint ptr %5 to i32
  %inpkts36.i = getelementptr i8, ptr %e.0113, i32 -72
  %outpkts39.i = getelementptr i8, ptr %e.0113, i32 -64
  %inbytes42.i = getelementptr i8, ptr %e.0113, i32 -56
  %outbytes45.i = getelementptr i8, ptr %e.0113, i32 -48
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call84.i = phi i32 [ %call81.i, %for.body.lr.ph.i ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  %add.0.off083.i = phi i1 [ false, %for.body.lr.ph.i ], [ true, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call84.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %8, %6
  %9 = inttoptr i32 %add2.i to ptr
  %syncp.i = getelementptr inbounds %struct.ip_vs_cpu_stats, ptr %9, i32 0, i32 1
  %inpkts7.i = getelementptr inbounds %struct.ip_vs_counters, ptr %9, i32 0, i32 1
  %outpkts9.i = getelementptr inbounds %struct.ip_vs_counters, ptr %9, i32 0, i32 2
  %inbytes11.i = getelementptr inbounds %struct.ip_vs_counters, ptr %9, i32 0, i32 3
  %outbytes13.i = getelementptr inbounds %struct.ip_vs_counters, ptr %9, i32 0, i32 4
  br i1 %add.0.off083.i, label %for.body.i.do.body3.i_crit_edge, label %for.body.i.do.body28.i_crit_edge

for.body.i.do.body28.i_crit_edge:                 ; preds = %for.body.i
  br label %do.body28.i

for.body.i.do.body3.i_crit_edge:                  ; preds = %for.body.i
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %for.body.i.do.body3.i_crit_edge
  %call4.i = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp.i) #6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = ptrtoint ptr %inpkts7.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %inpkts7.i, align 8
  %14 = ptrtoint ptr %outpkts9.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %outpkts9.i, align 8
  %16 = ptrtoint ptr %inbytes11.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %inbytes11.i, align 8
  %18 = ptrtoint ptr %outbytes13.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %outbytes13.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  %20 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %21, %call4.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end17.i, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.end17.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr7, align 8
  %add19.i = add i64 %23, %11
  store i64 %add19.i, ptr %add.ptr7, align 8
  %24 = ptrtoint ptr %inpkts36.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %inpkts36.i, align 8
  %add21.i = add i64 %25, %13
  store i64 %add21.i, ptr %inpkts36.i, align 8
  %26 = ptrtoint ptr %outpkts39.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %outpkts39.i, align 8
  %add23.i = add i64 %27, %15
  store i64 %add23.i, ptr %outpkts39.i, align 8
  %28 = ptrtoint ptr %inbytes42.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %inbytes42.i, align 8
  %add25.i = add i64 %29, %17
  store i64 %add25.i, ptr %inbytes42.i, align 8
  %30 = ptrtoint ptr %outbytes45.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %outbytes45.i, align 8
  %add27.i = add i64 %31, %19
  store i64 %add27.i, ptr %outbytes45.i, align 8
  br label %if.end.i

do.body28.i:                                      ; preds = %do.body28.i.do.body28.i_crit_edge, %for.body.i.do.body28.i_crit_edge
  %call30.i = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp.i) #6
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %9, align 8
  %34 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %add.ptr7, align 8
  %35 = ptrtoint ptr %inpkts7.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %inpkts7.i, align 8
  %37 = ptrtoint ptr %inpkts36.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %inpkts36.i, align 8
  %38 = ptrtoint ptr %outpkts9.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %outpkts9.i, align 8
  %40 = ptrtoint ptr %outpkts39.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %outpkts39.i, align 8
  %41 = ptrtoint ptr %inbytes11.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %inbytes11.i, align 8
  %43 = ptrtoint ptr %inbytes42.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %inbytes42.i, align 8
  %44 = ptrtoint ptr %outbytes13.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %outbytes13.i, align 8
  %46 = ptrtoint ptr %outbytes45.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %outbytes45.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  %47 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i76.not.i = icmp eq i32 %48, %call30.i
  br i1 %cmp.i.i.i.i76.not.i, label %do.body28.i.if.end.i_crit_edge, label %do.body28.i.do.body28.i_crit_edge

do.body28.i.do.body28.i_crit_edge:                ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28.i

do.body28.i.if.end.i_crit_edge:                   ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body28.i.if.end.i_crit_edge, %do.end17.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call84.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %49
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.ip_vs_read_cpu_stats.exit_crit_edge

if.end.i.ip_vs_read_cpu_stats.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip_vs_read_cpu_stats.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ip_vs_read_cpu_stats.exit:                        ; preds = %if.end.i.ip_vs_read_cpu_stats.exit_crit_edge, %for.body.ip_vs_read_cpu_stats.exit_crit_edge
  %50 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr7, align 8
  %last_conns = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 3
  %52 = ptrtoint ptr %last_conns to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %last_conns, align 8
  %sub = sub i64 %51, %53
  %shl = shl i64 %sub, 9
  store i64 %51, ptr %last_conns, align 8
  %cps = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 6
  %54 = ptrtoint ptr %cps to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %cps, align 8
  %sub12 = sub i64 %shl, %55
  %shr = ashr i64 %sub12, 2
  %add = add i64 %shr, %55
  store i64 %add, ptr %cps, align 8
  %inpkts = getelementptr i8, ptr %e.0113, i32 -72
  %56 = ptrtoint ptr %inpkts to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %inpkts, align 8
  %last_inpkts = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 4
  %58 = ptrtoint ptr %last_inpkts to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %last_inpkts, align 8
  %sub15 = sub i64 %57, %59
  %shl16 = shl i64 %sub15, 9
  store i64 %57, ptr %last_inpkts, align 8
  %inpps = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 7
  %60 = ptrtoint ptr %inpps to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %inpps, align 8
  %sub20 = sub i64 %shl16, %61
  %shr21 = ashr i64 %sub20, 2
  %add23 = add i64 %shr21, %61
  store i64 %add23, ptr %inpps, align 8
  %outpkts = getelementptr i8, ptr %e.0113, i32 -64
  %62 = ptrtoint ptr %outpkts to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %outpkts, align 8
  %last_outpkts = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 5
  %64 = ptrtoint ptr %last_outpkts to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %last_outpkts, align 8
  %sub25 = sub i64 %63, %65
  %shl26 = shl i64 %sub25, 9
  store i64 %63, ptr %last_outpkts, align 8
  %outpps = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 8
  %66 = ptrtoint ptr %outpps to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %outpps, align 8
  %sub30 = sub i64 %shl26, %67
  %shr31 = ashr i64 %sub30, 2
  %add33 = add i64 %shr31, %67
  store i64 %add33, ptr %outpps, align 8
  %inbytes = getelementptr i8, ptr %e.0113, i32 -56
  %68 = ptrtoint ptr %inbytes to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %inbytes, align 8
  %last_inbytes = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 1
  %70 = ptrtoint ptr %last_inbytes to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %last_inbytes, align 8
  %sub35 = sub i64 %69, %71
  %shl36 = shl i64 %sub35, 4
  store i64 %69, ptr %last_inbytes, align 8
  %inbps = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 9
  %72 = ptrtoint ptr %inbps to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %inbps, align 8
  %sub40 = sub i64 %shl36, %73
  %shr41 = ashr i64 %sub40, 2
  %add43 = add i64 %shr41, %73
  store i64 %add43, ptr %inbps, align 8
  %outbytes = getelementptr i8, ptr %e.0113, i32 -48
  %74 = ptrtoint ptr %outbytes to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %outbytes, align 8
  %last_outbytes = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 2
  %76 = ptrtoint ptr %last_outbytes to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %last_outbytes, align 8
  %sub45 = sub i64 %75, %77
  %shl46 = shl i64 %sub45, 4
  store i64 %75, ptr %last_outbytes, align 8
  %outbps = getelementptr inbounds %struct.ip_vs_estimator, ptr %e.0113, i32 0, i32 10
  %78 = ptrtoint ptr %outbps to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %outbps, align 8
  %sub50 = sub i64 %shl46, %79
  %shr51 = ashr i64 %sub50, 2
  %add53 = add i64 %shr51, %79
  store i64 %add53, ptr %outbps, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %80 = ptrtoint ptr %e.0113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %e.0 = load ptr, ptr %e.0113, align 4
  %cmp.not = icmp eq ptr %e.0, %est_list
  br i1 %cmp.not, label %ip_vs_read_cpu_stats.exit.for.end_crit_edge, label %ip_vs_read_cpu_stats.exit.for.body_crit_edge

ip_vs_read_cpu_stats.exit.for.body_crit_edge:     ; preds = %ip_vs_read_cpu_stats.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

ip_vs_read_cpu_stats.exit.for.end_crit_edge:      ; preds = %ip_vs_read_cpu_stats.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %ip_vs_read_cpu_stats.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %est_lock) #6
  br label %skip

skip:                                             ; preds = %for.end, %entry.skip_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add61 = add i32 %81, 200
  %call62 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add61) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_estimator_net_cleanup(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %est_timer = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 64
  %call = tail call i32 @del_timer_sync(ptr noundef %est_timer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !16
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #6
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #6
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #6
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !17
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !18

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !19
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ip_vs_estimator_net_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_est.c", i32 195, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ip_vs_estimator_net_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipvs/ip_vs_est.c", i32 196, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2150212166}
!16 = !{i64 605844, i64 605905}
!17 = !{i64 608576}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 608861}
!20 = !{i64 2155119858}
!21 = !{i64 2155119700}
!22 = !{i64 2155120028}

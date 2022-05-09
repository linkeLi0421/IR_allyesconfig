; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/lag.c_pt.bc'
source_filename = "../drivers/infiniband/core/lag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [33 x i8] c"../drivers/infiniband/core/lag.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 695, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 723, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_lag_put_ah_roce_slave(ptr noundef readonly %xmit_slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xmit_slave, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %xmit_slave, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !18
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !19

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_lag_get_ah_roce_slave(ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %ah_attr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %smac.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah_attr, align 8
  %gid_type = getelementptr inbounds %struct.ib_gid_attr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gid_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %6 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_label, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true2.cleanup_crit_edge, label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah_attr, align 8
  %call = tail call ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef %13) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end8

if.then7:                                         ; preds = %rcu_read_lock.exit
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i23, label %if.then7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.then7.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.then7
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.then7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i.i.i30 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

if.end8:                                          ; preds = %rcu_read_lock.exit
  %tobool.not.i32 = icmp eq ptr %call, null
  br i1 %tobool.not.i32, label %if.end8.dev_hold.exit_crit_edge, label %do.body1.i

if.end8.dev_hold.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end8
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, 1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !18
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !19

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #5, !srcloc !20
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end8.dev_hold.exit_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i33, label %dev_hold.exit.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true.i36

dev_hold.exit.rcu_read_unlock.exit43_crit_edge:   ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit43

land.lhs.true.i36:                                ; preds = %dev_hold.exit
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit43

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit43

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_unlock.exit43

rcu_read_unlock.exit43:                           ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, %dev_hold.exit.rcu_read_unlock.exit43_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i.i.i40 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i42 = add i32 %35, -1
  store volatile i32 %sub.i.i.i42, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %rcu_read_unlock.exit43.put_crit_edge, label %netif_is_bond_master.exit

rcu_read_unlock.exit43.put_crit_edge:             ; preds = %rcu_read_unlock.exit43
  call void @__sanitizer_cov_trace_pc() #7
  br label %put

netif_is_bond_master.exit:                        ; preds = %rcu_read_unlock.exit43
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %38 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %39, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_master.exit.put_crit_edge, label %if.end11

netif_is_bond_master.exit.put_crit_edge:          ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %put

if.end11:                                         ; preds = %netif_is_bond_master.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %smac.i.i) #5
  %dgid.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %40 = call ptr @memset(ptr %smac.i.i, i32 255, i32 6)
  %41 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dgid.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %dgid.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %44, %42
  %arrayidx4.i.i.i = getelementptr %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %46, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 19
  %47 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %48 to i32
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 21
  %49 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %needed_headroom.i.i, align 8
  %conv1.i.i = zext i16 %50 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %and.i.i45 = and i32 %add.i.i, 131056
  %add3.i.i = select i1 %cmp.i.i.i, i32 58, i32 78
  %add5.i.i = add nuw nsw i32 %and.i.i45, %add3.i.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add5.i.i, i32 noundef %flags, i32 noundef 0, i32 noundef -1) #5
  %tobool7.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.then.i46, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end11
  %51 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call, ptr %51, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 %add5.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %56, i32 %add5.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call8.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #5
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %61 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i.i.i = getelementptr i8, ptr %60, i32 %conv.i.i.i.i
  %62 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flow_label, align 8
  %and1.i.i.i = lshr i32 %63, 14
  %shr.i.i.i = and i32 %and1.i.i.i, 63
  %xor.i2.i.i = xor i32 %shr.i.i.i, %63
  %64 = trunc i32 %xor.i2.i.i to i16
  %conv.i3.i.i = or i16 %64, -16384
  %65 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i3.i.i, ptr %add.ptr.i.i.i.i, align 2
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 4791, ptr %dest.i.i, align 2
  %len.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 8, ptr %len.i.i, align 2
  br i1 %cmp.i.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 20) #5
  %68 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i, align 4
  %70 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i6.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i7.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i8.i.i = sub i32 %sub.ptr.lhs.cast.i6.i.i, %sub.ptr.rhs.cast.i7.i.i
  %conv.i9.i.i = trunc i32 %sub.ptr.sub.i8.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %72 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i9.i.i, ptr %network_header.i.i.i, align 4
  %conv.i.i11.i.i = and i32 %sub.ptr.sub.i8.i.i, 65535
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %71, i32 %conv.i.i11.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i12.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %frag_off.i.i, align 2
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i12.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 17, ptr %protocol.i.i, align 1
  %75 = ptrtoint ptr %add.ptr.i.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 69, ptr %add.ptr.i.i12.i.i, align 4
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i12.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 28, ptr %tot_len.i.i, align 2
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i12.i.i, i32 0, i32 8
  %77 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ah_attr, align 8
  %gid.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %78, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %gid.i.i, i32 12
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %add.ptr.i.i, align 1
  %81 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i12.i.i, i32 0, i32 9
  %add.ptr24.i.i = getelementptr i8, ptr %dgid.i.i, i32 12
  %82 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr24.i.i, align 1
  %84 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %daddr.i.i, align 4
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 40) #5
  %85 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i.i, align 4
  %87 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i15.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i16.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i17.i.i = sub i32 %sub.ptr.lhs.cast.i15.i.i, %sub.ptr.rhs.cast.i16.i.i
  %conv.i18.i.i = trunc i32 %sub.ptr.sub.i17.i.i to i16
  %network_header.i19.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %89 = ptrtoint ptr %network_header.i19.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i18.i.i, ptr %network_header.i19.i.i, align 4
  %conv.i.i22.i.i = and i32 %sub.ptr.sub.i17.i.i, 65535
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %88, i32 %conv.i.i22.i.i
  %90 = ptrtoint ptr %add.ptr.i.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load27.i.i = load i8, ptr %add.ptr.i.i23.i.i, align 4
  %bf.clear28.i.i = and i8 %bf.load27.i.i, 15
  %bf.set29.i.i = or i8 %bf.clear28.i.i, 96
  store i8 %bf.set29.i.i, ptr %add.ptr.i.i23.i.i, align 4
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i23.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 17, ptr %nexthdr.i.i, align 2
  %flow_lbl.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i23.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %flow_label to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flow_label, align 8
  %94 = ptrtoint ptr %flow_lbl.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %flow_lbl.i.i, align 1
  %saddr32.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i23.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ah_attr, align 8
  %gid35.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %96, i32 0, i32 2
  %97 = call ptr @memcpy(ptr %saddr32.i.i, ptr %gid35.i.i, i32 16)
  %daddr37.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i23.i.i, i32 0, i32 6
  %98 = call ptr @memcpy(ptr %daddr37.i.i, ptr %dgid.i.i, i32 16)
  br label %if.end.i

if.then.i46:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %smac.i.i) #5
  br label %put

if.end.i:                                         ; preds = %if.else.i.i, %if.then13.i.i
  %cond46.i.i = phi i16 [ -31011, %if.else.i.i ], [ 2048, %if.then13.i.i ]
  %call42.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #5
  %99 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i.i, align 4
  %101 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i26.i.i = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast.i27.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i28.i.i = sub i32 %sub.ptr.lhs.cast.i26.i.i, %sub.ptr.rhs.cast.i27.i.i
  %conv.i29.i.i = trunc i32 %sub.ptr.sub.i28.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %103 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i29.i.i, ptr %mac_header.i.i.i, align 2
  %conv.i.i31.i.i = and i32 %sub.ptr.sub.i28.i.i, 65535
  %add.ptr.i.i32.i.i = getelementptr i8, ptr %102, i32 %conv.i.i31.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i32.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %cond46.i.i, ptr %h_proto.i.i, align 1
  %protocol48.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %105 = ptrtoint ptr %protocol48.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %cond46.i.i, ptr %protocol48.i.i, align 8
  %106 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ah_attr, align 8
  %call52.i.i = call i32 @rdma_read_gid_l2_fields(ptr noundef %107, ptr noundef null, ptr noundef nonnull %smac.i.i) #5
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i32.i.i, i32 0, i32 1
  %108 = call ptr @memcpy(ptr %h_source.i.i, ptr %smac.i.i, i32 6)
  %109 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %110 = call ptr @memcpy(ptr %add.ptr.i.i32.i.i, ptr %109, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %smac.i.i) #5
  %111 = call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %114, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #5
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %lag_flags.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 38
  %115 = ptrtoint ptr %lag_flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %lag_flags.i, align 8
  %and.i47 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool2.i48 = icmp ne i32 %and.i47, 0
  %call4.i = call ptr @netdev_get_xmit_slave(ptr noundef %call, ptr noundef nonnull %call.i.i.i, i1 noundef zeroext %tobool2.i48) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %rcu_read_lock.exit.i.if.end7.i_crit_edge, label %do.body1.i.i

rcu_read_lock.exit.i.if.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 118
  %118 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i49 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i49 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i, align 4
  %add.i16.i = add i32 %126, %120
  %127 = inttoptr i32 %add.i16.i to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add13.i.i = add i32 %129, 1
  store i32 %add13.i.i, ptr %127, align 4
  %130 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !18
  %and.i.i.i.i = and i32 %130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !19

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #5, !srcloc !20
  br label %if.end7.i

if.end7.i:                                        ; preds = %dev_hold.exit.i, %rcu_read_lock.exit.i.if.end7.i_crit_edge
  %call.i17.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i17.i, label %if.end7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i20.i

if.end7.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

land.lhs.true.i20.i:                              ; preds = %if.end7.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i20.i.rcu_read_unlock.exit.i_crit_edge, %if.end7.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %131 = call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i.i.i.i24.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %134, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #5
  br label %put

put:                                              ; preds = %rcu_read_unlock.exit.i, %if.then.i46, %netif_is_bond_master.exit.put_crit_edge, %rcu_read_unlock.exit43.put_crit_edge
  %slave.0 = phi ptr [ null, %netif_is_bond_master.exit.put_crit_edge ], [ %call4.i, %rcu_read_unlock.exit.i ], [ inttoptr (i32 -12 to ptr), %if.then.i46 ], [ null, %rcu_read_unlock.exit43.put_crit_edge ]
  br i1 %tobool.not.i32, label %put.cleanup_crit_edge, label %do.body1.i59

put.cleanup_crit_edge:                            ; preds = %put
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i59:                                     ; preds = %put
  %135 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %pcpu_refcnt.i51 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %136 = ptrtoint ptr %pcpu_refcnt.i51 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcpu_refcnt.i51, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i52 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i52 to ptr
  %cpu.i53 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %cpu.i53 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu.i53, align 4
  %arrayidx.i54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i54, align 4
  %add.i55 = add i32 %144, %138
  %145 = inttoptr i32 %add.i55 to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %add13.i56 = add i32 %147, -1
  store i32 %add13.i56, ptr %145, align 4
  %148 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !18
  %and.i.i.i57 = and i32 %148, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i57)
  %tobool24.not.i58 = icmp eq i32 %and.i.i.i57, 0
  br i1 %tobool24.not.i58, label %if.then28.i60, label %do.body1.i59.do.end30.i61_crit_edge, !prof !19

do.body1.i59.do.end30.i61_crit_edge:              ; preds = %do.body1.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30.i61

if.then28.i60:                                    ; preds = %do.body1.i59
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %do.end30.i61

do.end30.i61:                                     ; preds = %if.then28.i60, %do.body1.i59.do.end30.i61_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #5, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i61, %put.cleanup_crit_edge, %rcu_read_unlock.exit, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %rcu_read_unlock.exit ], [ null, %land.lhs.true2.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %slave.0, %put.cleanup_crit_edge ], [ %slave.0, %do.end30.i61 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_get_xmit_slave(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__warned", i1 false, i1 false}
!2 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!3 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !2, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 755014, i64 755075}
!18 = !{i64 757746}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 758031}
!21 = !{i64 2149581775}
!22 = !{i64 2149582041}

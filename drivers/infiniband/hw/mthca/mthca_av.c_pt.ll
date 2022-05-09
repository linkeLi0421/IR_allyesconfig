; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_av.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_av.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mthca_ah = type { %struct.ib_ah, i32, i32, ptr, i32 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.mthca_av = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, [4 x i32] }
%struct.ib_ud_header = type { i32, %struct.ib_unpacked_lrh, i32, %struct.ib_unpacked_eth, i32, %struct.ib_unpacked_vlan, i32, %struct.ib_unpacked_grh, i32, %struct.ib_unpacked_ip4, i32, %struct.ib_unpacked_udp, %struct.ib_unpacked_bth, %struct.ib_unpacked_deth, i32, i32 }
%struct.ib_unpacked_lrh = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.ib_unpacked_eth = type { [4 x i8], [2 x i8], [2 x i8], [4 x i8], i16 }
%struct.ib_unpacked_vlan = type { i16, i16 }
%struct.ib_unpacked_grh = type { i8, i8, i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.ib_unpacked_ip4 = type { i8, i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ib_unpacked_udp = type { i16, i16, i16, i16 }
%struct.ib_unpacked_bth = type { i8, i8, i8, i8, i8, i16, i32, i8, i32 }
%struct.ib_unpacked_deth = type { i32, i32 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mthca_av\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.mthca_rate_to_ib = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 3, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.mthca_ah_query = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 3, i32 5], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../drivers/infiniband/hw/mthca/mthca_av.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 340, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"switch.table.mthca_rate_to_ib\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [28 x i8] c"switch.table.mthca_ah_query\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @switch.table.mthca_rate_to_ib, ptr @switch.table.mthca_ah_query], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_rate_to_ib to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_ah_query to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_rate_to_ib(ptr nocapture noundef readonly %dev, i8 noundef zeroext %mthca_rate, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %stat_rate_support = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 38
  %2 = ptrtoint ptr %stat_rate_support to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stat_rate_support, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ne i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mthca_rate)
  %tobool3.not = icmp eq i8 %mthca_rate, 0
  %or.cond = or i1 %tobool3.not, %cmp
  br i1 %or.cond, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  %sub = add i32 %port, -1
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 36, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %mthca_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %mthca_rate, label %if.end.memfree_rate_to_ib.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb2.i
    i8 3, label %sw.bb6.i
  ]

if.end.memfree_rate_to_ib.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %memfree_rate_to_ib.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = lshr i8 %5, 3
  br label %memfree_rate_to_ib.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = lshr i8 %5, 2
  br label %memfree_rate_to_ib.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = lshr i8 %5, 1
  br label %memfree_rate_to_ib.exit

memfree_rate_to_ib.exit:                          ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i, %if.end.memfree_rate_to_ib.exit_crit_edge
  %port_rate.sink.i = phi i8 [ %9, %sw.bb6.i ], [ %8, %sw.bb2.i ], [ %7, %sw.bb.i ], [ %5, %if.end.memfree_rate_to_ib.exit_crit_edge ]
  %conv11.i = zext i8 %port_rate.sink.i to i32
  %call12.i = tail call i32 @mult_to_ib_rate(i32 noundef %conv11.i) #10
  br label %return

if.else:                                          ; preds = %entry
  %switch.tableidx = add i8 %mthca_rate, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub7 = add i32 %port, -1
  %arrayidx8 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 36, i32 %sub7
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv3.i = zext i8 %12 to i32
  %call.i = tail call i32 @mult_to_ib_rate(i32 noundef %conv3.i) #10
  br label %return

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mthca_rate_to_ib, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.default.i, %memfree_rate_to_ib.exit, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call12.i, %memfree_rate_to_ib.exit ], [ 2, %if.then.return_crit_edge ], [ %call.i, %sw.default.i ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mthca_get_rate(ptr nocapture noundef readonly %dev, i32 noundef %static_rate, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %static_rate)
  %tobool.not = icmp eq i32 %static_rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @ib_rate_to_mult(i32 noundef %static_rate) #10
  %sub = add i32 %port, -1
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 36, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp slt i32 %call, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv7 = trunc i32 %call to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %conv7)
  %cmp.not.i = icmp ugt i8 %1, %conv7
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end.i:                                         ; preds = %if.then5
  %sub.i = add i8 %1, -1
  %div910.i = udiv i8 %sub.i, %conv7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %div910.i)
  %4 = icmp ult i8 %div910.i, 4
  br i1 %4, label %switch.lookup, label %if.end.i.if.end14_crit_edge

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else:                                          ; preds = %if.end
  %conv12 = trunc i32 %static_rate to i8
  %switch.tableidx = add i8 %conv12, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %5 = icmp ult i8 %switch.tableidx, 4
  br i1 %5, label %switch.lookup30, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i8 %div910.i to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 16843520, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %if.end14

switch.lookup30:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast31 = zext i8 %switch.tableidx to i32
  %switch.shiftamt32 = shl nuw nsw i32 %switch.cast31, 3
  %switch.downshift33 = lshr i32 50332161, %switch.shiftamt32
  %switch.masked34 = trunc i32 %switch.downshift33 to i8
  br label %if.end14

if.end14:                                         ; preds = %switch.lookup30, %switch.lookup, %if.else.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %rate.0 = phi i8 [ 0, %if.then5.if.end14_crit_edge ], [ %switch.masked, %switch.lookup ], [ 2, %if.end.i.if.end14_crit_edge ], [ %switch.masked34, %switch.lookup30 ], [ 0, %if.else.if.end14_crit_edge ]
  %stat_rate_support = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 38
  %6 = ptrtoint ptr %stat_rate_support to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %stat_rate_support, align 8
  %conv15 = zext i16 %7 to i32
  %conv16 = zext i8 %rate.0 to i32
  %shl = shl nuw nsw i32 1, %conv16
  %and = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool17.not, i8 1, i8 %rate.0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %spec.store.select, %if.end14 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ib_rate_to_mult(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_create_ah(ptr noundef %dev, ptr noundef %pd, ptr nocapture noundef readonly %ah_attr, ptr noundef %ah) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 32) #11
  %av2 = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %4 = ptrtoint ptr %av2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %av2, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %on_hca_fail.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

on_hca_fail.thread:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  br label %if.end37

if.else:                                          ; preds = %entry
  %sqp_count = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sqp_count, i32 noundef 4) #7
  %6 = ptrtoint ptr %sqp_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sqp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.else.on_hca_fail_crit_edge

if.else.on_hca_fail_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_hca_fail

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mthca_flags.i, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.on_hca_fail_crit_edge

land.lhs.true.on_hca_fail_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_hca_fail

if.then11:                                        ; preds = %land.lhs.true
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 4
  %call12 = tail call i32 @mthca_alloc(ptr noundef %alloc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp = icmp eq i32 %call12, -1
  br i1 %cmp, label %if.then11.on_hca_fail_crit_edge, label %if.end14

if.then11.on_hca_fail_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_hca_fail

if.end14:                                         ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i134 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 32) #11
  %tobool16.not = icmp eq ptr %call7.i134, null
  br i1 %tobool16.not, label %if.end14.on_hca_fail_crit_edge, label %if.end18

if.end14.on_hca_fail_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_hca_fail

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %ddr_av_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 2
  %12 = ptrtoint ptr %ddr_av_base to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ddr_av_base, align 8
  %mul = shl i32 %call12, 5
  %14 = trunc i64 %13 to i32
  %conv21 = add i32 %mul, %14
  %avdma = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 4
  %15 = ptrtoint ptr %avdma to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv21, ptr %avdma, align 4
  br label %on_hca_fail

on_hca_fail:                                      ; preds = %if.end18, %if.end14.on_hca_fail_crit_edge, %if.then11.on_hca_fail_crit_edge, %land.lhs.true.on_hca_fail_crit_edge, %if.else.on_hca_fail_crit_edge
  %index.0.ph = phi i32 [ %call12, %if.end14.on_hca_fail_crit_edge ], [ %call12, %if.end18 ], [ -1, %if.then11.on_hca_fail_crit_edge ], [ -1, %land.lhs.true.on_hca_fail_crit_edge ], [ -1, %if.else.on_hca_fail_crit_edge ]
  %av.0.ph = phi ptr [ null, %if.end14.on_hca_fail_crit_edge ], [ %call7.i134, %if.end18 ], [ null, %if.then11.on_hca_fail_crit_edge ], [ null, %land.lhs.true.on_hca_fail_crit_edge ], [ null, %if.else.on_hca_fail_crit_edge ]
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, 1
  br i1 %cmp25, label %if.then27, label %on_hca_fail.if.end37_crit_edge

on_hca_fail.if.end37_crit_edge:                   ; preds = %on_hca_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then27:                                        ; preds = %on_hca_fail
  %av_table28 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26
  %17 = ptrtoint ptr %av_table28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %av_table28, align 8
  %avdma29 = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 4
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %18, i32 noundef 2848, ptr noundef %avdma29) #7
  %av31 = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %19 = ptrtoint ptr %av31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %av31, align 4
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.then27.cleanup_crit_edge, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.then27.if.end37_crit_edge, %on_hca_fail.if.end37_crit_edge, %on_hca_fail.thread
  %index.0148 = phi i32 [ %index.0.ph, %on_hca_fail.if.end37_crit_edge ], [ %index.0.ph, %if.then27.if.end37_crit_edge ], [ -1, %on_hca_fail.thread ]
  %av.1 = phi ptr [ %av.0.ph, %on_hca_fail.if.end37_crit_edge ], [ %call.i, %if.then27.if.end37_crit_edge ], [ %call7.i, %on_hca_fail.thread ]
  %lkey = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lkey, align 8
  %key = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 2
  %22 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %key, align 4
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %23 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pd_num, align 8
  %port_num.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %25 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_num.i, align 4
  %shl = shl i32 %26, 24
  %or = or i32 %shl, %24
  %27 = ptrtoint ptr %av.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %av.1, align 4
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %29, label %if.end37.rdma_ah_get_path_bits.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then3.i
  ]

if.end37.rdma_ah_get_path_bits.exit_crit_edge:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_get_path_bits.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %31 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %src_path_bits.i = getelementptr inbounds %struct.ib_ah_attr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %src_path_bits.i, align 2
  br label %rdma_ah_get_path_bits.exit

if.then3.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %src_path_bits4.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %34 = ptrtoint ptr %src_path_bits4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %src_path_bits4.i, align 4
  br label %rdma_ah_get_path_bits.exit

rdma_ah_get_path_bits.exit:                       ; preds = %if.then3.i, %if.then.i, %if.end37.rdma_ah_get_path_bits.exit_crit_edge
  %retval.0.i = phi i8 [ %33, %if.then.i ], [ %35, %if.then3.i ], [ 0, %if.end37.rdma_ah_get_path_bits.exit_crit_edge ]
  %g_slid = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 2
  %36 = ptrtoint ptr %g_slid to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i, ptr %g_slid, align 1
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %38, label %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge [
    i32 1, label %if.then.i136
    i32 3, label %if.then4.i
  ]

rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge: ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_get_dlid.exit

if.then.i136:                                     ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 8
  %conv.i = zext i16 %42 to i32
  br label %rdma_ah_get_dlid.exit

if.then4.i:                                       ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  br label %rdma_ah_get_dlid.exit

rdma_ah_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i136, %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge
  %retval.0.i137 = phi i32 [ %conv.i, %if.then.i136 ], [ %45, %if.then4.i ], [ 0, %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge ]
  %conv41 = trunc i32 %retval.0.i137 to i16
  %dlid = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 3
  %46 = ptrtoint ptr %dlid to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv41, ptr %dlid, align 2
  %static_rate.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 2
  %47 = ptrtoint ptr %static_rate.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %static_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %rdma_ah_get_dlid.exit.mthca_get_rate.exit_crit_edge, label %lor.lhs.false.i

rdma_ah_get_dlid.exit.mthca_get_rate.exit_crit_edge: ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mthca_get_rate.exit

lor.lhs.false.i:                                  ; preds = %rdma_ah_get_dlid.exit
  %conv43 = zext i8 %48 to i32
  %49 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_num.i, align 4
  %call.i139 = tail call i32 @ib_rate_to_mult(i32 noundef %conv43) #10
  %sub.i = add i32 %50, -1
  %arrayidx.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 36, i32 %sub.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %conv.i140 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i139, i32 %conv.i140)
  %cmp.not.i = icmp slt i32 %call.i139, %conv.i140
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.mthca_get_rate.exit_crit_edge

lor.lhs.false.i.mthca_get_rate.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mthca_get_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %53 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mthca_flags.i, align 8
  %and.i.i = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %conv7.i = trunc i32 %call.i139 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %conv7.i)
  %cmp.not.i.i = icmp ugt i8 %52, %conv7.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then5.i.if.end14.i_crit_edge

if.then5.i.if.end14.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end.i.i:                                       ; preds = %if.then5.i
  %sub.i.i = add i8 %52, -1
  %div910.i.i = udiv i8 %sub.i.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %div910.i.i)
  %55 = icmp ult i8 %div910.i.i, 4
  br i1 %55, label %switch.lookup, label %if.end.i.i.if.end14.i_crit_edge

if.end.i.i.if.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %switch.tableidx = add i8 %48, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %56 = icmp ult i8 %switch.tableidx, 4
  br i1 %56, label %switch.lookup149, label %if.else.i.if.end14.i_crit_edge

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i8 %div910.i.i to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 16843520, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %if.end14.i

switch.lookup149:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast150 = zext i8 %switch.tableidx to i32
  %switch.shiftamt151 = shl nuw nsw i32 %switch.cast150, 3
  %switch.downshift152 = lshr i32 50332161, %switch.shiftamt151
  %switch.masked153 = trunc i32 %switch.downshift152 to i8
  br label %if.end14.i

if.end14.i:                                       ; preds = %switch.lookup149, %switch.lookup, %if.else.i.if.end14.i_crit_edge, %if.end.i.i.if.end14.i_crit_edge, %if.then5.i.if.end14.i_crit_edge
  %rate.0.i = phi i8 [ 0, %if.then5.i.if.end14.i_crit_edge ], [ %switch.masked, %switch.lookup ], [ 2, %if.end.i.i.if.end14.i_crit_edge ], [ %switch.masked153, %switch.lookup149 ], [ 0, %if.else.i.if.end14.i_crit_edge ]
  %stat_rate_support.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 38
  %57 = ptrtoint ptr %stat_rate_support.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %stat_rate_support.i, align 8
  %conv15.i = zext i16 %58 to i32
  %conv16.i = zext i8 %rate.0.i to i32
  %shl.i = shl nuw nsw i32 1, %conv16.i
  %and.i141 = and i32 %shl.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool17.not.i = icmp eq i32 %and.i141, 0
  %rate.0.i.op = or i8 %rate.0.i, 48
  %phi.bo = select i1 %tobool17.not.i, i8 49, i8 %rate.0.i.op
  br label %mthca_get_rate.exit

mthca_get_rate.exit:                              ; preds = %if.end14.i, %lor.lhs.false.i.mthca_get_rate.exit_crit_edge, %rdma_ah_get_dlid.exit.mthca_get_rate.exit_crit_edge
  %retval.0.i142 = phi i8 [ %phi.bo, %if.end14.i ], [ 48, %lor.lhs.false.i.mthca_get_rate.exit_crit_edge ], [ 48, %rdma_ah_get_dlid.exit.mthca_get_rate.exit_crit_edge ]
  %msg_sr = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 6
  %59 = ptrtoint ptr %msg_sr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %retval.0.i142, ptr %msg_sr, align 2
  %sl.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %60 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sl.i, align 8
  %conv50 = zext i8 %61 to i32
  %shl51 = shl i32 %conv50, 28
  %sl_tclass_flowlabel = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 8
  %62 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl51, ptr %sl_tclass_flowlabel, align 4
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %63 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ah_flags.i, align 8
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool54.not = icmp eq i8 %65, 0
  br i1 %tobool54.not, label %if.else74, label %if.then55

if.then55:                                        ; preds = %mthca_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = or i8 %retval.0.i, -128
  %67 = ptrtoint ptr %g_slid to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %g_slid, align 1
  %68 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port_num.i, align 4
  %sub = add i32 %69, 255
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 3
  %70 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %gid_table_len, align 4
  %mul62 = mul i32 %sub, %71
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %72 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sgid_index, align 4
  %74 = trunc i32 %mul62 to i8
  %conv65 = add i8 %73, %74
  %gid_index = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 5
  %75 = ptrtoint ptr %gid_index to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv65, ptr %gid_index, align 1
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %76 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hop_limit, align 1
  %hop_limit66 = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 7
  %78 = ptrtoint ptr %hop_limit66 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %hop_limit66, align 1
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %79 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %traffic_class, align 2
  %conv67 = zext i8 %80 to i32
  %shl68 = shl nuw nsw i32 %conv67, 20
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %81 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flow_label, align 8
  %or69 = or i32 %82, %shl51
  %or71 = or i32 %or69, %shl68
  %83 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or71, ptr %sl_tclass_flowlabel, align 4
  %dgid = getelementptr inbounds %struct.mthca_av, ptr %av.1, i32 0, i32 9
  %dgid72 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %dgid, ptr %dgid72, i32 16)
  br label %if.end76

if.else74:                                        ; preds = %mthca_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.mthca_av, ptr %av.1, i32 0, i32 9, i32 3
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %arrayidx, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then55
  %86 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp78 = icmp eq i32 %87, 0
  br i1 %cmp78, label %if.then80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %av_map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 3
  %88 = ptrtoint ptr %av_map to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %av_map, align 8
  %mul82 = shl i32 %index.0148, 5
  %add.ptr = getelementptr i8, ptr %89, i32 %mul82
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %av.1, i32 noundef 32) #7
  tail call void @kfree(ptr noundef %av.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end76.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then27.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_destroy_ah(ptr noundef %dev, ptr nocapture noundef readonly %ah) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 4
  %avdma = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 4
  %3 = ptrtoint ptr %avdma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %avdma, align 4
  %conv = zext i32 %4 to i64
  %ddr_av_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %ddr_av_base to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ddr_av_base, align 8
  %sub = sub i64 %conv, %6
  %div14 = lshr i64 %sub, 5
  %conv2 = trunc i64 %div14 to i32
  tail call void @mthca_free(ptr noundef %alloc, i32 noundef %conv2) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %av_table4 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26
  %7 = ptrtoint ptr %av_table4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %av_table4, align 8
  %av = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %9 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %av, align 4
  %avdma5 = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 4
  %11 = ptrtoint ptr %avdma5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avdma5, align 4
  tail call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %av7 = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %13 = ptrtoint ptr %av7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %av7, align 4
  tail call void @kfree(ptr noundef %14) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_ah_grh_present(ptr nocapture noundef readonly %ah) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %av = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %0 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %av, align 4
  %g_slid = getelementptr inbounds %struct.mthca_av, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %g_slid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %g_slid, align 1
  %.lobit = lshr i8 %3, 7
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_read_ah(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ah, ptr nocapture noundef writeonly %header) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %av = getelementptr inbounds %struct.mthca_ah, ptr %ah, i32 0, i32 3
  %2 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %av, align 4
  %sl_tclass_flowlabel = getelementptr inbounds %struct.mthca_av, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sl_tclass_flowlabel, align 4
  %shr = lshr i32 %5, 28
  %conv = trunc i32 %shr to i8
  %service_level = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %service_level to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %service_level, align 2
  %7 = load ptr, ptr %av, align 4
  %dlid = getelementptr inbounds %struct.mthca_av, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dlid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dlid, align 2
  %destination_lid = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %destination_lid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %destination_lid, align 4
  %11 = load ptr, ptr %av, align 4
  %g_slid = getelementptr inbounds %struct.mthca_av, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %g_slid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %g_slid, align 1
  %14 = and i8 %13, 127
  %conv5 = zext i8 %14 to i16
  %source_lid = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %source_lid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5, ptr %source_lid, align 4
  %16 = load ptr, ptr %av, align 4
  %g_slid.i = getelementptr inbounds %struct.mthca_av, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %g_slid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %g_slid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not = icmp sgt i8 %18, -1
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sl_tclass_flowlabel9 = getelementptr inbounds %struct.mthca_av, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %sl_tclass_flowlabel9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sl_tclass_flowlabel9, align 4
  %shr10 = lshr i32 %20, 20
  %conv12 = trunc i32 %shr10 to i8
  %traffic_class = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %traffic_class to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12, ptr %traffic_class, align 1
  %22 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %av, align 4
  %sl_tclass_flowlabel14 = getelementptr inbounds %struct.mthca_av, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %sl_tclass_flowlabel14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sl_tclass_flowlabel14, align 4
  %and15 = and i32 %25, 1048575
  %flow_label = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and15, ptr %flow_label, align 4
  %27 = load ptr, ptr %av, align 4
  %hop_limit = getelementptr inbounds %struct.mthca_av, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hop_limit, align 1
  %hop_limit19 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 5
  %30 = ptrtoint ptr %hop_limit19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %hop_limit19, align 1
  %source_gid = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 6
  %sgid_attr = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 3
  %31 = ptrtoint ptr %sgid_attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgid_attr, align 4
  %gid = getelementptr inbounds %struct.ib_gid_attr, ptr %32, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %source_gid, ptr %gid, i32 16)
  %destination_gid = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 7
  %34 = load ptr, ptr %av, align 4
  %dgid = getelementptr inbounds %struct.mthca_av, ptr %34, i32 0, i32 9
  %35 = call ptr @memcpy(ptr %destination_gid, ptr %dgid, i32 16)
  br label %return

return:                                           ; preds = %if.then7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_ah_query(ptr nocapture noundef readonly %ibah, ptr nocapture noundef %attr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibah, align 4
  %av = getelementptr inbounds %struct.mthca_ah, ptr %ibah, i32 0, i32 3
  %type = getelementptr inbounds %struct.mthca_ah, ptr %ibah, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %av, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr = lshr i32 %7, 24
  %8 = call ptr @memset(ptr %attr, i32 0, i32 56)
  %type2 = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 4
  %9 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type2, align 4
  %type3 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 5
  %11 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type3, align 4
  %12 = load ptr, ptr %av, align 4
  %dlid = getelementptr inbounds %struct.mthca_av, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dlid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dlid, align 2
  %15 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %10, label %if.end.rdma_ah_set_dlid.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then5.i
  ]

if.end.rdma_ah_set_dlid.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_set_dlid.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %16, align 8
  br label %rdma_ah_set_dlid.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %14 to i32
  %18 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %18, align 8
  br label %rdma_ah_set_dlid.exit

rdma_ah_set_dlid.exit:                            ; preds = %if.then5.i, %if.then.i, %if.end.rdma_ah_set_dlid.exit_crit_edge
  %20 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %av, align 4
  %sl_tclass_flowlabel = getelementptr inbounds %struct.mthca_av, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sl_tclass_flowlabel, align 4
  %shr6 = lshr i32 %23, 28
  %conv7 = trunc i32 %shr6 to i8
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 1
  %24 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7, ptr %sl1.i, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 3
  %25 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr, ptr %port_num1.i, align 4
  %26 = load ptr, ptr %av, align 4
  %msg_sr = getelementptr inbounds %struct.mthca_av, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %msg_sr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msg_sr, align 2
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i57

if.then.i57:                                      ; preds = %rdma_ah_set_dlid.exit
  %31 = and i8 %28, 7
  %stat_rate_support.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 38
  %32 = ptrtoint ptr %stat_rate_support.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %stat_rate_support.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %33)
  %cmp.i = icmp ne i16 %33, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.i = icmp eq i8 %31, 0
  %or.cond.i = or i1 %tobool3.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %if.then.i57.mthca_rate_to_ib.exit_crit_edge

if.then.i57.mthca_rate_to_ib.exit_crit_edge:      ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %mthca_rate_to_ib.exit

if.end.i:                                         ; preds = %if.then.i57
  %sub.i = add nsw i32 %shr, -1
  %arrayidx.i = getelementptr %struct.mthca_dev, ptr %1, i32 0, i32 36, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %trunc = trunc i8 %28 to i3
  %36 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.5)
  switch i3 %trunc, label %if.end.i.memfree_rate_to_ib.exit.i_crit_edge [
    i3 2, label %sw.bb.i.i
    i3 1, label %sw.bb2.i.i
    i3 3, label %sw.bb6.i.i
  ]

if.end.i.memfree_rate_to_ib.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %memfree_rate_to_ib.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = lshr i8 %35, 3
  br label %memfree_rate_to_ib.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = lshr i8 %35, 2
  br label %memfree_rate_to_ib.exit.i

sw.bb6.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = lshr i8 %35, 1
  br label %memfree_rate_to_ib.exit.i

memfree_rate_to_ib.exit.i:                        ; preds = %sw.bb6.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.end.i.memfree_rate_to_ib.exit.i_crit_edge
  %port_rate.sink.i.i = phi i8 [ %39, %sw.bb6.i.i ], [ %38, %sw.bb2.i.i ], [ %37, %sw.bb.i.i ], [ %35, %if.end.i.memfree_rate_to_ib.exit.i_crit_edge ]
  %conv11.i.i = zext i8 %port_rate.sink.i.i to i32
  %call12.i.i = tail call i32 @mult_to_ib_rate(i32 noundef %conv11.i.i) #10
  br label %mthca_rate_to_ib.exit

if.else.i:                                        ; preds = %rdma_ah_set_dlid.exit
  %trunc60 = trunc i8 %28 to i3
  %40 = sext i3 %trunc60 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %41 = icmp sgt i3 %trunc60, 0
  br i1 %41, label %switch.lookup, label %sw.default.i.i

sw.default.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i = add nsw i32 %shr, -1
  %arrayidx8.i = getelementptr %struct.mthca_dev, ptr %1, i32 0, i32 36, i32 %sub7.i
  %42 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.i, align 1
  %conv3.i.i = zext i8 %43 to i32
  %call.i.i = tail call i32 @mult_to_ib_rate(i32 noundef %conv3.i.i) #10
  br label %mthca_rate_to_ib.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.tableidx = add i3 %trunc60, -1
  %44 = sext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mthca_ah_query, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mthca_rate_to_ib.exit

mthca_rate_to_ib.exit:                            ; preds = %switch.lookup, %sw.default.i.i, %memfree_rate_to_ib.exit.i, %if.then.i57.mthca_rate_to_ib.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i.i, %memfree_rate_to_ib.exit.i ], [ 2, %if.then.i57.mthca_rate_to_ib.exit_crit_edge ], [ %call.i.i, %sw.default.i.i ], [ %switch.load, %switch.lookup ]
  %conv12 = trunc i32 %retval.0.i to i8
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 2
  %46 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv12, ptr %static_rate1.i, align 1
  %47 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %av, align 4
  %g_slid = getelementptr inbounds %struct.mthca_av, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %g_slid to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %g_slid, align 1
  %51 = and i8 %50, 127
  %52 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %10, label %mthca_rate_to_ib.exit.rdma_ah_set_path_bits.exit_crit_edge [
    i32 1, label %if.then.i59
    i32 3, label %if.then4.i
  ]

mthca_rate_to_ib.exit.rdma_ah_set_path_bits.exit_crit_edge: ; preds = %mthca_rate_to_ib.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_set_path_bits.exit

if.then.i59:                                      ; preds = %mthca_rate_to_ib.exit
  call void @__sanitizer_cov_trace_pc() #9
  %53 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %51, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

if.then4.i:                                       ; preds = %mthca_rate_to_ib.exit
  call void @__sanitizer_cov_trace_pc() #9
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6, i32 0, i32 1
  %55 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %51, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4.i, %if.then.i59, %mthca_rate_to_ib.exit.rdma_ah_set_path_bits.exit_crit_edge
  %56 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %av, align 4
  %g_slid.i = getelementptr inbounds %struct.mthca_av, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %g_slid.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %g_slid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %tobool.not = icmp sgt i8 %59, -1
  br i1 %tobool.not, label %rdma_ah_set_path_bits.exit.cleanup_crit_edge, label %if.then18

rdma_ah_set_path_bits.exit.cleanup_crit_edge:     ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sl_tclass_flowlabel20 = getelementptr inbounds %struct.mthca_av, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %sl_tclass_flowlabel20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sl_tclass_flowlabel20, align 4
  %and21 = and i32 %61, 1048575
  %gid_index = getelementptr inbounds %struct.mthca_av, ptr %57, i32 0, i32 5
  %62 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %gid_index, align 1
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 3
  %64 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gid_table_len, align 4
  %66 = trunc i32 %65 to i8
  %67 = add i8 %66, -1
  %conv25 = and i8 %67, %63
  %hop_limit = getelementptr inbounds %struct.mthca_av, ptr %57, i32 0, i32 7
  %68 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hop_limit, align 1
  %shr27 = lshr i32 %61, 20
  %conv29 = trunc i32 %shr27 to i8
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 4
  %70 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 2
  %71 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and21, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 3
  %72 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv25, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 4
  %73 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %69, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 5
  %74 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv29, ptr %traffic_class5.i, align 2
  %75 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %attr, align 8
  %76 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %av, align 4
  %dgid = getelementptr inbounds %struct.mthca_av, ptr %77, i32 0, i32 9
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %rdma_ah_set_path_bits.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %rdma_ah_set_path_bits.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_av_table(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %av_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 4
  %num_ddr_avs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %num_ddr_avs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ddr_avs, align 4
  %sub = add i32 %3, -1
  %call4 = tail call i32 @mthca_alloc_init(ptr noundef %alloc, i32 noundef %3, i32 noundef %sub, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call9 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str, ptr noundef %dev8, i32 noundef 32, i32 noundef 32, i32 noundef 0) #7
  %6 = ptrtoint ptr %av_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %av_table, align 8
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.end7.out_free_alloc_crit_edge, label %if.end15

if.end7.out_free_alloc_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_alloc

if.end15:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mthca_flags.i, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %12 to i64
  %ddr_av_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 2
  %13 = ptrtoint ptr %ddr_av_base to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ddr_av_base, align 8
  %add = add i64 %14, %conv
  %ddr_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 9
  %15 = ptrtoint ptr %ddr_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ddr_start, align 8
  %sub20 = sub i64 %add, %16
  %conv21 = trunc i64 %sub20 to i32
  %17 = ptrtoint ptr %num_ddr_avs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ddr_avs, align 4
  %mul = shl i32 %18, 5
  %call24 = tail call ptr @ioremap(i32 noundef %conv21, i32 noundef %mul) #7
  %av_map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 3
  %19 = ptrtoint ptr %av_map to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %av_map, align 8
  %tobool28.not = icmp eq ptr %call24, null
  br i1 %tobool28.not, label %out_free_pool, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %av_map32 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 3
  %20 = ptrtoint ptr %av_map32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %av_map32, align 8
  br label %cleanup

out_free_pool:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %av_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %av_table, align 8
  tail call void @dma_pool_destroy(ptr noundef %22) #7
  br label %out_free_alloc

out_free_alloc:                                   ; preds = %out_free_pool, %if.end7.out_free_alloc_crit_edge
  tail call void @mthca_alloc_cleanup(ptr noundef %alloc) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_alloc, %if.else, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_free_alloc ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_av_table(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %av_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26
  %av_map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 3
  %2 = ptrtoint ptr %av_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %av_map, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %av_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %av_table, align 8
  tail call void @dma_pool_destroy(ptr noundef %5) #7
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 4
  tail call void @mthca_alloc_cleanup(ptr noundef %alloc) #7
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @mult_to_ib_rate(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_av.c", i32 340, i32 39}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

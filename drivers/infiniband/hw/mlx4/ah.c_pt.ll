; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/ah.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/ah.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_ib_ah = type { %struct.ib_ah, %union.mlx4_ext_av }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%union.mlx4_ext_av = type { %struct.mlx4_eth_av }
%struct.mlx4_eth_av = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], [6 x i8], [2 x i8], i16, [6 x i8] }
%struct.mlx4_ib_pd = type { %struct.ib_pd, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.rdma_ah_init_attr = type { ptr, i32, ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_create_ah(ptr noundef %ib_ah, ptr nocapture noundef readonly %init_attr, ptr nocapture readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %vlan_tag.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_attr, align 4
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ah_flags.i, align 8
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %ib_ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ib_ah, align 4
  %dev2.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_tag.i) #3
  %11 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vlan_tag.i, align 2
  %dgid.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dgid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %in6.sroa.0.0.copyload.i = load i32, ptr %dgid.i, align 8
  %in6.sroa.10.0.dgid.sroa_idx.i = getelementptr inbounds i8, ptr %dgid.i, i32 12
  %13 = ptrtoint ptr %in6.sroa.10.0.dgid.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %in6.sroa.10.0.copyload.i = load i32, ptr %in6.sroa.10.0.dgid.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %in6.sroa.0.0.copyload.i)
  %cmp.i.i = icmp ugt i32 %in6.sroa.0.0.copyload.i, -16777217
  br i1 %cmp.i.i, label %if.end.rdma_is_multicast_addr.exit.i_crit_edge, label %if.end.i.i

if.end.rdma_is_multicast_addr.exit.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %rdma_is_multicast_addr.exit.i

if.end.i.i:                                       ; preds = %if.end
  %in6.sroa.8.0.dgid.sroa_idx.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %in6.sroa.8.0.dgid.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %in6.sroa.8.0.copyload.i = load i32, ptr %in6.sroa.8.0.dgid.sroa_idx.i, align 8
  %in6.sroa.6.0.dgid.sroa_idx.i = getelementptr inbounds i8, ptr %dgid.i, i32 4
  %15 = ptrtoint ptr %in6.sroa.6.0.dgid.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %in6.sroa.6.0.copyload.i = load i32, ptr %in6.sroa.6.0.dgid.sroa_idx.i, align 4
  %or.i.i.i = or i32 %in6.sroa.6.0.copyload.i, %in6.sroa.0.0.copyload.i
  %xor.i.i.i = xor i32 %in6.sroa.8.0.copyload.i, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i, label %if.end.i.i.rdma_is_multicast_addr.exit.i_crit_edge

if.end.i.i.rdma_is_multicast_addr.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rdma_is_multicast_addr.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i.i = and i32 %in6.sroa.10.0.copyload.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i9.i.i = icmp ne i32 %and.i.i.i, -536870912
  br label %rdma_is_multicast_addr.exit.i

rdma_is_multicast_addr.exit.i:                    ; preds = %land.rhs.i.i, %if.end.i.i.rdma_is_multicast_addr.exit.i_crit_edge, %if.end.rdma_is_multicast_addr.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ false, %if.end.rdma_is_multicast_addr.exit.i_crit_edge ], [ true, %if.end.i.i.rdma_is_multicast_addr.exit.i_crit_edge ], [ %cmp.i9.i.i, %land.rhs.i.i ]
  %av.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1
  %mac.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 13
  %16 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %mac.i, ptr %16, i32 6)
  %s_mac.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 10
  %18 = call ptr @memset(ptr %s_mac.i, i32 0, i32 6)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %tobool10.not.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %rdma_is_multicast_addr.exit.i
  %call14.i = call i32 @rdma_read_gid_l2_fields(ptr noundef nonnull %20, ptr noundef nonnull %vlan_tag.i, ptr noundef %s_mac.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then11.i.create_iboe_ah.exit_crit_edge

if.then11.i.create_iboe_ah.exit_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %create_iboe_ah.exit

if.end17.i:                                       ; preds = %if.then11.i
  %call18.i = call i32 @mlx4_ib_gid_index_to_real_index(ptr noundef %8, ptr noundef nonnull %20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %if.end17.i.create_iboe_ah.exit_crit_edge, label %if.end20.i

if.end17.i.create_iboe_ah.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %create_iboe_ah.exit

if.end20.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i9 = trunc i32 %call18.i to i8
  br label %if.end25.i

if.else.i:                                        ; preds = %rdma_is_multicast_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sgid_index.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.end20.i
  %.sink.i = phi i8 [ %22, %if.else.i ], [ %conv.i9, %if.end20.i ]
  %gid_index24.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %gid_index24.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i, ptr %gid_index24.i, align 1
  %24 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vlan_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %25)
  %cmp27.i = icmp ult i16 %25, 4096
  br i1 %cmp27.i, label %if.then29.i, label %if.end25.i.if.end34.i_crit_edge

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  %sl.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %sl.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sl.i.i, align 8
  %and.i = zext i8 %27 to i16
  %shl.i = shl i16 %and.i, 13
  %or.i = or i16 %shl.i, %25
  %28 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or.i, ptr %vlan_tag.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end34.i_crit_edge
  %pd.i = getelementptr inbounds %struct.ib_ah, ptr %ib_ah, i32 0, i32 1
  %29 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pd.i, align 4
  %pdn.i = getelementptr inbounds %struct.mlx4_ib_pd, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pdn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pdn.i, align 4
  %port_num.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_num.i.i, align 4
  %shl37.i = shl i32 %34, 24
  %or38.i = or i32 %shl37.i, %32
  %35 = ptrtoint ptr %av.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or38.i, ptr %av.i, align 4
  %36 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vlan_tag.i, align 2
  %vlan.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 12
  %38 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vlan.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hop_limit.i, align 1
  %hop_limit42.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 7
  %41 = ptrtoint ptr %hop_limit42.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %hop_limit42.i, align 1
  %static_rate.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %static_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %static_rate.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool44.not.i = icmp eq i8 %43, 0
  br i1 %tobool44.not.i, label %if.end34.i.if.end64.i_crit_edge, label %if.then45.i

if.end34.i.if.end64.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

if.then45.i:                                      ; preds = %if.end34.i
  %add.i = add i8 %43, 5
  %stat_rate.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 6
  %44 = ptrtoint ptr %stat_rate.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %add.i, ptr %stat_rate.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %add.i)
  %cmp53132.i = icmp ugt i8 %add.i, 7
  br i1 %cmp53132.i, label %land.rhs.lr.ph.i, label %if.then45.i.if.end64.i_crit_edge

if.then45.i.if.end64.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

land.rhs.lr.ph.i:                                 ; preds = %if.then45.i
  %stat_rate_support.i = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 3, i32 64
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i8 %storemerge133.i, -1
  %45 = ptrtoint ptr %stat_rate.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %dec.i, ptr %stat_rate.i, align 2
  %cmp53.i = icmp ugt i8 %dec.i, 7
  br i1 %cmp53.i, label %while.cond.i.land.rhs.i_crit_edge, label %while.cond.i.if.end64.i_crit_edge

while.cond.i.if.end64.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %storemerge133.i = phi i8 [ %add.i, %land.rhs.lr.ph.i ], [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ]
  %conv52.i = zext i8 %storemerge133.i to i32
  %shl58.i = shl nuw i32 1, %conv52.i
  %46 = ptrtoint ptr %stat_rate_support.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %stat_rate_support.i, align 8
  %conv59.i = zext i16 %47 to i32
  %and60.i = and i32 %shl58.i, %conv59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %while.cond.i, label %land.rhs.i.if.end64.i_crit_edge

land.rhs.i.if.end64.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

if.end64.i:                                       ; preds = %land.rhs.i.if.end64.i_crit_edge, %while.cond.i.if.end64.i_crit_edge, %if.then45.i.if.end64.i_crit_edge, %if.end34.i.if.end64.i_crit_edge
  %traffic_class.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %traffic_class.i, align 2
  %conv65.i = zext i8 %49 to i32
  %shl66.i = shl nuw nsw i32 %conv65.i, 20
  %flow_label.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flow_label.i, align 8
  %or67.i = or i32 %shl66.i, %51
  %sl_tclass_flowlabel.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 8
  %52 = ptrtoint ptr %sl_tclass_flowlabel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sl_tclass_flowlabel.i, align 4
  %or69.i = or i32 %or67.i, %53
  store i32 %or69.i, ptr %sl_tclass_flowlabel.i, align 4
  br i1 %retval.0.i.i, label %if.end64.i.if.end73.i_crit_edge, label %if.then71.i

if.end64.i.if.end73.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  %dlid.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 3
  %54 = ptrtoint ptr %dlid.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -16384, ptr %dlid.i, align 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end64.i.if.end73.i_crit_edge
  %dgid75.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 9
  %55 = call ptr @memcpy(ptr %dgid75.i, ptr %dgid.i, i32 16)
  %sl.i130.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %sl.i130.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sl.i130.i, align 8
  %conv80.i = zext i8 %57 to i32
  %shl81.i = shl i32 %conv80.i, 29
  %or84.i = or i32 %shl81.i, %or69.i
  %58 = ptrtoint ptr %sl_tclass_flowlabel.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or84.i, ptr %sl_tclass_flowlabel.i, align 4
  br label %create_iboe_ah.exit

create_iboe_ah.exit:                              ; preds = %if.end73.i, %if.end17.i.create_iboe_ah.exit_crit_edge, %if.then11.i.create_iboe_ah.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end73.i ], [ %call14.i, %if.then11.i.create_iboe_ah.exit_crit_edge ], [ %call18.i, %if.end17.i.create_iboe_ah.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_tag.i) #3
  br label %cleanup

if.end4:                                          ; preds = %entry
  %59 = ptrtoint ptr %ib_ah to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ib_ah, align 4
  %dev2.i10 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev2.i10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev2.i10, align 8
  %pd.i11 = getelementptr inbounds %struct.ib_ah, ptr %ib_ah, i32 0, i32 1
  %63 = ptrtoint ptr %pd.i11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pd.i11, align 4
  %pdn.i12 = getelementptr inbounds %struct.mlx4_ib_pd, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pdn.i12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pdn.i12, align 4
  %port_num.i.i13 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %port_num.i.i13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port_num.i.i13, align 4
  %shl.i14 = shl i32 %68, 24
  %or.i15 = or i32 %shl.i14, %66
  %av.i16 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1
  %69 = ptrtoint ptr %av.i16 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i15, ptr %av.i16, align 4
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %if.end4.rdma_ah_get_path_bits.exit.i_crit_edge [
    i32 1, label %if.then.i.i
    i32 3, label %if.then3.i.i
  ]

if.end4.rdma_ah_get_path_bits.exit.i_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %rdma_ah_get_path_bits.exit.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %73 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %src_path_bits.i.i = getelementptr inbounds %struct.ib_ah_attr, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %src_path_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %src_path_bits.i.i, align 2
  br label %rdma_ah_get_path_bits.exit.i

if.then3.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %src_path_bits4.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6, i32 0, i32 1
  %76 = ptrtoint ptr %src_path_bits4.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %src_path_bits4.i.i, align 4
  br label %rdma_ah_get_path_bits.exit.i

rdma_ah_get_path_bits.exit.i:                     ; preds = %if.then3.i.i, %if.then.i.i, %if.end4.rdma_ah_get_path_bits.exit.i_crit_edge
  %retval.0.i.i17 = phi i8 [ %75, %if.then.i.i ], [ %77, %if.then3.i.i ], [ 0, %if.end4.rdma_ah_get_path_bits.exit.i_crit_edge ]
  %g_slid.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %g_slid.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %retval.0.i.i17, ptr %g_slid.i, align 1
  %sl.i.i18 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %sl.i.i18 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %sl.i.i18, align 8
  %conv.i19 = zext i8 %80 to i32
  %shl8.i = shl i32 %conv.i19, 28
  %sl_tclass_flowlabel.i20 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 8
  %81 = ptrtoint ptr %sl_tclass_flowlabel.i20 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shl8.i, ptr %sl_tclass_flowlabel.i20, align 4
  %ah_flags.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ah_flags.i.i, align 8
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i, label %rdma_ah_get_path_bits.exit.i.if.end.i_crit_edge, label %if.then.i

rdma_ah_get_path_bits.exit.i.if.end.i_crit_edge:  ; preds = %rdma_ah_get_path_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %rdma_ah_get_path_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %85 = or i8 %retval.0.i.i17, -128
  %86 = ptrtoint ptr %g_slid.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %g_slid.i, align 1
  %sgid_index.i21 = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %sgid_index.i21 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sgid_index.i21, align 4
  %gid_index.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 5
  %89 = ptrtoint ptr %gid_index.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %gid_index.i, align 1
  %hop_limit.i22 = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %hop_limit.i22 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hop_limit.i22, align 1
  %hop_limit19.i = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 7
  %92 = ptrtoint ptr %hop_limit19.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %hop_limit19.i, align 1
  %traffic_class.i23 = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 5
  %93 = ptrtoint ptr %traffic_class.i23 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %traffic_class.i23, align 2
  %conv20.i = zext i8 %94 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 20
  %flow_label.i24 = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %flow_label.i24 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flow_label.i24, align 8
  %or22.i = or i32 %96, %shl8.i
  %or25.i = or i32 %or22.i, %shl21.i
  %97 = ptrtoint ptr %sl_tclass_flowlabel.i20 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or25.i, ptr %sl_tclass_flowlabel.i20, align 4
  %dgid.i25 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 9
  %dgid27.i = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 1
  %98 = call ptr @memcpy(ptr %dgid.i25, ptr %dgid27.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rdma_ah_get_path_bits.exit.i.if.end.i_crit_edge
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %type, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %100, label %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge [
    i32 1, label %if.then.i74.i
    i32 3, label %if.then4.i.i
  ]

if.end.i.rdma_ah_get_dlid.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rdma_ah_get_dlid.exit.i

if.then.i74.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %102 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %102, align 8
  %conv.i73.i = zext i16 %104 to i32
  br label %rdma_ah_get_dlid.exit.i

if.then4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %105 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  br label %rdma_ah_get_dlid.exit.i

rdma_ah_get_dlid.exit.i:                          ; preds = %if.then4.i.i, %if.then.i74.i, %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge
  %retval.0.i75.i = phi i32 [ %conv.i73.i, %if.then.i74.i ], [ %107, %if.then4.i.i ], [ 0, %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge ]
  %conv30.i = trunc i32 %retval.0.i75.i to i16
  %dlid.i26 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 3
  %108 = ptrtoint ptr %dlid.i26 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv30.i, ptr %dlid.i26, align 2
  %static_rate.i.i27 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 2
  %109 = ptrtoint ptr %static_rate.i.i27 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %static_rate.i.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool33.not.i = icmp eq i8 %110, 0
  br i1 %tobool33.not.i, label %rdma_ah_get_dlid.exit.i.cleanup_crit_edge, label %if.then34.i

rdma_ah_get_dlid.exit.i.cleanup_crit_edge:        ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then34.i:                                      ; preds = %rdma_ah_get_dlid.exit.i
  %add.i28 = add i8 %110, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %add.i28)
  %cmp77.i = icmp ugt i8 %add.i28, 7
  br i1 %cmp77.i, label %land.rhs.lr.ph.i30, label %if.then34.i.while.end.i_crit_edge

if.then34.i.while.end.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

land.rhs.lr.ph.i30:                               ; preds = %if.then34.i
  %stat_rate_support.i29 = getelementptr inbounds %struct.mlx4_dev, ptr %62, i32 0, i32 3, i32 64
  %111 = ptrtoint ptr %stat_rate_support.i29 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %stat_rate_support.i29, align 8
  %conv42.i = zext i16 %112 to i32
  br label %land.rhs.i32

land.rhs.i32:                                     ; preds = %while.body.i.land.rhs.i32_crit_edge, %land.rhs.lr.ph.i30
  %static_rate.078.i = phi i8 [ %add.i28, %land.rhs.lr.ph.i30 ], [ %dec.i33, %while.body.i.land.rhs.i32_crit_edge ]
  %conv38.i = zext i8 %static_rate.078.i to i32
  %shl41.i = shl nuw i32 1, %conv38.i
  %and43.i = and i32 %shl41.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i31 = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i31, label %while.body.i, label %land.rhs.i32.while.end.i_crit_edge

land.rhs.i32.while.end.i_crit_edge:               ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i32
  %dec.i33 = add i8 %static_rate.078.i, -1
  %cmp.i34 = icmp ugt i8 %dec.i33, 7
  br i1 %cmp.i34, label %while.body.i.land.rhs.i32_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.i.land.rhs.i32_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs.i32

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i32.while.end.i_crit_edge, %if.then34.i.while.end.i_crit_edge
  %static_rate.0.lcssa.i = phi i8 [ %add.i28, %if.then34.i.while.end.i_crit_edge ], [ %static_rate.078.i, %land.rhs.i32.while.end.i_crit_edge ], [ 7, %while.body.i.while.end.i_crit_edge ]
  %stat_rate.i35 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ib_ah, i32 0, i32 1, i32 0, i32 6
  %113 = ptrtoint ptr %stat_rate.i35 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %static_rate.0.lcssa.i, ptr %stat_rate.i35, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %rdma_ah_get_dlid.exit.i.cleanup_crit_edge, %create_iboe_ah.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %create_iboe_ah.exit ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %rdma_ah_get_dlid.exit.i.cleanup_crit_edge ], [ 0, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_create_ah_slave(ptr noundef %ah, ptr nocapture noundef readonly %ah_attr, i32 noundef %slave_sgid_index, ptr nocapture noundef readonly %s_mac, i16 noundef zeroext %vlan_tag) local_unnamed_addr #0 align 64 {
entry:
  %slave_attr = alloca %struct.rdma_ah_attr, align 8
  %init_attr = alloca %struct.rdma_ah_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %slave_attr) #3
  %0 = call ptr @memcpy(ptr %slave_attr, ptr %ah_attr, i32 56)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %init_attr) #3
  %1 = getelementptr inbounds i8, ptr %init_attr, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %slave_attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %slave_attr, align 8
  %conv = trunc i32 %slave_sgid_index to i8
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %slave_attr, i32 0, i32 3
  %4 = ptrtoint ptr %sgid_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %sgid_index, align 4
  %5 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %slave_attr, ptr %init_attr, align 4
  %call3 = call i32 @mlx4_ib_create_ah(ptr noundef %ah, ptr noundef nonnull %init_attr, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %type4 = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 4
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %type4, align 4
  %av = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ah, i32 0, i32 1
  %9 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %av, align 4
  %and = and i32 %10, 2147483647
  store i32 %and, ptr %av, align 4
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %s_mac9 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ah, i32 0, i32 1, i32 0, i32 10
  %12 = call ptr @memcpy(ptr %s_mac9, ptr %s_mac, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vlan_tag)
  %cmp12 = icmp ult i16 %vlan_tag, 4096
  br i1 %cmp12, label %if.then14, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %sl.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %13 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sl.i, align 8
  %and17 = zext i8 %14 to i16
  %shl = shl i16 %and17, 13
  %or = or i16 %shl, %vlan_tag
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end10.if.end20_crit_edge
  %vlan_tag.addr.0 = phi i16 [ %or, %if.then14 ], [ %vlan_tag, %if.end10.if.end20_crit_edge ]
  %vlan = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ah, i32 0, i32 1, i32 0, i32 12
  %15 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vlan_tag.addr.0, ptr %vlan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %init_attr) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %slave_attr) #3
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_query_ah(ptr nocapture noundef readonly %ibah, ptr noundef %ah_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %av = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1
  %0 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %av, align 4
  %shr = lshr i32 %1, 24
  %2 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %type = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %5 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  %dlid = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %dlid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dlid, align 2
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %if.else.if.end_crit_edge [
    i32 1, label %if.then.i57
    i32 3, label %if.then5.i58
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i57:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %9 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %9, align 8
  br label %if.end

if.then5.i58:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %conv6 = zext i16 %7 to i32
  %11 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv6, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5.i58, %if.then.i57, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink64 = phi i32 [ 29, %entry.if.end_crit_edge ], [ 28, %if.else.if.end_crit_edge ], [ 28, %if.then.i57 ], [ 28, %if.then5.i58 ]
  %sl_tclass_flowlabel8 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %sl_tclass_flowlabel8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sl_tclass_flowlabel8, align 4
  %shr9 = lshr i32 %14, %.sink64
  %conv10 = trunc i32 %shr9 to i8
  %sl1.i60 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %15 = ptrtoint ptr %sl1.i60 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %sl1.i60, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %16 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %port_num1.i, align 4
  %stat_rate = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %stat_rate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stat_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add i8 %18, -5
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 2
  %19 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %sub, ptr %static_rate1.i, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %g_slid = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %g_slid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %g_slid, align 1
  %22 = and i8 %21, 127
  %23 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %4, label %if.end17.rdma_ah_set_path_bits.exit_crit_edge [
    i32 1, label %if.then.i62
    i32 3, label %if.then4.i
  ]

if.end17.rdma_ah_set_path_bits.exit_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %rdma_ah_set_path_bits.exit

if.then.i62:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %24 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

if.then4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %26 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4.i, %if.then.i62, %if.end17.rdma_ah_set_path_bits.exit_crit_edge
  %27 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %av, align 4
  %shr.i = lshr i32 %28, 24
  %and.i = and i32 %shr.i, 3
  %29 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibah, align 4
  %call.i = tail call i32 @rdma_port_get_link_layer(ptr noundef %30, i32 noundef %and.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %rdma_ah_set_path_bits.exit.if.then22_crit_edge, label %mlx4_ib_ah_grh_present.exit

rdma_ah_set_path_bits.exit.if.then22_crit_edge:   ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22

mlx4_ib_ah_grh_present.exit:                      ; preds = %rdma_ah_set_path_bits.exit
  %31 = ptrtoint ptr %g_slid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %g_slid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i = icmp slt i8 %32, 0
  br i1 %tobool.i, label %mlx4_ib_ah_grh_present.exit.if.then22_crit_edge, label %mlx4_ib_ah_grh_present.exit.if.end31_crit_edge

mlx4_ib_ah_grh_present.exit.if.end31_crit_edge:   ; preds = %mlx4_ib_ah_grh_present.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

mlx4_ib_ah_grh_present.exit.if.then22_crit_edge:  ; preds = %mlx4_ib_ah_grh_present.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22

if.then22:                                        ; preds = %mlx4_ib_ah_grh_present.exit.if.then22_crit_edge, %rdma_ah_set_path_bits.exit.if.then22_crit_edge
  %sl_tclass_flowlabel24 = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %sl_tclass_flowlabel24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sl_tclass_flowlabel24, align 4
  %and25 = and i32 %34, 1048575
  %gid_index = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %gid_index, align 1
  %hop_limit = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 7
  %37 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hop_limit, align 1
  %shr28 = lshr i32 %34, 20
  %conv29 = trunc i32 %shr28 to i8
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %39 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %40 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and25, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %41 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %36, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %42 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %38, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %43 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv29, ptr %traffic_class5.i, align 2
  %44 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %ah_attr, align 8
  %dgid = getelementptr inbounds %struct.mlx4_ib_ah, ptr %ibah, i32 0, i32 1, i32 0, i32 9
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %mlx4_ib_ah_grh_present.exit.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_gid_index_to_real_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

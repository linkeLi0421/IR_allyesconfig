; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_clsf.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_clsf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.filter = type { i32, %union.anon.125 }
%union.anon.125 = type { %struct.filter_ipv4_5tuple }
%struct.filter_ipv4_5tuple = type { i32, i32, i32, i32, i16, i16 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.119, i16 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.121 }
%union.anon.121 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.123, i16 }
%struct.anon.123 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.124 }
%union.anon.124 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.anon.122 = type { i16, i16 }
%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.enic_msix_entry = type { i32, [24 x i8], ptr, ptr, ptr }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vxlan_offload = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32, i32, %struct.vnic_rx_bytes_counter, i32, i32, i64 }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rfs_flw_tbl = type { i16, i32, i16, [1024 x %struct.hlist_head], %struct.spinlock, %struct.timer_list }
%struct.hlist_head = type { ptr }
%struct.vnic_gen_stats = type { i64 }
%struct.enic_rfs_fltr_node = type { %struct.flow_keys, i32, i16, i16, %struct.hlist_node }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@enic_rfs_flw_tbl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&enic->rfs_h.lock\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [47 x i8] c"../drivers/net/ethernet/cisco/enic/enic_clsf.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 77, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @enic_rfs_flw_tbl_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_rfs_flw_tbl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_addfltr_5t(ptr noundef %enic, ptr nocapture noundef readonly %keys, i16 noundef zeroext %rq) local_unnamed_addr #0 align 64 {
entry:
  %rq.addr = alloca i16, align 2
  %data = alloca %struct.filter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %rq, ptr %rq.addr, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #5
  %1 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.filter, ptr %data, i32 0, i32 1, i32 0, i32 5
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ip_proto, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 6, label %entry.sw.epilog_crit_edge
    i8 17, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %storemerge = phi i32 [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %2, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %data, align 4
  %addrs = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8
  %12 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addrs, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %dst = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %4, align 4
  %ports = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 6
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ports, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %5, align 4
  %dst10 = getelementptr inbounds %struct.anon.122, ptr %ports, i32 0, i32 1
  %21 = ptrtoint ptr %dst10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dst10, align 2
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %6, align 2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 31, ptr %1, align 4
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #5
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %25 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_classifier(ptr noundef %26, i8 noundef zeroext 0, ptr noundef nonnull %rq.addr, ptr noundef nonnull %data) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %rq.addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rq.addr, align 2
  %conv15 = zext i16 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ %conv15, %cond.true ], [ %call, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_classifier(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_delfltr(ptr noundef %enic, i16 noundef zeroext %filter_id) local_unnamed_addr #0 align 64 {
entry:
  %filter_id.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filter_id.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %filter_id, ptr %filter_id.addr, align 2
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #5
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %1 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_classifier(ptr noundef %2, i8 noundef zeroext 1, ptr noundef nonnull %filter_id.addr, ptr noundef null) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_rfs_flw_tbl_init(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @enic_rfs_flw_tbl_init.__key, i16 noundef signext 3) #5
  %uglygep = getelementptr i8, ptr %enic, i32 12304
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 4096)
  %rfs_h = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46
  %num_arfs = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 11
  %1 = ptrtoint ptr %num_arfs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_arfs, align 4
  %3 = ptrtoint ptr %rfs_h to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %rfs_h, align 4
  %conv = zext i16 %2 to i32
  %free = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 1
  %4 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %free, align 4
  %toclean = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 2
  %5 = ptrtoint ptr %toclean to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %toclean, align 4
  %bf.clear = and i16 %bf.load, 63
  store i16 %bf.clear, ptr %toclean, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_rfs_flw_tbl_free(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  %filter_id.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rfs_may_expire.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 5
  %call.i = tail call i32 @del_timer_sync(ptr noundef %rfs_may_expire.i) #5
  %lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %devcmd_lock.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  %vdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %free = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 46, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc22, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 46, i32 3, i32 %i.045
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -80
  %tobool5.not4346 = icmp eq ptr %add.ptr, null
  %tobool5.not43 = or i1 %tobool.not, %tobool5.not4346
  br i1 %tobool5.not43, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %n.044 = phi ptr [ %add.ptr17, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.044, i32 0, i32 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 8
  %fltr_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.044, i32 0, i32 2
  %4 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fltr_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %filter_id.addr.i)
  %6 = ptrtoint ptr %filter_id.addr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %filter_id.addr.i, align 2
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #5
  %7 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev.i, align 128
  %call.i40 = call i32 @vnic_dev_classifier(ptr noundef %8, i8 noundef zeroext 1, ptr noundef nonnull %filter_id.addr.i, ptr noundef null) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %filter_id.addr.i)
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.044, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %n.044) #5
  %17 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %free, align 4
  %tobool13.not = icmp eq ptr %3, null
  %add.ptr17 = getelementptr i8, ptr %3, i32 -80
  %tobool5.not47 = icmp eq ptr %add.ptr17, null
  %tobool5.not = or i1 %tobool13.not, %tobool5.not47
  br i1 %tobool5.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc22 = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc22, 1024
  br i1 %exitcond.not, label %for.end23, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @htbl_fltr_search(ptr nocapture noundef readonly %enic, i16 noundef zeroext %fltr_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc24.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 46, i32 3, i32 %i.045
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -80
  %tobool4.not4348 = icmp eq ptr %add.ptr, null
  %tobool4.not43 = or i1 %tobool.not, %tobool4.not4348
  br i1 %tobool4.not43, label %for.body.for.inc24_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %n.044 = phi ptr [ %add.ptr18, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %fltr_id8 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.044, i32 0, i32 2
  %2 = ptrtoint ptr %fltr_id8 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fltr_id8, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %fltr_id)
  %cmp10 = icmp eq i16 %3, %fltr_id
  br i1 %cmp10, label %land.rhs.cleanup26_crit_edge, label %for.inc

land.rhs.cleanup26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

for.inc:                                          ; preds = %land.rhs
  %node = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.044, i32 0, i32 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 8
  %tobool14.not = icmp eq ptr %5, null
  %add.ptr18 = getelementptr i8, ptr %5, i32 -80
  %tobool4.not51 = icmp eq ptr %add.ptr18, null
  %tobool4.not = or i1 %tobool14.not, %tobool4.not51
  br i1 %tobool4.not, label %for.inc.for.inc24_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.for.inc24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc24.cleanup26_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc24.cleanup26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

cleanup26:                                        ; preds = %for.inc24.cleanup26_crit_edge, %land.rhs.cleanup26_crit_edge
  %retval.2 = phi ptr [ %n.044, %land.rhs.cleanup26_crit_edge ], [ null, %for.inc24.cleanup26_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_flow_may_expire(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %filter_id.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16444
  %lock = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %ht_head = getelementptr i8, ptr %t, i32 -4140
  %toclean = getelementptr i8, ptr %t, i32 -4144
  %devcmd_lock.i = getelementptr i8, ptr %t, i32 -15264
  %vdev.i = getelementptr i8, ptr %t, i32 -16316
  %free = getelementptr i8, ptr %t, i32 -4148
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %j.068 = phi i32 [ 0, %entry ], [ %inc38, %for.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %toclean to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %toclean, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  %1 = add i16 %bf.load, 64
  store i16 %1, ptr %toclean, align 4
  %idxprom = zext i16 %bf.lshr to i32
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %ht_head, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr8 = getelementptr i8, ptr %3, i32 -80
  %tobool10.not6669 = icmp eq ptr %add.ptr8, null
  %tobool10.not66 = or i1 %tobool.not, %tobool10.not6669
  br i1 %tobool10.not66, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %n.067 = phi ptr [ %add.ptr33, %for.inc.land.rhs_crit_edge ], [ %add.ptr8, %for.body.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.067, i32 0, i32 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  %rq_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.067, i32 0, i32 3
  %8 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rq_id, align 2
  %flow_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.067, i32 0, i32 1
  %10 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_id, align 8
  %fltr_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.067, i32 0, i32 2
  %12 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fltr_id, align 4
  %call = call zeroext i1 @rps_may_expire_flow(ptr noundef %7, i16 noundef zeroext %9, i32 noundef %11, i16 noundef zeroext %13) #5
  br i1 %call, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  %14 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fltr_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %filter_id.addr.i)
  %16 = ptrtoint ptr %filter_id.addr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %filter_id.addr.i, align 2
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #5
  %17 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdev.i, align 128
  %call.i = call i32 @vnic_dev_classifier(ptr noundef %18, i8 noundef zeroext 1, ptr noundef nonnull %filter_id.addr.i, ptr noundef null) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %filter_id.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end, label %if.then.for.inc_crit_edge, !prof !12

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %if.then
  %19 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.067, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev2.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %20, ptr %22, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %25 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %n.067) #5
  %27 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free, align 4
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %free, align 4
  br label %for.inc

for.inc:                                          ; preds = %hlist_del.exit, %if.then.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %tobool29.not = icmp eq ptr %5, null
  %add.ptr33 = getelementptr i8, ptr %5, i32 -80
  %tobool10.not70 = icmp eq ptr %add.ptr33, null
  %tobool10.not = or i1 %tobool29.not, %tobool10.not70
  br i1 %tobool10.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc38 = add nuw nsw i32 %j.068, 1
  %exitcond.not = icmp eq i32 %inc38, 128
  br i1 %exitcond.not, label %for.end39, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %29, 25
  %call43 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_rx_flow_steer(ptr noundef %dev, ptr noundef %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) local_unnamed_addr #0 align 64 {
entry:
  %rq.addr.i208 = alloca i16, align 2
  %data.i209 = alloca %struct.filter, align 4
  %filter_id.addr.i = alloca i16, align 2
  %rq.addr.i = alloca i16, align 2
  %data.i = alloca %struct.filter, align 4
  %keys = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys) #5
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = call ptr @memset(ptr %keys, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %keys, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br i1 %call.i, label %lor.lhs.false, label %entry.cleanup134_crit_edge

entry.cleanup134_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup134

lor.lhs.false:                                    ; preds = %entry
  %basic = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 1
  %1 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %basic, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %2)
  %cmp.not = icmp eq i16 %2, 2048
  br i1 %cmp.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup134_crit_edge

lor.lhs.false.cleanup134_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup134

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip_proto, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %4, label %lor.lhs.false4.cleanup134_crit_edge [
    i8 6, label %lor.lhs.false4.if.end_crit_edge
    i8 17, label %lor.lhs.false4.if.end_crit_edge260
  ]

lor.lhs.false4.if.end_crit_edge260:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false4.cleanup134_crit_edge:              ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup134

if.end:                                           ; preds = %lor.lhs.false4.if.end_crit_edge, %lor.lhs.false4.if.end_crit_edge260
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash.i, align 4
  %conv15 = and i32 %7, 1023
  %lock = getelementptr i8, ptr %dev, i32 18704
  call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 46, i32 3, i32 %conv15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %add.ptr.i196 = getelementptr i8, ptr %9, i32 -80
  %tobool2.not5761.i = icmp eq ptr %add.ptr.i196, null
  %tobool2.not57.i = or i1 %tobool.not.i, %tobool2.not5761.i
  br i1 %tobool2.not57.i, label %if.end.if.else94_crit_edge, label %for.body.lr.ph.i

if.end.if.else94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

for.body.lr.ph.i:                                 ; preds = %if.end
  %addrs3.i = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8
  %10 = ptrtoint ptr %addrs3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addrs3.i, align 4
  %dst8.i = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %ports12.i = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tpos.058.i = phi ptr [ %add.ptr.i196, %for.body.lr.ph.i ], [ %add.ptr36.i, %for.inc.i.for.body.i_crit_edge ]
  %addrs.i = getelementptr inbounds %struct.flow_keys, ptr %tpos.058.i, i32 0, i32 8
  %12 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i = icmp eq i32 %13, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst.i = getelementptr inbounds %struct.flow_keys, ptr %tpos.058.i, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst.i, align 4
  %16 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst8.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp9.i = icmp eq i32 %15, %17
  br i1 %cmp9.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %tpos.058.i, i32 0, i32 6
  %18 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ports.i, align 4
  %20 = ptrtoint ptr %ports12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ports12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp13.i = icmp eq i32 %19, %21
  br i1 %cmp13.i, label %land.lhs.true14.i, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true10.i
  %ip_proto.i = getelementptr inbounds %struct.flow_keys, ptr %tpos.058.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ip_proto.i, align 2
  %24 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp19.i = icmp eq i8 %23, %25
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true14.i
  %basic.i = getelementptr inbounds %struct.flow_keys, ptr %tpos.058.i, i32 0, i32 1
  %26 = ptrtoint ptr %basic.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %basic.i, align 8
  %28 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %basic, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp28.i = icmp eq i16 %27, %29
  br i1 %cmp28.i, label %if.then19, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 4
  %30 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node.i, align 8
  %tobool32.not.i = icmp eq ptr %31, null
  %add.ptr36.i = getelementptr i8, ptr %31, i32 -80
  %tobool2.not62.i = icmp eq ptr %add.ptr36.i, null
  %tobool2.not.i = or i1 %tobool32.not.i, %tobool2.not62.i
  br i1 %tobool2.not.i, label %for.inc.i.if.else94_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.else94_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

if.then19:                                        ; preds = %land.lhs.true21.i
  %rq_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 3
  %32 = ptrtoint ptr %rq_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rq_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %rxq_index)
  %cmp22 = icmp eq i16 %33, %rxq_index
  br i1 %cmp22, label %if.then19.ret_unlock_crit_edge, label %if.end25

if.then19.ret_unlock_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret_unlock

if.end25:                                         ; preds = %if.then19
  %free = getelementptr i8, ptr %dev, i32 14600
  %34 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %free, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp27 = icmp slt i32 %dec, 0
  br i1 %cmp27, label %if.then31, label %if.else, !prof !13

if.then31:                                        ; preds = %if.end25
  %36 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %free, align 4
  %fltr_id = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 2
  %37 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fltr_id, align 4
  %call34 = call i32 @enic_delfltr(ptr noundef %add.ptr.i, i16 noundef zeroext %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then31.ret_unlock_crit_edge, label %if.end44, !prof !13

if.then31.ret_unlock_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret_unlock

if.end44:                                         ; preds = %if.then31
  %call45 = call i32 @enic_addfltr_5t(ptr noundef %add.ptr.i, ptr noundef nonnull %keys, i16 noundef zeroext %rxq_index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end44.if.end89_crit_edge

if.end44.if.end89_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then48:                                        ; preds = %if.end44
  %node = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 4
  %39 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev2.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %42, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.then48.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then48.hlist_del.exit_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then48.hlist_del.exit_crit_edge
  %45 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %46 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %47 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %free, align 4
  %inc51 = add i32 %48, 1
  store i32 %inc51, ptr %free, align 4
  br label %ret_unlock

if.else:                                          ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rq.addr.i)
  %49 = ptrtoint ptr %rq.addr.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %rxq_index, ptr %rq.addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i) #5
  %50 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1
  %51 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1, i32 0, i32 1
  %52 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1, i32 0, i32 2
  %53 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1, i32 0, i32 3
  %54 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1, i32 0, i32 4
  %55 = getelementptr inbounds %struct.filter, ptr %data.i, i32 0, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ip_proto, align 2
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %57, label %enic_addfltr_5t.exit.thread [
    i8 6, label %if.else.sw.epilog.i_crit_edge
    i8 17, label %sw.bb1.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

enic_addfltr_5t.exit.thread:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i)
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.else.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 0, %sw.bb1.i ], [ 1, %if.else.sw.epilog.i_crit_edge ]
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.i, ptr %51, align 4
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %data.i, align 4
  %61 = ptrtoint ptr %addrs3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addrs3.i, align 4
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %52, align 4
  %64 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dst8.i, align 8
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %53, align 4
  %67 = ptrtoint ptr %ports12.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ports12.i, align 4
  %69 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %54, align 4
  %dst10.i = getelementptr inbounds %struct.anon.122, ptr %ports12.i, i32 0, i32 1
  %70 = ptrtoint ptr %dst10.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %dst10.i, align 2
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %55, align 2
  %73 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 31, ptr %50, align 4
  %devcmd_lock.i = getelementptr i8, ptr %dev, i32 3484
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #5
  %vdev.i = getelementptr i8, ptr %dev, i32 2432
  %74 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdev.i, align 128
  %call.i201 = call i32 @vnic_dev_classifier(ptr noundef %75, i8 noundef zeroext 0, ptr noundef nonnull %rq.addr.i, ptr noundef nonnull %data.i) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp.i202 = icmp eq i32 %call.i201, 0
  br i1 %cmp.i202, label %enic_addfltr_5t.exit.thread239, label %enic_addfltr_5t.exit

enic_addfltr_5t.exit.thread239:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %rq.addr.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %rq.addr.i, align 2
  %conv15.i = zext i16 %77 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i)
  br label %if.end60

enic_addfltr_5t.exit:                             ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp54 = icmp slt i32 %call.i201, 0
  br i1 %cmp54, label %enic_addfltr_5t.exit.cleanup_crit_edge, label %enic_addfltr_5t.exit.if.end60_crit_edge

enic_addfltr_5t.exit.if.end60_crit_edge:          ; preds = %enic_addfltr_5t.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

enic_addfltr_5t.exit.cleanup_crit_edge:           ; preds = %enic_addfltr_5t.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %enic_addfltr_5t.exit.if.end60_crit_edge, %enic_addfltr_5t.exit.thread239
  %retval.0.i242 = phi i32 [ %conv15.i, %enic_addfltr_5t.exit.thread239 ], [ %call.i201, %enic_addfltr_5t.exit.if.end60_crit_edge ]
  %fltr_id61 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 2
  %78 = ptrtoint ptr %fltr_id61 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %fltr_id61, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %filter_id.addr.i)
  %80 = ptrtoint ptr %filter_id.addr.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %filter_id.addr.i, align 2
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #5
  %81 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vdev.i, align 128
  %call.i205 = call i32 @vnic_dev_classifier(ptr noundef %82, i8 noundef zeroext 1, ptr noundef nonnull %filter_id.addr.i, ptr noundef null) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %filter_id.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp63 = icmp slt i32 %call.i205, 0
  br i1 %cmp63, label %if.then71, label %if.else84, !prof !13

if.then71:                                        ; preds = %if.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 2592, i32 noundef 88) #8
  %tobool77.not = icmp eq ptr %call7.i, null
  br i1 %tobool77.not, label %if.then71.if.end89_crit_edge, label %if.then78

if.then71.if.end89_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then78:                                        ; preds = %if.then71
  %84 = ptrtoint ptr %fltr_id61 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %fltr_id61, align 4
  %fltr_id80 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i, i32 0, i32 2
  %86 = ptrtoint ptr %fltr_id80 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %fltr_id80, align 4
  %node81 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i, i32 0, i32 4
  %pprev.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %pprev.i, align 4
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx, align 4
  %90 = ptrtoint ptr %node81 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %89, ptr %node81, align 8
  %tobool.not.i206 = icmp eq ptr %89, null
  br i1 %tobool.not.i206, label %if.then78.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then78.hlist_add_head.exit_crit_edge:          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i207 = getelementptr inbounds %struct.hlist_node, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %pprev.i207 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %node81, ptr %pprev.i207, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then78.hlist_add_head.exit_crit_edge
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %node81, ptr %arrayidx, align 4
  %93 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  br label %if.end89

if.else84:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %free, align 4
  %inc87 = add i32 %95, 1
  store i32 %inc87, ptr %free, align 4
  br label %if.end89

cleanup:                                          ; preds = %enic_addfltr_5t.exit.cleanup_crit_edge, %enic_addfltr_5t.exit.thread
  %retval.0.i238 = phi i32 [ -93, %enic_addfltr_5t.exit.thread ], [ %call.i201, %enic_addfltr_5t.exit.cleanup_crit_edge ]
  %96 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %free, align 4
  %inc59 = add i32 %97, 1
  store i32 %inc59, ptr %free, align 4
  br label %ret_unlock

if.end89:                                         ; preds = %if.else84, %hlist_add_head.exit, %if.then71.if.end89_crit_edge, %if.end44.if.end89_crit_edge
  %res.0 = phi i32 [ %call45, %if.end44.if.end89_crit_edge ], [ %retval.0.i242, %if.then71.if.end89_crit_edge ], [ %retval.0.i242, %hlist_add_head.exit ], [ %retval.0.i242, %if.else84 ]
  %98 = ptrtoint ptr %rq_id to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %rxq_index, ptr %rq_id, align 2
  %conv91 = trunc i32 %res.0 to i16
  %fltr_id92 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 2
  %99 = ptrtoint ptr %fltr_id92 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv91, ptr %fltr_id92, align 4
  %flow_id93 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %tpos.058.i, i32 0, i32 1
  %100 = ptrtoint ptr %flow_id93 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %flow_id, ptr %flow_id93, align 8
  br label %ret_unlock

if.else94:                                        ; preds = %for.inc.i.if.else94_crit_edge, %if.end.if.else94_crit_edge
  %free96 = getelementptr i8, ptr %dev, i32 14600
  %101 = ptrtoint ptr %free96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %free96, align 4
  %dec97 = add i32 %102, -1
  store i32 %dec97, ptr %free96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec97)
  %cmp98 = icmp slt i32 %dec97, 1
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %free96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %free96, align 4
  br label %ret_unlock

if.end104:                                        ; preds = %if.else94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i195 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 2592, i32 noundef 88) #8
  %tobool106.not = icmp eq ptr %call7.i195, null
  br i1 %tobool106.not, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %free96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %free96, align 4
  %inc110 = add i32 %106, 1
  store i32 %inc110, ptr %free96, align 4
  br label %ret_unlock

if.end111:                                        ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rq.addr.i208)
  %107 = ptrtoint ptr %rq.addr.i208 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %rxq_index, ptr %rq.addr.i208, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i209) #5
  %108 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1
  %109 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1, i32 0, i32 1
  %110 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1, i32 0, i32 2
  %111 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1, i32 0, i32 3
  %112 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1, i32 0, i32 4
  %113 = getelementptr inbounds %struct.filter, ptr %data.i209, i32 0, i32 1, i32 0, i32 5
  %114 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ip_proto, align 2
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %115, label %enic_addfltr_5t.exit225.thread [
    i8 6, label %if.end111.sw.epilog.i221_crit_edge
    i8 17, label %sw.bb1.i211
  ]

if.end111.sw.epilog.i221_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i221

enic_addfltr_5t.exit225.thread:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i209) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i208)
  br label %if.then115

sw.bb1.i211:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i221

sw.epilog.i221:                                   ; preds = %sw.bb1.i211, %if.end111.sw.epilog.i221_crit_edge
  %storemerge.i212 = phi i32 [ 0, %sw.bb1.i211 ], [ 1, %if.end111.sw.epilog.i221_crit_edge ]
  %117 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %storemerge.i212, ptr %109, align 4
  %118 = ptrtoint ptr %data.i209 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %data.i209, align 4
  %addrs.i213 = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8
  %119 = ptrtoint ptr %addrs.i213 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addrs.i213, align 4
  %121 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %110, align 4
  %dst.i214 = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %122 = ptrtoint ptr %dst.i214 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dst.i214, align 8
  %124 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %111, align 4
  %ports.i215 = getelementptr inbounds %struct.flow_keys, ptr %keys, i32 0, i32 6
  %125 = ptrtoint ptr %ports.i215 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %ports.i215, align 4
  %127 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %112, align 4
  %dst10.i216 = getelementptr inbounds %struct.anon.122, ptr %ports.i215, i32 0, i32 1
  %128 = ptrtoint ptr %dst10.i216 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %dst10.i216, align 2
  %130 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %113, align 2
  %131 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 31, ptr %108, align 4
  %devcmd_lock.i217 = getelementptr i8, ptr %dev, i32 3484
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i217) #5
  %vdev.i218 = getelementptr i8, ptr %dev, i32 2432
  %132 = ptrtoint ptr %vdev.i218 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vdev.i218, align 128
  %call.i219 = call i32 @vnic_dev_classifier(ptr noundef %133, i8 noundef zeroext 0, ptr noundef nonnull %rq.addr.i208, ptr noundef nonnull %data.i209) #5
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i217) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp.i220 = icmp eq i32 %call.i219, 0
  br i1 %cmp.i220, label %enic_addfltr_5t.exit225.thread249, label %enic_addfltr_5t.exit225

enic_addfltr_5t.exit225.thread249:                ; preds = %sw.epilog.i221
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %rq.addr.i208 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %rq.addr.i208, align 2
  %conv15.i222 = zext i16 %135 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i209) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i208)
  br label %if.end119

enic_addfltr_5t.exit225:                          ; preds = %sw.epilog.i221
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i209) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rq.addr.i208)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp113 = icmp slt i32 %call.i219, 0
  br i1 %cmp113, label %enic_addfltr_5t.exit225.if.then115_crit_edge, label %enic_addfltr_5t.exit225.if.end119_crit_edge

enic_addfltr_5t.exit225.if.end119_crit_edge:      ; preds = %enic_addfltr_5t.exit225
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

enic_addfltr_5t.exit225.if.then115_crit_edge:     ; preds = %enic_addfltr_5t.exit225
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

if.then115:                                       ; preds = %enic_addfltr_5t.exit225.if.then115_crit_edge, %enic_addfltr_5t.exit225.thread
  %retval.0.i224248 = phi i32 [ -93, %enic_addfltr_5t.exit225.thread ], [ %call.i219, %enic_addfltr_5t.exit225.if.then115_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i195) #5
  %136 = ptrtoint ptr %free96 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %free96, align 4
  %inc118 = add i32 %137, 1
  store i32 %inc118, ptr %free96, align 4
  br label %ret_unlock

if.end119:                                        ; preds = %enic_addfltr_5t.exit225.if.end119_crit_edge, %enic_addfltr_5t.exit225.thread249
  %retval.0.i224252 = phi i32 [ %conv15.i222, %enic_addfltr_5t.exit225.thread249 ], [ %call.i219, %enic_addfltr_5t.exit225.if.end119_crit_edge ]
  %rq_id120 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i195, i32 0, i32 3
  %138 = ptrtoint ptr %rq_id120 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %rxq_index, ptr %rq_id120, align 2
  %conv121 = trunc i32 %retval.0.i224252 to i16
  %fltr_id122 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i195, i32 0, i32 2
  %139 = ptrtoint ptr %fltr_id122 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv121, ptr %fltr_id122, align 4
  %flow_id123 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i195, i32 0, i32 1
  %140 = ptrtoint ptr %flow_id123 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %flow_id, ptr %flow_id123, align 8
  %141 = call ptr @memcpy(ptr %call7.i195, ptr %keys, i32 72)
  %node125 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i195, i32 0, i32 4
  %pprev.i226 = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call7.i195, i32 0, i32 4, i32 1
  %142 = ptrtoint ptr %pprev.i226 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %pprev.i226, align 4
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx, align 4
  %145 = ptrtoint ptr %node125 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %144, ptr %node125, align 8
  %tobool.not.i227 = icmp eq ptr %144, null
  br i1 %tobool.not.i227, label %if.end119.hlist_add_head.exit231_crit_edge, label %do.body12.i229

if.end119.hlist_add_head.exit231_crit_edge:       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head.exit231

do.body12.i229:                                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i228 = getelementptr inbounds %struct.hlist_node, ptr %144, i32 0, i32 1
  %146 = ptrtoint ptr %pprev.i228 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %node125, ptr %pprev.i228, align 4
  br label %hlist_add_head.exit231

hlist_add_head.exit231:                           ; preds = %do.body12.i229, %if.end119.hlist_add_head.exit231_crit_edge
  %147 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %node125, ptr %arrayidx, align 4
  %148 = ptrtoint ptr %pprev.i226 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %arrayidx, ptr %pprev.i226, align 4
  br label %ret_unlock

ret_unlock:                                       ; preds = %hlist_add_head.exit231, %if.then115, %if.then107, %if.then100, %if.end89, %cleanup, %hlist_del.exit, %if.then31.ret_unlock_crit_edge, %if.then19.ret_unlock_crit_edge
  %res.1 = phi i32 [ %call34, %if.then31.ret_unlock_crit_edge ], [ %call45, %hlist_del.exit ], [ %res.0, %if.end89 ], [ %retval.0.i238, %cleanup ], [ -16, %if.then100 ], [ %retval.0.i224248, %if.then115 ], [ %retval.0.i224252, %hlist_add_head.exit231 ], [ -12, %if.then107 ], [ -17, %if.then19.ret_unlock_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup134

cleanup134:                                       ; preds = %ret_unlock, %lor.lhs.false4.cleanup134_crit_edge, %lor.lhs.false.cleanup134_crit_edge, %entry.cleanup134_crit_edge
  %retval.0 = phi i32 [ %res.1, %ret_unlock ], [ -93, %lor.lhs.false4.cleanup134_crit_edge ], [ -93, %lor.lhs.false.cleanup134_crit_edge ], [ -93, %entry.cleanup134_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @enic_rfs_flw_tbl_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_clsf.c", i32 77, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000}

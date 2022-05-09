; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_dev.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@switch.table.enic_dev_status_to_errno = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -14, i32 -1, i32 -16, i32 -95, i32 -22, i32 -12, i32 -110, i32 -100, i32 0, i32 -95, i32 -115], [44 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [46 x i8] c"../drivers/net/ethernet/cisco/enic/enic_dev.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [38 x i8] c"switch.table.enic_dev_status_to_errno\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.enic_dev_status_to_errno], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enic_dev_status_to_errno to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_fw_info(ptr noundef %enic, ptr noundef %fw_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_fw_info(ptr noundef %1, ptr noundef %fw_info) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_fw_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_stats_dump(ptr noundef %enic, ptr noundef %vstats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_stats_dump(ptr noundef %1, ptr noundef %vstats) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_stats_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_add_station_addr(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 128
  %11 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enic, align 128
  %dev_addr2 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr2, align 64
  %call3 = tail call i32 @vnic_dev_add_addr(ptr noundef %10, ptr noundef %14) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_add_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_del_station_addr(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 128
  %11 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enic, align 128
  %dev_addr2 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr2, align 64
  %call3 = tail call i32 @vnic_dev_del_addr(ptr noundef %10, ptr noundef %14) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_del_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_packet_filter(ptr noundef %enic, i32 noundef %directed, i32 noundef %multicast, i32 noundef %broadcast, i32 noundef %promisc, i32 noundef %allmulti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_packet_filter(ptr noundef %1, i32 noundef %directed, i32 noundef %multicast, i32 noundef %broadcast, i32 noundef %promisc, i32 noundef %allmulti) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_packet_filter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_add_addr(ptr noundef %enic, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_add_addr(ptr noundef %1, ptr noundef %addr) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_del_addr(ptr noundef %enic, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_del_addr(ptr noundef %1, ptr noundef %addr) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_notify_unset(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_notify_unset(ptr noundef %1) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_notify_unset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_hang_notify(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_hang_notify(ptr noundef %1) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_hang_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_set_ig_vlan_rewrite_mode(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_set_ig_vlan_rewrite_mode(ptr noundef %1, i8 noundef zeroext 2) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_set_ig_vlan_rewrite_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_enable(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_enable_wait(ptr noundef %1) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_enable_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_disable(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_disable(ptr noundef %1) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_dev_intr_coal_timer_info(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_intr_coal_timer_info(ptr noundef %1) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_intr_coal_timer_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %call1 = tail call i32 @enic_add_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %vid) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_add_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #4
  %call1 = tail call i32 @enic_del_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %vid) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_del_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @enic_dev_status_to_errno(i32 noundef %devcmd_status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %devcmd_status)
  %0 = icmp ult i32 %devcmd_status, 13
  br i1 %0, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  %1 = tail call i32 @llvm.smin.i32(i32 %devcmd_status, i32 -1)
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %devcmd_status to i16
  %switch.shifted = lshr i16 7167, %switch.maskindex
  %2 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.lobit.not = icmp eq i16 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.enic_dev_status_to_errno, i32 0, i32 %devcmd_status
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.default
  %retval.0 = phi i32 [ %1, %sw.default ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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

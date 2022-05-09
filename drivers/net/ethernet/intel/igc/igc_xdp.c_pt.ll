; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_xdp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_xdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.174, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.174 = type { ptr }
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
%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.189] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.185, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.185 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.189 = type { %struct.timespec64, %struct.timespec64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.184, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.184 = type { ptr }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.igc_q_vector = type { ptr, ptr, i32, i16, i8, %struct.igc_ring_container, %struct.igc_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [79 x i8], %struct.net_device, [0 x %struct.igc_ring] }
%struct.igc_ring_container = type { ptr, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.igc_ring = type { ptr, ptr, ptr, %union.anon.175, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.181, [24 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.175 = type { ptr }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { %struct.igc_rx_queue_stats, %struct.igc_rx_packet_stats, %struct.u64_stats_sync, ptr }
%struct.igc_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.igc_rx_packet_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }

@igc_xdp_set_prog.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"igc: Jumbo frames not supported\00", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to map xsk pool\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igc/igc_xdp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 65, i32 20 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @igc_xdp_set_prog.__msg, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_xdp_set_prog.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_xdp_set_prog(ptr noundef %adapter, ptr noundef %prog, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %5)
  %cmp = icmp ugt i32 %5, 1500
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @igc_xdp_set_prog.__msg) #4
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @igc_xdp_set_prog.__msg, ptr %extack, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  br i1 %tobool.i.not, label %if.end2.if.end6_crit_edge, label %if.then4

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @igc_close(ptr noundef %1) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2.if.end6_crit_edge
  %xdp_prog = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 70
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !13
  %7 = ptrtoint ptr %prog to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %7, ptr %xdp_prog) #4, !srcloc !14
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool25.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool25.not, label %if.end6.if.end27_crit_edge, label %if.then26

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %9 = inttoptr i32 %asmresult.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %9) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end6.if.end27_crit_edge
  br i1 %tobool.i.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 @igc_open(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %if.then1, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then1 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_xdp_setup_pool(ptr nocapture noundef readonly %adapter, ptr noundef %pool, i16 noundef zeroext %queue_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 34
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv.i = zext i16 %queue_id to i32
  %num_rx_queues.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %4 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %5, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %cond.true
  %num_tx_queues.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp4.not.i = icmp sgt i32 %7, %conv.i
  br i1 %cmp4.not.i, label %if.end.i, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %chunk_size.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %8 = ptrtoint ptr %chunk_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk_size.i.i.i, align 16
  %headroom.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %10 = ptrtoint ptr %headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %headroom.i.i.i, align 4
  %add.i.neg.i.i = add i32 %9, -256
  %sub.i.i = sub i32 %add.i.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %sub.i.i)
  %cmp6.i = icmp ult i32 %sub.i.i, 1522
  br i1 %cmp6.i, label %if.end.i.cond.end_crit_edge, label %if.end9.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end9.i:                                        ; preds = %if.end.i
  %umem1.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %12 = ptrtoint ptr %umem1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %umem1.i.i, align 64
  %pgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pgs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgs.i.i, align 4
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npgs.i.i, align 4
  %call.i.i = tail call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %dev1.i, i32 noundef 34, ptr noundef %15, i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %cond.end

if.end12.i:                                       ; preds = %if.end9.i
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.end.thread.i, label %land.end.i

land.end.thread.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx69.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx69.i, align 4
  %arrayidx2170.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv.i
  %24 = ptrtoint ptr %arrayidx2170.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2170.i, align 4
  br label %if.end34.critedge.i

land.end.i:                                       ; preds = %if.end12.i
  %xdp_prog.i.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 70
  %26 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xdp_prog.i.i, align 8
  %tobool.i68.not.i = icmp eq ptr %27, null
  %arrayidx.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx21.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv.i
  %30 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx21.i, align 4
  br i1 %tobool.i68.not.i, label %land.end.i.if.end34.critedge.i_crit_edge, label %if.then24.i

land.end.i.if.end34.critedge.i_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.critedge.i

if.then24.i:                                      ; preds = %land.end.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 128
  %napi22.i = getelementptr inbounds %struct.igc_q_vector, ptr %33, i32 0, i32 7
  tail call void @igc_disable_rx_ring(ptr noundef %29) #4
  tail call void @igc_disable_tx_ring(ptr noundef %31) #4
  tail call void @napi_disable(ptr noundef %napi22.i) #4
  %flags.c.i = getelementptr inbounds %struct.igc_ring, ptr %29, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.c.i) #4
  %flags26.c.i = getelementptr inbounds %struct.igc_ring, ptr %31, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags26.c.i) #4
  tail call void @napi_enable(ptr noundef %napi22.i) #4
  tail call void @igc_enable_rx_ring(ptr noundef %29) #4
  tail call void @igc_enable_tx_ring(ptr noundef %31) #4
  %call30.i = tail call i32 @igc_xsk_wakeup(ptr noundef %1, i32 noundef %conv.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then24.i.cond.end_crit_edge, label %if.then32.i

if.then24.i.cond.end_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then32.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xp_dma_unmap(ptr noundef nonnull %pool, i32 noundef 34) #4
  br label %cond.end

if.end34.critedge.i:                              ; preds = %land.end.i.if.end34.critedge.i_crit_edge, %land.end.thread.i
  %34 = phi ptr [ %25, %land.end.thread.i ], [ %31, %land.end.i.if.end34.critedge.i_crit_edge ]
  %35 = phi ptr [ %23, %land.end.thread.i ], [ %29, %land.end.i.if.end34.critedge.i_crit_edge ]
  %flags.c66.i = getelementptr inbounds %struct.igc_ring, ptr %35, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.c66.i) #4
  %flags26.c67.i = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags26.c67.i) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %conv.i5 = zext i16 %queue_id to i32
  %num_rx_queues.i6 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %36 = ptrtoint ptr %num_rx_queues.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rx_queues.i6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i5)
  %cmp.not.i7 = icmp sgt i32 %37, %conv.i5
  br i1 %cmp.not.i7, label %lor.lhs.false.i9, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

lor.lhs.false.i9:                                 ; preds = %cond.false
  %num_tx_queues.i8 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %38 = ptrtoint ptr %num_tx_queues.i8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i5)
  %cmp3.not.i = icmp sgt i32 %39, %conv.i5
  br i1 %cmp3.not.i, label %if.end.i11, label %lor.lhs.false.i9.cond.end_crit_edge

lor.lhs.false.i9.cond.end_crit_edge:              ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i11:                                       ; preds = %lor.lhs.false.i9
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  %call.i = tail call ptr @xsk_get_pool_from_qid(ptr noundef %41, i16 noundef zeroext %queue_id) #4
  %tobool.not.i10 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i10, label %if.end.i11.cond.end_crit_edge, label %if.end6.i

if.end.i11.cond.end_crit_edge:                    ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end6.i:                                        ; preds = %if.end.i11
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %state.i.i12 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %state.i.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i12, align 4
  %and1.i.i.i13 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i13)
  %tobool.i.not.i14 = icmp eq i32 %and1.i.i.i13, 0
  br i1 %tobool.i.not.i14, label %land.end.thread.i15, label %land.end.i18

land.end.thread.i15:                              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx49.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv.i5
  %46 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx49.i, align 4
  %arrayidx1550.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv.i5
  %48 = ptrtoint ptr %arrayidx1550.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx1550.i, align 4
  br label %if.end23.critedge.i

land.end.i18:                                     ; preds = %if.end6.i
  %xdp_prog.i.i16 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 70
  %50 = ptrtoint ptr %xdp_prog.i.i16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xdp_prog.i.i16, align 8
  %tobool.i48.not.i = icmp eq ptr %51, null
  %arrayidx.i17 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv.i5
  %52 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i17, align 4
  %arrayidx15.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv.i5
  %54 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx15.i, align 4
  br i1 %tobool.i48.not.i, label %land.end.i18.if.end23.critedge.i_crit_edge, label %if.then18.i

land.end.i18.if.end23.critedge.i_crit_edge:       ; preds = %land.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.critedge.i

if.then18.i:                                      ; preds = %land.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 128
  %napi16.i = getelementptr inbounds %struct.igc_q_vector, ptr %57, i32 0, i32 7
  tail call void @igc_disable_rx_ring(ptr noundef %53) #4
  tail call void @igc_disable_tx_ring(ptr noundef %55) #4
  tail call void @napi_disable(ptr noundef %napi16.i) #4
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #4
  %flags.c.i19 = getelementptr inbounds %struct.igc_ring, ptr %53, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.c.i19) #4
  %flags20.c.i = getelementptr inbounds %struct.igc_ring, ptr %55, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags20.c.i) #4
  tail call void @napi_enable(ptr noundef %napi16.i) #4
  tail call void @igc_enable_rx_ring(ptr noundef %53) #4
  tail call void @igc_enable_tx_ring(ptr noundef %55) #4
  br label %cond.end

if.end23.critedge.i:                              ; preds = %land.end.i18.if.end23.critedge.i_crit_edge, %land.end.thread.i15
  %58 = phi ptr [ %49, %land.end.thread.i15 ], [ %55, %land.end.i18.if.end23.critedge.i_crit_edge ]
  %59 = phi ptr [ %47, %land.end.thread.i15 ], [ %53, %land.end.i18.if.end23.critedge.i_crit_edge ]
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #4
  %flags.c46.i = getelementptr inbounds %struct.igc_ring, ptr %59, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.c46.i) #4
  %flags20.c47.i = getelementptr inbounds %struct.igc_ring, ptr %58, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags20.c47.i) #4
  br label %cond.end

cond.end:                                         ; preds = %if.end23.critedge.i, %if.then18.i, %if.end.i11.cond.end_crit_edge, %lor.lhs.false.i9.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %if.end34.critedge.i, %if.then32.i, %if.then24.i.cond.end_crit_edge, %if.then11.i, %if.end.i.cond.end_crit_edge, %lor.lhs.false.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ %call.i.i, %if.then11.i ], [ %call30.i, %if.then32.i ], [ -22, %lor.lhs.false.i.cond.end_crit_edge ], [ -22, %cond.true.cond.end_crit_edge ], [ -95, %if.end.i.cond.end_crit_edge ], [ 0, %if.end34.critedge.i ], [ 0, %if.then24.i.cond.end_crit_edge ], [ -22, %lor.lhs.false.i9.cond.end_crit_edge ], [ -22, %cond.false.cond.end_crit_edge ], [ -22, %if.end.i11.cond.end_crit_edge ], [ 0, %if.end23.critedge.i ], [ 0, %if.then18.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_disable_rx_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_disable_tx_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_enable_rx_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_enable_tx_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_xsk_wakeup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @igc_xdp_set_prog.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_xdp.c", i32 21, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igc/igc_xdp.c", i32 65, i32 20}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2158163031}
!14 = !{i64 1011524, i64 1011541, i64 1011565, i64 1011591, i64 1011609}
!15 = !{i64 2158163377}

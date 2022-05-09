; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%union.efx_qword = type { [1 x i64] }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX packet too small (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@__ef100_rx_packet.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/sfc/ef100_rx.c\00", [60 x i8] zeroinitializer }, align 32
@efx_ef100_ev_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 73, i32 4 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [39 x i8] c"../drivers/net/ethernet/sfc/ef100_rx.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 94, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ef100_rx_buf_hash_valid(ptr nocapture noundef readnone %prefix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ef100_rx_packet(ptr noundef %channel) local_unnamed_addr #2 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %rx_pkt_index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 43
  %0 = ptrtoint ptr %rx_pkt_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pkt_index, align 8
  %buffer.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %3, i32 %1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %page.i = getelementptr %struct.efx_rx_buffer, ptr %3, i32 %1, i32 1
  %6 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #5
  %page_offset.i = getelementptr %struct.efx_rx_buffer, ptr %3, i32 %1, i32 2
  %8 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page_offset.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 -22
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = lshr i32 %11, 16
  %13 = trunc i32 %12 to i16
  %14 = and i16 %13, -193
  %len = getelementptr %struct.efx_rx_buffer, ptr %3, i32 %1, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %14)
  %cmp = icmp ult i16 %14, 15
  br i1 %cmp, label %if.then11, label %if.end25

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end24_crit_edge, label %do.body

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.body:                                          ; preds = %if.then11
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.if.end24_crit_edge, label %if.then18

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev20 = getelementptr inbounds %struct.efx_nic, ptr %17, i32 0, i32 83
  %20 = ptrtoint ptr %net_dev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev20, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len, align 2
  %conv22 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %conv22) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %do.body.if.end24_crit_edge, %if.then11.if.end24_crit_edge
  %n_rx_frm_trunc = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 32
  %24 = ptrtoint ptr %n_rx_frm_trunc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_rx_frm_trunc, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %n_rx_frm_trunc, align 4
  br label %out

if.end25:                                         ; preds = %if.end
  %net_dev26 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev26, align 4
  %features27 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %features27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %features27, align 16
  %and28 = and i64 %29, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end50_crit_edge, label %if.then36, !prof !16

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then36:                                        ; preds = %if.end25
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %and39 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %n_rx_ip_hdr_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 24
  %32 = ptrtoint ptr %n_rx_ip_hdr_chksum_err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_rx_ip_hdr_chksum_err, align 4
  %inc43 = add i32 %33, 1
  store i32 %inc43, ptr %n_rx_ip_hdr_chksum_err, align 4
  br label %if.end50

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx44 = getelementptr i8, ptr %add.ptr.i, i32 -6
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx44, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %shr45 = lshr i32 %36, 16
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then42, %if.end25.if.end50_crit_edge
  %csum.0 = phi i32 [ 0, %if.then42 ], [ %shr45, %if.else ], [ 0, %if.end25.if.end50_crit_edge ]
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type, align 8
  %receive_skb = getelementptr inbounds %struct.efx_channel_type, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %receive_skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %receive_skb, align 4
  %tobool51.not = icmp eq ptr %40, null
  br i1 %tobool51.not, label %if.end99, label %if.then52

if.then52:                                        ; preds = %if.end50
  %.b125 = load i1, ptr @__ef100_rx_packet.__already_done, align 1
  br i1 %.b125, label %if.then52.if.end91_crit_edge, label %if.then66, !prof !17

if.then52.if.end91_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then66:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__ef100_rx_packet.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 9, ptr noundef null) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then66, %if.then52.if.end91_crit_edge
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef 1) #5
  br label %out

if.end99:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %rx_pkt_n_frags = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %41 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_pkt_n_frags, align 4
  tail call void @efx_rx_packet_gro(ptr noundef %channel, ptr noundef %arrayidx.i, i32 noundef %42, ptr noundef %add.ptr.i, i32 noundef %csum.0) #5
  br label %out

out:                                              ; preds = %if.end99, %if.end91, %if.end24
  %rx_pkt_n_frags100 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 42
  %43 = ptrtoint ptr %rx_pkt_n_frags100 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rx_pkt_n_frags100, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_free_rx_buffers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_packet_gro(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ef100_ev_rx(ptr noundef %channel, ptr nocapture noundef readonly %p_event) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %0 = ptrtoint ptr %p_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_event, align 8
  %2 = and i32 %1, -65536
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @efx_ef100_ev_rx.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !17

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @efx_ef100_ev_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 9, ptr noundef null) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then37, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %n_rx_merge_events = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 36
  %4 = ptrtoint ptr %n_rx_merge_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rx_merge_events, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_rx_merge_events, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end29.if.end38_crit_edge
  %mul = shl nuw nsw i32 %3, 1
  %irq_mod_score = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 15
  %6 = ptrtoint ptr %irq_mod_score to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mod_score, align 8
  %add = add i32 %7, %mul
  store i32 %add, ptr %irq_mod_score, align 8
  br i1 %tobool.not, label %if.end38.for.end_crit_edge, label %for.body.lr.ph

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end38
  %removed_count = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 9
  %ptr_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %buffer.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  %rx_packets.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 26
  %rx_pkt_n_frags.i.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 42
  %rx_pkt_index.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 43
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %ef100_rx_packet.exit.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %ef100_rx_packet.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %removed_count, align 16
  %10 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptr_mask, align 32
  %and40 = and i32 %11, %9
  %12 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %13, i32 %and40
  %14 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_queue.i, align 128
  %16 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_packets.i, align 32
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %rx_packets.i, align 32
  %rx_dma_len.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 53
  %18 = ptrtoint ptr %rx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dma_len.i, align 4
  %pci_dev.i.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %23, i32 noundef %19, i32 noundef 2) #5
  %page.i.i = getelementptr %struct.efx_rx_buffer, ptr %13, i32 %and40, i32 1
  %24 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %25) #5
  %page_offset.i.i = getelementptr %struct.efx_rx_buffer, ptr %13, i32 %and40, i32 2
  %26 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %page_offset.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %call.i.i, i32 %conv.i.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i17.i) #5, !srcloc !18
  %rx_prefix_size.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 59
  %28 = ptrtoint ptr %rx_prefix_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_prefix_size.i, align 4
  %30 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %page_offset.i.i, align 4
  %32 = trunc i32 %29 to i16
  %conv4.i = add i16 %31, %32
  store i16 %conv4.i, ptr %page_offset.i.i, align 4
  tail call void @efx_recycle_rx_pages(ptr noundef %channel, ptr noundef %arrayidx.i.i, i32 noundef 1) #5
  %33 = ptrtoint ptr %rx_pkt_n_frags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_pkt_n_frags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %for.body.ef100_rx_packet.exit_crit_edge, label %if.then.i.i

for.body.ef100_rx_packet.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_rx_packet.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channel, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type.i.i, align 4
  %rx_packet.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %rx_packet.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_packet.i.i, align 8
  tail call void %40(ptr noundef %channel) #5
  br label %ef100_rx_packet.exit

ef100_rx_packet.exit:                             ; preds = %if.then.i.i, %for.body.ef100_rx_packet.exit_crit_edge
  %41 = ptrtoint ptr %rx_pkt_n_frags.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %rx_pkt_n_frags.i.i, align 4
  %42 = ptrtoint ptr %rx_pkt_index.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and40, ptr %rx_pkt_index.i, align 8
  %43 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %removed_count, align 16
  %inc42 = add i32 %44, 1
  store i32 %inc42, ptr %removed_count, align 16
  %inc43 = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc43, %umax
  br i1 %exitcond.not, label %ef100_rx_packet.exit.for.end_crit_edge, label %ef100_rx_packet.exit.for.body_crit_edge

ef100_rx_packet.exit.for.body_crit_edge:          ; preds = %ef100_rx_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

ef100_rx_packet.exit.for.end_crit_edge:           ; preds = %ef100_rx_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %ef100_rx_packet.exit.for.end_crit_edge, %if.end38.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_rx_write(ptr nocapture noundef %rx_queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notified_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 8
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %0 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notified_count, align 4
  %2 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %added_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not38 = icmp eq i32 %1, %3
  br i1 %cmp.not38, label %entry.do.body11_crit_edge, label %while.body.lr.ph

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

while.body.lr.ph:                                 ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %buffer.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %rxd.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %5 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr_mask, align 32
  %and = and i32 %6, %4
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %8, i32 %and
  %9 = ptrtoint ptr %rxd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxd.i, align 4
  %add.ptr.i = getelementptr %union.efx_qword, ptr %10, i32 %and
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr.i, align 8
  %arrayidx9 = getelementptr [2 x i32], ptr %add.ptr.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %notified_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %notified_count, align 4
  %18 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %added_count, align 8
  %cmp.not = icmp eq i32 %inc, %19
  br i1 %cmp.not, label %while.body.do.body11_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.do.body11_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.body11:                                        ; preds = %while.body.do.body11_crit_edge, %entry.do.body11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %added_count, align 8
  %ptr_mask16 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %22 = ptrtoint ptr %ptr_mask16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr_mask16, align 32
  %and17 = and i32 %23, %21
  %24 = tail call i32 @llvm.bswap.i32(i32 %and17)
  %25 = lshr i32 %24, 16
  %26 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_queue, align 128
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %28 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel.i, align 4
  %vi_stride.i.i = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 14
  %30 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i = mul i32 %31, %29
  %add.i.i = add i32 %mul.i.i, 384
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %27, i32 0, i32 13
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %25) #5, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_recycle_rx_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100_rx.c", i32 73, i32 4}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ef100_rx.c", i32 94, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/ef100_rx.c", i32 137, i32 2}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 1048697}
!19 = !{i64 2158568887}
!20 = !{i64 6595728}

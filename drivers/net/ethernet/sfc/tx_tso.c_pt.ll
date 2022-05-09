; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/tx_tso.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/tx_tso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tso_state = type { i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vlan_ethhdr = type { %union.anon.153, i16, i16, i16 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { [6 x i8], [6 x i8] }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.efx_tx_buffer = type { %union.anon.147, %union.anon.148, i16, i16, i16, i16 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { %union.efx_qword }
%union.efx_qword = type { [1 x i64] }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Out of memory for TSO headers, or DMA mapping error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TSO failed, rc = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/sfc/tx_tso.c\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 431, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 434, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 326, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [37 x i8] c"../drivers/net/ethernet/sfc/tx_tso.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 302, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_enqueue_skb_tso(ptr noundef %tx_queue, ptr noundef %skb, ptr nocapture noundef writeonly %data_mapped) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.tso_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %state) #5
  %2 = call ptr @memset(ptr %state, i32 255, i32 60)
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %3 = ptrtoint ptr %tso_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tso_version, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %6) #5, !srcloc !19
  %protocol1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %8)
  %cmp.i = icmp eq i16 %8, -32512
  br i1 %cmp.i, label %if.then.i, label %if.end.efx_tso_check_protocol.exit_crit_edge

if.end.efx_tso_check_protocol.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %efx_tso_check_protocol.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  br label %efx_tso_check_protocol.exit

efx_tso_check_protocol.exit:                      ; preds = %if.then.i, %if.end.efx_tso_check_protocol.exit_crit_edge
  %protocol.0.i = phi i16 [ %12, %if.then.i ], [ %8, %if.end.efx_tso_check_protocol.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 8
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %protocol.0.i, ptr %protocol, align 4
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %ip_off.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 9
  %22 = ptrtoint ptr %ip_off.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.sub.i, ptr %ip_off.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i, align 2
  %conv.i2.i = zext i16 %24 to i32
  %add.ptr.i3.i = getelementptr i8, ptr %17, i32 %conv.i2.i
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %add.ptr.i3.i to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast.i
  %tcp_off.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 10
  %25 = ptrtoint ptr %tcp_off.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub5.i, ptr %tcp_off.i, align 4
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i3.i, i32 0, i32 4
  %26 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %27 = lshr i16 %bf.load.i, 10
  %28 = and i16 %27, 60
  %shl.i = zext i16 %28 to i32
  %add.i = add i32 %sub.ptr.sub5.i, %shl.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %33 = add i32 %32, %add.i
  %sub.i = sub i32 %30, %33
  %header_len9.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 11
  %34 = ptrtoint ptr %header_len9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %header_len9.i, align 4
  %in_len10.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 5
  %35 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %in_len10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %protocol.0.i)
  %cmp.i113 = icmp eq i16 %protocol.0.i, 2048
  br i1 %cmp.i113, label %if.then.i114, label %if.else.i

if.then.i114:                                     ; preds = %efx_tso_check_protocol.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub15.i = sub i32 %add.i, %sub.ptr.sub.i
  %ip_base_len.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 12
  %36 = ptrtoint ptr %ip_base_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub15.i, ptr %ip_base_len.i, align 4
  %id.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %id.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %efx_tso_check_protocol.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ip_base_len20.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 12
  %39 = ptrtoint ptr %ip_base_len20.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl.i, ptr %ip_base_len20.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i114
  %.sink.i = phi i16 [ %38, %if.then.i114 ], [ 0, %if.else.i ]
  %40 = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink.i, ptr %40, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i3.i, i32 0, i32 2
  %42 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 1
  %44 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %seqnum.i, align 4
  %sub29.i = sub i32 %30, %add.i
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub29.i, ptr %state, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #5
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tso_start.exit_crit_edge, label %if.then.i.i, !prof !20

land.rhs.i.i.tso_start.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tso_start.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #5
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %49, %if.end.i.i.i ], [ %47, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #5
  br label %tso_start.exit

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i13.i = sub i32 %30, %32
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %21, i32 noundef %sub.i13.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %sub.i14.i = add i32 %sub.ptr.rhs.cast.i, 1073741824
  %shr.i.i = lshr i32 %sub.i14.i, 12
  %add.ptr.i15.i = getelementptr %struct.page, ptr %50, i32 %shr.i.i
  %and.i.i = and i32 %sub.ptr.rhs.cast.i, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i15.i, i32 noundef %and.i.i, i32 noundef %sub.i13.i, i32 noundef 1, i32 noundef 0) #5
  br label %tso_start.exit

tso_start.exit:                                   ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.tso_start.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.tso_start.exit_crit_edge ]
  %header_dma_addr.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 13
  %51 = ptrtoint ptr %header_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i.i, ptr %header_dma_addr.i, align 4
  %52 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i, align 4
  %54 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i, align 8
  %sub.i18.i = sub i32 %53, %55
  %header_unmap_len.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 14
  %56 = ptrtoint ptr %header_unmap_len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i18.i, ptr %header_unmap_len.i, align 4
  %add34.i = add i32 %retval.0.i.i, %add.i
  %dma_addr35.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 4
  %57 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add34.i, ptr %dma_addr35.i, align 4
  %unmap_len.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 6
  %58 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %unmap_len.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %tso_start.exit.do.body50_crit_edge, label %if.end4

tso_start.exit.do.body50_crit_edge:               ; preds = %tso_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

if.end4:                                          ; preds = %tso_start.exit
  %59 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in_len10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp5 = icmp eq i32 %60, 0
  br i1 %cmp5, label %do.end11, label %if.end4.if.end17_crit_edge, !prof !20

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end11:                                         ; preds = %if.end4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_dev.i, align 4
  %dev.i116 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 0, i32 1
  %65 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bv_len.i.i, align 4
  %67 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frags, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 0, i32 2
  %69 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i116, ptr noundef %68, i32 noundef %70, i32 noundef %66, i32 noundef 1, i32 noundef 0) #5
  %unmap_addr.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 7
  %71 = ptrtoint ptr %unmap_addr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call2.i.i, ptr %unmap_addr.i, align 4
  %72 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_dev.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3.i, i32 noundef %call2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %do.end11.do.body50_crit_edge, label %tso_get_fragment.exit.thread, !prof !21

do.end11.do.body50_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

tso_get_fragment.exit.thread:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_len.i.i, align 4
  %76 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %unmap_len.i, align 4
  %77 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %in_len10.i, align 4
  %78 = ptrtoint ptr %unmap_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %unmap_addr.i, align 4
  %80 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %dma_addr35.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %tso_get_fragment.exit.thread, %if.end4.if.end17_crit_edge
  %frag_i.0 = phi i32 [ -1, %if.end4.if.end17_crit_edge ], [ 0, %tso_get_fragment.exit.thread ]
  %call18 = call fastcc i32 @tso_start_new_packet(ptr noundef %tx_queue, ptr noundef %skb, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.fail_crit_edge

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end21:                                         ; preds = %if.end17
  %insert_count.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %81 = ptrtoint ptr %insert_count.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %insert_count.i.i, align 128
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %83 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i119 = and i32 %84, %82
  %buffer.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %85 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buffer.i, align 32
  %add.ptr.i = getelementptr %struct.efx_tx_buffer, ptr %86, i32 %and.i.i119
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i) #5, !srcloc !19
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 128
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr1.i) #5, !srcloc !19
  %txd.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %87 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %txd.i, align 8
  %add.ptr2.i = getelementptr %union.efx_qword, ptr %88, i32 %and.i.i119
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr2.i) #5, !srcloc !19
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 128
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr3.i) #5, !srcloc !19
  %packet_space.i = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 3
  %end.i130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %unmap_addr.i137 = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end21
  %frag_i.1 = phi i32 [ %frag_i.0, %if.end21 ], [ %frag_i.1.be, %while.cond.backedge ]
  %89 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %in_len10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i121 = icmp eq i32 %90, 0
  br i1 %cmp.i121, label %while.cond.if.then24_crit_edge, label %if.end.i122

while.cond.if.then24_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.end.i122:                                      ; preds = %while.cond
  %91 = ptrtoint ptr %packet_space.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %packet_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp1.i = icmp eq i32 %92, 0
  br i1 %cmp1.i, label %if.end.i122.if.then41_crit_edge, label %do.end6.i

if.end.i122.if.then41_crit_edge:                  ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

do.end6.i:                                        ; preds = %if.end.i122
  %93 = tail call i32 @llvm.umin.i32(i32 %90, i32 %92) #5
  %sub.i123 = sub i32 %92, %93
  %94 = ptrtoint ptr %packet_space.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.i123, ptr %packet_space.i, align 4
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  %sub11.i = sub i32 %96, %93
  store i32 %sub11.i, ptr %state, align 4
  %sub13.i = sub i32 %90, %93
  %97 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub13.i, ptr %in_len10.i, align 4
  %98 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_addr35.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %do.end6.i
  %len.addr.0.i.i = phi i32 [ %93, %do.end6.i ], [ %sub.i.i, %if.end.i.i ]
  %dma_addr.addr.0.i.i = phi i32 [ %99, %do.end6.i ], [ %add.i.i, %if.end.i.i ]
  %100 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buffer.i, align 32
  %102 = ptrtoint ptr %insert_count.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %insert_count.i.i, align 128
  %104 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i.i.i.i = and i32 %105, %103
  %inc.i.i = add i32 %103, 1
  store i32 %inc.i.i, ptr %insert_count.i.i, align 128
  %106 = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %dma_addr.addr.0.i.i, ptr %106, align 8
  %108 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_queue, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %type.i.i, align 4
  %tx_limit_len.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %111, i32 0, i32 53
  %112 = ptrtoint ptr %tx_limit_len.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_limit_len.i.i, align 4
  %call4.i.i = tail call i32 %113(ptr noundef %tx_queue, i32 noundef %dma_addr.addr.0.i.i, i32 noundef %len.addr.0.i.i) #5
  %cmp.not.i.i = icmp ugt i32 %len.addr.0.i.i, %call4.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %efx_tx_queue_insert.exit.i

if.end.i.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i125 = trunc i32 %call4.i.i to i16
  %len5.i.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 3
  %114 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i.i125, ptr %len5.i.i, align 2
  %flags.i.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 2
  %115 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %flags.i.i, align 8
  %add.i.i = add i32 %call4.i.i, %dma_addr.addr.0.i.i
  %sub.i.i = sub i32 %len.addr.0.i.i, %call4.i.i
  br label %while.cond.i.i

efx_tx_queue_insert.exit.i:                       ; preds = %while.cond.i.i
  %conv9.i.i = trunc i32 %len.addr.0.i.i to i16
  %len10.i.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 3
  %116 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv9.i.i, ptr %len10.i.i, align 2
  %117 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp15.i = icmp eq i32 %118, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i126

if.then16.i:                                      ; preds = %efx_tx_queue_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.i.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i
  %119 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %skb, ptr %arrayidx.i.i.i.i, align 8
  br label %if.end22.sink.split.i

if.else.i126:                                     ; preds = %efx_tx_queue_insert.exit.i
  %120 = ptrtoint ptr %packet_space.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %packet_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp18.not.i = icmp eq i32 %121, 0
  br i1 %cmp18.not.i, label %if.else.i126.if.end22.i_crit_edge, label %if.else.i126.if.end22.sink.split.i_crit_edge

if.else.i126.if.end22.sink.split.i_crit_edge:     ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split.i

if.else.i126.if.end22.i_crit_edge:                ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.end22.sink.split.i:                            ; preds = %if.else.i126.if.end22.sink.split.i_crit_edge, %if.then16.i
  %.sink.i127 = phi i16 [ 2, %if.then16.i ], [ 1, %if.else.i126.if.end22.sink.split.i_crit_edge ]
  %flags20.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 2
  %122 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %.sink.i127, ptr %flags20.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.else.i126.if.end22.i_crit_edge
  %123 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %in_len10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp24.i = icmp eq i32 %124, 0
  br i1 %cmp24.i, label %tso_fill_packet_with_fragment.exit, label %tso_fill_packet_with_fragment.exit.thread159

tso_fill_packet_with_fragment.exit.thread159:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_addr35.i, align 4
  %add.i129161 = add i32 %126, %93
  br label %if.end38.sink.split

tso_fill_packet_with_fragment.exit:               ; preds = %if.end22.i
  %127 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %unmap_len.i, align 4
  %conv.i = trunc i32 %128 to i16
  %unmap_len26.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 4
  %129 = ptrtoint ptr %unmap_len26.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i, ptr %unmap_len26.i, align 4
  %130 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %len10.i.i, align 2
  %conv31.i = sub i16 %conv.i, %131
  %dma_offset.i = getelementptr %struct.efx_tx_buffer, ptr %101, i32 %and.i.i.i.i.i, i32 5
  %132 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv31.i, ptr %dma_offset.i, align 2
  store i32 0, ptr %unmap_len.i, align 4
  %133 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pr.pr.pr = load i32, ptr %in_len10.i, align 4
  %134 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dma_addr35.i, align 4
  %add.i129 = add i32 %135, %93
  store i32 %add.i129, ptr %dma_addr35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr.pr)
  %cmp23 = icmp eq i32 %.pr.pr.pr, 0
  br i1 %cmp23, label %tso_fill_packet_with_fragment.exit.if.then24_crit_edge, label %tso_fill_packet_with_fragment.exit.if.end38_crit_edge

tso_fill_packet_with_fragment.exit.if.end38_crit_edge: ; preds = %tso_fill_packet_with_fragment.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

tso_fill_packet_with_fragment.exit.if.then24_crit_edge: ; preds = %tso_fill_packet_with_fragment.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %tso_fill_packet_with_fragment.exit.if.then24_crit_edge, %while.cond.if.then24_crit_edge
  %inc = add i32 %frag_i.1, 1
  %136 = ptrtoint ptr %end.i130 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i130, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %139 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp26.not = icmp slt i32 %inc, %conv
  br i1 %cmp26.not, label %if.end29, label %while.end

if.end29:                                         ; preds = %if.then24
  %frags31 = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 12
  %add.ptr33 = getelementptr %struct.bio_vec, ptr %frags31, i32 %inc
  %140 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pci_dev.i, align 4
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %bv_len.i.i134 = getelementptr %struct.bio_vec, ptr %frags31, i32 %inc, i32 1
  %142 = ptrtoint ptr %bv_len.i.i134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bv_len.i.i134, align 4
  %144 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr33, align 4
  %bv_offset.i.i.i135 = getelementptr %struct.bio_vec, ptr %frags31, i32 %inc, i32 2
  %146 = ptrtoint ptr %bv_offset.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bv_offset.i.i.i135, align 4
  %call2.i.i136 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i133, ptr noundef %145, i32 noundef %147, i32 noundef %143, i32 noundef 1, i32 noundef 0) #5
  %148 = ptrtoint ptr %unmap_addr.i137 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call2.i.i136, ptr %unmap_addr.i137, align 4
  %149 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pci_dev.i, align 4
  %dev3.i138 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3.i138, i32 noundef %call2.i.i136) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i136)
  %cmp.i.not.i139 = icmp eq i32 %call2.i.i136, -1
  br i1 %cmp.i.not.i139, label %if.end29.do.body50_crit_edge, label %tso_get_fragment.exit145.thread, !prof !21

if.end29.do.body50_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

tso_get_fragment.exit145.thread:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %bv_len.i.i134 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bv_len.i.i134, align 4
  %153 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %unmap_len.i, align 4
  %154 = load i32, ptr %bv_len.i.i134, align 4
  %155 = ptrtoint ptr %in_len10.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %in_len10.i, align 4
  %156 = ptrtoint ptr %unmap_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %unmap_addr.i137, align 4
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %tso_get_fragment.exit145.thread, %tso_fill_packet_with_fragment.exit.thread159
  %add.i129161.sink = phi i32 [ %add.i129161, %tso_fill_packet_with_fragment.exit.thread159 ], [ %157, %tso_get_fragment.exit145.thread ]
  %frag_i.2.ph.ph = phi i32 [ %frag_i.1, %tso_fill_packet_with_fragment.exit.thread159 ], [ %inc, %tso_get_fragment.exit145.thread ]
  %158 = ptrtoint ptr %dma_addr35.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add.i129161.sink, ptr %dma_addr35.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %tso_fill_packet_with_fragment.exit.if.end38_crit_edge
  %frag_i.2.ph = phi i32 [ %frag_i.1, %tso_fill_packet_with_fragment.exit.if.end38_crit_edge ], [ %frag_i.2.ph.ph, %if.end38.sink.split ]
  %159 = ptrtoint ptr %packet_space.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pr = load i32, ptr %packet_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp39 = icmp eq i32 %.pr, 0
  br i1 %cmp39, label %if.end38.if.then41_crit_edge, label %if.end38.while.cond.backedge_crit_edge

if.end38.while.cond.backedge_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %if.end38.if.then41_crit_edge, %if.end.i122.if.then41_crit_edge
  %frag_i.2166 = phi i32 [ %frag_i.2.ph, %if.end38.if.then41_crit_edge ], [ %frag_i.1, %if.end.i122.if.then41_crit_edge ]
  %call42 = call fastcc i32 @tso_start_new_packet(ptr noundef %tx_queue, ptr noundef %skb, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.while.cond.backedge_crit_edge, label %if.then41.fail_crit_edge

if.then41.fail_crit_edge:                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then41.while.cond.backedge_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then41.while.cond.backedge_crit_edge, %if.end38.while.cond.backedge_crit_edge
  %frag_i.1.be = phi i32 [ %frag_i.2166, %if.then41.while.cond.backedge_crit_edge ], [ %frag_i.2.ph, %if.end38.while.cond.backedge_crit_edge ]
  br label %while.cond

while.end:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %data_mapped to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %data_mapped, align 1
  br label %cleanup

fail:                                             ; preds = %if.then41.fail_crit_edge, %if.end17.fail_crit_edge
  %rc.0 = phi i32 [ %call18, %if.end17.fail_crit_edge ], [ %call42, %if.then41.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %rc.0)
  %cmp47 = icmp eq i32 %rc.0, -12
  br i1 %cmp47, label %fail.do.body50_crit_edge, label %do.body57

fail.do.body50_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

do.body50:                                        ; preds = %fail.do.body50_crit_edge, %if.end29.do.body50_crit_edge, %do.end11.do.body50_crit_edge, %tso_start.exit.do.body50_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %161 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %msg_enable, align 4
  %and = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %do.body50.if.end66_crit_edge, label %if.then52

do.body50.if.end66_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then52:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %163 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %164, ptr noundef nonnull @.str) #8
  br label %if.end66

do.body57:                                        ; preds = %fail
  %msg_enable58 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %165 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %msg_enable58, align 4
  %and59 = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body57.if.end66_crit_edge, label %if.then61

do.body57.if.end66_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev62 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %167 = ptrtoint ptr %net_dev62 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %net_dev62, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %168, ptr noundef nonnull @.str.1, i32 noundef %rc.0) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %do.body57.if.end66_crit_edge, %if.then52, %do.body50.if.end66_crit_edge
  %rc.0154 = phi i32 [ %rc.0, %do.body57.if.end66_crit_edge ], [ %rc.0, %if.then61 ], [ -12, %do.body50.if.end66_crit_edge ], [ -12, %if.then52 ]
  %169 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %unmap_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool67.not = icmp eq i32 %170, 0
  br i1 %tobool67.not, label %if.end66.if.end70_crit_edge, label %if.then68

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pci_dev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %172, i32 0, i32 44
  %unmap_addr = getelementptr inbounds %struct.tso_state, ptr %state, i32 0, i32 7
  %173 = ptrtoint ptr %unmap_addr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %unmap_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %174, i32 noundef %170, i32 noundef 1, i32 noundef 0) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66.if.end70_crit_edge
  %175 = ptrtoint ptr %header_unmap_len.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %header_unmap_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool71.not = icmp eq i32 %176, 0
  br i1 %tobool71.not, label %if.end70.cleanup_crit_edge, label %if.then72

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pci_dev.i, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  %179 = ptrtoint ptr %header_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %header_dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev74, i32 noundef %180, i32 noundef %176, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end70.cleanup_crit_edge, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ %rc.0154, %if.then72 ], [ %rc.0154, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tso_start_new_packet(ptr nocapture noundef %tx_queue, ptr nocapture noundef readonly %skb, ptr nocapture noundef %st) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %0 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer.i.i, align 32
  %insert_count.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %2 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insert_count.i.i.i, align 128
  %ptr_mask.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %4 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr_mask.i.i.i, align 4
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %st, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size, align 4
  %conv = zext i16 %11 to i32
  %12 = call i32 @llvm.umin.i32(i32 %7, i32 %conv)
  %13 = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 4
  %header_unmap_len = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 14
  %15 = ptrtoint ptr %header_unmap_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %header_unmap_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %do.end, label %if.end33, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 302, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp ugt i32 %7, %conv
  %spec.select117 = select i1 %cmp.not, i8 -10, i8 -1
  %and.i.i.i = and i32 %5, %3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i, i32 13
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %and = and i8 %22, %spec.select117
  %flags = getelementptr %struct.efx_tx_buffer, ptr %1, i32 %and.i.i.i, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %flags, align 8
  %len = getelementptr %struct.efx_tx_buffer, ptr %1, i32 %and.i.i.i, i32 3
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %len, align 2
  %unmap_len = getelementptr %struct.efx_tx_buffer, ptr %1, i32 %and.i.i.i, i32 4
  %25 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %unmap_len, align 4
  %seqnum = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 1
  %26 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seqnum, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = getelementptr %struct.efx_tx_buffer, ptr %1, i32 %and.i.i.i, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 8
  %conv42 = zext i8 %and to i32
  %shl = shl nuw nsw i32 %conv42, 16
  %ipv4_id = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 2
  %31 = ptrtoint ptr %ipv4_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ipv4_id, align 4
  %conv47 = zext i16 %32 to i32
  %33 = or i32 %shl, %conv47
  %or48 = or i32 %33, -268435456
  %34 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %arrayidx51 = getelementptr [2 x i32], ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx51, align 4
  %36 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %insert_count.i.i.i, align 128
  %inc = add i32 %37, 1
  store i32 %inc, ptr %insert_count.i.i.i, align 128
  %38 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer.i.i, align 32
  %40 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptr_mask.i.i.i, align 4
  %and.i.i.i114 = and i32 %41, %inc
  %header_dma_addr = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 13
  %42 = ptrtoint ptr %header_dma_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %header_dma_addr, align 4
  %44 = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %44, align 8
  %header_len = getelementptr inbounds %struct.tso_state, ptr %st, i32 0, i32 11
  %46 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %header_len, align 4
  %conv55 = trunc i32 %47 to i16
  %len56 = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 3
  %48 = ptrtoint ptr %len56 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv55, ptr %len56, align 2
  %flags65 = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 2
  br i1 %cmp.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %flags65 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 9, ptr %flags65, align 8
  %50 = ptrtoint ptr %header_unmap_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %header_unmap_len, align 4
  %conv61 = trunc i32 %51 to i16
  %unmap_len62 = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 4
  %52 = ptrtoint ptr %unmap_len62 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv61, ptr %unmap_len62, align 4
  %dma_offset = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 5
  %53 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %dma_offset, align 2
  store i32 0, ptr %header_unmap_len, align 4
  br label %if.end67

if.else64:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %flags65 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags65, align 8
  %unmap_len66 = getelementptr %struct.efx_tx_buffer, ptr %39, i32 %and.i.i.i114, i32 4
  %55 = ptrtoint ptr %unmap_len66 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %unmap_len66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %if.then58
  %56 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %insert_count.i.i.i, align 128
  %inc69 = add i32 %57, 1
  store i32 %inc69, ptr %insert_count.i.i.i, align 128
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i, align 4
  %gso_size71 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %gso_size71 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %gso_size71, align 4
  %conv72 = zext i16 %61 to i32
  %62 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %seqnum, align 4
  %add = add i32 %63, %conv72
  store i32 %add, ptr %seqnum, align 4
  %64 = ptrtoint ptr %ipv4_id to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ipv4_id, align 4
  %inc75 = add i16 %65, 1
  store i16 %inc75, ptr %ipv4_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/tx_tso.c", i32 431, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/tx_tso.c", i32 434, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/tx_tso.c", i32 302, i32 6}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1170753}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}

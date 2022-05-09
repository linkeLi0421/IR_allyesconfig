; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/ring_mode.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/ring_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.121, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.121 = type { ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.127, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.127 = type { ptr, i32, i32 }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.stmmac_tx_info = type { i32, i8, i32, i8, i8, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.123, %struct.anon.124 }
%struct.anon.123 = type { i32, i32, i32 }
%struct.anon.124 = type { i32, i32, i32, i32 }
%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ring_mode_ops = dso_local constant { %struct.stmmac_mode_ops, [36 x i8] } { %struct.stmmac_mode_ops { ptr null, ptr @is_jumbo_frm, ptr @jumbo_frm, ptr @set_16kib_bfsize, ptr @init_desc3, ptr @refill_desc3, ptr @clean_desc3 }, [36 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"ring_mode_ops\00", align 1
@___asan_gen_.3 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/ring_mode.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 141, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 326, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ring_mode_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_mode_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_jumbo_frm(i32 noundef %len, i32 noundef %enh_desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len)
  %cmp = icmp sgt i32 %len, 4095
  %spec.store.select = zext i1 %cmp to i32
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jumbo_frm(ptr nocapture noundef %p, ptr nocapture noundef readonly %skb, i32 noundef %csum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  %priv_data = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %cur_tx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 13
  %6 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_tx, align 4
  %extend_desc = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 55
  %8 = ptrtoint ptr %extend_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extend_desc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_etx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 6
  %10 = ptrtoint ptr %dma_etx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_etx, align 128
  %add.ptr = getelementptr %struct.dma_extended_desc, ptr %11, i32 %7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_tx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 8
  %12 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx, align 8
  %add.ptr2 = getelementptr %struct.dma_desc, ptr %13, i32 %7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %desc.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr2, %if.else ]
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 36
  %14 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat, align 128
  %enh_desc = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %enh_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enh_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  %. = select i1 %tobool3.not, i32 2048, i32 8188
  %sub = sub i32 %sub.i, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 8188
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 15
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #7
  br i1 %cmp, label %if.then7, label %if.else83

if.then7:                                         ; preds = %if.end
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then7
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !15

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %19) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %19, ptr noundef %21, i32 noundef %.) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %21 to i32
  %sub.i226 = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i226, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %., i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %des29 = getelementptr inbounds %struct.dma_desc, ptr %desc.0, i32 0, i32 2
  %29 = ptrtoint ptr %des29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %des29, align 4
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end14

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %dma_map_single_attrs.exit
  %tx_skbuff_dma = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 10
  %32 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_skbuff_dma, align 16
  %arrayidx = getelementptr %struct.stmmac_tx_info, ptr %33, i32 %7
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %35 = load ptr, ptr %tx_skbuff_dma, align 16
  %len17 = getelementptr %struct.stmmac_tx_info, ptr %35, i32 %7, i32 2
  %36 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %., ptr %len17, align 4
  %37 = load ptr, ptr %tx_skbuff_dma, align 16
  %is_jumbo = getelementptr %struct.stmmac_tx_info, ptr %37, i32 %7, i32 4
  %38 = ptrtoint ptr %is_jumbo to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %is_jumbo, align 1
  %add = add i32 %retval.0.i, 4096
  %39 = tail call i32 @llvm.bswap.i32(i32 %add)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc.0, i32 0, i32 3
  %40 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %des3, align 4
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 16
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %desc20 = getelementptr inbounds %struct.mac_device_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %desc20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc20, align 4
  %tobool21.not = icmp eq ptr %44, null
  br i1 %tobool21.not, label %if.end14.if.end31_crit_edge, label %land.lhs.true

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end14
  %prepare_tx_desc = getelementptr inbounds %struct.stmmac_desc_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %prepare_tx_desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prepare_tx_desc, align 4
  %tobool24.not = icmp eq ptr %46, null
  br i1 %tobool24.not, label %land.lhs.true.if.end31_crit_edge, label %if.then25

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool29 = icmp ne i32 %csum, 0
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i, align 4
  tail call void %46(ptr noundef %desc.0, i32 noundef 1, i32 noundef %., i1 noundef zeroext %tobool29, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %48) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %land.lhs.true.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %49 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 9
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %arrayidx32 = getelementptr ptr, ptr %51, i32 %7
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx32, align 4
  %add33 = add i32 %7, 1
  %dma_tx_size = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 24
  %53 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_tx_size, align 128
  %sub34 = add i32 %54, -1
  %and = and i32 %sub34, %add33
  %55 = ptrtoint ptr %extend_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %extend_desc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool36.not = icmp eq i32 %56, 0
  br i1 %tobool36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %dma_etx38 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 6
  %57 = ptrtoint ptr %dma_etx38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_etx38, align 128
  %add.ptr39 = getelementptr %struct.dma_extended_desc, ptr %58, i32 %and
  br label %if.end43

if.else40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %dma_tx41 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 8
  %59 = ptrtoint ptr %dma_tx41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_tx41, align 8
  %add.ptr42 = getelementptr %struct.dma_desc, ptr %60, i32 %and
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then37
  %desc.1 = phi ptr [ %add.ptr39, %if.then37 ], [ %add.ptr42, %if.else40 ]
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 8
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %add.ptr46 = getelementptr i8, ptr %64, i32 %.
  %call.i227 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr46) #7
  br i1 %call.i227, label %land.rhs.i229, label %if.end39.i242

land.rhs.i229:                                    ; preds = %if.end43
  %.b1.i228 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i228, label %land.rhs.i229.dma_map_single_attrs.exit244_crit_edge, label %if.then.i233, !prof !15

land.rhs.i229.dma_map_single_attrs.exit244_crit_edge: ; preds = %land.rhs.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit244

if.then.i233:                                     ; preds = %land.rhs.i229
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i230 = tail call ptr @dev_driver_string(ptr noundef %62) #7
  %init_name.i.i231 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %init_name.i.i231 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i231, align 8
  %tobool.not.i.i232 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i232, label %if.end.i.i234, label %if.then.i233.dev_name.exit.i236_crit_edge

if.then.i233.dev_name.exit.i236_crit_edge:        ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i236

if.end.i.i234:                                    ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %62, align 4
  br label %dev_name.exit.i236

dev_name.exit.i236:                               ; preds = %if.end.i.i234, %if.then.i233.dev_name.exit.i236_crit_edge
  %retval.0.i.i235 = phi ptr [ %68, %if.end.i.i234 ], [ %66, %if.then.i233.dev_name.exit.i236_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i230, ptr noundef %retval.0.i.i235) #7
  br label %dma_map_single_attrs.exit244

if.end39.i242:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %62, ptr noundef %add.ptr46, i32 noundef %sub) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %add.ptr46 to i32
  %sub.i237 = add i32 %70, 1073741824
  %shr.i238 = lshr i32 %sub.i237, 12
  %add.ptr.i239 = getelementptr %struct.page, ptr %69, i32 %shr.i238
  %and.i240 = and i32 %70, 4095
  %call41.i241 = tail call i32 @dma_map_page_attrs(ptr noundef %62, ptr noundef %add.ptr.i239, i32 noundef %and.i240, i32 noundef %sub, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit244

dma_map_single_attrs.exit244:                     ; preds = %if.end39.i242, %dev_name.exit.i236, %land.rhs.i229.dma_map_single_attrs.exit244_crit_edge
  %retval.0.i243 = phi i32 [ %call41.i241, %if.end39.i242 ], [ -1, %dev_name.exit.i236 ], [ -1, %land.rhs.i229.dma_map_single_attrs.exit244_crit_edge ]
  %71 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i243)
  %des248 = getelementptr inbounds %struct.dma_desc, ptr %desc.1, i32 0, i32 2
  %72 = ptrtoint ptr %des248 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %des248, align 4
  %73 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %74, i32 noundef %retval.0.i243) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i243)
  %cmp.i245 = icmp eq i32 %retval.0.i243, -1
  br i1 %cmp.i245, label %dma_map_single_attrs.exit244.cleanup_crit_edge, label %if.end53

dma_map_single_attrs.exit244.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit244
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %dma_map_single_attrs.exit244
  %75 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_skbuff_dma, align 16
  %arrayidx55 = getelementptr %struct.stmmac_tx_info, ptr %76, i32 %and
  %77 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i243, ptr %arrayidx55, align 4
  %78 = load ptr, ptr %tx_skbuff_dma, align 16
  %len59 = getelementptr %struct.stmmac_tx_info, ptr %78, i32 %and, i32 2
  %79 = ptrtoint ptr %len59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub, ptr %len59, align 4
  %80 = load ptr, ptr %tx_skbuff_dma, align 16
  %is_jumbo62 = getelementptr %struct.stmmac_tx_info, ptr %80, i32 %and, i32 4
  %81 = ptrtoint ptr %is_jumbo62 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %is_jumbo62, align 1
  %add63 = add i32 %retval.0.i243, 4096
  %82 = tail call i32 @llvm.bswap.i32(i32 %add63)
  %des364 = getelementptr inbounds %struct.dma_desc, ptr %desc.1, i32 0, i32 3
  %83 = ptrtoint ptr %des364 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %des364, align 4
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %desc67 = getelementptr inbounds %struct.mac_device_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %desc67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc67, align 4
  %tobool68.not = icmp eq ptr %87, null
  br i1 %tobool68.not, label %if.end53.if.end123_crit_edge, label %land.lhs.true69

if.end53.if.end123_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true69:                                  ; preds = %if.end53
  %prepare_tx_desc72 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %prepare_tx_desc72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prepare_tx_desc72, align 4
  %tobool73.not = icmp eq ptr %89, null
  br i1 %tobool73.not, label %land.lhs.true69.if.end123_crit_edge, label %if.then74

land.lhs.true69.if.end123_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then74:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool78 = icmp ne i32 %csum, 0
  %90 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not = icmp eq i32 %91, 0
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len.i, align 4
  tail call void %89(ptr noundef %desc.1, i32 noundef 0, i32 noundef %sub, i1 noundef zeroext %tobool78, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext %tobool.i.not, i32 noundef %93) #7
  br label %if.end123

if.else83:                                        ; preds = %if.end
  br i1 %call.i, label %land.rhs.i250, label %if.end39.i263

land.rhs.i250:                                    ; preds = %if.else83
  %.b1.i249 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i249, label %land.rhs.i250.dma_map_single_attrs.exit265_crit_edge, label %if.then.i254, !prof !15

land.rhs.i250.dma_map_single_attrs.exit265_crit_edge: ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit265

if.then.i254:                                     ; preds = %land.rhs.i250
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i251 = tail call ptr @dev_driver_string(ptr noundef %19) #7
  %init_name.i.i252 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %94 = ptrtoint ptr %init_name.i.i252 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i252, align 8
  %tobool.not.i.i253 = icmp eq ptr %95, null
  br i1 %tobool.not.i.i253, label %if.end.i.i255, label %if.then.i254.dev_name.exit.i257_crit_edge

if.then.i254.dev_name.exit.i257_crit_edge:        ; preds = %if.then.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i257

if.end.i.i255:                                    ; preds = %if.then.i254
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %19, align 4
  br label %dev_name.exit.i257

dev_name.exit.i257:                               ; preds = %if.end.i.i255, %if.then.i254.dev_name.exit.i257_crit_edge
  %retval.0.i.i256 = phi ptr [ %97, %if.end.i.i255 ], [ %95, %if.then.i254.dev_name.exit.i257_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i251, ptr noundef %retval.0.i.i256) #7
  br label %dma_map_single_attrs.exit265

if.end39.i263:                                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %19, ptr noundef %21, i32 noundef %sub.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %98 = load ptr, ptr @mem_map, align 4
  %99 = ptrtoint ptr %21 to i32
  %sub.i258 = add i32 %99, 1073741824
  %shr.i259 = lshr i32 %sub.i258, 12
  %add.ptr.i260 = getelementptr %struct.page, ptr %98, i32 %shr.i259
  %and.i261 = and i32 %99, 4095
  %call41.i262 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %add.ptr.i260, i32 noundef %and.i261, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit265

dma_map_single_attrs.exit265:                     ; preds = %if.end39.i263, %dev_name.exit.i257, %land.rhs.i250.dma_map_single_attrs.exit265_crit_edge
  %retval.0.i264 = phi i32 [ %call41.i262, %if.end39.i263 ], [ -1, %dev_name.exit.i257 ], [ -1, %land.rhs.i250.dma_map_single_attrs.exit265_crit_edge ]
  %100 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i264)
  %des287 = getelementptr inbounds %struct.dma_desc, ptr %desc.0, i32 0, i32 2
  %101 = ptrtoint ptr %des287 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %des287, align 4
  %102 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %103, i32 noundef %retval.0.i264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i264)
  %cmp.i266 = icmp eq i32 %retval.0.i264, -1
  br i1 %cmp.i266, label %dma_map_single_attrs.exit265.cleanup_crit_edge, label %if.end92

dma_map_single_attrs.exit265.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit265
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %dma_map_single_attrs.exit265
  %tx_skbuff_dma93 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 10
  %104 = ptrtoint ptr %tx_skbuff_dma93 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_skbuff_dma93, align 16
  %arrayidx94 = getelementptr %struct.stmmac_tx_info, ptr %105, i32 %7
  %106 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i264, ptr %arrayidx94, align 4
  %107 = load ptr, ptr %tx_skbuff_dma93, align 16
  %len98 = getelementptr %struct.stmmac_tx_info, ptr %107, i32 %7, i32 2
  %108 = ptrtoint ptr %len98 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %sub.i, ptr %len98, align 4
  %109 = load ptr, ptr %tx_skbuff_dma93, align 16
  %is_jumbo101 = getelementptr %struct.stmmac_tx_info, ptr %109, i32 %7, i32 4
  %110 = ptrtoint ptr %is_jumbo101 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %is_jumbo101, align 1
  %add102 = add i32 %retval.0.i264, 4096
  %111 = tail call i32 @llvm.bswap.i32(i32 %add102)
  %des3103 = getelementptr inbounds %struct.dma_desc, ptr %desc.0, i32 0, i32 3
  %112 = ptrtoint ptr %des3103 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %des3103, align 4
  %hw105 = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 16
  %113 = ptrtoint ptr %hw105 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw105, align 4
  %desc106 = getelementptr inbounds %struct.mac_device_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %desc106 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %desc106, align 4
  %tobool107.not = icmp eq ptr %116, null
  br i1 %tobool107.not, label %if.end92.if.end123_crit_edge, label %land.lhs.true108

if.end92.if.end123_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true108:                                 ; preds = %if.end92
  %prepare_tx_desc111 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %prepare_tx_desc111 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prepare_tx_desc111, align 4
  %tobool112.not = icmp eq ptr %118, null
  br i1 %tobool112.not, label %land.lhs.true108.if.end123_crit_edge, label %if.then113

land.lhs.true108.if.end123_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then113:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool117 = icmp ne i32 %csum, 0
  %119 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i269.not = icmp eq i32 %120, 0
  %121 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len.i, align 4
  tail call void %118(ptr noundef %desc.0, i32 noundef 1, i32 noundef %sub.i, i1 noundef zeroext %tobool117, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext %tobool.i269.not, i32 noundef %122) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %land.lhs.true108.if.end123_crit_edge, %if.end92.if.end123_crit_edge, %if.then74, %land.lhs.true69.if.end123_crit_edge, %if.end53.if.end123_crit_edge
  %entry1.0 = phi i32 [ %and, %if.then74 ], [ %and, %land.lhs.true69.if.end123_crit_edge ], [ %and, %if.end53.if.end123_crit_edge ], [ %7, %if.then113 ], [ %7, %land.lhs.true108.if.end123_crit_edge ], [ %7, %if.end92.if.end123_crit_edge ]
  %123 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %entry1.0, ptr %cur_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %dma_map_single_attrs.exit265.cleanup_crit_edge, %dma_map_single_attrs.exit244.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %entry1.0, %if.end123 ], [ -1, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -1, %dma_map_single_attrs.exit244.cleanup_crit_edge ], [ -1, %dma_map_single_attrs.exit265.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_16kib_bfsize(i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %mtu)
  %cmp = icmp sgt i32 %mtu, 8188
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 16368, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @init_desc3(ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add i32 %2, 8188
  %3 = tail call i32 @llvm.bswap.i32(i32 %add)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %des3, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @refill_desc3(ptr nocapture noundef readonly %priv_ptr, ptr nocapture noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.stmmac_rx_queue, ptr %priv_ptr, i32 0, i32 7
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dma_buf_sz = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_buf_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16368, i32 %3)
  %cmp = icmp eq i32 %3, 16368
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %des2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, 8188
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %des3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @clean_desc3(ptr nocapture noundef readonly %priv_ptr, ptr nocapture noundef writeonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.stmmac_tx_queue, ptr %priv_ptr, i32 0, i32 4
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %dirty_tx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %priv_ptr, i32 0, i32 14
  %2 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_tx, align 32
  %tx_skbuff_dma = getelementptr inbounds %struct.stmmac_tx_queue, ptr %priv_ptr, i32 0, i32 10
  %4 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skbuff_dma, align 16
  %is_jumbo = getelementptr %struct.stmmac_tx_info, ptr %5, i32 %3, i32 4
  %6 = ptrtoint ptr %is_jumbo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_jumbo, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !15

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %last_segment = getelementptr %struct.stmmac_tx_info, ptr %5, i32 %3, i32 3
  %8 = ptrtoint ptr %last_segment to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last_segment, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %lor.rhs.if.end_crit_edge, label %land.lhs.true

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %lor.rhs
  %extend_desc = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 55
  %10 = ptrtoint ptr %extend_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %extend_desc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %hwts_tx_en = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwts_tx_en, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %land.rhs.if.end_crit_edge, label %land.rhs.if.then_crit_edge, !prof !15

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %14 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %des3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ring_mode_ops, !1, !"ring_mode_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/ring_mode.c", i32 141, i32 30}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i8 0, i8 2}

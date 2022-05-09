; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/chain_mode.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/chain_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
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

@chain_mode_ops = dso_local constant { %struct.stmmac_mode_ops, [36 x i8] } { %struct.stmmac_mode_ops { ptr @init_dma_chain, ptr @is_jumbo_frm, ptr @jumbo_frm, ptr null, ptr null, ptr @refill_desc3, ptr @clean_desc3 }, [36 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"chain_mode_ops\00", align 1
@___asan_gen_.3 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/chain_mode.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 162, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 326, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @chain_mode_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chain_mode_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal void @init_dma_chain(ptr nocapture noundef writeonly %des, i32 noundef %phy_addr, i32 noundef %size, i32 noundef %extend_desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extend_desc)
  %tobool.not = icmp eq i32 %extend_desc, 0
  %sub5 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp633.not = icmp eq i32 %sub5, 0
  br i1 %tobool.not, label %for.cond4.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp633.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond4.preheader:                              ; preds = %entry
  br i1 %cmp633.not, label %for.cond4.preheader.if.end_crit_edge, label %for.cond4.preheader.for.body7_crit_edge

for.cond4.preheader.for.body7_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body7

for.cond4.preheader.if.end_crit_edge:             ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.032 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %des, %for.cond.preheader.for.body_crit_edge ]
  %dma_phy.031 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %phy_addr, %for.cond.preheader.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %dma_phy.031, 32
  %0 = tail call i32 @llvm.bswap.i32(i32 %add)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p.032, i32 0, i32 3
  %1 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %des3, align 4
  %incdec.ptr = getelementptr %struct.dma_extended_desc, ptr %p.032, i32 1
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %sub5
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader.for.body7_crit_edge
  %p3.036 = phi ptr [ %incdec.ptr10, %for.body7.for.body7_crit_edge ], [ %des, %for.cond4.preheader.for.body7_crit_edge ]
  %dma_phy.135 = phi i32 [ %add8, %for.body7.for.body7_crit_edge ], [ %phy_addr, %for.cond4.preheader.for.body7_crit_edge ]
  %i.134 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ 0, %for.cond4.preheader.for.body7_crit_edge ]
  %add8 = add i32 %dma_phy.135, 16
  %2 = tail call i32 @llvm.bswap.i32(i32 %add8)
  %des39 = getelementptr inbounds %struct.dma_desc, ptr %p3.036, i32 0, i32 3
  %3 = ptrtoint ptr %des39 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %des39, align 4
  %incdec.ptr10 = getelementptr %struct.dma_desc, ptr %p3.036, i32 1
  %inc12 = add nuw i32 %i.134, 1
  %exitcond38.not = icmp eq i32 %inc12, %sub5
  br i1 %exitcond38.not, label %for.body7.if.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body7.if.end_crit_edge, %for.body.if.end_crit_edge, %for.cond4.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %p3.0.lcssa.sink = phi ptr [ %des, %for.cond.preheader.if.end_crit_edge ], [ %des, %for.cond4.preheader.if.end_crit_edge ], [ %incdec.ptr10, %for.body7.if.end_crit_edge ], [ %incdec.ptr, %for.body.if.end_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %phy_addr)
  %des314 = getelementptr inbounds %struct.dma_desc, ptr %p3.0.lcssa.sink, i32 0, i32 3
  %5 = ptrtoint ptr %des314 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %des314, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_jumbo_frm(i32 noundef %len, i32 noundef %enh_desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enh_desc)
  %tobool.not = icmp eq i32 %enh_desc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %len)
  %cmp = icmp sgt i32 %len, 8188
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %len)
  %cmp3 = icmp sgt i32 %len, 2048
  %0 = select i1 %tobool.not, i1 %cmp3, i1 %cmp
  %ret.0 = zext i1 %0 to i32
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jumbo_frm(ptr nocapture noundef %p, ptr nocapture noundef readonly %skb, i32 noundef %csum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %priv_data = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %cur_tx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 13
  %6 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_tx, align 4
  %dma_tx = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 8
  %8 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx, align 8
  %add.ptr = getelementptr %struct.dma_desc, ptr %9, i32 %7
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 36
  %10 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat, align 128
  %enh_desc = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %enh_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enh_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %..neg243 = select i1 %tobool.not, i32 -2048, i32 -8188
  %. = select i1 %tobool.not, i32 2048, i32 8188
  %.neg236 = sub i32 %1, %3
  %sub = add i32 %.neg236, %..neg243
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 15
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !15

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %15) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %15, ptr noundef %17, i32 noundef %.) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %17 to i32
  %sub.i190 = add i32 %23, 1073741824
  %shr.i = lshr i32 %sub.i190, 12
  %add.ptr.i = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %23, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %15, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %., i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %des23 = getelementptr %struct.dma_desc, ptr %9, i32 %7, i32 2
  %25 = ptrtoint ptr %des23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %des23, align 4
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end8

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %dma_map_single_attrs.exit
  %tx_skbuff_dma = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 10
  %28 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_skbuff_dma, align 16
  %arrayidx = getelementptr %struct.stmmac_tx_info, ptr %29, i32 %7
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %31 = load ptr, ptr %tx_skbuff_dma, align 16
  %len11 = getelementptr %struct.stmmac_tx_info, ptr %31, i32 %7, i32 2
  %32 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %., ptr %len11, align 4
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 16
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %desc12 = getelementptr inbounds %struct.mac_device_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %desc12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc12, align 4
  %tobool13.not = icmp eq ptr %36, null
  br i1 %tobool13.not, label %if.end8.if.end23_crit_edge, label %land.lhs.true

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end8
  %prepare_tx_desc = getelementptr inbounds %struct.stmmac_desc_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %prepare_tx_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prepare_tx_desc, align 4
  %tobool16.not = icmp eq ptr %38, null
  br i1 %tobool16.not, label %land.lhs.true.if.end23_crit_edge, label %if.then17

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool21 = icmp ne i32 %csum, 0
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  tail call void %38(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %., i1 noundef zeroext %tobool21, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %40) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %land.lhs.true.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not238 = icmp eq i32 %sub, 0
  br i1 %cmp.not238, label %if.end23.while.end_crit_edge, label %while.body.lr.ph

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  %41 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %p, i32 0, i32 9
  %dma_tx_size = getelementptr inbounds %struct.stmmac_priv, ptr %5, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool95 = icmp ne i32 %csum, 0
  br label %while.body

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.body.lr.ph
  %len.0241 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub63, %if.end99.while.body_crit_edge ]
  %i.0240 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end99.while.body_crit_edge ]
  %entry1.0239 = phi i32 [ %7, %while.body.lr.ph ], [ %and, %if.end99.while.body_crit_edge ]
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %arrayidx24 = getelementptr ptr, ptr %43, i32 %entry1.0239
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx24, align 4
  %add = add i32 %entry1.0239, 1
  %45 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_tx_size, align 128
  %sub25 = add i32 %46, -1
  %and = and i32 %sub25, %add
  %47 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_tx, align 8
  %add.ptr27 = getelementptr %struct.dma_desc, ptr %48, i32 %and
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0241, i32 %.)
  %cmp28 = icmp ugt i32 %len.0241, %.
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 8
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %mul = mul i32 %i.0240, %.
  %add.ptr32 = getelementptr i8, ptr %52, i32 %mul
  %call.i191 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr32) #6
  br i1 %cmp28, label %if.then29, label %if.else64

if.then29:                                        ; preds = %while.body
  br i1 %call.i191, label %land.rhs.i193, label %if.end39.i206

land.rhs.i193:                                    ; preds = %if.then29
  %.b1.i192 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i192, label %land.rhs.i193.dma_map_single_attrs.exit208_crit_edge, label %if.then.i197, !prof !15

land.rhs.i193.dma_map_single_attrs.exit208_crit_edge: ; preds = %land.rhs.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit208

if.then.i197:                                     ; preds = %land.rhs.i193
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i194 = tail call ptr @dev_driver_string(ptr noundef %50) #6
  %init_name.i.i195 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %init_name.i.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i195, align 8
  %tobool.not.i.i196 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i196, label %if.end.i.i198, label %if.then.i197.dev_name.exit.i200_crit_edge

if.then.i197.dev_name.exit.i200_crit_edge:        ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i200

if.end.i.i198:                                    ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  br label %dev_name.exit.i200

dev_name.exit.i200:                               ; preds = %if.end.i.i198, %if.then.i197.dev_name.exit.i200_crit_edge
  %retval.0.i.i199 = phi ptr [ %56, %if.end.i.i198 ], [ %54, %if.then.i197.dev_name.exit.i200_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i194, ptr noundef %retval.0.i.i199) #6
  br label %dma_map_single_attrs.exit208

if.end39.i206:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %50, ptr noundef %add.ptr32, i32 noundef %.) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %57 = load ptr, ptr @mem_map, align 4
  %58 = ptrtoint ptr %add.ptr32 to i32
  %sub.i201 = add i32 %58, 1073741824
  %shr.i202 = lshr i32 %sub.i201, 12
  %add.ptr.i203 = getelementptr %struct.page, ptr %57, i32 %shr.i202
  %and.i204 = and i32 %58, 4095
  %call41.i205 = tail call i32 @dma_map_page_attrs(ptr noundef %50, ptr noundef %add.ptr.i203, i32 noundef %and.i204, i32 noundef %., i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit208

dma_map_single_attrs.exit208:                     ; preds = %if.end39.i206, %dev_name.exit.i200, %land.rhs.i193.dma_map_single_attrs.exit208_crit_edge
  %retval.0.i207 = phi i32 [ %call41.i205, %if.end39.i206 ], [ -1, %dev_name.exit.i200 ], [ -1, %land.rhs.i193.dma_map_single_attrs.exit208_crit_edge ]
  %59 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i207)
  %des234 = getelementptr %struct.dma_desc, ptr %48, i32 %and, i32 2
  %60 = ptrtoint ptr %des234 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %des234, align 4
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %retval.0.i207) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i207)
  %cmp.i209 = icmp eq i32 %retval.0.i207, -1
  br i1 %cmp.i209, label %dma_map_single_attrs.exit208.cleanup_crit_edge, label %if.end39

dma_map_single_attrs.exit208.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit208
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %dma_map_single_attrs.exit208
  %63 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_skbuff_dma, align 16
  %arrayidx41 = getelementptr %struct.stmmac_tx_info, ptr %64, i32 %and
  %65 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i207, ptr %arrayidx41, align 4
  %66 = load ptr, ptr %tx_skbuff_dma, align 16
  %len45 = getelementptr %struct.stmmac_tx_info, ptr %66, i32 %and, i32 2
  %67 = ptrtoint ptr %len45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %., ptr %len45, align 4
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %desc48 = getelementptr inbounds %struct.mac_device_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %desc48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc48, align 4
  %tobool49.not = icmp eq ptr %71, null
  br i1 %tobool49.not, label %if.end39.if.end99_crit_edge, label %land.lhs.true50

if.end39.if.end99_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

land.lhs.true50:                                  ; preds = %if.end39
  %prepare_tx_desc53 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %prepare_tx_desc53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prepare_tx_desc53, align 4
  %tobool54.not = icmp eq ptr %73, null
  br i1 %tobool54.not, label %land.lhs.true50.if.end99_crit_edge, label %if.then55

land.lhs.true50.if.end99_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then55:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  tail call void %73(ptr noundef %add.ptr27, i32 noundef 0, i32 noundef %., i1 noundef zeroext %tobool95, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %75) #6
  br label %if.end99

if.else64:                                        ; preds = %while.body
  br i1 %call.i191, label %land.rhs.i213, label %if.end39.i226

land.rhs.i213:                                    ; preds = %if.else64
  %.b1.i212 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i212, label %land.rhs.i213.dma_map_single_attrs.exit228_crit_edge, label %if.then.i217, !prof !15

land.rhs.i213.dma_map_single_attrs.exit228_crit_edge: ; preds = %land.rhs.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit228

if.then.i217:                                     ; preds = %land.rhs.i213
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i214 = tail call ptr @dev_driver_string(ptr noundef %50) #6
  %init_name.i.i215 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i215 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i215, align 8
  %tobool.not.i.i216 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i216, label %if.end.i.i218, label %if.then.i217.dev_name.exit.i220_crit_edge

if.then.i217.dev_name.exit.i220_crit_edge:        ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i220

if.end.i.i218:                                    ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %50, align 4
  br label %dev_name.exit.i220

dev_name.exit.i220:                               ; preds = %if.end.i.i218, %if.then.i217.dev_name.exit.i220_crit_edge
  %retval.0.i.i219 = phi ptr [ %79, %if.end.i.i218 ], [ %77, %if.then.i217.dev_name.exit.i220_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i214, ptr noundef %retval.0.i.i219) #6
  br label %dma_map_single_attrs.exit228

if.end39.i226:                                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %50, ptr noundef %add.ptr32, i32 noundef %len.0241) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %add.ptr32 to i32
  %sub.i221 = add i32 %81, 1073741824
  %shr.i222 = lshr i32 %sub.i221, 12
  %add.ptr.i223 = getelementptr %struct.page, ptr %80, i32 %shr.i222
  %and.i224 = and i32 %81, 4095
  %call41.i225 = tail call i32 @dma_map_page_attrs(ptr noundef %50, ptr noundef %add.ptr.i223, i32 noundef %and.i224, i32 noundef %len.0241, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit228

dma_map_single_attrs.exit228:                     ; preds = %if.end39.i226, %dev_name.exit.i220, %land.rhs.i213.dma_map_single_attrs.exit228_crit_edge
  %retval.0.i227 = phi i32 [ %call41.i225, %if.end39.i226 ], [ -1, %dev_name.exit.i220 ], [ -1, %land.rhs.i213.dma_map_single_attrs.exit228_crit_edge ]
  %82 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i227)
  %des270 = getelementptr %struct.dma_desc, ptr %48, i32 %and, i32 2
  %83 = ptrtoint ptr %des270 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %des270, align 4
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %85, i32 noundef %retval.0.i227) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i227)
  %cmp.i229 = icmp eq i32 %retval.0.i227, -1
  br i1 %cmp.i229, label %dma_map_single_attrs.exit228.cleanup_crit_edge, label %if.end75

dma_map_single_attrs.exit228.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit228
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %dma_map_single_attrs.exit228
  %86 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx_skbuff_dma, align 16
  %arrayidx77 = getelementptr %struct.stmmac_tx_info, ptr %87, i32 %and
  %88 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i227, ptr %arrayidx77, align 4
  %89 = load ptr, ptr %tx_skbuff_dma, align 16
  %len81 = getelementptr %struct.stmmac_tx_info, ptr %89, i32 %and, i32 2
  %90 = ptrtoint ptr %len81 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %len.0241, ptr %len81, align 4
  %91 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw, align 4
  %desc84 = getelementptr inbounds %struct.mac_device_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %desc84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc84, align 4
  %tobool85.not = icmp eq ptr %94, null
  br i1 %tobool85.not, label %if.end75.while.end_crit_edge, label %land.lhs.true86

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true86:                                  ; preds = %if.end75
  %prepare_tx_desc89 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %prepare_tx_desc89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prepare_tx_desc89, align 4
  %tobool90.not = icmp eq ptr %96, null
  br i1 %tobool90.not, label %land.lhs.true86.while.end_crit_edge, label %if.then91

land.lhs.true86.while.end_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i, align 4
  tail call void %96(ptr noundef %add.ptr27, i32 noundef 0, i32 noundef %len.0241, i1 noundef zeroext %tobool95, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %98) #6
  br label %while.end

if.end99:                                         ; preds = %if.then55, %land.lhs.true50.if.end99_crit_edge, %if.end39.if.end99_crit_edge
  %sub63 = sub i32 %len.0241, %.
  %inc = add i32 %i.0240, 1
  %cmp.not = icmp eq i32 %sub63, 0
  br i1 %cmp.not, label %if.end99.while.end_crit_edge, label %if.end99.while.body_crit_edge

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end99.while.end_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end99.while.end_crit_edge, %if.then91, %land.lhs.true86.while.end_crit_edge, %if.end75.while.end_crit_edge, %if.end23.while.end_crit_edge
  %entry1.0.lcssa = phi i32 [ %7, %if.end23.while.end_crit_edge ], [ %and, %if.then91 ], [ %and, %land.lhs.true86.while.end_crit_edge ], [ %and, %if.end75.while.end_crit_edge ], [ %and, %if.end99.while.end_crit_edge ]
  %99 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %entry1.0.lcssa, ptr %cur_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %dma_map_single_attrs.exit228.cleanup_crit_edge, %dma_map_single_attrs.exit208.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %entry1.0.lcssa, %while.end ], [ -1, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -1, %dma_map_single_attrs.exit228.cleanup_crit_edge ], [ -1, %dma_map_single_attrs.exit208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @refill_desc3(ptr nocapture noundef readonly %priv_ptr, ptr nocapture noundef writeonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.stmmac_rx_queue, ptr %priv_ptr, i32 0, i32 7
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %hwts_rx_en = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %hwts_rx_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwts_rx_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %extend_desc = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %extend_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extend_desc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_phy = getelementptr inbounds %struct.stmmac_rx_queue, ptr %priv_ptr, i32 0, i32 15
  %6 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_rx_phy, align 4
  %dirty_rx = getelementptr inbounds %struct.stmmac_rx_queue, ptr %priv_ptr, i32 0, i32 12
  %8 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty_rx, align 8
  %add = add i32 %9, 1
  %dma_rx_size = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_rx_size, align 128
  %rem = urem i32 %add, %11
  %mul = shl i32 %rem, 4
  %add2 = add i32 %mul, %7
  %12 = tail call i32 @llvm.bswap.i32(i32 %add2)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %13 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %des3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @clean_desc3(ptr nocapture noundef readonly %priv_ptr, ptr nocapture noundef writeonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %last_segment = getelementptr %struct.stmmac_tx_info, ptr %5, i32 %3, i32 3
  %6 = ptrtoint ptr %last_segment to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_segment, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %extend_desc = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 55
  %8 = ptrtoint ptr %extend_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extend_desc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %hwts_tx_en = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwts_tx_en, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %dma_tx_phy = getelementptr inbounds %struct.stmmac_tx_queue, ptr %priv_ptr, i32 0, i32 15
  %12 = ptrtoint ptr %dma_tx_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_tx_phy, align 4
  %add = add i32 %3, 1
  %dma_tx_size = getelementptr inbounds %struct.stmmac_priv, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_tx_size, align 128
  %rem = urem i32 %add, %15
  %add6 = add i32 %rem, %13
  %mul = shl i32 %add6, 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %17 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %des3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @chain_mode_ops, !1, !"chain_mode_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/chain_mode.c", i32 162, i32 30}
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
!16 = !{i8 0, i8 2}

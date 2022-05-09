; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/enh_desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/enh_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }

@enh_desc_ops = dso_local constant { %struct.stmmac_desc_ops, [36 x i8] } { %struct.stmmac_desc_ops { ptr @enh_desc_init_rx_desc, ptr @enh_desc_init_tx_desc, ptr @enh_desc_prepare_tx_desc, ptr null, ptr @enh_desc_set_tx_owner, ptr @enh_desc_get_tx_owner, ptr @enh_desc_release_tx_desc, ptr @enh_desc_set_tx_ic, ptr @enh_desc_get_tx_ls, ptr @enh_desc_get_tx_status, ptr @enh_desc_get_tx_len, ptr @enh_desc_set_rx_owner, ptr @enh_desc_get_rx_frame_len, ptr @enh_desc_get_rx_status, ptr @enh_desc_get_ext_status, ptr @enh_desc_enable_tx_timestamp, ptr @enh_desc_get_tx_timestamp_status, ptr @enh_desc_get_timestamp, ptr @enh_desc_get_rx_timestamp_status, ptr @enh_desc_display_ring, ptr null, ptr @enh_desc_get_addr, ptr @enh_desc_set_addr, ptr @enh_desc_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@enh_desc_get_rx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013\09IPC Csum Error/Giant frame\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enh_desc_get_rx_status\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/stmicro/stmmac/enh_desc.c\00", [49 x i8] zeroinitializer }, align 32
@enh_desc_get_rx_status._entry_ptr = internal global ptr @enh_desc_get_rx_status._entry, section ".printk_index", align 4
@enh_desc_display_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Extended %s descriptor ring:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enh_desc_display_ring\00", [42 x i8] zeroinitializer }, align 32
@enh_desc_display_ring._entry_ptr = internal global ptr @enh_desc_display_ring._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@enh_desc_display_ring._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@enh_desc_display_ring._entry_ptr.9 = internal global ptr @enh_desc_display_ring._entry.7, section ".printk_index", align 4
@enh_desc_display_ring._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@enh_desc_display_ring._entry_ptr.12 = internal global ptr @enh_desc_display_ring._entry.10, section ".printk_index", align 4
@switch.table.enh_desc_get_rx_status = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 1, i32 0, i32 1, i32 0, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 15]
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"enh_desc_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 458, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 208, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 427, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 434, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [50 x i8] c"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 440, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [36 x i8] c"switch.table.enh_desc_get_rx_status\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @enh_desc_display_ring._entry, ptr @enh_desc_display_ring._entry.10, ptr @enh_desc_display_ring._entry.7, ptr @enh_desc_display_ring._entry_ptr, ptr @enh_desc_display_ring._entry_ptr.12, ptr @enh_desc_display_ring._entry_ptr.9, ptr @enh_desc_get_rx_status._entry, ptr @enh_desc_get_rx_status._entry_ptr, ptr @enh_desc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @switch.table.enh_desc_get_rx_status], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enh_desc_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enh_desc_get_rx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enh_desc_display_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enh_desc_display_ring._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enh_desc_display_ring._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enh_desc_get_rx_status to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_init_rx_desc(ptr nocapture noundef %p, i32 noundef %disable_rx_ic, i32 noundef %mode, i32 noundef %end, i32 noundef %bfsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %bfsize)
  %cmp = icmp slt i32 %bfsize, 8188
  %phi.bo = and i32 %bfsize, 8191
  %cond = select i1 %cmp, i32 %phi.bo, i32 8188
  %2 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des1, align 4
  %or1 = or i32 %4, %2
  store i32 %or1, ptr %des1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %or1, 4194304
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16368, i32 %bfsize)
  %cmp.i = icmp eq i32 %bfsize, 16368
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or.i15 = or i32 %or1, 64543
  %5 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i15, ptr %des1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool.not.i = icmp eq i32 %end, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des1, align 4
  %or3.i = or i32 %7, 8388608
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then1.i, %if.then
  %or3.i.sink = phi i32 [ %or3.i, %if.then1.i ], [ %or.i, %if.then ]
  %8 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or3.i.sink, ptr %des1, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not = icmp eq i32 %disable_rx_ic, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %des1, align 4
  %or5 = or i32 %10, 128
  store i32 %or5, ptr %des1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_init_tx_desc(ptr nocapture noundef %p, i32 noundef %mode, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %1, -4225
  %or.i = or i32 %and, 4096
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool.not.i = icmp eq i32 %end, 0
  %and.i = and i32 %1, -8321
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 8192
  %storemerge.i = or i32 %and.i, %masksel.i
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %storemerge.i, %if.else ], [ %or.i, %if.then ]
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %p, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enh_desc_prepare_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len, i1 noundef zeroext %csum_flag, i32 noundef %mode, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tot_pkt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %len, 8191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp.i = icmp sgt i32 %len, 4096
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !32

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = shl i32 %len, 16
  %shl.i = add i32 %sub.i, 268435456
  %and.i39 = and i32 %shl.i, 536805376
  %or.i40 = or i32 %and.i39, 4096
  br label %if.end

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and3.i = and i32 %len, 8191
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then
  %and3.sink.i.sink = phi i32 [ %and.i, %if.then ], [ %and3.i, %if.else.i ], [ %or.i40, %if.then.i ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %and3.sink.i.sink) #11
  %des14.i = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %des14.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des14.i, align 4
  %or5.i = or i32 %4, %2
  store i32 %or5.i, ptr %des14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_fs)
  %tobool.not = icmp eq i32 %is_fs, 0
  %5 = and i32 %1, -17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 268435456
  %tdes0.0 = or i32 %6, %masksel
  br i1 %csum_flag, label %if.then9, label %if.else11, !prof !33

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or10 = or i32 %tdes0.0, 12582912
  br label %if.end13

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and12 = and i32 %tdes0.0, -12582913
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9
  %tdes0.1 = phi i32 [ %or10, %if.then9 ], [ %and12, %if.else11 ]
  %tx_own.not = xor i1 %tx_own, true
  %brmerge = or i1 %tobool.not, %tx_own.not
  br i1 %brmerge, label %if.end13.if.end25_crit_edge, label %if.then24

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !34
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end13.if.end25_crit_edge
  %or16 = or i32 %tdes0.1, 536870912
  %spec.select = select i1 %ls, i32 %or16, i32 %tdes0.1
  %or20 = or i32 %spec.select, -2147483648
  %tdes0.3 = select i1 %tx_own, i32 %or20, i32 %spec.select
  %7 = tail call i32 @llvm.bswap.i32(i32 %tdes0.3)
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_tx_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_owner(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = lshr i32 %1, 7
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_release_tx_desc(ptr nocapture noundef %p, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  store i64 0, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %or.i = or i32 %3, 4096
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = and i32 %1, 8192
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  %and.i = and i32 %6, -8193
  %storemerge.i = or i32 %and.i, %4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %storemerge.i, %if.else ], [ %or.i, %if.then ]
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_tx_ic(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 64
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_ls(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = lshr i32 %1, 5
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh_desc_get_tx_status(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr nocapture noundef readonly %p, ptr noundef %ioaddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %and15 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end127_crit_edge, label %if.then23, !prof !33

if.end14.if.end127_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then23:                                        ; preds = %if.end14
  %and24 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end33_crit_edge, label %if.then32, !prof !33

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %tx_jabber = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 6
  %3 = ptrtoint ptr %tx_jabber to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_jabber, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_jabber, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then23.if.end33_crit_edge
  %and34 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end44_crit_edge, label %if.then42, !prof !33

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %tx_frame_flushed = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 7
  %5 = ptrtoint ptr %tx_frame_flushed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_frame_flushed, align 4
  %inc43 = add i32 %6, 1
  store i32 %inc43, ptr %tx_frame_flushed, align 4
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %ioaddr) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end33.if.end44_crit_edge
  %and45 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end56_crit_edge, label %if.then53, !prof !33

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %tx_losscarrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 2
  %7 = ptrtoint ptr %tx_losscarrier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_losscarrier, align 8
  %inc54 = add i32 %8, 1
  store i32 %inc54, ptr %tx_losscarrier, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %9 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_carrier_errors, align 4
  %inc55 = add i32 %10, 1
  store i32 %inc55, ptr %tx_carrier_errors, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end44.if.end56_crit_edge
  %and57 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end69_crit_edge, label %if.then65, !prof !33

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %tx_carrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 1
  %11 = ptrtoint ptr %tx_carrier to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_carrier, align 4
  %inc66 = add i32 %12, 1
  store i32 %inc66, ptr %tx_carrier, align 4
  %tx_carrier_errors67 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %13 = ptrtoint ptr %tx_carrier_errors67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_carrier_errors67, align 4
  %inc68 = add i32 %14, 1
  store i32 %inc68, ptr %tx_carrier_errors67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end56.if.end69_crit_edge
  %15 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %if.end69.if.end82_crit_edge, label %if.then80, !prof !33

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then80:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %and81 = lshr i32 %2, 3
  %shr = and i32 %and81, 15
  %collisions = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 9
  %16 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %collisions, align 4
  %add = add i32 %17, %shr
  store i32 %add, ptr %collisions, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end69.if.end82_crit_edge
  %and83 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end93_crit_edge, label %if.then91, !prof !33

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %tx_deferred = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 4
  %18 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_deferred, align 16
  %inc92 = add i32 %19, 1
  store i32 %inc92, ptr %tx_deferred, align 16
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end82.if.end93_crit_edge
  %and94 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end104_crit_edge, label %if.then102, !prof !33

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %ioaddr) #11
  %20 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x, align 128
  %inc103 = add i32 %21, 1
  store i32 %inc103, ptr %x, align 128
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end93.if.end104_crit_edge
  %and105 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end115_crit_edge, label %if.then113, !prof !33

if.end104.if.end115_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ip_header_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 9
  %22 = ptrtoint ptr %tx_ip_header_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_ip_header_error, align 4
  %inc114 = add i32 %23, 1
  store i32 %inc114, ptr %tx_ip_header_error, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end104.if.end115_crit_edge
  %and116 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end127_crit_edge, label %if.then124, !prof !33

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then124:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %tx_payload_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 8
  %24 = ptrtoint ptr %tx_payload_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_payload_error, align 32
  %inc125 = add i32 %25, 1
  store i32 %inc125, ptr %tx_payload_error, align 32
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %ioaddr) #11
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end115.if.end127_crit_edge, %if.end14.if.end127_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14.if.end127_crit_edge ], [ 2, %if.then124 ], [ 2, %if.end115.if.end127_crit_edge ]
  %and128 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end139_crit_edge, label %if.then136, !prof !33

if.end127.if.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then136:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %tx_deferred137 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 4
  %26 = ptrtoint ptr %tx_deferred137 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_deferred137, align 16
  %inc138 = add i32 %27, 1
  store i32 %inc138, ptr %tx_deferred137, align 16
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end127.if.end139_crit_edge
  %and140 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.cleanup_crit_edge, label %if.then142

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %tx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 5
  %28 = ptrtoint ptr %tx_vlan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_vlan, align 4
  %inc143 = add i32 %29, 1
  store i32 %inc143, ptr %tx_vlan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %if.end139.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then142 ], [ %ret.0, %if.end139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_len(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = and i32 %1, -14745600
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_rx_owner(ptr nocapture noundef %p, i32 noundef %disable_rx_ic) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_rx_frame_len(ptr nocapture noundef readonly %p, i32 noundef %rx_coe_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_coe_type)
  %cmp = icmp eq i32 %rx_coe_type, 1
  %spec.store.select.neg = select i1 %cmp, i32 -2, i32 0
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = and i32 %1, 65343
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 16
  %sub = add nsw i32 %shr, %spec.store.select.neg
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh_desc_get_rx_status(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then13, label %if.end14, !prof !32

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_length_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rx_length_errors, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %and15 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %switch.lookup, label %if.then23, !prof !33

if.then23:                                        ; preds = %if.end14
  %and24 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end36_crit_edge, label %if.then32, !prof !33

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %rx_desc = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 10
  %5 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_desc, align 8
  %inc33 = add i32 %6, 1
  store i32 %inc33, ptr %rx_desc, align 8
  %rx_length_errors34 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 10
  %7 = ptrtoint ptr %rx_length_errors34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_length_errors34, align 4
  %inc35 = add i32 %8, 1
  store i32 %inc35, ptr %rx_length_errors34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then23.if.end36_crit_edge
  %and37 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %if.then45, !prof !33

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %rx_gmac_overflow = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 20
  %9 = ptrtoint ptr %rx_gmac_overflow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_gmac_overflow, align 16
  %inc46 = add i32 %10, 1
  store i32 %inc46, ptr %rx_gmac_overflow, align 16
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end36.if.end47_crit_edge
  %and48 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %do.end, !prof !33

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %if.end57

if.end57:                                         ; preds = %do.end, %if.end47.if.end57_crit_edge
  %and58 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end68_crit_edge, label %if.then66, !prof !33

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %collisions = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 9
  %11 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %collisions, align 4
  %inc67 = add i32 %12, 1
  store i32 %inc67, ptr %collisions, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end57.if.end68_crit_edge
  %and69 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end79_crit_edge, label %if.then77, !prof !33

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %rx_watchdog = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 21
  %13 = ptrtoint ptr %rx_watchdog to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_watchdog, align 4
  %inc78 = add i32 %14, 1
  store i32 %inc78, ptr %rx_watchdog, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end68.if.end79_crit_edge
  %and80 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end90_crit_edge, label %if.then88, !prof !33

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %rx_mii = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 18
  %15 = ptrtoint ptr %rx_mii to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_mii, align 8
  %inc89 = add i32 %16, 1
  store i32 %inc89, ptr %rx_mii, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end79.if.end90_crit_edge
  %and91 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end131_crit_edge, label %if.then99, !prof !33

if.end90.if.end131_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %rx_crc_errors = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 15
  %17 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_crc_errors, align 4
  %inc100 = add i32 %18, 1
  store i32 %inc100, ptr %rx_crc_errors, align 4
  %rx_crc_errors101 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 12
  %19 = ptrtoint ptr %rx_crc_errors101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_crc_errors101, align 4
  %inc102 = add i32 %20, 1
  store i32 %inc102, ptr %rx_crc_errors101, align 4
  br label %if.end131

switch.lookup:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %21 = lshr i32 %2, 6
  %shl1.i = and i32 %21, 2
  %and124 = and i32 %2, 1
  %or.i = or i32 %shl1.i, %and124
  %22 = lshr i32 %2, 3
  %shl.i = and i32 %22, 4
  %or2.i = or i32 %or.i, %shl.i
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.enh_desc_get_rx_status, i32 0, i32 %or2.i
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end131

if.end131:                                        ; preds = %switch.lookup, %if.then99, %if.end90.if.end131_crit_edge
  %ret.1 = phi i32 [ 1, %if.end90.if.end131_crit_edge ], [ 1, %if.then99 ], [ %switch.load, %switch.lookup ]
  %and132 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.end142_crit_edge, label %if.then140, !prof !33

if.end131.if.end142_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then140:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %dribbling_bit = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 16
  %24 = ptrtoint ptr %dribbling_bit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dribbling_bit, align 64
  %inc141 = add i32 %25, 1
  store i32 %inc141, ptr %dribbling_bit, align 64
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end131.if.end142_crit_edge
  %and143 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end153_crit_edge, label %if.then151, !prof !33

if.end142.if.end153_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then151:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  %sa_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 23
  %26 = ptrtoint ptr %sa_rx_filter_fail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sa_rx_filter_fail, align 4
  %inc152 = add i32 %27, 1
  store i32 %inc152, ptr %sa_rx_filter_fail, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end142.if.end153_crit_edge
  %ret.2 = phi i32 [ 1, %if.then151 ], [ %ret.1, %if.end142.if.end153_crit_edge ]
  %and154 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end153.if.end164_crit_edge, label %if.then162, !prof !33

if.end153.if.end164_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then162:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  %da_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 22
  %28 = ptrtoint ptr %da_rx_filter_fail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %da_rx_filter_fail, align 8
  %inc163 = add i32 %29, 1
  store i32 %inc163, ptr %da_rx_filter_fail, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.end153.if.end164_crit_edge
  %ret.3 = phi i32 [ 1, %if.then162 ], [ %ret.2, %if.end153.if.end164_crit_edge ]
  %and165 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end175_crit_edge, label %if.then173, !prof !33

if.end164.if.end175_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.then173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %rx_length = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 17
  %30 = ptrtoint ptr %rx_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_length, align 4
  %inc174 = add i32 %31, 1
  store i32 %inc174, ptr %rx_length, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %if.end164.if.end175_crit_edge
  %ret.4 = phi i32 [ 1, %if.then173 ], [ %ret.3, %if.end164.if.end175_crit_edge ]
  %and176 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end175.cleanup_crit_edge, label %if.then178

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  %rx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 26
  %32 = ptrtoint ptr %rx_vlan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_vlan, align 8
  %inc179 = add i32 %33, 1
  store i32 %inc179, ptr %rx_vlan, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %if.end175.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then13 ], [ 8, %entry.cleanup_crit_edge ], [ %ret.4, %if.then178 ], [ %ret.4, %if.end175.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_ext_status(ptr nocapture noundef readnone %data, ptr noundef %x, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %des4 = getelementptr inbounds %struct.dma_extended_desc, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %des4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %des4, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end126_crit_edge, label %if.then, !prof !33

entry.if.end126_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then:                                          ; preds = %entry
  %and3 = lshr i32 %4, 8
  %shr = and i32 %and3, 15
  %and4 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ip_hdr_err = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 56
  %6 = ptrtoint ptr %ip_hdr_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_hdr_err, align 32
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ip_hdr_err, align 32
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %and7 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ip_payload_err = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 57
  %8 = ptrtoint ptr %ip_payload_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_payload_err, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %ip_payload_err, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %and12 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %ip_csum_bypassed = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 58
  %10 = ptrtoint ptr %ip_csum_bypassed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip_csum_bypassed, align 8
  %inc15 = add i32 %11, 1
  store i32 %inc15, ptr %ip_csum_bypassed, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %and17 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %ipv4_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 59
  %12 = ptrtoint ptr %ipv4_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ipv4_pkt_rcvd, align 4
  %inc20 = add i32 %13, 1
  store i32 %inc20, ptr %ipv4_pkt_rcvd, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %and22 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %ipv6_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 60
  %14 = ptrtoint ptr %ipv6_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ipv6_pkt_rcvd, align 16
  %inc25 = add i32 %15, 1
  store i32 %inc25, ptr %ipv6_pkt_rcvd, align 16
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %16 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end26.if.end78_crit_edge [
    i32 0, label %if.then27
    i32 1, label %if.then30
    i32 2, label %if.then34
    i32 3, label %if.then38
    i32 4, label %if.then42
    i32 5, label %if.then46
    i32 6, label %if.then50
    i32 7, label %if.then54
    i32 8, label %if.then58
    i32 9, label %if.then62
    i32 15, label %if.then66
  ]

if.end26.if.end78_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then27:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %no_ptp_rx_msg_type_ext = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 61
  %17 = ptrtoint ptr %no_ptp_rx_msg_type_ext to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %no_ptp_rx_msg_type_ext, align 4
  %inc28 = add i32 %18, 1
  store i32 %inc28, ptr %no_ptp_rx_msg_type_ext, align 4
  br label %if.end78

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_sync = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 62
  %19 = ptrtoint ptr %ptp_rx_msg_type_sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptp_rx_msg_type_sync, align 8
  %inc31 = add i32 %20, 1
  store i32 %inc31, ptr %ptp_rx_msg_type_sync, align 8
  br label %if.end78

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 63
  %21 = ptrtoint ptr %ptp_rx_msg_type_follow_up to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptp_rx_msg_type_follow_up, align 4
  %inc35 = add i32 %22, 1
  store i32 %inc35, ptr %ptp_rx_msg_type_follow_up, align 4
  br label %if.end78

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_delay_req = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 64
  %23 = ptrtoint ptr %ptp_rx_msg_type_delay_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptp_rx_msg_type_delay_req, align 128
  %inc39 = add i32 %24, 1
  store i32 %inc39, ptr %ptp_rx_msg_type_delay_req, align 128
  br label %if.end78

if.then42:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_delay_resp = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 65
  %25 = ptrtoint ptr %ptp_rx_msg_type_delay_resp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ptp_rx_msg_type_delay_resp, align 4
  %inc43 = add i32 %26, 1
  store i32 %inc43, ptr %ptp_rx_msg_type_delay_resp, align 4
  br label %if.end78

if.then46:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_pdelay_req = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 66
  %27 = ptrtoint ptr %ptp_rx_msg_type_pdelay_req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ptp_rx_msg_type_pdelay_req, align 8
  %inc47 = add i32 %28, 1
  store i32 %inc47, ptr %ptp_rx_msg_type_pdelay_req, align 8
  br label %if.end78

if.then50:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_pdelay_resp = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 67
  %29 = ptrtoint ptr %ptp_rx_msg_type_pdelay_resp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ptp_rx_msg_type_pdelay_resp, align 4
  %inc51 = add i32 %30, 1
  store i32 %inc51, ptr %ptp_rx_msg_type_pdelay_resp, align 4
  br label %if.end78

if.then54:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_pdelay_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 68
  %31 = ptrtoint ptr %ptp_rx_msg_type_pdelay_follow_up to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptp_rx_msg_type_pdelay_follow_up, align 16
  %inc55 = add i32 %32, 1
  store i32 %inc55, ptr %ptp_rx_msg_type_pdelay_follow_up, align 16
  br label %if.end78

if.then58:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_announce = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 69
  %33 = ptrtoint ptr %ptp_rx_msg_type_announce to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ptp_rx_msg_type_announce, align 4
  %inc59 = add i32 %34, 1
  store i32 %inc59, ptr %ptp_rx_msg_type_announce, align 4
  br label %if.end78

if.then62:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_type_management = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 70
  %35 = ptrtoint ptr %ptp_rx_msg_type_management to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptp_rx_msg_type_management, align 8
  %inc63 = add i32 %36, 1
  store i32 %inc63, ptr %ptp_rx_msg_type_management, align 8
  br label %if.end78

if.then66:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx_msg_pkt_reserved_type = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 71
  %37 = ptrtoint ptr %ptp_rx_msg_pkt_reserved_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptp_rx_msg_pkt_reserved_type, align 4
  %inc67 = add i32 %38, 1
  store i32 %inc67, ptr %ptp_rx_msg_pkt_reserved_type, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then66, %if.then62, %if.then58, %if.then54, %if.then50, %if.then46, %if.then42, %if.then38, %if.then34, %if.then30, %if.then27, %if.end26.if.end78_crit_edge
  %and79 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end83_crit_edge, label %if.then81

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_frame_type = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 72
  %39 = ptrtoint ptr %ptp_frame_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ptp_frame_type, align 32
  %inc82 = add i32 %40, 1
  store i32 %inc82, ptr %ptp_frame_type, align 32
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end78.if.end83_crit_edge
  %and84 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end88_crit_edge, label %if.then86

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_ver = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 73
  %41 = ptrtoint ptr %ptp_ver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ptp_ver, align 4
  %inc87 = add i32 %42, 1
  store i32 %inc87, ptr %ptp_ver, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end83.if.end88_crit_edge
  %and89 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end93_crit_edge, label %if.then91

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %timestamp_dropped = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 74
  %43 = ptrtoint ptr %timestamp_dropped to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timestamp_dropped, align 8
  %inc92 = add i32 %44, 1
  store i32 %inc92, ptr %timestamp_dropped, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88.if.end93_crit_edge
  %and94 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %av_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 75
  %45 = ptrtoint ptr %av_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %av_pkt_rcvd, align 4
  %inc97 = add i32 %46, 1
  store i32 %inc97, ptr %av_pkt_rcvd, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  %and99 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end103_crit_edge, label %if.then101

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %av_tagged_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 76
  %47 = ptrtoint ptr %av_tagged_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %av_tagged_pkt_rcvd, align 16
  %inc102 = add i32 %48, 1
  store i32 %inc102, ptr %av_tagged_pkt_rcvd, align 16
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98.if.end103_crit_edge
  %49 = and i32 %4, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool106.not = icmp eq i32 %49, 0
  br i1 %tobool106.not, label %if.end103.if.end109_crit_edge, label %if.then107

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tag_priority_val = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 77
  %50 = ptrtoint ptr %vlan_tag_priority_val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vlan_tag_priority_val, align 4
  %inc108 = add i32 %51, 1
  store i32 %inc108, ptr %vlan_tag_priority_val, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end103.if.end109_crit_edge
  %and110 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end114_crit_edge, label %if.then112

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %l3_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 78
  %52 = ptrtoint ptr %l3_filter_match to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %l3_filter_match, align 8
  %inc113 = add i32 %53, 1
  store i32 %inc113, ptr %l3_filter_match, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109.if.end114_crit_edge
  %and115 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %if.then117

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  %l4_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 79
  %54 = ptrtoint ptr %l4_filter_match to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %l4_filter_match, align 4
  %inc118 = add i32 %55, 1
  store i32 %inc118, ptr %l4_filter_match, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114.if.end119_crit_edge
  %56 = and i32 %4, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool122.not = icmp eq i32 %56, 0
  br i1 %tobool122.not, label %if.end119.if.end126_crit_edge, label %if.then123

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %l3_l4_filter_no_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 80
  %57 = ptrtoint ptr %l3_l4_filter_no_match to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %l3_l4_filter_no_match, align 64
  %inc124 = add i32 %58, 1
  store i32 %inc124, ptr %l3_l4_filter_no_match, align 64
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end119.if.end126_crit_edge, %entry.if.end126_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_enable_tx_timestamp(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_timestamp_status(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = lshr i32 %1, 9
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_timestamp(ptr nocapture noundef readonly %desc, i32 noundef %ats, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ats)
  %tobool.not = icmp eq i32 %ats, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %des6 = getelementptr inbounds %struct.dma_extended_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %des6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des6, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %des7 = getelementptr inbounds %struct.dma_extended_desc, ptr %desc, i32 0, i32 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %des3.sink = phi ptr [ %des3, %if.else ], [ %des7, %if.then ]
  %conv3.sink.in = phi i32 [ %5, %if.else ], [ %2, %if.then ]
  %conv3.sink = zext i32 %conv3.sink.in to i64
  %6 = ptrtoint ptr %des3.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des3.sink, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv4 = zext i32 %8 to i64
  %mul5 = mul nuw nsw i64 %conv4, 1000000000
  %add6 = add nuw nsw i64 %mul5, %conv3.sink
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add6, ptr %ts, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_rx_timestamp_status(ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %next_desc, i32 noundef %ats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ats)
  %tobool.not = icmp eq i32 %ats, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  %2 = lshr i32 %1, 31
  br label %return

if.else:                                          ; preds = %entry
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.else.if.else4_crit_edge

if.else.if.else4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  %5 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %des3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.else4_crit_edge

land.lhs.true.if.else4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else4:                                         ; preds = %land.lhs.true.if.else4_crit_edge, %if.else.if.else4_crit_edge
  br label %return

return:                                           ; preds = %if.else4, %land.lhs.true.return_crit_edge, %if.then
  %retval.1 = phi i32 [ %2, %if.then ], [ 1, %if.else4 ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enh_desc_display_ring(ptr nocapture noundef readonly %head, i32 noundef %size, i1 noundef zeroext %rx, i32 noundef %dma_rx_phy, i32 noundef %desc_size) #2 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #11
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_addr, align 4, !annotation !35
  %cond = select i1 %rx, ptr @.str.5, ptr @.str.6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp20.not = icmp eq i32 %size, 0
  br i1 %cmp20.not, label %entry.do.end10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ep.022 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %head, %entry.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.021, 5
  %add = add i32 %mul, %dma_rx_phy
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %dma_addr, align 4
  %2 = ptrtoint ptr %ep.022 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ep.022, align 8
  %conv = trunc i64 %3 to i32
  %shr = lshr i64 %3, 32
  %conv5 = trunc i64 %shr to i32
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %ep.022, i32 0, i32 2
  %4 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %des2, align 4
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %ep.022, i32 0, i32 3
  %6 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des3, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.021, ptr noundef nonnull %dma_addr, i32 noundef %conv, i32 noundef %conv5, i32 noundef %5, i32 noundef %7) #14
  %incdec.ptr = getelementptr %struct.dma_extended_desc, ptr %ep.022, i32 1
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.do.end10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end10:                                         ; preds = %for.body.do.end10_crit_edge, %entry.do.end10_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_addr(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %addr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @enh_desc_set_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @enh_desc_clear(ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_flush_tx_fifo(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @enh_desc_ops, !1, !"enh_desc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c", i32 458, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c", i32 208, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @enh_desc_get_rx_status._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @enh_desc_get_rx_status._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c", i32 427, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @enh_desc_display_ring._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @enh_desc_display_ring._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c", i32 434, i32 3}
!17 = !{ptr @enh_desc_display_ring._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @enh_desc_display_ring._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/stmicro/stmmac/enh_desc.c", i32 440, i32 2}
!21 = !{ptr @enh_desc_display_ring._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @enh_desc_display_ring._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2156654049}
!35 = !{!"auto-init"}

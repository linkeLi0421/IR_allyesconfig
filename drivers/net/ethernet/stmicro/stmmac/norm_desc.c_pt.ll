; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/norm_desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/norm_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@ndesc_ops = dso_local constant { %struct.stmmac_desc_ops, [36 x i8] } { %struct.stmmac_desc_ops { ptr @ndesc_init_rx_desc, ptr @ndesc_init_tx_desc, ptr @ndesc_prepare_tx_desc, ptr null, ptr @ndesc_set_tx_owner, ptr @ndesc_get_tx_owner, ptr @ndesc_release_tx_desc, ptr @ndesc_set_tx_ic, ptr @ndesc_get_tx_ls, ptr @ndesc_get_tx_status, ptr @ndesc_get_tx_len, ptr @ndesc_set_rx_owner, ptr @ndesc_get_rx_frame_len, ptr @ndesc_get_rx_status, ptr null, ptr @ndesc_enable_tx_timestamp, ptr @ndesc_get_tx_timestamp_status, ptr @ndesc_get_timestamp, ptr @ndesc_get_rx_timestamp_status, ptr @ndesc_display_ring, ptr null, ptr @ndesc_get_addr, ptr @ndesc_set_addr, ptr @ndesc_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ndesc_display_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s descriptor ring:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ndesc_display_ring\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/stmicro/stmmac/norm_desc.c\00", [48 x i8] zeroinitializer }, align 32
@ndesc_display_ring._entry_ptr = internal global ptr @ndesc_display_ring._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@ndesc_display_ring._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\00", [61 x i8] zeroinitializer }, align 32
@ndesc_display_ring._entry_ptr.7 = internal global ptr @ndesc_display_ring._entry.5, section ".printk_index", align 4
@ndesc_display_ring._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@ndesc_display_ring._entry_ptr.10 = internal global ptr @ndesc_display_ring._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"ndesc_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 310, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 279, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 286, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/norm_desc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 292, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @ndesc_display_ring._entry, ptr @ndesc_display_ring._entry.5, ptr @ndesc_display_ring._entry.8, ptr @ndesc_display_ring._entry_ptr, ptr @ndesc_display_ring._entry_ptr.10, ptr @ndesc_display_ring._entry_ptr.7, ptr @ndesc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndesc_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndesc_display_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndesc_display_ring._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndesc_display_ring._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_init_rx_desc(ptr nocapture noundef %p, i32 noundef %disable_rx_ic, i32 noundef %mode, i32 noundef %end, i32 noundef %bfsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %bfsize)
  %cmp = icmp slt i32 %bfsize, 2047
  %phi.bo = and i32 %bfsize, 2047
  %cond = select i1 %cmp, i32 %phi.bo, i32 2047
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
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %or1, 1
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %bfsize)
  %cmp.i = icmp sgt i32 %bfsize, 2047
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %bfsize, -2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add.i)
  %cmp1.i = icmp ult i32 %add.i, 2047
  %phi.bo.i = shl i32 %add.i, 11
  %phi.bo10.i = and i32 %phi.bo.i, 4192256
  %cond.i = select i1 %cmp1.i, i32 %phi.bo10.i, i32 4192256
  %5 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #10
  %or.i16 = or i32 %or1, %5
  %6 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i16, ptr %des1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool.not.i = icmp eq i32 %end, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %des1, align 4
  %or4.i = or i32 %8, 2
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then2.i, %if.then
  %or4.i.sink = phi i32 [ %or4.i, %if.then2.i ], [ %or.i, %if.then ]
  %9 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or4.i.sink, ptr %des1, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not = icmp eq i32 %disable_rx_ic, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %des1, align 4
  %or5 = or i32 %11, 128
  store i32 %or5, ptr %des1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_init_tx_desc(ptr nocapture noundef %p, i32 noundef %mode, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %and = and i32 %1, -129
  store i32 %and, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %des1.i = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %des1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %des1.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %des1.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool.not.i = icmp eq i32 %end, 0
  %des11.i = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %des11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %des11.i, align 4
  %and.i = and i32 %5, -3
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 2
  %and.sink.i = or i32 %and.i, %masksel.i
  store i32 %and.sink.i, ptr %des11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_prepare_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len, i1 noundef zeroext %csum_flag, i32 noundef %mode, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tot_pkt_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_fs)
  %tobool.not = icmp eq i32 %is_fs, 0
  %2 = and i32 %1, -33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %tobool.not, i32 0, i32 536870912
  %tdes1.0 = or i32 %3, %masksel
  br i1 %csum_flag, label %if.then6, label %if.else8, !prof !27

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or7 = or i32 %tdes1.0, 402653184
  br label %if.end10

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and9 = and i32 %tdes1.0, -402653185
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %tdes1.1 = phi i32 [ %or7, %if.then6 ], [ %and9, %if.else8 ]
  %or13 = or i32 %tdes1.1, 1073741824
  %spec.select = select i1 %ls, i32 %or13, i32 %tdes1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %len, 2047
  %4 = or i32 %spec.select, %and.i
  br label %if.end18

if.else17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %len)
  %cmp.i = icmp sgt i32 %len, 2048
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !28

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = shl i32 %len, 11
  %shl.i = add i32 %sub.i, 2048
  %and.i33 = and i32 %shl.i, 4192256
  %or.i34 = or i32 %and.i33, 2047
  br label %norm_set_tx_desc_len_on_ring.exit

if.else.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i32 %len, 2047
  br label %norm_set_tx_desc_len_on_ring.exit

norm_set_tx_desc_len_on_ring.exit:                ; preds = %if.else.i, %if.then.i
  %and3.sink.i = phi i32 [ %and3.i, %if.else.i ], [ %or.i34, %if.then.i ]
  %5 = or i32 %and3.sink.i, %spec.select
  br label %if.end18

if.end18:                                         ; preds = %norm_set_tx_desc_len_on_ring.exit, %if.then16
  %.sink = phi i32 [ %5, %norm_set_tx_desc_len_on_ring.exit ], [ %4, %if.then16 ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %7 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %des1, align 4
  br i1 %tx_own, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 4
  %or21 = or i32 %9, 128
  store i32 %or21, ptr %p, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_tx_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_owner(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = lshr i32 %1, 7
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_release_tx_desc(ptr nocapture noundef %p, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des1, align 4
  %or.i = or i32 %4, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = and i32 %1, 2
  %6 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des1, align 4
  %and.i = and i32 %7, -3
  %and.sink.i = or i32 %and.i, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %and.sink.i, %if.else ], [ %or.i, %if.then ]
  %8 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %des1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_tx_ic(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %des1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_ls(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = lshr i32 %1, 6
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_status(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %ioaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des1, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %and15 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end76_crit_edge, label %if.then23, !prof !27

if.end14.if.end76_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then23:                                        ; preds = %if.end14
  %and24 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end34_crit_edge, label %if.then32, !prof !27

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x, align 128
  %inc = add i32 %7, 1
  store i32 %inc, ptr %x, align 128
  %tx_fifo_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 18
  %8 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fifo_errors, align 4
  %inc33 = add i32 %9, 1
  store i32 %inc33, ptr %tx_fifo_errors, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then23.if.end34_crit_edge
  %and35 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end46_crit_edge, label %if.then43, !prof !27

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %tx_carrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 1
  %10 = ptrtoint ptr %tx_carrier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_carrier, align 4
  %inc44 = add i32 %11, 1
  store i32 %inc44, ptr %tx_carrier, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %12 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_carrier_errors, align 4
  %inc45 = add i32 %13, 1
  store i32 %inc45, ptr %tx_carrier_errors, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end34.if.end46_crit_edge
  %and47 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end59_crit_edge, label %if.then55, !prof !27

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %tx_losscarrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 2
  %14 = ptrtoint ptr %tx_losscarrier to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_losscarrier, align 8
  %inc56 = add i32 %15, 1
  store i32 %inc56, ptr %tx_losscarrier, align 8
  %tx_carrier_errors57 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %16 = ptrtoint ptr %tx_carrier_errors57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_carrier_errors57, align 4
  %inc58 = add i32 %17, 1
  store i32 %inc58, ptr %tx_carrier_errors57, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end46.if.end59_crit_edge
  %18 = and i32 %2, 772
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %if.end59.if.end76_crit_edge, label %if.then72, !prof !29

if.end59.if.end76_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %and73 = lshr i32 %2, 3
  %shr = and i32 %and73, 15
  %collisions74 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 9
  %19 = ptrtoint ptr %collisions74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %collisions74, align 4
  %add = add i32 %20, %shr
  store i32 %add, ptr %collisions74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end59.if.end76_crit_edge, %if.end14.if.end76_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14.if.end76_crit_edge ], [ 2, %if.then72 ], [ 2, %if.end59.if.end76_crit_edge ]
  %and77 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end81_crit_edge, label %if.then79

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %tx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 5
  %21 = ptrtoint ptr %tx_vlan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_vlan, align 4
  %inc80 = add i32 %22, 1
  store i32 %inc80, ptr %tx_vlan, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76.if.end81_crit_edge
  %and82 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %if.then90, !prof !27

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %tx_deferred = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 4
  %23 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_deferred, align 16
  %inc91 = add i32 %24, 1
  store i32 %inc91, ptr %tx_deferred, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end81.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then90 ], [ %ret.0, %if.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_len(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = and i32 %1, -16318464
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_rx_owner(ptr nocapture noundef %p, i32 noundef %disable_rx_ic) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_frame_len(ptr nocapture noundef readonly %p, i32 noundef %rx_coe_type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_status(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then13, label %if.end14, !prof !28

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 10
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  %and15 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end93_crit_edge, label %if.then23, !prof !27

if.end14.if.end93_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then23:                                        ; preds = %if.end14
  %and24 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end34_crit_edge, label %if.then32, !prof !27

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %rx_desc = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 10
  %3 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_desc, align 8
  %inc33 = add i32 %4, 1
  store i32 %inc33, ptr %rx_desc, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then23.if.end34_crit_edge
  %and35 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end45_crit_edge, label %if.then43, !prof !27

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %sa_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 11
  %5 = ptrtoint ptr %sa_filter_fail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sa_filter_fail, align 4
  %inc44 = add i32 %6, 1
  store i32 %inc44, ptr %sa_filter_fail, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end34.if.end45_crit_edge
  %and46 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end56_crit_edge, label %if.then54, !prof !27

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %overflow_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 12
  %7 = ptrtoint ptr %overflow_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %overflow_error, align 16
  %inc55 = add i32 %8, 1
  store i32 %inc55, ptr %overflow_error, align 16
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end45.if.end56_crit_edge
  %and57 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end67_crit_edge, label %if.then65, !prof !27

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %ipc_csum_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 13
  %9 = ptrtoint ptr %ipc_csum_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ipc_csum_error, align 4
  %inc66 = add i32 %10, 1
  store i32 %inc66, ptr %ipc_csum_error, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end56.if.end67_crit_edge
  %and68 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end79_crit_edge, label %if.then76, !prof !27

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %rx_collision = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 14
  %11 = ptrtoint ptr %rx_collision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_collision, align 8
  %inc77 = add i32 %12, 1
  store i32 %inc77, ptr %rx_collision, align 8
  %collisions = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 9
  %13 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %collisions, align 4
  %inc78 = add i32 %14, 1
  store i32 %inc78, ptr %collisions, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end67.if.end79_crit_edge
  %and80 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end93_crit_edge, label %if.then88, !prof !27

if.end79.if.end93_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %rx_crc_errors = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 15
  %15 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_crc_errors, align 4
  %inc89 = add i32 %16, 1
  store i32 %inc89, ptr %rx_crc_errors, align 4
  %rx_crc_errors90 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 12
  %17 = ptrtoint ptr %rx_crc_errors90 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_crc_errors90, align 4
  %inc91 = add i32 %18, 1
  store i32 %inc91, ptr %rx_crc_errors90, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end79.if.end93_crit_edge, %if.end14.if.end93_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14.if.end93_crit_edge ], [ 1, %if.then88 ], [ 1, %if.end79.if.end93_crit_edge ]
  %and94 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end104_crit_edge, label %if.then102, !prof !27

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %dribbling_bit = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 16
  %19 = ptrtoint ptr %dribbling_bit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dribbling_bit, align 64
  %inc103 = add i32 %20, 1
  store i32 %inc103, ptr %dribbling_bit, align 64
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end93.if.end104_crit_edge
  %and105 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end115_crit_edge, label %if.then113, !prof !27

if.end104.if.end115_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then113:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %rx_length = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 17
  %21 = ptrtoint ptr %rx_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_length, align 4
  %inc114 = add i32 %22, 1
  store i32 %inc114, ptr %rx_length, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end104.if.end115_crit_edge
  %ret.1 = phi i32 [ 1, %if.then113 ], [ %ret.0, %if.end104.if.end115_crit_edge ]
  %and116 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end126_crit_edge, label %if.then124, !prof !27

if.end115.if.end126_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then124:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %rx_mii = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 18
  %23 = ptrtoint ptr %rx_mii to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_mii, align 8
  %inc125 = add i32 %24, 1
  store i32 %inc125, ptr %rx_mii, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end115.if.end126_crit_edge
  %ret.2 = phi i32 [ 1, %if.then124 ], [ %ret.1, %if.end115.if.end126_crit_edge ]
  %and127 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.cleanup_crit_edge, label %if.then129

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tag = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then129, %if.then13
  %vlan_tag.sink157 = phi ptr [ %vlan_tag, %if.then129 ], [ %rx_length_errors, %if.then13 ]
  %retval.0.ph = phi i32 [ %ret.2, %if.then129 ], [ 1, %if.then13 ]
  %25 = ptrtoint ptr %vlan_tag.sink157 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vlan_tag.sink157, align 4
  %inc130 = add i32 %26, 1
  store i32 %inc130, ptr %vlan_tag.sink157, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end126.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %entry.cleanup_crit_edge ], [ %ret.2, %if.end126.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_enable_tx_timestamp(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %or = or i32 %1, 16384
  store i32 %or, ptr %des1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_timestamp_status(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = lshr i32 %1, 9
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_get_timestamp(ptr nocapture noundef readonly %desc, i32 noundef %ats, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  %3 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv1 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv1, 1000000000
  %add = add nuw nsw i64 %mul, %conv
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %ts, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_timestamp_status(ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %next_desc, i32 noundef %ats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  %2 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %des3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndesc_display_ring(ptr nocapture noundef readonly %head, i32 noundef %size, i1 noundef zeroext %rx, i32 noundef %dma_rx_phy, i32 noundef %desc_size) #4 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #10
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_addr, align 4, !annotation !30
  %cond = select i1 %rx, ptr @.str.3, ptr @.str.4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp19.not = icmp eq i32 %size, 0
  br i1 %cmp19.not, label %entry.do.end9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.021 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %head, %entry.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.020, 4
  %add = add i32 %mul, %dma_rx_phy
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %dma_addr, align 4
  %2 = ptrtoint ptr %p.021 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %p.021, align 8
  %conv = trunc i64 %3 to i32
  %shr = lshr i64 %3, 32
  %conv5 = trunc i64 %shr to i32
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p.021, i32 0, i32 2
  %4 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %des2, align 4
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p.021, i32 0, i32 3
  %6 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des3, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.020, ptr noundef nonnull %dma_addr, i32 noundef %conv, i32 noundef %conv5, i32 noundef %5, i32 noundef %7) #13
  %incdec.ptr = getelementptr %struct.dma_desc, ptr %p.021, i32 1
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.do.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end9:                                          ; preds = %for.body.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ndesc_get_addr(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @ndesc_set_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ndesc_clear(ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @ndesc_ops, !1, !"ndesc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/norm_desc.c", i32 310, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/norm_desc.c", i32 279, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ndesc_display_ring._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ndesc_display_ring._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/norm_desc.c", i32 286, i32 3}
!12 = !{ptr @ndesc_display_ring._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ndesc_display_ring._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/norm_desc.c", i32 292, i32 2}
!16 = !{ptr @ndesc_display_ring._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ndesc_display_ring._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"branch_weights", i32 -294967296, i32 6003000}
!30 = !{!"auto-init"}

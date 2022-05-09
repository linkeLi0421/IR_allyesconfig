; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.fm10k_get_bus_info_generic = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.fm10k_get_bus_info_generic.1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500, i32 5000, i32 8000], [20 x i8] zeroinitializer }, align 32
@switch.table.fm10k_get_bus_info_generic.2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500, i32 5000, i32 8000], [20 x i8] zeroinitializer }, align 32
@switch.table.fm10k_get_bus_info_generic.3 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 64]
@___asan_gen_ = private constant [51 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_common.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [40 x i8] c"switch.table.fm10k_get_bus_info_generic\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [42 x i8] c"switch.table.fm10k_get_bus_info_generic.1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [42 x i8] c"switch.table.fm10k_get_bus_info_generic.2\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [42 x i8] c"switch.table.fm10k_get_bus_info_generic.3\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table.fm10k_get_bus_info_generic, ptr @switch.table.fm10k_get_bus_info_generic.1, ptr @switch.table.fm10k_get_bus_info_generic.2, ptr @switch.table.fm10k_get_bus_info_generic.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_get_bus_info_generic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_get_bus_info_generic.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_get_bus_info_generic.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_get_bus_info_generic.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_get_bus_info_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 124) #5
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 1008
  %0 = add nsw i32 %and, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %0)
  %1 = icmp ult i32 %0, 128
  br i1 %1, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = lshr exact i32 %0, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.fm10k_get_bus_info_generic, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %width11 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %width11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %width11, align 4
  %and13 = and i32 %conv, 15
  %switch.tableidx = add nsw i32 %and13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup126, label %sw.epilog.sw.epilog25_crit_edge

sw.epilog.sw.epilog25_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

switch.lookup126:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep127 = getelementptr inbounds [3 x i32], ptr @switch.table.fm10k_get_bus_info_generic.1, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %switch.lookup126, %sw.epilog.sw.epilog25_crit_edge
  %.sink121 = phi i32 [ %switch.load128, %switch.lookup126 ], [ 0, %sw.epilog.sw.epilog25_crit_edge ]
  %bus_caps23 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %bus_caps23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink121, ptr %bus_caps23, align 4
  %call26 = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 116) #5
  %8 = and i16 %call26, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %9 = icmp ult i16 %8, 3
  %narrow = add nuw nsw i16 %8, 1
  %narrow137 = select i1 %9, i16 %narrow, i16 0
  %.sink122 = zext i16 %narrow137 to i32
  %payload39 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %payload39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink122, ptr %payload39, align 4
  %call41 = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 130) #5
  %conv42 = zext i16 %call41 to i32
  %and43 = and i32 %conv42, 1008
  %11 = add nsw i32 %and43, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %12 = icmp ult i32 %11, 128
  br i1 %12, label %switch.lookup134, label %sw.epilog25.sw.epilog58_crit_edge

sw.epilog25.sw.epilog58_crit_edge:                ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog58

switch.lookup134:                                 ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  %13 = lshr exact i32 %11, 4
  %switch.gep135 = getelementptr inbounds [8 x i32], ptr @switch.table.fm10k_get_bus_info_generic.3, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep135 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load136 = load i32, ptr %switch.gep135, align 4
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %switch.lookup134, %sw.epilog25.sw.epilog58_crit_edge
  %.sink123 = phi i32 [ %switch.load136, %switch.lookup134 ], [ 0, %sw.epilog25.sw.epilog58_crit_edge ]
  %width57 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %width57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink123, ptr %width57, align 4
  %and60 = and i32 %conv42, 15
  %switch.tableidx131 = add nsw i32 %and60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx131)
  %16 = icmp ult i32 %switch.tableidx131, 3
  br i1 %16, label %switch.lookup130, label %sw.epilog58.sw.epilog73_crit_edge

sw.epilog58.sw.epilog73_crit_edge:                ; preds = %sw.epilog58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog73

switch.lookup130:                                 ; preds = %sw.epilog58
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep132 = getelementptr inbounds [3 x i32], ptr @switch.table.fm10k_get_bus_info_generic.2, i32 0, i32 %switch.tableidx131
  %17 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %switch.lookup130, %sw.epilog58.sw.epilog73_crit_edge
  %.sink124 = phi i32 [ %switch.load133, %switch.lookup130 ], [ 0, %sw.epilog58.sw.epilog73_crit_edge ]
  %bus71 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 3
  %18 = ptrtoint ptr %bus71 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink124, ptr %bus71, align 8
  %call74 = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 120) #5
  %19 = trunc i16 %call74 to i8
  %trunc = and i8 %19, -32
  %20 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default86 [
    i8 0, label %sw.epilog73.sw.epilog89_crit_edge
    i8 32, label %sw.bb80
    i8 64, label %sw.bb83
  ]

sw.epilog73.sw.epilog89_crit_edge:                ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog89

sw.bb80:                                          ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog89

sw.bb83:                                          ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog89

sw.default86:                                     ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.default86, %sw.bb83, %sw.bb80, %sw.epilog73.sw.epilog89_crit_edge
  %.sink125 = phi i32 [ 0, %sw.default86 ], [ 3, %sw.bb83 ], [ 2, %sw.bb80 ], [ 1, %sw.epilog73.sw.epilog89_crit_edge ]
  %payload88 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %payload88 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink125, ptr %payload88, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_get_invariants_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %dglort_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %dglort_map, align 8
  %call.i = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 178) #5
  %1 = and i16 %call.i, 2047
  %2 = tail call i16 @llvm.umin.i16(i16 %1, i16 255) #5
  %3 = add nuw nsw i16 %2, 1
  %max_msix_vectors = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %max_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %max_msix_vectors, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @fm10k_start_hw_generic(ptr nocapture noundef writeonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ready = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %tx_ready, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_disable_queues_generic(ptr noundef %hw, i16 noundef zeroext %q_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ready = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_ready, align 4
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %q_cnt)
  %cmp127.not = icmp eq i16 %q_cnt, 0
  br i1 %cmp127.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i16 %q_cnt to i32
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end58.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %add = add nuw nsw i32 %mul, 32774
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 8
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %for.body.if.end26_crit_edge, label %do.body20, !prof !9

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %and = and i32 %call, -16385
  %5 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i32, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %5) #5, !srcloc !11
  br label %if.end26

if.end26:                                         ; preds = %do.body20, %for.body.if.end26_crit_edge
  %add31 = add nuw nsw i32 %mul, 16390
  %call32 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add31) #5
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool40.not = icmp eq ptr %7, null
  br i1 %tobool40.not, label %if.end26.if.end58_crit_edge, label %do.body50, !prof !9

if.end26.if.end58_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.body50:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %and53 = and i32 %call32, -2
  %8 = tail call i32 @llvm.bswap.i32(i32 %and53)
  %arrayidx57 = getelementptr i32, ptr %7, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57, i32 %8) #5, !srcloc !11
  br label %if.end58

if.end58:                                         ; preds = %do.body50, %if.end26.if.end58_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end58.for.end_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.pre-phi = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %wide.trip.count, %if.end58.for.end_crit_edge ]
  %call61 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre-phi)
  %cmp67139 = icmp eq i32 %.pre-phi, 0
  br i1 %cmp67139, label %for.end.cleanup_crit_edge, label %for.end.for.body64.preheader_crit_edge

for.end.for.body64.preheader_crit_edge:           ; preds = %for.end
  br label %for.body64.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body64.preheader:                             ; preds = %if.then88.for.body64.preheader_crit_edge, %for.end.for.body64.preheader_crit_edge
  %add81143 = phi i32 [ %add81, %if.then88.for.body64.preheader_crit_edge ], [ 16390, %for.end.for.body64.preheader_crit_edge ]
  %add73142 = phi i32 [ %add73, %if.then88.for.body64.preheader_crit_edge ], [ 32774, %for.end.for.body64.preheader_crit_edge ]
  %time.0.ph141 = phi i16 [ %time.0129, %if.then88.for.body64.preheader_crit_edge ], [ 100, %for.end.for.body64.preheader_crit_edge ]
  %indvars.iv133140 = phi i32 [ %indvars.iv.next134, %if.then88.for.body64.preheader_crit_edge ], [ 0, %for.end.for.body64.preheader_crit_edge ]
  br label %for.body64

for.body64:                                       ; preds = %if.then93, %for.body64.preheader
  %time.0129 = phi i16 [ %dec, %if.then93 ], [ %time.0.ph141, %for.body64.preheader ]
  %call74 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add73142) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, -1
  %and76 = and i32 %call74, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond = or i1 %tobool75.not, %tobool77.not
  br i1 %or.cond, label %if.then78, label %for.body64.if.end91_crit_edge

for.body64.if.end91_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then78:                                        ; preds = %for.body64
  %call82 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add81143) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, -1
  %and86 = and i32 %call82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %or.cond125 = or i1 %tobool84.not, %tobool87.not
  br i1 %or.cond125, label %if.then88, label %if.then78.if.end91_crit_edge

if.then78.if.end91_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then88:                                        ; preds = %if.then78
  %indvars.iv.next134 = add nuw nsw i32 %indvars.iv133140, 1
  %cmp67 = icmp eq i32 %indvars.iv.next134, %.pre-phi
  %mul72 = shl nuw nsw i32 %indvars.iv.next134, 6
  %add73 = add nuw nsw i32 %mul72, 32774
  %add81 = add nuw nsw i32 %mul72, 16390
  br i1 %cmp67, label %if.then88.cleanup_crit_edge, label %if.then88.for.body64.preheader_crit_edge

if.then88.for.body64.preheader_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body64.preheader

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end91:                                         ; preds = %if.then78.if.end91_crit_edge, %for.body64.if.end91_crit_edge
  %dec = add i16 %time.0129, -1
  %cond = icmp eq i16 %dec, 0
  br i1 %cond, label %if.end91.cleanup_crit_edge, label %if.then93

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  br label %for.body64

cleanup:                                          ; preds = %if.end91.cleanup_crit_edge, %if.then88.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -4, %if.end91.cleanup_crit_edge ], [ 0, %if.then88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_stop_hw_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_queues, align 8
  %call = tail call i32 @fm10k_disable_queues_generic(ptr noundef %hw, i16 noundef zeroext %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef %addr, ptr nocapture noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %addr) #5
  %base_l = getelementptr inbounds %struct.fm10k_hw_stat, ptr %stat, i32 0, i32 1
  %0 = ptrtoint ptr %base_l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_l, align 8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base_h = getelementptr inbounds %struct.fm10k_hw_stat, ptr %stat, i32 0, i32 2
  %4 = ptrtoint ptr %base_h to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %base_h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = sub i32 %call, %1
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_update_hw_stats_q(ptr noundef %hw, ptr nocapture noundef %q, i32 noundef %idx, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp51.not = icmp eq i32 %count, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %q.addr.053 = phi ptr [ %incdec.ptr, %fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge ], [ %q, %entry.for.body_crit_edge ]
  %idx.addr.052 = phi i32 [ %inc1, %fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge ], [ %idx, %entry.for.body_crit_edge ]
  %mul.i = shl i32 %idx.addr.052, 6
  %add.i = add i32 %mul.i, 32775
  %call.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i) #5
  %add2.i = add i32 %mul.i, 32777
  %base_l.i.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 1, i32 1
  %base_h.i.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 1, i32 2
  %add6.i = add i32 %mul.i, 32778
  %add.i.i = add i32 %mul.i, 32779
  %base_h.i49.i = getelementptr inbounds %struct.fm10k_hw_stat, ptr %q.addr.053, i32 0, i32 2
  %base_l.i51.i = getelementptr inbounds %struct.fm10k_hw_stat, ptr %q.addr.053, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body
  %id_tx.0.i = phi i32 [ %call.i, %for.body ], [ %call11.i, %if.end.i.do.body.i_crit_edge ]
  %tx_bytes.0.i = phi i64 [ 0, %for.body ], [ %tx_bytes.1.i, %if.end.i.do.body.i_crit_edge ]
  %call.i.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.i) #5
  %0 = ptrtoint ptr %base_l.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_l.i.i, align 8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body.i.fm10k_read_hw_stats_32b.exit.i_crit_edge, !prof !9

do.body.i.fm10k_read_hw_stats_32b.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fm10k_read_hw_stats_32b.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %base_h.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %base_h.i.i, align 4
  br label %fm10k_read_hw_stats_32b.exit.i

fm10k_read_hw_stats_32b.exit.i:                   ; preds = %if.then.i.i, %do.body.i.fm10k_read_hw_stats_32b.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %1)
  %tobool.not.i = icmp eq i32 %call.i.i, %1
  br i1 %tobool.not.i, label %fm10k_read_hw_stats_32b.exit.i.if.end.i_crit_edge, label %if.then.i

fm10k_read_hw_stats_32b.exit.i.if.end.i_crit_edge: ; preds = %fm10k_read_hw_stats_32b.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %fm10k_read_hw_stats_32b.exit.i
  %call.i48.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i.i) #5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i
  %count_h.0.i.i = phi i32 [ %call.i48.i, %if.then.i ], [ %call3.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %call1.i.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add6.i) #5
  %call3.i.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i.i) #5
  %cmp.not.i.i = icmp eq i32 %call3.i.i, %count_h.0.i.i
  br i1 %cmp.not.i.i, label %fm10k_read_hw_stats_48b.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

fm10k_read_hw_stats_48b.exit.i:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %base_h.i49.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_h.i49.i, align 4
  %sub.i50.i = sub i32 %count_h.0.i.i, %6
  %conv.i.i = zext i32 %sub.i50.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv4.i.i = zext i32 %call1.i.i to i64
  %7 = ptrtoint ptr %base_l.i51.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_l.i51.i, align 8
  %conv6.i.i = zext i32 %8 to i64
  %add5.i.i = sub nsw i64 %conv4.i.i, %conv6.i.i
  %sub7.i.i = add i64 %add5.i.i, %shl.i.i
  %and.i.i = and i64 %sub7.i.i, 281474976710655
  br label %if.end.i

if.end.i:                                         ; preds = %fm10k_read_hw_stats_48b.exit.i, %fm10k_read_hw_stats_32b.exit.i.if.end.i_crit_edge
  %tx_bytes.1.i = phi i64 [ %and.i.i, %fm10k_read_hw_stats_48b.exit.i ], [ %tx_bytes.0.i, %fm10k_read_hw_stats_32b.exit.i.if.end.i_crit_edge ]
  %call11.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i) #5
  %xor.i = xor i32 %call11.i, %id_tx.0.i
  %and.i = and i32 %xor.i, 127
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.end.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %if.end.i
  %sub.i.le.i = sub i32 %call.i.i, %1
  %and13.i = and i32 %call11.i, 127
  %or.i = or i32 %and13.i, -2147483648
  %9 = ptrtoint ptr %base_h.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_h.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or.i)
  %cmp.i = icmp eq i32 %10, %or.i
  br i1 %cmp.i, label %if.then15.i, label %do.end.i.if.end21.i_crit_edge

do.end.i.if.end21.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_packets3.le.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 1
  %conv.i = zext i32 %sub.i.le.i to i64
  %11 = ptrtoint ptr %tx_packets3.le.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_packets3.le.i, align 8
  %add17.i = add i64 %12, %conv.i
  store i64 %add17.i, ptr %tx_packets3.le.i, align 8
  %13 = ptrtoint ptr %q.addr.053 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %q.addr.053, align 8
  %add20.i = add i64 %14, %tx_bytes.1.i
  store i64 %add20.i, ptr %q.addr.053, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %do.end.i.if.end21.i_crit_edge
  %15 = ptrtoint ptr %base_l.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_l.i.i, align 8
  %add23.i = add i32 %16, %sub.i.le.i
  store i32 %add23.i, ptr %base_l.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tx_bytes.1.i)
  %tobool.not.i52.i = icmp eq i64 %tx_bytes.1.i, 0
  br i1 %tobool.not.i52.i, label %if.end21.i.fm10k_update_hw_stats_tx_q.exit_crit_edge, label %if.end.i.i

if.end21.i.fm10k_update_hw_stats_tx_q.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fm10k_update_hw_stats_tx_q.exit

if.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %base_l.i51.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_l.i51.i, align 8
  %conv.i54.i = zext i32 %18 to i64
  %add.i55.i = add i64 %tx_bytes.1.i, %conv.i54.i
  %conv1.i.i = trunc i64 %add.i55.i to i32
  store i32 %conv1.i.i, ptr %base_l.i51.i, align 8
  %shr.i.i = lshr i64 %add.i55.i, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %19 = ptrtoint ptr %base_h.i49.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_h.i49.i, align 4
  %add4.i.i = add i32 %20, %conv3.i.i
  store i32 %add4.i.i, ptr %base_h.i49.i, align 4
  br label %fm10k_update_hw_stats_tx_q.exit

fm10k_update_hw_stats_tx_q.exit:                  ; preds = %if.end.i.i, %if.end21.i.fm10k_update_hw_stats_tx_q.exit_crit_edge
  %21 = ptrtoint ptr %base_h.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %base_h.i.i, align 4
  %add.i9 = add i32 %mul.i, 16390
  %call.i10 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i9) #5
  %add2.i11 = add i32 %mul.i, 16395
  %base_l.i.i12 = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 4, i32 1
  %base_h.i.i13 = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 4, i32 2
  %add6.i14 = add i32 %mul.i, 16394
  %base_l.i66.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 3, i32 1
  %base_h.i68.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 3, i32 2
  %add10.i = add i32 %mul.i, 16396
  %add.i.i15 = add i32 %mul.i, 16397
  %base_h.i73.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 2, i32 2
  %base_l.i75.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 2, i32 1
  br label %do.body.i18

do.body.i18:                                      ; preds = %if.end.i38.do.body.i18_crit_edge, %fm10k_update_hw_stats_tx_q.exit
  %id_rx.0.i = phi i32 [ %call.i10, %fm10k_update_hw_stats_tx_q.exit ], [ %call15.i, %if.end.i38.do.body.i18_crit_edge ]
  %rx_bytes.0.i = phi i64 [ 0, %fm10k_update_hw_stats_tx_q.exit ], [ %rx_bytes.1.i, %if.end.i38.do.body.i18_crit_edge ]
  %call.i.i16 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.i11) #5
  %22 = ptrtoint ptr %base_l.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_l.i.i12, align 8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %tobool.not.i.i17 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i17, label %if.then.i.i19, label %do.body.i18.fm10k_read_hw_stats_32b.exit.i20_crit_edge, !prof !9

do.body.i18.fm10k_read_hw_stats_32b.exit.i20_crit_edge: ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %fm10k_read_hw_stats_32b.exit.i20

if.then.i.i19:                                    ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %base_h.i.i13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %base_h.i.i13, align 4
  br label %fm10k_read_hw_stats_32b.exit.i20

fm10k_read_hw_stats_32b.exit.i20:                 ; preds = %if.then.i.i19, %do.body.i18.fm10k_read_hw_stats_32b.exit.i20_crit_edge
  %call.i65.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add6.i14) #5
  %27 = ptrtoint ptr %base_l.i66.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_l.i66.i, align 8
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %tobool.not.i67.i = icmp eq ptr %30, null
  br i1 %tobool.not.i67.i, label %if.then.i69.i, label %fm10k_read_hw_stats_32b.exit.i20.fm10k_read_hw_stats_32b.exit71.i_crit_edge, !prof !9

fm10k_read_hw_stats_32b.exit.i20.fm10k_read_hw_stats_32b.exit71.i_crit_edge: ; preds = %fm10k_read_hw_stats_32b.exit.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %fm10k_read_hw_stats_32b.exit71.i

if.then.i69.i:                                    ; preds = %fm10k_read_hw_stats_32b.exit.i20
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %base_h.i68.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %base_h.i68.i, align 4
  br label %fm10k_read_hw_stats_32b.exit71.i

fm10k_read_hw_stats_32b.exit71.i:                 ; preds = %if.then.i69.i, %fm10k_read_hw_stats_32b.exit.i20.fm10k_read_hw_stats_32b.exit71.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i65.i, i32 %28)
  %tobool.not.i21 = icmp eq i32 %call.i65.i, %28
  br i1 %tobool.not.i21, label %fm10k_read_hw_stats_32b.exit71.i.if.end.i38_crit_edge, label %if.then.i22

fm10k_read_hw_stats_32b.exit71.i.if.end.i38_crit_edge: ; preds = %fm10k_read_hw_stats_32b.exit71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i38

if.then.i22:                                      ; preds = %fm10k_read_hw_stats_32b.exit71.i
  %call.i72.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i.i15) #5
  br label %do.body.i.i27

do.body.i.i27:                                    ; preds = %do.body.i.i27.do.body.i.i27_crit_edge, %if.then.i22
  %count_h.0.i.i23 = phi i32 [ %call.i72.i, %if.then.i22 ], [ %call3.i.i25, %do.body.i.i27.do.body.i.i27_crit_edge ]
  %call1.i.i24 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add10.i) #5
  %call3.i.i25 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i.i15) #5
  %cmp.not.i.i26 = icmp eq i32 %call3.i.i25, %count_h.0.i.i23
  br i1 %cmp.not.i.i26, label %fm10k_read_hw_stats_48b.exit.i35, label %do.body.i.i27.do.body.i.i27_crit_edge

do.body.i.i27.do.body.i.i27_crit_edge:            ; preds = %do.body.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i27

fm10k_read_hw_stats_48b.exit.i35:                 ; preds = %do.body.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %base_h.i73.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_h.i73.i, align 4
  %sub.i74.i = sub i32 %count_h.0.i.i23, %33
  %conv.i.i28 = zext i32 %sub.i74.i to i64
  %shl.i.i29 = shl nuw i64 %conv.i.i28, 32
  %conv4.i.i30 = zext i32 %call1.i.i24 to i64
  %34 = ptrtoint ptr %base_l.i75.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_l.i75.i, align 8
  %conv6.i.i31 = zext i32 %35 to i64
  %add5.i.i32 = sub nsw i64 %conv4.i.i30, %conv6.i.i31
  %sub7.i.i33 = add i64 %add5.i.i32, %shl.i.i29
  %and.i.i34 = and i64 %sub7.i.i33, 281474976710655
  br label %if.end.i38

if.end.i38:                                       ; preds = %fm10k_read_hw_stats_48b.exit.i35, %fm10k_read_hw_stats_32b.exit71.i.if.end.i38_crit_edge
  %rx_bytes.1.i = phi i64 [ %and.i.i34, %fm10k_read_hw_stats_48b.exit.i35 ], [ %rx_bytes.0.i, %fm10k_read_hw_stats_32b.exit71.i.if.end.i38_crit_edge ]
  %call15.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i9) #5
  %xor.i36 = xor i32 %call15.i, %id_rx.0.i
  %and.i37 = and i32 %xor.i36, 508
  %tobool16.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool16.not.i, label %do.end.i42, label %if.end.i38.do.body.i18_crit_edge

if.end.i38.do.body.i18_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i18

do.end.i42:                                       ; preds = %if.end.i38
  %sub.i.le.i39 = sub i32 %call.i.i16, %23
  %sub.i70.le.i = sub i32 %call.i65.i, %28
  %and17.i = and i32 %call15.i, 508
  %or.i40 = or i32 %and17.i, -2147483648
  %36 = ptrtoint ptr %base_h.i68.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_h.i68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or.i40)
  %cmp.i41 = icmp eq i32 %37, %or.i40
  br i1 %cmp.i41, label %if.then19.i, label %do.end.i42.if.end29.i_crit_edge

do.end.i42.if.end29.i_crit_edge:                  ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then19.i:                                      ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  %rx_packets7.le.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 3
  %rx_drops3.le.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 4
  %conv.i43 = zext i32 %sub.i.le.i39 to i64
  %38 = ptrtoint ptr %rx_drops3.le.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_drops3.le.i, align 8
  %add21.i = add i64 %39, %conv.i43
  store i64 %add21.i, ptr %rx_drops3.le.i, align 8
  %conv22.i = zext i32 %sub.i70.le.i to i64
  %40 = ptrtoint ptr %rx_packets7.le.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_packets7.le.i, align 8
  %add25.i = add i64 %41, %conv22.i
  store i64 %add25.i, ptr %rx_packets7.le.i, align 8
  %rx_bytes26.i = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 0, i32 2
  %42 = ptrtoint ptr %rx_bytes26.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_bytes26.i, align 8
  %add28.i = add i64 %43, %rx_bytes.1.i
  store i64 %add28.i, ptr %rx_bytes26.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then19.i, %do.end.i42.if.end29.i_crit_edge
  %44 = ptrtoint ptr %base_l.i.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_l.i.i12, align 8
  %add31.i = add i32 %45, %sub.i.le.i39
  store i32 %add31.i, ptr %base_l.i.i12, align 8
  %46 = ptrtoint ptr %base_l.i66.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_l.i66.i, align 8
  %add34.i = add i32 %47, %sub.i70.le.i
  store i32 %add34.i, ptr %base_l.i66.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rx_bytes.1.i)
  %tobool.not.i76.i = icmp eq i64 %rx_bytes.1.i, 0
  br i1 %tobool.not.i76.i, label %if.end29.i.fm10k_update_hw_stats_rx_q.exit_crit_edge, label %if.end.i.i48

if.end29.i.fm10k_update_hw_stats_rx_q.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fm10k_update_hw_stats_rx_q.exit

if.end.i.i48:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %base_l.i75.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_l.i75.i, align 8
  %conv.i78.i = zext i32 %49 to i64
  %add.i79.i = add i64 %rx_bytes.1.i, %conv.i78.i
  %conv1.i.i44 = trunc i64 %add.i79.i to i32
  store i32 %conv1.i.i44, ptr %base_l.i75.i, align 8
  %shr.i.i45 = lshr i64 %add.i79.i, 32
  %conv3.i.i46 = trunc i64 %shr.i.i45 to i32
  %50 = ptrtoint ptr %base_h.i73.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_h.i73.i, align 4
  %add4.i.i47 = add i32 %51, %conv3.i.i46
  store i32 %add4.i.i47, ptr %base_h.i73.i, align 4
  br label %fm10k_update_hw_stats_rx_q.exit

fm10k_update_hw_stats_rx_q.exit:                  ; preds = %if.end.i.i48, %if.end29.i.fm10k_update_hw_stats_rx_q.exit_crit_edge
  %52 = ptrtoint ptr %base_h.i68.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i40, ptr %base_h.i68.i, align 4
  %inc = add nuw i32 %i.055, 1
  %inc1 = add i32 %idx.addr.052, 1
  %incdec.ptr = getelementptr %struct.fm10k_hw_stats_q, ptr %q.addr.053, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %fm10k_update_hw_stats_rx_q.exit.for.end_crit_edge, label %fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge

fm10k_update_hw_stats_rx_q.exit.for.body_crit_edge: ; preds = %fm10k_update_hw_stats_rx_q.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

fm10k_update_hw_stats_rx_q.exit.for.end_crit_edge: ; preds = %fm10k_update_hw_stats_rx_q.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %fm10k_update_hw_stats_rx_q.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @fm10k_unbind_hw_stats_q(ptr nocapture noundef writeonly %q, i32 noundef %idx, i32 noundef %count) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6.not = icmp eq i32 %count, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %q.addr.07 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %q, %entry.for.body_crit_edge ]
  %base_h = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.07, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %base_h to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %base_h, align 4
  %base_h1 = getelementptr inbounds %struct.fm10k_hw_stats_q, ptr %q.addr.07, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %base_h1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %base_h1, align 4
  %inc = add nuw i32 %i.08, 1
  %incdec.ptr = getelementptr %struct.fm10k_hw_stats_q, ptr %q.addr.07, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_get_host_state_generic(ptr noundef %hw, ptr nocapture noundef writeonly %host_ready) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32774) #5
  %process = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %0 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %process, align 8
  %call3 = tail call i32 %1(ptr noundef %hw, ptr noundef %mbx1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp eq i32 %call, -1
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %get_host_state = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %get_host_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %get_host_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %get_host_state5 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 8
  %3 = ptrtoint ptr %get_host_state5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %get_host_state5, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  %brmerge = select i1 %tobool6.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end11:                                         ; preds = %if.end
  %tx_ready = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %tx_ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_ready, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp ne i8 %6, 0
  %or.cond52 = select i1 %tobool12.not, i1 %tobool4.not, i1 false
  br i1 %or.cond52, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16:                                         ; preds = %if.end11
  %timeout = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %if.end16.out_crit_edge, label %if.end19

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end16
  %state = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 20
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not = icmp eq i32 %10, 2
  br i1 %cmp.not, label %if.end21, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %if.end19
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %11 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dglort_map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp22 = icmp eq i32 %12, 65535
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end21
  %request_lport_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %13 = ptrtoint ptr %request_lport_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request_lport_map, align 8
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %if.then23.out_crit_edge, label %if.then26

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 %14(ptr noundef %hw) #5
  br label %out

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %get_host_state5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %get_host_state5, align 1
  br label %out

out:                                              ; preds = %if.end31, %if.then26, %if.then23.out_crit_edge, %if.end19.out_crit_edge, %if.end16.out_crit_edge, %if.end11.out_crit_edge, %if.end.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end19.out_crit_edge ], [ %call29, %if.then26 ], [ 0, %if.then23.out_crit_edge ], [ 0, %if.end31 ], [ 0, %if.end.out_crit_edge ], [ -5, %if.end11.out_crit_edge ], [ -5, %if.end16.out_crit_edge ]
  %16 = ptrtoint ptr %get_host_state5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %get_host_state5, align 1, !range !13
  %18 = xor i8 %17, 1
  %19 = ptrtoint ptr %host_ready to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %host_ready, align 1
  ret i32 %ret_val.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156060562}
!11 = !{i64 6082257}
!12 = !{i64 2156064297}
!13 = !{i8 0, i8 2}

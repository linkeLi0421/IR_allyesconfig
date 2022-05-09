; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bfa_cee.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bfa_cee.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_cee = type { ptr, i8, i8, i8, i32, i32, i32, %struct.bfa_cee_cbfn, %struct.bfa_ioc_notify, ptr, ptr, %struct.bfa_dma, %struct.bfa_dma, ptr, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd }
%struct.bfa_cee_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.bfi_mhdr = type { i8, i8, %union.anon.0 }
%union.anon.0 = type { i16 }
%struct.bfa_ioc = type { ptr, ptr, %struct.bfa_pcidev, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, %struct.list_head, ptr, i32, i8, i32, %struct.bfa_ioc_regs, %struct.bfa_ioc_drv_stats, i8, i8, i8, i8, %struct.bfa_dma, ptr, ptr, %struct.bfa_ioc_mbox_mod, ptr, %struct.bfa_iocpf, i32, i32, i32, i32, i32, i8, i8 }
%struct.bfa_pcidev = type { i32, i8, i16, i16, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon] }
%struct.anon = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.anon.1 = type { i8, i8 }
%struct.bfi_cee_get_rsp = type { %struct.bfi_mhdr, i8, [3 x i8] }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 130, i64 131]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_nw_cee_meminfo() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1280
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_cee_mem_claim(ptr nocapture noundef writeonly %cee, ptr noundef %dma_kva, i64 noundef %dma_pa) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_dma = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 11
  %0 = ptrtoint ptr %attr_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dma_kva, ptr %attr_dma, align 8
  %pa = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dma_pa, ptr %pa, align 8
  %add.ptr = getelementptr i8, ptr %dma_kva, i32 1024
  %stats_dma = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 12
  %2 = ptrtoint ptr %stats_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %stats_dma, align 8
  %add = add i64 %dma_pa, 1024
  %pa5 = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %pa5 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %pa5, align 8
  %attr = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 9
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_kva, ptr %attr, align 4
  %stats = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 10
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %stats, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_nw_cee_get_attr(ptr noundef %cee, ptr noundef %attr, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %cee, null
  br i1 %cmp.not, label %entry.do.body4_crit_edge, label %land.rhs, !prof !9

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

land.rhs:                                         ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 13
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %land.rhs.do.body4_crit_edge, label %do.end9, !prof !9

land.rhs.do.body4_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

do.body4:                                         ; preds = %land.rhs.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_cee.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

do.end9:                                          ; preds = %land.rhs
  %call = tail call zeroext i1 @bfa_nw_ioc_is_operational(ptr noundef nonnull %1) #4
  br i1 %call, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %get_attr_pending = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 1
  %2 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %get_attr_pending, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %get_attr_pending, align 4
  %get_cfg_mb = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 14
  %msg = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 14, i32 3
  %attr17 = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 9
  %5 = ptrtoint ptr %attr17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %attr, ptr %attr17, align 4
  %cbfn18 = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 7
  %6 = ptrtoint ptr %cbfn18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %cbfn18, align 4
  %get_attr_cbarg = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %get_attr_cbarg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cbarg, ptr %get_attr_cbarg, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %msg_id, align 1
  %10 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc, align 8
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id, align 1
  %mtag = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.1, ptr %mtag, i32 0, i32 1
  %14 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %fn_lpu, align 1
  %dma_addr = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 14, i32 3, i32 1
  %pa = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %16 to i32
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %conv.i, ptr %dma_addr, align 1
  %shr.i = lshr i64 %16, 32
  %conv2.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 14, i32 3, i32 2
  %18 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv2.i, ptr %addr_hi.i, align 1
  %call28 = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %11, ptr noundef %get_cfg_mb, ptr noundef null, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 56, %do.end9.cleanup_crit_edge ], [ 13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_is_operational(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_cee_attach(ptr noundef %cee, ptr noundef %ioc, ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %cee, null
  br i1 %cmp.not, label %do.body3, label %do.end6, !prof !9

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_cee.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %cee to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %cee, align 8
  %ioc8 = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 13
  %1 = ptrtoint ptr %ioc8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ioc, ptr %ioc8, align 8
  tail call void @bfa_nw_ioc_mbox_regisr(ptr noundef %ioc, i32 noundef 4, ptr noundef nonnull @bfa_cee_isr, ptr noundef nonnull %cee) #4
  %ioc_notify = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 8
  %cbfn = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfa_cee_notify, ptr %cbfn, align 4
  %cbarg = getelementptr inbounds %struct.bfa_cee, ptr %cee, i32 0, i32 8, i32 2
  %3 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cee, ptr %cbarg, align 4
  %4 = ptrtoint ptr %ioc8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc8, align 8
  tail call void @bfa_nw_ioc_notify_register(ptr noundef %5, ptr noundef %ioc_notify) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_mbox_regisr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_cee_isr(ptr nocapture noundef %cbarg, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_id, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body8 [
    i8 -127, label %sw.bb
    i8 -125, label %sw.bb2
    i8 -126, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %cmd_status = getelementptr inbounds %struct.bfi_cee_get_rsp, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_status, align 1
  %conv1 = zext i8 %4 to i32
  %get_attr_status.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 4
  %5 = ptrtoint ptr %get_attr_status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %get_attr_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %attr.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 9
  %6 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr.i, align 4
  %attr_dma.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 11
  %8 = ptrtoint ptr %attr_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr_dma.i, align 8
  %10 = call ptr @memcpy(ptr %7, ptr %9, i32 832)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %get_attr_pending.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 1
  %11 = ptrtoint ptr %get_attr_pending.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %get_attr_pending.i, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7
  %12 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then2.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %get_attr_cbarg.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %get_attr_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_attr_cbarg.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %conv1) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %cmd_status3 = getelementptr inbounds %struct.bfi_cee_get_rsp, ptr %m, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_status3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_status3, align 1
  %conv4 = zext i8 %17 to i32
  %get_stats_status.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 5
  %18 = ptrtoint ptr %get_stats_status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv4, ptr %get_stats_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i19 = icmp eq i8 %17, 0
  br i1 %cmp.i19, label %if.then.i20, label %sw.bb2.if.end.i22_crit_edge

sw.bb2.if.end.i22_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i22

if.then.i20:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %stats.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 10
  %19 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats.i, align 8
  %stats_dma.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 12
  %21 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats_dma.i, align 8
  %23 = call ptr @memcpy(ptr %20, ptr %22, i32 72)
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i20, %sw.bb2.if.end.i22_crit_edge
  %get_stats_pending.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 2
  %24 = ptrtoint ptr %get_stats_pending.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %get_stats_pending.i, align 1
  %get_stats_cbfn.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %get_stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_stats_cbfn.i, align 4
  %tobool.not.i21 = icmp eq ptr %26, null
  br i1 %tobool.not.i21, label %if.end.i22.sw.epilog_crit_edge, label %if.then2.i23

if.end.i22.sw.epilog_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then2.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  %get_stats_cbarg.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %get_stats_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_stats_cbarg.i, align 4
  tail call void %26(ptr noundef %28, i32 noundef %conv4) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %cmd_status6 = getelementptr inbounds %struct.bfi_cee_get_rsp, ptr %m, i32 0, i32 1
  %29 = ptrtoint ptr %cmd_status6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmd_status6, align 1
  %conv7 = zext i8 %30 to i32
  %reset_stats_status.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 6
  %31 = ptrtoint ptr %reset_stats_status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv7, ptr %reset_stats_status.i, align 8
  %reset_stats_pending.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 3
  %32 = ptrtoint ptr %reset_stats_pending.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reset_stats_pending.i, align 2
  %reset_stats_cbfn.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7, i32 4
  %33 = ptrtoint ptr %reset_stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reset_stats_cbfn.i, align 4
  %tobool.not.i24 = icmp eq ptr %34, null
  br i1 %tobool.not.i24, label %sw.bb5.sw.epilog_crit_edge, label %if.then.i25

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i25:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %reset_stats_cbarg.i = getelementptr inbounds %struct.bfa_cee, ptr %cbarg, i32 0, i32 7, i32 5
  %35 = ptrtoint ptr %reset_stats_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset_stats_cbarg.i, align 4
  tail call void %34(ptr noundef %36, i32 noundef %conv7) #4
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_cee.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sw.epilog:                                        ; preds = %if.then.i25, %sw.bb5.sw.epilog_crit_edge, %if.then2.i23, %if.end.i22.sw.epilog_crit_edge, %if.then2.i, %if.end.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_cee_notify(ptr nocapture noundef %arg, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %get_attr_pending = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %get_attr_pending, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb.if.end7_crit_edge, label %if.then

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %sw.bb
  %get_attr_status = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 4
  %3 = ptrtoint ptr %get_attr_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %get_attr_status, align 8
  %4 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %get_attr_pending, align 4
  %cbfn = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7
  %5 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cbfn, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %get_attr_cbarg = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %get_attr_cbarg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_attr_cbarg, align 4
  tail call void %6(ptr noundef %8, i32 noundef 1) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then.if.end7_crit_edge, %sw.bb.if.end7_crit_edge
  %get_stats_pending = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 2
  %9 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %get_stats_pending, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %if.then9

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then9:                                         ; preds = %if.end7
  %get_stats_status = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 5
  %11 = ptrtoint ptr %get_stats_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %get_stats_status, align 4
  %12 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %get_stats_pending, align 1
  %get_stats_cbfn = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %get_stats_cbfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_stats_cbfn, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.then9.if.end18_crit_edge, label %if.then13

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %get_stats_cbarg = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %get_stats_cbarg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_stats_cbarg, align 4
  tail call void %14(ptr noundef %16, i32 noundef 1) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then9.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %reset_stats_pending = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 3
  %17 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reset_stats_pending, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  br i1 %tobool19.not, label %if.end18.sw.epilog_crit_edge, label %if.then20

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then20:                                        ; preds = %if.end18
  %reset_stats_status = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 6
  %19 = ptrtoint ptr %reset_stats_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %reset_stats_status, align 8
  %20 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %reset_stats_pending, align 2
  %reset_stats_cbfn = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %reset_stats_cbfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset_stats_cbfn, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.then20.sw.epilog_crit_edge, label %if.then24

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %reset_stats_cbarg = getelementptr inbounds %struct.bfa_cee, ptr %arg, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %reset_stats_cbarg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_stats_cbarg, align 4
  tail call void %22(ptr noundef %24, i32 noundef 1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then24, %if.then20.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_notify_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156442733, i64 2156443240, i64 2156442770, i64 2156442826, i64 2156442860, i64 2156442884, i64 2156442925, i64 2156442946, i64 2156442974, i64 2156443008}
!11 = !{i8 0, i8 2}
!12 = !{i64 2156446368, i64 2156446875, i64 2156446405, i64 2156446461, i64 2156446495, i64 2156446519, i64 2156446560, i64 2156446581, i64 2156446609, i64 2156446643}
!13 = !{i64 2156444687, i64 2156445194, i64 2156444724, i64 2156444780, i64 2156444814, i64 2156444838, i64 2156444879, i64 2156444900, i64 2156444928, i64 2156444962}

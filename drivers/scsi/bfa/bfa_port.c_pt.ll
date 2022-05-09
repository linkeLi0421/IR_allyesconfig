; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_port.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_port_s = type { ptr, ptr, ptr, i32, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, i64, ptr, %struct.bfa_dma_s, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, %struct.bfa_ioc_notify_s, i32, i32, %struct.bfa_mem_dma_s }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_mbox_cmd_s = type { %struct.list_head, [8 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.bfa_ioc_notify_s = type { %struct.list_head, ptr, ptr }
%struct.bfa_mem_dma_s = type { %struct.list_head, i32, ptr, i64, ptr, i64 }
%struct.bfi_mhdr_s = type { i8, i8, %union.anon.1 }
%union.anon.1 = type { i16 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.0] }
%struct.anon.0 = type { ptr, ptr }
%struct.bfa_iocpf_s = type { ptr, ptr, i32, i32, i32 }
%struct.anon.2 = type { i8, i8 }
%struct.bfi_port_generic_rsp_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], i32 }
%struct.bfa_cee_s = type { ptr, i32, i32, i32, i32, i32, i32, %struct.bfa_cee_cbfn_s, %struct.bfa_ioc_notify_s, ptr, ptr, ptr, %struct.bfa_dma_s, %struct.bfa_dma_s, ptr, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mem_dma_s }
%struct.bfa_cee_cbfn_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfi_cee_get_rsp_s = type { %struct.bfi_mhdr_s, i8, [3 x i8] }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/bfa/bfa_port.c\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 130, i64 131]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [31 x i8] c"../drivers/scsi/bfa/bfa_port.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 460, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_port_meminfo() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_port_mem_claim(ptr nocapture noundef writeonly %port, ptr noundef %dma_kva, i64 noundef %dma_pa) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_dma = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %stats_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dma_kva, ptr %stats_dma, align 8
  %pa = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dma_pa, ptr %pa, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_port_enable(ptr noundef %port, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pbc_disabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 18
  %0 = ptrtoint ptr %pbc_disabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbc_disabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 4097, i32 noundef 226, i64 noundef 154) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc, align 4
  %call = tail call i32 @bfa_ioc_is_disabled(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod3 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod3, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4097, i32 noundef 231, i64 noundef 82) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc, align 4
  %call6 = tail call i32 @bfa_ioc_is_operational(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod9 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod9, align 8
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 4097, i32 noundef 236, i64 noundef 56) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %dport_enabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 19
  %12 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dport_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod13 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod13, align 8
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 4097, i32 noundef 242, i64 noundef 245) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %endis_pending = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 12
  %16 = ptrtoint ptr %endis_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endis_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod17 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %trcmod17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trcmod17, align 8
  tail call void @__bfa_trc(ptr noundef %19, i32 noundef 4097, i32 noundef 247, i64 noundef 13) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %endis_mb = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 13
  %msg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 13, i32 1
  %msgtag = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 3
  %20 = ptrtoint ptr %msgtag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msgtag, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %msgtag, align 4
  %endis_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 14
  %22 = ptrtoint ptr %endis_cbfn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cbfn, ptr %endis_cbfn, align 4
  %endis_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 15
  %23 = ptrtoint ptr %endis_cbarg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cbarg, ptr %endis_cbarg, align 8
  %24 = ptrtoint ptr %endis_pending to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %endis_pending, align 8
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 21, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %msg_id, align 1
  %27 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %31 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fn_lpu, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %28, ptr noundef %endis_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 154, %if.then ], [ 82, %if.then2 ], [ 245, %if.then12 ], [ 13, %if.then16 ], [ 0, %if.end18 ], [ 56, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_is_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_is_operational(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mbox_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_port_disable(ptr noundef %port, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pbc_disabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 18
  %0 = ptrtoint ptr %pbc_disabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbc_disabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 4097, i32 noundef 282, i64 noundef 154) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc, align 4
  %call = tail call i32 @bfa_ioc_is_disabled(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod3 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod3, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4097, i32 noundef 287, i64 noundef 82) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc, align 4
  %call6 = tail call i32 @bfa_ioc_is_operational(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod9 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod9, align 8
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 4097, i32 noundef 292, i64 noundef 56) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %dport_enabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 19
  %12 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dport_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod13 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod13, align 8
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 4097, i32 noundef 298, i64 noundef 245) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %endis_pending = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 12
  %16 = ptrtoint ptr %endis_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endis_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod17 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %trcmod17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trcmod17, align 8
  tail call void @__bfa_trc(ptr noundef %19, i32 noundef 4097, i32 noundef 303, i64 noundef 13) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %endis_mb = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 13
  %msg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 13, i32 1
  %msgtag = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 3
  %20 = ptrtoint ptr %msgtag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msgtag, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %msgtag, align 4
  %endis_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 14
  %22 = ptrtoint ptr %endis_cbfn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cbfn, ptr %endis_cbfn, align 4
  %endis_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 15
  %23 = ptrtoint ptr %endis_cbarg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cbarg, ptr %endis_cbarg, align 8
  %24 = ptrtoint ptr %endis_pending to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %endis_pending, align 8
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 21, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %msg_id, align 1
  %27 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %31 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fn_lpu, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %28, ptr noundef %endis_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 154, %if.then ], [ 82, %if.then2 ], [ 245, %if.then12 ], [ 13, %if.then16 ], [ 0, %if.end18 ], [ 56, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_port_get_stats(ptr noundef %port, ptr noundef %stats, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 4
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 4097, i32 noundef 337, i64 noundef 56) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_busy = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %stats_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod3 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod3, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4097, i32 noundef 342, i64 noundef 13) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %stats_mb = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5
  %msg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5, i32 1
  %stats5 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 10
  %8 = ptrtoint ptr %stats5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %stats, ptr %stats5, align 8
  %stats_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 6
  %9 = ptrtoint ptr %stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cbfn, ptr %stats_cbfn, align 4
  %stats_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 7
  %10 = ptrtoint ptr %stats_cbarg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cbarg, ptr %stats_cbarg, align 8
  %11 = ptrtoint ptr %stats_busy to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %stats_busy, align 8
  %dma_addr = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5, i32 1, i32 1
  %pa = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %13 to i32
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %conv.i, ptr %dma_addr, align 1
  %shr.i = lshr i64 %13, 32
  %conv1.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5, i32 1, i32 2
  %15 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv1.i, ptr %addr_hi.i, align 1
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 21, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %msg_id, align 1
  %18 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioc, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %22 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %fn_lpu, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %19, ptr noundef %stats_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ 13, %if.then2 ], [ 0, %if.end4 ], [ 56, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_port_clear_stats(ptr noundef %port, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 4
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 4097, i32 noundef 376, i64 noundef 56) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_busy = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %stats_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod3 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod3, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4097, i32 noundef 381, i64 noundef 13) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %stats_mb = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5
  %msg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 5, i32 1
  %stats_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 6
  %8 = ptrtoint ptr %stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cbfn, ptr %stats_cbfn, align 4
  %stats_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 7
  %9 = ptrtoint ptr %stats_cbarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cbarg, ptr %stats_cbarg, align 8
  %10 = ptrtoint ptr %stats_busy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %stats_busy, align 8
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 21, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %msg_id, align 1
  %13 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %17 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fn_lpu, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %14, ptr noundef %stats_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ 13, %if.then2 ], [ 0, %if.end4 ], [ 56, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_port_notify(ptr nocapture noundef %arg, i32 noundef %event) #2 align 64 {
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
  %stats_busy = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 4
  %1 = ptrtoint ptr %stats_busy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stats_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %sw.bb.if.end6_crit_edge, label %if.then

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %sw.bb
  %stats_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 6
  %3 = ptrtoint ptr %stats_cbfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats_cbfn, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %stats_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 7
  %5 = ptrtoint ptr %stats_cbarg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats_cbarg, align 8
  tail call void %4(ptr noundef %6, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %stats_cbfn, align 4
  %8 = ptrtoint ptr %stats_busy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %stats_busy, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %sw.bb.if.end6_crit_edge
  %endis_pending = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 12
  %9 = ptrtoint ptr %endis_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %endis_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %endis_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 14
  %11 = ptrtoint ptr %endis_cbfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endis_cbfn, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.then8.if.end12_crit_edge, label %if.then10

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %endis_cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 15
  %13 = ptrtoint ptr %endis_cbarg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endis_cbarg, align 8
  tail call void %12(ptr noundef %14, i32 noundef 1) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8.if.end12_crit_edge
  %15 = ptrtoint ptr %endis_cbfn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %endis_cbfn, align 4
  %16 = ptrtoint ptr %endis_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %endis_pending, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end6.if.end15_crit_edge
  %dport_enabled = getelementptr inbounds %struct.bfa_port_s, ptr %arg, i32 0, i32 19
  %17 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dport_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.end15.sw.epilog_crit_edge, label %if.then17

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dport_enabled, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %if.end15.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_port_set_dportenabled(ptr nocapture noundef writeonly %port, i32 noundef %enabled) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dport_enabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %enabled, ptr %dport_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_port_attach(ptr noundef %port, ptr noundef %ioc, ptr noundef %dev, ptr noundef %trcmod) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !13

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %port, align 8
  %ioc22 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %ioc22 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ioc, ptr %ioc22, align 4
  %trcmod23 = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %trcmod, ptr %trcmod23, align 8
  %stats_busy = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %stats_busy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %stats_busy, align 8
  %endis_pending = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 12
  %4 = ptrtoint ptr %endis_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %endis_pending, align 8
  %stats_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 6
  %5 = ptrtoint ptr %stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %stats_cbfn, align 4
  %endis_cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 14
  %6 = ptrtoint ptr %endis_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %endis_cbfn, align 4
  %pbc_disabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 18
  %7 = ptrtoint ptr %pbc_disabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pbc_disabled, align 8
  %dport_enabled = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 19
  %8 = ptrtoint ptr %dport_enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dport_enabled, align 4
  tail call void @bfa_ioc_mbox_regisr(ptr noundef %ioc, i32 noundef 21, ptr noundef nonnull @bfa_port_isr, ptr noundef %port) #4
  %ioc_notify = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 17
  %9 = ptrtoint ptr %ioc_notify to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ioc_notify, align 8
  %prev = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 17, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %prev, align 4
  %cbfn = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_port_notify, ptr %cbfn, align 8
  %cbarg = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %port, ptr %cbarg, align 4
  %13 = ptrtoint ptr %ioc22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc22, align 4
  %notify_q = getelementptr inbounds %struct.bfa_ioc_s, ptr %14, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %14, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioc_notify, ptr noundef %16, ptr noundef %notify_q) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ioc_notify, ptr %prev.i, align 4
  %18 = ptrtoint ptr %ioc_notify to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %notify_q, ptr %ioc_notify, align 4
  %19 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ioc_notify, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %call = tail call i64 @ktime_get_seconds() #4
  %stats_reset_time = getelementptr inbounds %struct.bfa_port_s, ptr %port, i32 0, i32 9
  %21 = ptrtoint ptr %stats_reset_time to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call, ptr %stats_reset_time, align 8
  %22 = ptrtoint ptr %trcmod23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod23, align 8
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 4097, i32 noundef 483, i64 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mbox_regisr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_port_isr(ptr noundef %cbarg, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_id, align 1
  %conv = zext i8 %3 to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 4097, i32 noundef 145, i64 noundef %conv) #4
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end [
    i8 -127, label %sw.bb
    i8 -126, label %sw.bb6
    i8 -125, label %sw.bb14
    i8 -124, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  %endis_pending = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 12
  %7 = ptrtoint ptr %endis_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endis_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %status = getelementptr inbounds %struct.bfi_port_generic_rsp_s, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %conv5 = zext i8 %10 to i32
  %11 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod, align 8
  %conv.i = zext i8 %10 to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 4097, i32 noundef 53, i64 noundef %conv.i) #4
  %13 = ptrtoint ptr %endis_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %endis_pending, align 8
  %endis_cbfn.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 14
  %14 = ptrtoint ptr %endis_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endis_cbfn.i, align 4
  %endis_cbarg.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 15
  %16 = ptrtoint ptr %endis_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endis_cbarg.i, align 8
  tail call void %15(ptr noundef %17, i32 noundef %conv5) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %endis_pending7 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 12
  %18 = ptrtoint ptr %endis_pending7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endis_pending7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %sw.bb6.sw.epilog_crit_edge, label %if.end11

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %status12 = getelementptr inbounds %struct.bfi_port_generic_rsp_s, ptr %m, i32 0, i32 1
  %20 = ptrtoint ptr %status12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status12, align 1
  %conv13 = zext i8 %21 to i32
  %22 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod, align 8
  %conv.i60 = zext i8 %21 to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 4097, i32 noundef 70, i64 noundef %conv.i60) #4
  %24 = ptrtoint ptr %endis_pending7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %endis_pending7, align 8
  %endis_cbfn.i62 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 14
  %25 = ptrtoint ptr %endis_cbfn.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endis_cbfn.i62, align 4
  %endis_cbarg.i63 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 15
  %27 = ptrtoint ptr %endis_cbarg.i63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %endis_cbarg.i63, align 8
  tail call void %26(ptr noundef %28, i32 noundef %conv13) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %stats_busy = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 4
  %29 = ptrtoint ptr %stats_busy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stats_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %sw.bb14.sw.epilog_crit_edge, label %if.end18

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb14
  %status19 = getelementptr inbounds %struct.bfi_port_generic_rsp_s, ptr %m, i32 0, i32 1
  %31 = ptrtoint ptr %status19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status19, align 1
  %conv20 = zext i8 %32 to i32
  %stats_status.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 8
  %33 = ptrtoint ptr %stats_status.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv20, ptr %stats_status.i, align 4
  %34 = ptrtoint ptr %stats_busy to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %stats_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i = icmp eq i8 %32, 0
  br i1 %cmp.i, label %if.then.i, label %if.end18.if.end.i_crit_edge

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %stats.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 10
  %35 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stats.i, align 8
  %stats_dma.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 11
  %37 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats_dma.i, align 8
  %39 = call ptr @memcpy(ptr %36, ptr %38, i32 336)
  %call.i = tail call i64 @ktime_get_seconds() #4
  %stats_reset_time.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 9
  %40 = ptrtoint ptr %stats_reset_time.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %stats_reset_time.i, align 8
  %sub.i = sub i64 %call.i, %41
  %42 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stats.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %sub.i, ptr %43, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end18.if.end.i_crit_edge
  %stats_cbfn.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 6
  %45 = ptrtoint ptr %stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stats_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then3.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %stats_cbarg.i = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 7
  %47 = ptrtoint ptr %stats_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stats_cbarg.i, align 8
  tail call void %46(ptr noundef %48, i32 noundef %conv20) #4
  %49 = ptrtoint ptr %stats_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %stats_cbfn.i, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %stats_busy22 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 4
  %50 = ptrtoint ptr %stats_busy22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stats_busy22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp23 = icmp eq i32 %51, 0
  br i1 %cmp23, label %sw.bb21.sw.epilog_crit_edge, label %if.end26

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end26:                                         ; preds = %sw.bb21
  %status27 = getelementptr inbounds %struct.bfi_port_generic_rsp_s, ptr %m, i32 0, i32 1
  %52 = ptrtoint ptr %status27 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %status27, align 1
  %conv28 = zext i8 %53 to i32
  %stats_status.i64 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 8
  %54 = ptrtoint ptr %stats_status.i64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv28, ptr %stats_status.i64, align 4
  %55 = ptrtoint ptr %stats_busy22 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %stats_busy22, align 8
  %call.i66 = tail call i64 @ktime_get_seconds() #4
  %stats_reset_time.i67 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 9
  %56 = ptrtoint ptr %stats_reset_time.i67 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %call.i66, ptr %stats_reset_time.i67, align 8
  %stats_cbfn.i68 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 6
  %57 = ptrtoint ptr %stats_cbfn.i68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stats_cbfn.i68, align 4
  %tobool.not.i69 = icmp eq ptr %58, null
  br i1 %tobool.not.i69, label %if.end26.sw.epilog_crit_edge, label %if.then.i71

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i71:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %stats_cbarg.i70 = getelementptr inbounds %struct.bfa_port_s, ptr %cbarg, i32 0, i32 7
  %59 = ptrtoint ptr %stats_cbarg.i70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stats_cbarg.i70, align 8
  tail call void %58(ptr noundef %60, i32 noundef %conv28) #4
  %61 = ptrtoint ptr %stats_cbfn.i68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %stats_cbfn.i68, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i71, %if.end26.sw.epilog_crit_edge, %sw.bb21.sw.epilog_crit_edge, %if.then3.i, %if.end.i.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %if.end11, %sw.bb6.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_cee_meminfo() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1280
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_cee_mem_claim(ptr nocapture noundef writeonly %cee, ptr noundef %dma_kva, i64 noundef %dma_pa) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_dma = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 12
  %0 = ptrtoint ptr %attr_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dma_kva, ptr %attr_dma, align 8
  %pa = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dma_pa, ptr %pa, align 8
  %add.ptr = getelementptr i8, ptr %dma_kva, i32 1024
  %stats_dma = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 13
  %2 = ptrtoint ptr %stats_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %stats_dma, align 8
  %add = add i64 %dma_pa, 1024
  %pa4 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %pa4 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %pa4, align 8
  %attr = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 10
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_kva, ptr %attr, align 8
  %stats = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 11
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %stats, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_cee_get_attr(ptr noundef %cee, ptr noundef %attr, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cee, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !13

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %trcmod = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 9
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 4097, i32 noundef 651, i64 noundef 0) #4
  %ioc20 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %4 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc20, align 8
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4097, i32 noundef 653, i64 noundef 0) #4
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %get_attr_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 1
  %8 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %get_attr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp25 = icmp eq i32 %9, 1
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 4097, i32 noundef 657, i64 noundef 0) #4
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %get_attr_pending, align 4
  %get_cfg_mb = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 15
  %msg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 15, i32 1
  %attr30 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 10
  %13 = ptrtoint ptr %attr30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %attr, ptr %attr30, align 8
  %cbfn31 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7
  %14 = ptrtoint ptr %cbfn31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cbfn, ptr %cbfn31, align 4
  %get_attr_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %get_attr_cbarg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cbarg, ptr %get_attr_cbarg, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %msg_id, align 1
  %18 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioc20, align 8
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %22 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %fn_lpu, align 1
  %dma_addr = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 15, i32 1, i32 1
  %pa = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %24 to i32
  %25 = ptrtoint ptr %dma_addr to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %conv.i, ptr %dma_addr, align 1
  %shr.i = lshr i64 %24, 32
  %conv1.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 15, i32 1, i32 2
  %26 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %conv1.i, ptr %addr_hi.i, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %19, ptr noundef %get_cfg_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then22
  %retval.0 = phi i32 [ 13, %if.then26 ], [ 0, %if.end28 ], [ 56, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_cee_get_stats(ptr noundef %cee, ptr noundef %stats, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cee, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !13

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %ioc20 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %2 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc20, align 8
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 9
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 4097, i32 noundef 693, i64 noundef 0) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %get_stats_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 2
  %6 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %get_stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp24 = icmp eq i32 %7, 1
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod26 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 9
  %8 = ptrtoint ptr %trcmod26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod26, align 4
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 4097, i32 noundef 697, i64 noundef 0) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %get_stats_pending, align 8
  %get_stats_mb = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 16
  %msg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 16, i32 1
  %stats29 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 11
  %11 = ptrtoint ptr %stats29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %stats, ptr %stats29, align 4
  %get_stats_cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %get_stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cbfn, ptr %get_stats_cbfn, align 4
  %get_stats_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %get_stats_cbarg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cbarg, ptr %get_stats_cbarg, align 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %msg_id, align 1
  %16 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioc20, align 8
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %20 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %fn_lpu, align 1
  %dma_addr = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 16, i32 1, i32 1
  %pa = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %22 to i32
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %conv.i, ptr %dma_addr, align 1
  %shr.i = lshr i64 %22, 32
  %conv1.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 16, i32 1, i32 2
  %24 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %conv1.i, ptr %addr_hi.i, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %17, ptr noundef %get_stats_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then22
  %retval.0 = phi i32 [ 13, %if.then25 ], [ 0, %if.end27 ], [ 56, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_cee_reset_stats(ptr noundef %cee, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cee, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !13

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 729, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %ioc20 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %2 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc20, align 8
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 9
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 4097, i32 noundef 731, i64 noundef 0) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %reset_stats_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 3
  %6 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_stats_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp24 = icmp eq i32 %7, 1
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %trcmod26 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 9
  %8 = ptrtoint ptr %trcmod26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod26, align 4
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 4097, i32 noundef 735, i64 noundef 0) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %reset_stats_pending, align 4
  %reset_stats_mb = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 17
  %msg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 17, i32 1
  %reset_stats_cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %reset_stats_cbfn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cbfn, ptr %reset_stats_cbfn, align 4
  %reset_stats_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %reset_stats_cbarg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cbarg, ptr %reset_stats_cbarg, align 4
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %msg_id, align 1
  %15 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc20, align 8
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id, align 8
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %msg, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.2, ptr %mtag, i32 0, i32 1
  %19 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %fn_lpu, align 1
  tail call void @bfa_ioc_mbox_queue(ptr noundef %16, ptr noundef %reset_stats_mb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then22
  %retval.0 = phi i32 [ 13, %if.then25 ], [ 0, %if.end27 ], [ 56, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cee_attach(ptr noundef %cee, ptr noundef %ioc, ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cee, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !13

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 856, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %cee to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %cee, align 8
  %ioc20 = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 14
  %1 = ptrtoint ptr %ioc20 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ioc, ptr %ioc20, align 8
  tail call void @bfa_ioc_mbox_regisr(ptr noundef %ioc, i32 noundef 4, ptr noundef nonnull @bfa_cee_isr, ptr noundef %cee) #4
  %ioc_notify = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 8
  %2 = ptrtoint ptr %ioc_notify to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ioc_notify, align 4
  %prev = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prev, align 4
  %cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfa_cee_notify, ptr %cbfn, align 4
  %cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %cee, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cee, ptr %cbarg, align 4
  %6 = ptrtoint ptr %ioc20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc20, align 8
  %notify_q = getelementptr inbounds %struct.bfa_ioc_s, ptr %7, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %7, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioc_notify, ptr noundef %9, ptr noundef %notify_q) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ioc_notify, ptr %prev.i, align 4
  %11 = ptrtoint ptr %ioc_notify to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %notify_q, ptr %ioc_notify, align 4
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %ioc_notify, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_cee_isr(ptr nocapture noundef %cbarg, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 9
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 4
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_id, align 1
  %conv = zext i8 %3 to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 4097, i32 noundef 767, i64 noundef %conv) #4
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %5, label %do.end [
    i8 -127, label %sw.bb
    i8 -125, label %sw.bb7
    i8 -126, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trcmod, align 4
  %cmd_status = getelementptr inbounds %struct.bfi_cee_get_rsp_s, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd_status, align 1
  %conv4 = zext i8 %10 to i64
  tail call void @__bfa_trc(ptr noundef %8, i32 noundef 4097, i32 noundef 770, i64 noundef %conv4) #4
  %11 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_status, align 1
  %conv6 = zext i8 %12 to i32
  %get_attr_status.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 4
  %13 = ptrtoint ptr %get_attr_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %get_attr_status.i, align 8
  %14 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 4097, i32 noundef 521, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %attr.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 10
  %16 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 4097, i32 noundef 523, i64 noundef 0) #4
  %18 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attr.i, align 8
  %attr_dma.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 12
  %20 = ptrtoint ptr %attr_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr_dma.i, align 8
  %22 = call ptr @memcpy(ptr %19, ptr %21, i32 832)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %get_attr_pending.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 1
  %23 = ptrtoint ptr %get_attr_pending.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %get_attr_pending.i, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7
  %24 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then5.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %27, i32 noundef 4097, i32 noundef 532, i64 noundef 0) #4
  %28 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cbfn.i, align 4
  %get_attr_cbarg.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %get_attr_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_attr_cbarg.i, align 4
  tail call void %29(ptr noundef %31, i32 noundef %conv6) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %cmd_status8 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, ptr %m, i32 0, i32 1
  %32 = ptrtoint ptr %cmd_status8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd_status8, align 1
  %conv9 = zext i8 %33 to i32
  %get_stats_status.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 5
  %34 = ptrtoint ptr %get_stats_status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv9, ptr %get_stats_status.i, align 4
  %35 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 4097, i32 noundef 554, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i38 = icmp eq i8 %33, 0
  br i1 %cmp.i38, label %if.then.i39, label %sw.bb7.if.end.i41_crit_edge

sw.bb7.if.end.i41_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i41

if.then.i39:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %38, i32 noundef 4097, i32 noundef 556, i64 noundef 0) #4
  %stats.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 11
  %39 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stats.i, align 4
  %stats_dma.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 13
  %41 = ptrtoint ptr %stats_dma.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stats_dma.i, align 8
  %43 = call ptr @memcpy(ptr %40, ptr %42, i32 72)
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i39, %sw.bb7.if.end.i41_crit_edge
  %get_stats_pending.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 2
  %44 = ptrtoint ptr %get_stats_pending.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %get_stats_pending.i, align 8
  %45 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %46, i32 noundef 4097, i32 noundef 566, i64 noundef 0) #4
  %get_stats_cbfn.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %get_stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_stats_cbfn.i, align 4
  %tobool.not.i40 = icmp eq ptr %48, null
  br i1 %tobool.not.i40, label %if.end.i41.sw.epilog_crit_edge, label %if.then6.i

if.end.i41.sw.epilog_crit_edge:                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trcmod, align 4
  tail call void @__bfa_trc(ptr noundef %50, i32 noundef 4097, i32 noundef 568, i64 noundef 0) #4
  %51 = ptrtoint ptr %get_stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_stats_cbfn.i, align 4
  %get_stats_cbarg.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %get_stats_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_stats_cbarg.i, align 4
  tail call void %52(ptr noundef %54, i32 noundef %conv9) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %cmd_status11 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, ptr %m, i32 0, i32 1
  %55 = ptrtoint ptr %cmd_status11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cmd_status11, align 1
  %conv12 = zext i8 %56 to i32
  %reset_stats_status.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 6
  %57 = ptrtoint ptr %reset_stats_status.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv12, ptr %reset_stats_status.i, align 8
  %reset_stats_pending.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 3
  %58 = ptrtoint ptr %reset_stats_pending.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %reset_stats_pending.i, align 4
  %reset_stats_cbfn.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7, i32 4
  %59 = ptrtoint ptr %reset_stats_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset_stats_cbfn.i, align 4
  %tobool.not.i42 = icmp eq ptr %60, null
  br i1 %tobool.not.i42, label %sw.bb10.sw.epilog_crit_edge, label %if.then.i43

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i43:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  %reset_stats_cbarg.i = getelementptr inbounds %struct.bfa_cee_s, ptr %cbarg, i32 0, i32 7, i32 5
  %61 = ptrtoint ptr %reset_stats_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reset_stats_cbarg.i, align 4
  tail call void %60(ptr noundef %62, i32 noundef %conv12) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 780, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i43, %sw.bb10.sw.epilog_crit_edge, %if.then6.i, %if.end.i41.sw.epilog_crit_edge, %if.then5.i, %if.end.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_cee_notify(ptr nocapture noundef %arg, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 4
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 4097, i32 noundef 800, i64 noundef %conv) #4
  %2 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %get_attr_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %get_attr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %sw.bb.if.end7_crit_edge

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %sw.bb
  %get_attr_status = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 4
  %5 = ptrtoint ptr %get_attr_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %get_attr_status, align 8
  %6 = ptrtoint ptr %get_attr_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %get_attr_pending, align 4
  %cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7
  %7 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbfn, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %get_attr_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %get_attr_cbarg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_attr_cbarg, align 4
  tail call void %8(ptr noundef %10, i32 noundef 1) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then.if.end7_crit_edge, %sw.bb.if.end7_crit_edge
  %get_stats_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %get_stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then10, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  %get_stats_status = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 5
  %13 = ptrtoint ptr %get_stats_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %get_stats_status, align 4
  %14 = ptrtoint ptr %get_stats_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %get_stats_pending, align 8
  %get_stats_cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %get_stats_cbfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_stats_cbfn, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.then10.if.end19_crit_edge, label %if.then14

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %get_stats_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %get_stats_cbarg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_stats_cbarg, align 4
  tail call void %16(ptr noundef %18, i32 noundef 1) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %reset_stats_pending = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_stats_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp20 = icmp eq i32 %20, 1
  br i1 %cmp20, label %if.then22, label %if.end19.sw.epilog_crit_edge

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then22:                                        ; preds = %if.end19
  %reset_stats_status = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 6
  %21 = ptrtoint ptr %reset_stats_status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %reset_stats_status, align 8
  %22 = ptrtoint ptr %reset_stats_pending to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reset_stats_pending, align 4
  %reset_stats_cbfn = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %reset_stats_cbfn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_stats_cbfn, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %if.then22.sw.epilog_crit_edge, label %if.then26

if.then22.sw.epilog_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %reset_stats_cbarg = getelementptr inbounds %struct.bfa_cee_s, ptr %arg, i32 0, i32 7, i32 5
  %25 = ptrtoint ptr %reset_stats_cbarg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset_stats_cbarg, align 4
  tail call void %24(ptr noundef %26, i32 noundef 1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then26, %if.then22.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_port.c", i32 460, i32 2}
!2 = distinct !{null, !3, !"__trc_fileno", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_port.c", i32 18, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}

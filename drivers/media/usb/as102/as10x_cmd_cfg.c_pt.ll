; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as10x_cmd_cfg.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as10x_cmd_cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.as10x_bus_adapter_t = type { ptr, %struct.mutex, %union.as10x_bus_token_t, i16, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.as10x_bus_token_t = type { %struct.as10x_usb_token_cmd_t }
%struct.as10x_usb_token_cmd_t = type { %struct.as10x_cmd_t, %struct.as10x_cmd_t }
%struct.as10x_cmd_t = type { %struct.as10x_cmd_header_t, %union.anon.78 }
%struct.as10x_cmd_header_t = type { i16, i16, i16, i16 }
%union.anon.78 = type { %union.as10x_dump_memory, [36 x i8] }
%union.as10x_dump_memory = type { %struct.anon.113 }
%struct.anon.113 = type { i16, i8, i8, %union.anon.114 }
%union.anon.114 = type { [4 x i32] }
%struct.anon.103 = type <{ i16, %struct.as10x_register_value, i16, i16 }>
%struct.as10x_register_value = type <{ i8, %union.anon.104 }>
%union.anon.104 = type { i32 }
%struct.as102_priv_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type <{ i16, %struct.as10x_register_value, i16, i8 }>

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_get_context(ptr noundef %adap, i16 noundef zeroext %tag, ptr nocapture noundef writeonly %pvalue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %rsp = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %cmd_xid = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_xid, align 4
  %inc = add i16 %5, 1
  store i16 %inc, ptr %cmd_xid, align 4
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 11) #4
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 -1024, ptr %body, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %tag)
  %tag2 = getelementptr inbounds %struct.anon.103, ptr %body, i32 0, i32 2
  %8 = ptrtoint ptr %tag2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %tag2, align 1
  %type = getelementptr inbounds %struct.anon.103, ptr %body, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %type, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %13(ptr noundef %adap, ptr noundef %1, i32 noundef 19, ptr noundef %3, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end7:                                          ; preds = %if.end
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %error.i = getelementptr inbounds %struct.anon.105, ptr %body.i, i32 0, i32 3
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.end7
  %16 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 252, i16 %17)
  %cmp6.i = icmp eq i16 %17, 252
  br i1 %cmp6.i, label %if.then10, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then10:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %u = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %u, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %pvalue to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pvalue, align 4
  br label %out

out:                                              ; preds = %if.then10, %land.lhs.true.i.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.then10 ], [ -1, %if.end7.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @as10x_cmd_build(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @as10x_context_rsp_parse(ptr nocapture noundef readonly %prsp, i16 noundef zeroext %proc_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %prsp, i32 0, i32 1
  %error = getelementptr inbounds %struct.anon.105, ptr %body, i32 0, i32 3
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %body to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %body, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %proc_id)
  %cmp6 = icmp eq i16 %4, %proc_id
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_set_context(ptr noundef %adap, i16 noundef zeroext %tag, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %rsp = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %cmd_xid = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_xid, align 4
  %inc = add i16 %5, 1
  store i16 %inc, ptr %cmd_xid, align 4
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 11) #4
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 -1024, ptr %body, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %value)
  %u = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %u, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %tag)
  %tag3 = getelementptr inbounds %struct.anon.103, ptr %body, i32 0, i32 2
  %10 = ptrtoint ptr %tag3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %tag3, align 1
  %type = getelementptr inbounds %struct.anon.103, ptr %body, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 512, ptr %type, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 19, ptr noundef %3, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %error.i = getelementptr inbounds %struct.anon.105, ptr %body.i, i32 0, i32 3
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end8
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 252, i16 %19)
  %cmp6.i = icmp eq i16 %19, 252
  br i1 %cmp6.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge
  br label %out

out:                                              ; preds = %if.end.i, %land.lhs.true.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ -1, %if.end.i ], [ 0, %land.lhs.true.i.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_eLNA_change_mode(ptr noundef %adap, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %rsp = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %cmd_xid = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_xid, align 4
  %inc = add i16 %5, 1
  store i16 %inc, ptr %cmd_xid, align 4
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 3) #4
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 5632, ptr %body, align 1
  %mode2 = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %mode2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %mode, ptr %mode2, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %11(ptr noundef %adap, ptr noundef %1, i32 noundef 11, ptr noundef %3, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @as10x_rsp_parse(ptr noundef %3, i16 noundef zeroext 5632) #4
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call7, %if.end6 ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_rsp_parse(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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

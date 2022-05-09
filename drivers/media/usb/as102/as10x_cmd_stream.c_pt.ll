; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as10x_cmd_stream.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as10x_cmd_stream.c"
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
%struct.as10x_ts_filter = type { i16, i8, i8 }
%struct.anon.91 = type { i16, i16, i8, i8 }
%struct.as102_priv_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_add_PID_filter(ptr noundef %adap, ptr nocapture noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 6) #3
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 3584, ptr %body, align 1
  %7 = ptrtoint ptr %filter to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %filter, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %pid2 = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %pid2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %pid2, align 1
  %type = getelementptr inbounds %struct.as10x_ts_filter, ptr %filter, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 1
  %stream_type = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %stream_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %stream_type, align 1
  %idx = getelementptr inbounds %struct.as10x_ts_filter, ptr %filter, i32 0, i32 2
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %15)
  %cmp = icmp ult i8 %15, 16
  %spec.select = select i1 %cmp, i8 %15, i8 -1
  %16 = getelementptr inbounds %struct.anon.91, ptr %body, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end14

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end14:                                         ; preds = %entry
  %call = tail call i32 %21(ptr noundef %adap, ptr noundef %1, i32 noundef 14, ptr noundef %3, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @as10x_rsp_parse(ptr noundef %3, i16 noundef zeroext 3584) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %filter_id = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %filter_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %filter_id, align 1
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %idx, align 1
  br label %out

out:                                              ; preds = %if.then22, %if.end18.out_crit_edge, %if.end14.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end14.out_crit_edge ], [ 0, %if.then22 ], [ %call19, %if.end18.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @as10x_cmd_build(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_rsp_parse(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_del_PID_filter(ptr noundef %adap, i16 noundef zeroext %pid_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 4) #3
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 3840, ptr %body, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %pid_value)
  %pid = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %pid, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %12(ptr noundef %adap, ptr noundef %1, i32 noundef 12, ptr noundef %3, i32 noundef 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @as10x_rsp_parse(ptr noundef %3, i16 noundef zeroext 3840) #3
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call6, %if.end5 ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_start_streaming(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 2) #3
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 4864, ptr %body, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %10(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @as10x_rsp_parse(ptr noundef %3, i16 noundef zeroext 4864) #3
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call5, %if.end4 ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_stop_streaming(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void @as10x_cmd_build(ptr noundef %1, i16 noundef zeroext %inc, i16 noundef zeroext 2) #3
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 5120, ptr %body, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %10(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 11) #3
  %11 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @as10x_rsp_parse(ptr noundef %3, i16 noundef zeroext 5120) #3
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call7, %if.end6 ], [ -1, %entry.out_crit_edge ]
  %sext = shl i32 %error.1, 24
  %conv9 = ashr exact i32 %sext, 24
  ret i32 %conv9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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

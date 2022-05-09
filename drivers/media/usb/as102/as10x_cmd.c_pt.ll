; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as10x_cmd.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as10x_cmd.c"
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
%struct.as102_priv_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.as10x_tune_args = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.as10x_tune_status = type <{ i8, i16, i16, i16 }>
%struct.as10x_tps = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct.as10x_demod_stats = type <{ i32, i32, i32, i16, i8 }>

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_turn_on(ptr noundef %adap) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 256, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp7.i = icmp eq i16 %19, 1
  br i1 %cmp7.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  br label %out

out:                                              ; preds = %if.end.i, %land.lhs.true.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ -1, %if.end.i ], [ 0, %land.lhs.true.i.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @as10x_cmd_build(ptr nocapture noundef writeonly %pcmd, i16 noundef zeroext %xid, i16 noundef zeroext %cmd_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %xid)
  %1 = ptrtoint ptr %pcmd to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %0, ptr %pcmd, align 1
  %prog = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %pcmd, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 512, ptr %prog, align 1
  %version = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %pcmd, i32 0, i32 2
  %3 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 256, ptr %version, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %cmd_len)
  %data_len = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %pcmd, i32 0, i32 3
  %5 = ptrtoint ptr %data_len to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %data_len, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @as10x_rsp_parse(ptr nocapture noundef readonly %prsp, i16 noundef zeroext %proc_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error1 = getelementptr inbounds %struct.as10x_cmd_t, ptr %prsp, i32 0, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %error1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %prsp, i32 0, i32 1
  %2 = ptrtoint ptr %body to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %body, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %proc_id)
  %cmp7 = icmp eq i16 %4, %proc_id
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_turn_off(ptr noundef %adap) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -256, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %19)
  %cmp7.i = icmp eq i16 %19, 255
  br i1 %cmp7.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  br label %out

out:                                              ; preds = %if.end.i, %land.lhs.true.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ -1, %if.end.i ], [ 0, %land.lhs.true.i.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_set_tune(ptr noundef %adap, ptr nocapture noundef readonly %ptune) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 3584, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2560, ptr %body, align 1
  %12 = ptrtoint ptr %ptune to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ptune, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %args = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %args to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %args, align 1
  %bandwidth = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 1
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bandwidth, align 1
  %bandwidth5 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 1
  %18 = ptrtoint ptr %bandwidth5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %bandwidth5, align 1
  %hier_select = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 2
  %19 = ptrtoint ptr %hier_select to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hier_select, align 1
  %hier_select8 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 2
  %21 = ptrtoint ptr %hier_select8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %hier_select8, align 1
  %modulation = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 3
  %22 = ptrtoint ptr %modulation to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %modulation, align 1
  %modulation11 = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %modulation11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %modulation11, align 1
  %hierarchy = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 4
  %25 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hierarchy, align 1
  %hierarchy14 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 4
  %27 = ptrtoint ptr %hierarchy14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %hierarchy14, align 1
  %interleaving_mode = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 5
  %28 = ptrtoint ptr %interleaving_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %interleaving_mode, align 1
  %interleaving_mode17 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 5
  %30 = ptrtoint ptr %interleaving_mode17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %interleaving_mode17, align 1
  %code_rate = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 6
  %31 = ptrtoint ptr %code_rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %code_rate, align 1
  %code_rate20 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 6
  %33 = ptrtoint ptr %code_rate20 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %code_rate20, align 1
  %guard_interval = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 7
  %34 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %guard_interval, align 1
  %guard_interval23 = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3, i32 0, i32 2
  %36 = ptrtoint ptr %guard_interval23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %guard_interval23, align 1
  %transmission_mode = getelementptr inbounds %struct.as10x_tune_args, ptr %ptune, i32 0, i32 8
  %37 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %transmission_mode, align 1
  %transmission_mode26 = getelementptr inbounds %struct.as10x_tune_args, ptr %args, i32 0, i32 8
  %39 = ptrtoint ptr %transmission_mode26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %transmission_mode26, align 1
  %ops = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %adap, i32 0, i32 6
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %xfer_cmd = getelementptr inbounds %struct.as102_priv_ops_t, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %xfer_cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xfer_cmd, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %43(ptr noundef %adap, ptr noundef %1, i32 noundef 22, ptr noundef %3, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end30

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end30:                                         ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i = icmp eq i8 %45, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end30.if.end.i_crit_edge

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end30
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %47)
  %cmp7.i = icmp eq i16 %47, 10
  br i1 %cmp7.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end30.if.end.i_crit_edge
  br label %out

out:                                              ; preds = %if.end.i, %land.lhs.true.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ -1, %if.end.i ], [ 0, %land.lhs.true.i.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_get_tune_status(ptr noundef %adap, ptr nocapture noundef writeonly %pstatus) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2816, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %19)
  %cmp7.i = icmp eq i16 %19, 11
  br i1 %cmp7.i, label %if.end8, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %sts = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %sts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sts, align 1
  %22 = ptrtoint ptr %pstatus to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %pstatus, align 1
  %signal_strength = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %signal_strength to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %signal_strength, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %signal_strength13 = getelementptr inbounds %struct.as10x_tune_status, ptr %pstatus, i32 0, i32 1
  %26 = ptrtoint ptr %signal_strength13 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %signal_strength13, align 1
  %PER = getelementptr inbounds %struct.as10x_tune_status, ptr %sts, i32 0, i32 2
  %27 = ptrtoint ptr %PER to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %PER, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %PER16 = getelementptr inbounds %struct.as10x_tune_status, ptr %pstatus, i32 0, i32 2
  %30 = ptrtoint ptr %PER16 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %PER16, align 1
  %BER = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %BER to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %BER, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %BER19 = getelementptr inbounds %struct.as10x_tune_status, ptr %pstatus, i32 0, i32 3
  %34 = ptrtoint ptr %BER19 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %BER19, align 1
  br label %out

out:                                              ; preds = %if.end8, %land.lhs.true.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.end8 ], [ -1, %entry.out_crit_edge ], [ -1, %if.end4.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_get_tps(ptr noundef %adap, ptr nocapture noundef writeonly %ptps) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 3328, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %19)
  %cmp7.i = icmp eq i16 %19, 13
  br i1 %cmp7.i, label %if.end8, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %tps = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %tps to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tps, align 1
  %22 = ptrtoint ptr %ptps to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ptps, align 1
  %hierarchy = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hierarchy, align 1
  %hierarchy13 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 1
  %25 = ptrtoint ptr %hierarchy13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %hierarchy13, align 1
  %interleaving_mode = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 2
  %26 = ptrtoint ptr %interleaving_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %interleaving_mode, align 1
  %interleaving_mode16 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 2
  %28 = ptrtoint ptr %interleaving_mode16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %interleaving_mode16, align 1
  %code_rate_HP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 3
  %29 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %code_rate_HP, align 1
  %code_rate_HP19 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 3
  %31 = ptrtoint ptr %code_rate_HP19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %code_rate_HP19, align 1
  %code_rate_LP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 4
  %32 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %code_rate_LP, align 1
  %code_rate_LP22 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 4
  %34 = ptrtoint ptr %code_rate_LP22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %code_rate_LP22, align 1
  %guard_interval = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %guard_interval, align 1
  %guard_interval25 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 5
  %37 = ptrtoint ptr %guard_interval25 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %guard_interval25, align 1
  %transmission_mode = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 6
  %38 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %transmission_mode, align 1
  %transmission_mode28 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 6
  %40 = ptrtoint ptr %transmission_mode28 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %transmission_mode28, align 1
  %DVBH_mask_HP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 7
  %41 = ptrtoint ptr %DVBH_mask_HP to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DVBH_mask_HP, align 1
  %DVBH_mask_HP31 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 7
  %43 = ptrtoint ptr %DVBH_mask_HP31 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %DVBH_mask_HP31, align 1
  %DVBH_mask_LP = getelementptr inbounds %struct.as10x_tps, ptr %tps, i32 0, i32 8
  %44 = ptrtoint ptr %DVBH_mask_LP to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DVBH_mask_LP, align 1
  %DVBH_mask_LP34 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 8
  %46 = ptrtoint ptr %DVBH_mask_LP34 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %DVBH_mask_LP34, align 1
  %cell_ID = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3, i32 0, i32 2
  %47 = ptrtoint ptr %cell_ID to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %cell_ID, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %cell_ID37 = getelementptr inbounds %struct.as10x_tps, ptr %ptps, i32 0, i32 9
  %50 = ptrtoint ptr %cell_ID37 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %cell_ID37, align 1
  br label %out

out:                                              ; preds = %if.end8, %land.lhs.true.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.end8 ], [ -1, %entry.out_crit_edge ], [ -1, %if.end4.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_get_demod_stats(ptr noundef %adap, ptr nocapture noundef writeonly %pdemod_stats) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 5376, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %19)
  %cmp7.i = icmp eq i16 %19, 21
  br i1 %cmp7.i, label %if.end8, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %stats = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %stats, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %pdemod_stats to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pdemod_stats, align 1
  %bad_frame_count = getelementptr inbounds %struct.as10x_demod_stats, ptr %stats, i32 0, i32 1
  %24 = ptrtoint ptr %bad_frame_count to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bad_frame_count, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %bad_frame_count13 = getelementptr inbounds %struct.as10x_demod_stats, ptr %pdemod_stats, i32 0, i32 1
  %27 = ptrtoint ptr %bad_frame_count13 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %bad_frame_count13, align 1
  %bytes_fixed_by_rs = getelementptr inbounds %struct.as10x_demod_stats, ptr %stats, i32 0, i32 2
  %28 = ptrtoint ptr %bytes_fixed_by_rs to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bytes_fixed_by_rs, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %bytes_fixed_by_rs16 = getelementptr inbounds %struct.as10x_demod_stats, ptr %pdemod_stats, i32 0, i32 2
  %31 = ptrtoint ptr %bytes_fixed_by_rs16 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %bytes_fixed_by_rs16, align 1
  %mer = getelementptr inbounds %struct.as10x_demod_stats, ptr %stats, i32 0, i32 3
  %32 = ptrtoint ptr %mer to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %mer, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %mer19 = getelementptr inbounds %struct.as10x_demod_stats, ptr %pdemod_stats, i32 0, i32 3
  %35 = ptrtoint ptr %mer19 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %mer19, align 1
  %has_started = getelementptr inbounds %struct.as10x_demod_stats, ptr %stats, i32 0, i32 4
  %36 = ptrtoint ptr %has_started to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_started, align 1
  %has_started22 = getelementptr inbounds %struct.as10x_demod_stats, ptr %pdemod_stats, i32 0, i32 4
  %38 = ptrtoint ptr %has_started22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %has_started22, align 1
  br label %out

out:                                              ; preds = %if.end8, %land.lhs.true.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.end8 ], [ -1, %entry.out_crit_edge ], [ -1, %if.end4.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as10x_cmd_get_impulse_resp(ptr noundef %adap, ptr nocapture noundef writeonly %is_ready) local_unnamed_addr #0 align 64 {
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
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %prog.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %prog.i, align 1
  %version.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %version.i, align 1
  %data_len.i = getelementptr inbounds %struct.as10x_cmd_header_t, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %data_len.i, align 1
  %body = getelementptr inbounds %struct.as10x_cmd_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 4608, ptr %body, align 1
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
  %call = tail call i32 %15(ptr noundef %adap, ptr noundef %1, i32 noundef 10, ptr noundef %3, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %error1.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %error1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %error1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.i:                                  ; preds = %if.end4
  %body.i = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %body.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %body.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %19)
  %cmp7.i = icmp eq i16 %19, 18
  br i1 %cmp7.i, label %if.end8, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %is_ready10 = getelementptr inbounds %struct.as10x_cmd_t, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %is_ready10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_ready10, align 1
  %22 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %is_ready, align 1
  br label %out

out:                                              ; preds = %if.end8, %land.lhs.true.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.end8 ], [ -1, %entry.out_crit_edge ], [ -1, %if.end4.out_crit_edge ], [ -1, %land.lhs.true.i.out_crit_edge ]
  ret i32 %error.1
}

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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

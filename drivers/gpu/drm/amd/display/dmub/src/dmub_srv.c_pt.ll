; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_srv.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dmub_srv_common_regs = type { %struct.dmub_srv_common_reg_offset, %struct.dmub_srv_common_reg_mask, %struct.dmub_srv_common_reg_shift }
%struct.dmub_srv_common_reg_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dmub_srv_dcn31_regs = type { %struct.dmub_srv_dcn31_reg_offset, %struct.dmub_srv_dcn31_reg_mask, %struct.dmub_srv_dcn31_reg_shift }
%struct.dmub_srv_dcn31_reg_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_dcn31_reg_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_dcn31_reg_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }
%struct.dmub_srv_create_params = type { %struct.dmub_srv_base_funcs, ptr, ptr, i32, i32, i8 }
%struct.dmub_srv_region_info = type { i32, i8, [8 x %struct.dmub_region] }
%struct.dmub_region = type { i32, i32 }
%struct.dmub_srv_region_params = type { i32, i32, i32, ptr, ptr }
%struct.dmub_fw_meta_info = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.dmub_srv_fb_params = type { ptr, ptr, i64 }
%struct.dmub_srv_fb_info = type { i8, [8 x %struct.dmub_fb] }
%struct.dmub_window = type { %union.dmub_addr, %struct.dmub_region }
%union.dmub_addr = type { i64 }
%struct.dmub_srv_hw_params = type { [8 x ptr], i64, i64, i32, i8, i8, i8, i8, i8, i8 }

@dmub_srv_hw_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dmub_srv_dcn20_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn21_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn30_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn301_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn302_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn303_regs = external dso_local constant %struct.dmub_srv_common_regs, align 4
@dmub_srv_dcn31_regs = external dso_local constant %struct.dmub_srv_dcn31_regs, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 476, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_flush_buffer_mem(ptr nocapture noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmub_srv_create(ptr noundef %dmub, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dmub, i32 0, i32 304)
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %1 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %params, align 4
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv_create_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ctx, align 4
  %user_ctx2 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %6 = ptrtoint ptr %user_ctx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %user_ctx2, align 4
  %asic = getelementptr inbounds %struct.dmub_srv_create_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic, align 4
  %9 = ptrtoint ptr %dmub to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dmub, align 8
  %fw_version = getelementptr inbounds %struct.dmub_srv_create_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_version, align 4
  %fw_version4 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %12 = ptrtoint ptr %fw_version4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fw_version4, align 8
  %is_virtual = getelementptr inbounds %struct.dmub_srv_create_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %is_virtual to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_virtual, align 4, !range !12
  %is_virtual5 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 3
  %15 = ptrtoint ptr %is_virtual5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %is_virtual5, align 4
  %16 = load i32, ptr %asic, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %entry.if.else_crit_edge [
    i32 1, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge77
    i32 3, label %entry.sw.bb.i_crit_edge78
    i32 4, label %entry.sw.bb.i_crit_edge79
    i32 5, label %entry.sw.bb.i_crit_edge80
    i32 6, label %entry.sw.bb.i_crit_edge81
    i32 7, label %entry.sw.bb26.i_crit_edge
    i32 8, label %entry.sw.bb26.i_crit_edge82
  ]

entry.sw.bb26.i_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26.i

entry.sw.bb26.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26.i

entry.sw.bb.i_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge77, %entry.sw.bb.i_crit_edge78, %entry.sw.bb.i_crit_edge79, %entry.sw.bb.i_crit_edge80, %entry.sw.bb.i_crit_edge81
  %regs.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dmub_srv_dcn20_regs, ptr %regs.i, align 4
  %reset.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dmub_dcn20_reset, ptr %reset.i, align 4
  %reset_release.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %reset_release.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dmub_dcn20_reset_release, ptr %reset_release.i, align 4
  %backdoor_load.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %backdoor_load.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dmub_dcn20_backdoor_load, ptr %backdoor_load.i, align 4
  %setup_windows.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %setup_windows.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dmub_dcn20_setup_windows, ptr %setup_windows.i, align 4
  %setup_mailbox.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 5
  %23 = ptrtoint ptr %setup_mailbox.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dmub_dcn20_setup_mailbox, ptr %setup_mailbox.i, align 4
  %get_inbox1_rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 6
  %24 = ptrtoint ptr %get_inbox1_rptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dmub_dcn20_get_inbox1_rptr, ptr %get_inbox1_rptr.i, align 4
  %set_inbox1_wptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 7
  %25 = ptrtoint ptr %set_inbox1_wptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dmub_dcn20_set_inbox1_wptr, ptr %set_inbox1_wptr.i, align 4
  %is_supported.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 16
  %26 = ptrtoint ptr %is_supported.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dmub_dcn20_is_supported, ptr %is_supported.i, align 4
  %is_hw_init.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 17
  %27 = ptrtoint ptr %is_hw_init.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dmub_dcn20_is_hw_init, ptr %is_hw_init.i, align 4
  %set_gpint.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %28 = ptrtoint ptr %set_gpint.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dmub_dcn20_set_gpint, ptr %set_gpint.i, align 4
  %is_gpint_acked.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 23
  %29 = ptrtoint ptr %is_gpint_acked.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dmub_dcn20_is_gpint_acked, ptr %is_gpint_acked.i, align 4
  %get_gpint_response.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 24
  %30 = ptrtoint ptr %get_gpint_response.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dmub_dcn20_get_gpint_response, ptr %get_gpint_response.i, align 4
  %get_fw_status.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 21
  %31 = ptrtoint ptr %get_fw_status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dmub_dcn20_get_fw_boot_status, ptr %get_fw_status.i, align 4
  %enable_dmub_boot_options.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 19
  %32 = ptrtoint ptr %enable_dmub_boot_options.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dmub_dcn20_enable_dmub_boot_options, ptr %enable_dmub_boot_options.i, align 4
  %skip_dmub_panel_power_sequence.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 20
  %33 = ptrtoint ptr %skip_dmub_panel_power_sequence.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dmub_dcn20_skip_dmub_panel_power_sequence, ptr %skip_dmub_panel_power_sequence.i, align 4
  %get_current_time.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 29
  %34 = ptrtoint ptr %get_current_time.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dmub_dcn20_get_current_time, ptr %get_current_time.i, align 4
  %setup_out_mailbox.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 8
  %35 = ptrtoint ptr %setup_out_mailbox.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dmub_dcn20_setup_out_mailbox, ptr %setup_out_mailbox.i, align 4
  %get_outbox1_wptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 9
  %36 = ptrtoint ptr %get_outbox1_wptr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dmub_dcn20_get_outbox1_wptr, ptr %get_outbox1_wptr.i, align 4
  %set_outbox1_rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 10
  %37 = ptrtoint ptr %set_outbox1_rptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dmub_dcn20_set_outbox1_rptr, ptr %set_outbox1_rptr.i, align 4
  %setup_outbox0.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 11
  %38 = ptrtoint ptr %setup_outbox0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dmub_dcn20_setup_outbox0, ptr %setup_outbox0.i, align 4
  %get_outbox0_wptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 12
  %39 = ptrtoint ptr %get_outbox0_wptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dmub_dcn20_get_outbox0_wptr, ptr %get_outbox0_wptr.i, align 4
  %set_outbox0_rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 13
  %40 = ptrtoint ptr %set_outbox0_rptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dmub_dcn20_set_outbox0_rptr, ptr %set_outbox0_rptr.i, align 4
  %get_diagnostic_data.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 30
  %41 = ptrtoint ptr %get_diagnostic_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @dmub_dcn20_get_diagnostic_data, ptr %get_diagnostic_data.i, align 4
  %42 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %16, label %sw.bb.i.if.end_crit_edge [
    i32 2, label %if.then.i
    i32 3, label %if.then3.i
    i32 4, label %if.then9.i
    i32 5, label %if.then15.i
    i32 6, label %if.then21.i
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dmub_srv_dcn21_regs, ptr %regs.i, align 4
  %is_phy_init.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 18
  %44 = ptrtoint ptr %is_phy_init.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dmub_dcn21_is_phy_init, ptr %is_phy_init.i, align 4
  br label %if.end

if.then3.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dmub_srv_dcn30_regs, ptr %regs.i, align 4
  %46 = ptrtoint ptr %backdoor_load.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dmub_dcn30_backdoor_load, ptr %backdoor_load.i, align 4
  %47 = ptrtoint ptr %setup_windows.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @dmub_dcn30_setup_windows, ptr %setup_windows.i, align 4
  br label %if.end

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @dmub_srv_dcn301_regs, ptr %regs.i, align 4
  %49 = ptrtoint ptr %backdoor_load.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dmub_dcn30_backdoor_load, ptr %backdoor_load.i, align 4
  %50 = ptrtoint ptr %setup_windows.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dmub_dcn30_setup_windows, ptr %setup_windows.i, align 4
  br label %if.end

if.then15.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dmub_srv_dcn302_regs, ptr %regs.i, align 4
  %52 = ptrtoint ptr %backdoor_load.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @dmub_dcn30_backdoor_load, ptr %backdoor_load.i, align 4
  %53 = ptrtoint ptr %setup_windows.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dmub_dcn30_setup_windows, ptr %setup_windows.i, align 4
  br label %if.end

if.then21.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dmub_srv_dcn303_regs, ptr %regs.i, align 4
  %55 = ptrtoint ptr %backdoor_load.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dmub_dcn30_backdoor_load, ptr %backdoor_load.i, align 4
  %56 = ptrtoint ptr %setup_windows.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dmub_dcn30_setup_windows, ptr %setup_windows.i, align 4
  br label %if.end

sw.bb26.i:                                        ; preds = %entry.sw.bb26.i_crit_edge, %entry.sw.bb26.i_crit_edge82
  %regs_dcn31.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %57 = ptrtoint ptr %regs_dcn31.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @dmub_srv_dcn31_regs, ptr %regs_dcn31.i, align 8
  %reset27.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %reset27.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @dmub_dcn31_reset, ptr %reset27.i, align 4
  %reset_release28.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 2
  %59 = ptrtoint ptr %reset_release28.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @dmub_dcn31_reset_release, ptr %reset_release28.i, align 4
  %backdoor_load29.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %backdoor_load29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @dmub_dcn31_backdoor_load, ptr %backdoor_load29.i, align 4
  %setup_windows30.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 4
  %61 = ptrtoint ptr %setup_windows30.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @dmub_dcn31_setup_windows, ptr %setup_windows30.i, align 4
  %setup_mailbox31.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 5
  %62 = ptrtoint ptr %setup_mailbox31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dmub_dcn31_setup_mailbox, ptr %setup_mailbox31.i, align 4
  %get_inbox1_rptr32.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 6
  %63 = ptrtoint ptr %get_inbox1_rptr32.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dmub_dcn31_get_inbox1_rptr, ptr %get_inbox1_rptr32.i, align 4
  %set_inbox1_wptr33.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 7
  %64 = ptrtoint ptr %set_inbox1_wptr33.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @dmub_dcn31_set_inbox1_wptr, ptr %set_inbox1_wptr33.i, align 4
  %setup_out_mailbox34.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 8
  %65 = ptrtoint ptr %setup_out_mailbox34.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @dmub_dcn31_setup_out_mailbox, ptr %setup_out_mailbox34.i, align 4
  %get_outbox1_wptr35.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 9
  %66 = ptrtoint ptr %get_outbox1_wptr35.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @dmub_dcn31_get_outbox1_wptr, ptr %get_outbox1_wptr35.i, align 4
  %set_outbox1_rptr36.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 10
  %67 = ptrtoint ptr %set_outbox1_rptr36.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dmub_dcn31_set_outbox1_rptr, ptr %set_outbox1_rptr36.i, align 4
  %is_supported37.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 16
  %68 = ptrtoint ptr %is_supported37.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dmub_dcn31_is_supported, ptr %is_supported37.i, align 4
  %is_hw_init38.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 17
  %69 = ptrtoint ptr %is_hw_init38.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dmub_dcn31_is_hw_init, ptr %is_hw_init38.i, align 4
  %set_gpint39.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %70 = ptrtoint ptr %set_gpint39.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dmub_dcn31_set_gpint, ptr %set_gpint39.i, align 4
  %is_gpint_acked40.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 23
  %71 = ptrtoint ptr %is_gpint_acked40.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @dmub_dcn31_is_gpint_acked, ptr %is_gpint_acked40.i, align 4
  %get_gpint_response41.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 24
  %72 = ptrtoint ptr %get_gpint_response41.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dmub_dcn31_get_gpint_response, ptr %get_gpint_response41.i, align 4
  %get_gpint_dataout.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 25
  %73 = ptrtoint ptr %get_gpint_dataout.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dmub_dcn31_get_gpint_dataout, ptr %get_gpint_dataout.i, align 4
  %get_fw_status42.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 21
  %74 = ptrtoint ptr %get_fw_status42.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @dmub_dcn31_get_fw_boot_status, ptr %get_fw_status42.i, align 4
  %enable_dmub_boot_options43.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 19
  %75 = ptrtoint ptr %enable_dmub_boot_options43.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dmub_dcn31_enable_dmub_boot_options, ptr %enable_dmub_boot_options43.i, align 4
  %skip_dmub_panel_power_sequence44.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 20
  %76 = ptrtoint ptr %skip_dmub_panel_power_sequence44.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @dmub_dcn31_skip_dmub_panel_power_sequence, ptr %skip_dmub_panel_power_sequence44.i, align 4
  %setup_outbox045.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 11
  %77 = ptrtoint ptr %setup_outbox045.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @dmub_dcn31_setup_outbox0, ptr %setup_outbox045.i, align 4
  %get_outbox0_wptr46.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 12
  %78 = ptrtoint ptr %get_outbox0_wptr46.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dmub_dcn31_get_outbox0_wptr, ptr %get_outbox0_wptr46.i, align 4
  %set_outbox0_rptr47.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 13
  %79 = ptrtoint ptr %set_outbox0_rptr47.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @dmub_dcn31_set_outbox0_rptr, ptr %set_outbox0_rptr47.i, align 4
  %get_diagnostic_data48.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 30
  %80 = ptrtoint ptr %get_diagnostic_data48.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @dmub_dcn31_get_diagnostic_data, ptr %get_diagnostic_data48.i, align 4
  %should_detect.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 31
  %81 = ptrtoint ptr %should_detect.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dmub_dcn31_should_detect, ptr %should_detect.i, align 4
  %get_current_time49.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 29
  %82 = ptrtoint ptr %get_current_time49.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @dmub_dcn31_get_current_time, ptr %get_current_time49.i, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb26.i, %if.then21.i, %if.then15.i, %if.then9.i, %if.then3.i, %if.then.i, %sw.bb.i.if.end_crit_edge
  %hw_funcs = getelementptr inbounds %struct.dmub_srv_create_params, ptr %params, i32 0, i32 1
  %83 = ptrtoint ptr %hw_funcs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_funcs, align 4
  %tobool7.not = icmp eq ptr %84, null
  br i1 %tobool7.not, label %if.end.if.end33_crit_edge, label %if.then8

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then8:                                         ; preds = %if.end
  %emul_get_inbox1_rptr = getelementptr inbounds %struct.dmub_srv_hw_funcs, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %emul_get_inbox1_rptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %emul_get_inbox1_rptr, align 4
  %tobool10.not = icmp eq ptr %86, null
  br i1 %tobool10.not, label %if.then8.if.end16_crit_edge, label %if.then11

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %emul_get_inbox1_rptr15 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 14
  %87 = ptrtoint ptr %emul_get_inbox1_rptr15 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %emul_get_inbox1_rptr15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then8.if.end16_crit_edge
  %88 = ptrtoint ptr %hw_funcs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_funcs, align 4
  %emul_set_inbox1_wptr = getelementptr inbounds %struct.dmub_srv_hw_funcs, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %emul_set_inbox1_wptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %emul_set_inbox1_wptr, align 4
  %tobool18.not = icmp eq ptr %91, null
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %emul_set_inbox1_wptr23 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 15
  %92 = ptrtoint ptr %emul_set_inbox1_wptr23 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %emul_set_inbox1_wptr23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16.if.end24_crit_edge
  %93 = ptrtoint ptr %hw_funcs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_funcs, align 4
  %is_supported = getelementptr inbounds %struct.dmub_srv_hw_funcs, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %is_supported to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %is_supported, align 4
  %tobool26.not = icmp eq ptr %96, null
  br i1 %tobool26.not, label %if.end24.if.end33_crit_edge, label %if.then27

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %is_supported31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 16
  %97 = ptrtoint ptr %is_supported31 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %is_supported31, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end24.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %get_inbox1_rptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 6
  %98 = ptrtoint ptr %get_inbox1_rptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %get_inbox1_rptr, align 4
  %tobool35.not = icmp eq ptr %99, null
  br i1 %tobool35.not, label %if.end33.if.else_crit_edge, label %lor.lhs.false

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false:                                    ; preds = %if.end33
  %set_inbox1_wptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 7
  %100 = ptrtoint ptr %set_inbox1_wptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_inbox1_wptr, align 4
  %tobool37.not = icmp eq ptr %101, null
  br i1 %tobool37.not, label %lor.lhs.false.if.else_crit_edge, label %if.then40

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then40:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %102 = ptrtoint ptr %sw_init to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %sw_init, align 8
  br label %if.end41

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end33.if.else_crit_edge, %entry.if.else_crit_edge
  %103 = call ptr @memset(ptr %dmub, i32 0, i32 304)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  %status.075 = phi i32 [ 4, %if.else ], [ 0, %if.then40 ]
  ret i32 %status.075
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dmub_srv_destroy(ptr nocapture noundef writeonly %dmub) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dmub, i32 0, i32 304)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_calc_region_info(ptr nocapture noundef %dmub, ptr nocapture noundef readonly %params, ptr nocapture noundef %out) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx10 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 5
  %arrayidx12 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 6
  %arrayidx14 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 7
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %0 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx8 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 4
  %arrayidx6 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 3
  %arrayidx4 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 2
  %arrayidx2 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 1
  %2 = call ptr @memset(ptr %out, i32 0, i32 72)
  %num_regions = getelementptr inbounds %struct.dmub_srv_region_info, ptr %out, i32 0, i32 1
  %3 = ptrtoint ptr %num_regions to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %num_regions, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %top = getelementptr inbounds %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %top, align 4
  %sub.i = add i32 %5, 255
  %mul.i = and i32 %sub.i, -256
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %arrayidx4, align 4
  %bss_data_size = getelementptr inbounds %struct.dmub_srv_region_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %bss_data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bss_data_size, align 4
  %add19 = add i32 %9, %mul.i
  %top20 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %top20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add19, ptr %top20, align 4
  %sub.i126 = add i32 %add19, 255
  %mul.i127 = and i32 %sub.i126, -256
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul.i127, ptr %arrayidx2, align 4
  %add26 = add i32 %mul.i127, 655360
  %top27 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %top27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add26, ptr %top27, align 4
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add26, ptr %arrayidx6, align 4
  %vbios_size = getelementptr inbounds %struct.dmub_srv_region_params, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %vbios_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbios_size, align 4
  %add32 = add i32 %15, %add26
  %top33 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 3, i32 1
  %16 = ptrtoint ptr %top33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add32, ptr %top33, align 4
  %sub.i132 = add i32 %add32, 255
  %mul.i133 = and i32 %sub.i132, -256
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i133, ptr %arrayidx8, align 4
  %add38 = add i32 %mul.i133, 16384
  %top39 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %top39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add38, ptr %top39, align 4
  %fw_bss_data.i = getelementptr inbounds %struct.dmub_srv_region_params, ptr %params, i32 0, i32 4
  %19 = ptrtoint ptr %fw_bss_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_bss_data.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %21 = ptrtoint ptr %bss_data_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bss_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 100
  br i1 %cmp.i.i, label %if.then.i.if.end48_crit_edge, label %if.end3.i.i

if.then.i.if.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end3.i.i:                                      ; preds = %if.then.i
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %22
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -36
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 -64
  %23 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145918786, i32 %24)
  %cmp6.not.i.i = icmp ne i32 %24, 1145918786
  %tobool41.not = icmp eq ptr %add.ptr5.i.i, null
  %or.cond = or i1 %tobool41.not, %cmp6.not.i.i
  br i1 %or.cond, label %if.end3.i.i.if.end48_crit_edge, label %if.end3.i.i.if.then42_crit_edge

if.end3.i.i.if.then42_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end3.i.i.if.end48_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %fw_inst_const.i = getelementptr inbounds %struct.dmub_srv_region_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %fw_inst_const.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw_inst_const.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %if.else.i.if.end48_crit_edge, label %land.lhs.true5.i

if.else.i.if.end48_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true5.i:                                 ; preds = %if.else.i
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not.i = icmp eq i32 %28, 0
  br i1 %tobool6.not.i, label %land.lhs.true5.i.if.end48_crit_edge, label %for.cond.preheader.i

land.lhs.true5.i.if.end48_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

for.cond.preheader.i:                             ; preds = %land.lhs.true5.i
  %add.ptr.i31.i = getelementptr i8, ptr %26, i32 %28
  %add.ptr4.i32.i = getelementptr i8, ptr %add.ptr.i31.i, i32 -64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.041.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.041.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %28)
  %cmp.i29.i = icmp ugt i32 %add.i.i, %28
  br i1 %cmp.i29.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i36.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end3.i36.i:                                    ; preds = %for.body.i
  %idx.neg.i.i = sub nsw i32 0, %i.041.i
  %add.ptr5.i33.i = getelementptr i8, ptr %add.ptr4.i32.i, i32 %idx.neg.i.i
  %29 = ptrtoint ptr %add.ptr5.i33.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr5.i33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145918786, i32 %30)
  %cmp6.not.i34.i = icmp ne i32 %30, 1145918786
  %tobool11.not.i = icmp eq ptr %add.ptr5.i33.i, null
  %or.cond.i = or i1 %tobool11.not.i, %cmp6.not.i34.i
  br i1 %or.cond.i, label %if.end3.i36.i.for.inc.i_crit_edge, label %if.end3.i36.i.if.then42_crit_edge

if.end3.i36.i.if.then42_crit_edge:                ; preds = %if.end3.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end3.i36.i.for.inc.i_crit_edge:                ; preds = %if.end3.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i36.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end48_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end48_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then42:                                        ; preds = %if.end3.i36.i.if.then42_crit_edge, %if.end3.i.i.if.then42_crit_edge
  %info.2.i157 = phi ptr [ %add.ptr5.i.i, %if.end3.i.i.if.then42_crit_edge ], [ %add.ptr5.i33.i, %if.end3.i36.i.if.then42_crit_edge ]
  %fw_region_size = getelementptr inbounds %struct.dmub_fw_meta_info, ptr %info.2.i157, i32 0, i32 1
  %31 = ptrtoint ptr %fw_region_size to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %fw_region_size, align 1
  %trace_buffer_size43 = getelementptr inbounds %struct.dmub_fw_meta_info, ptr %info.2.i157, i32 0, i32 2
  %33 = ptrtoint ptr %trace_buffer_size43 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %trace_buffer_size43, align 1
  %fw_version = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %35 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %if.then44, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %fw_version45 = getelementptr inbounds %struct.dmub_fw_meta_info, ptr %info.2.i157, i32 0, i32 3
  %37 = ptrtoint ptr %fw_version45 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %fw_version45, align 1
  %39 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fw_version, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then42.if.end48_crit_edge, %for.inc.i.if.end48_crit_edge, %land.lhs.true5.i.if.end48_crit_edge, %if.else.i.if.end48_crit_edge, %if.end3.i.i.if.end48_crit_edge, %if.then.i.if.end48_crit_edge
  %fw_state_size.0 = phi i32 [ %32, %if.then44 ], [ %32, %if.then42.if.end48_crit_edge ], [ 65536, %land.lhs.true5.i.if.end48_crit_edge ], [ 65536, %if.else.i.if.end48_crit_edge ], [ 65536, %if.then.i.if.end48_crit_edge ], [ 65536, %if.end3.i.i.if.end48_crit_edge ], [ 65536, %for.inc.i.if.end48_crit_edge ]
  %trace_buffer_size.0 = phi i32 [ %34, %if.then44 ], [ %34, %if.then42.if.end48_crit_edge ], [ 65536, %land.lhs.true5.i.if.end48_crit_edge ], [ 65536, %if.else.i.if.end48_crit_edge ], [ 65536, %if.then.i.if.end48_crit_edge ], [ 65536, %if.end3.i.i.if.end48_crit_edge ], [ 65536, %for.inc.i.if.end48_crit_edge ]
  %40 = ptrtoint ptr %top39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top39, align 4
  %sub.i135 = add i32 %41, 255
  %mul.i136 = and i32 %sub.i135, -256
  %42 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i136, ptr %arrayidx10, align 4
  %sub.i138 = add i32 %trace_buffer_size.0, 63
  %mul.i139 = and i32 %sub.i138, -64
  %add54 = add i32 %mul.i136, %mul.i139
  %top55 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 5, i32 1
  %43 = ptrtoint ptr %top55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add54, ptr %top55, align 4
  %sub.i141 = add i32 %add54, 255
  %mul.i142 = and i32 %sub.i141, -256
  %44 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i142, ptr %arrayidx12, align 4
  %sub.i144 = add i32 %fw_state_size.0, 63
  %mul.i145 = and i32 %sub.i144, -64
  %add61 = add i32 %mul.i142, %mul.i145
  %top62 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 6, i32 1
  %45 = ptrtoint ptr %top62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add61, ptr %top62, align 4
  %sub.i147 = add i32 %add61, 255
  %mul.i148 = and i32 %sub.i147, -256
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.i148, ptr %arrayidx14, align 4
  %add68 = add i32 %mul.i148, 256
  %top69 = getelementptr %struct.dmub_srv_region_info, ptr %out, i32 0, i32 2, i32 7, i32 1
  %47 = ptrtoint ptr %top69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add68, ptr %top69, align 4
  %add.i149 = or i32 %sub.i147, 255
  %sub.i150 = add i32 %add.i149, 4096
  %mul.i151 = and i32 %sub.i150, -4096
  %48 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i151, ptr %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_calc_fb_info(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %out) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %0 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %out, i32 0, i32 200)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %params, align 8
  %num_regions = getelementptr inbounds %struct.dmub_srv_region_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_regions to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp.not = icmp eq i8 %6, 8
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cpu_addr = getelementptr inbounds %struct.dmub_srv_fb_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_addr, align 4
  %gpu_addr = getelementptr inbounds %struct.dmub_srv_fb_params, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %gpu_addr, align 8
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 8
  %arrayidx = getelementptr %struct.dmub_srv_region_info, ptr %12, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %14
  %arrayidx7 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx7, align 8
  %16 = load i32, ptr %arrayidx, align 4
  %conv10 = zext i32 %16 to i64
  %add = add i64 %10, %conv10
  %gpu_addr13 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %gpu_addr13 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %gpu_addr13, align 8
  %top = getelementptr %struct.dmub_srv_region_info, ptr %12, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %20 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %19, %20
  %size = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %size, align 8
  %22 = load ptr, ptr %params, align 8
  %arrayidx.1 = getelementptr %struct.dmub_srv_region_info, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 %24
  %arrayidx7.1 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.1, ptr %arrayidx7.1, align 8
  %26 = load i32, ptr %arrayidx.1, align 4
  %conv10.1 = zext i32 %26 to i64
  %add.1 = add i64 %10, %conv10.1
  %gpu_addr13.1 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %gpu_addr13.1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add.1, ptr %gpu_addr13.1, align 8
  %top.1 = getelementptr %struct.dmub_srv_region_info, ptr %22, i32 0, i32 2, i32 1, i32 1
  %28 = ptrtoint ptr %top.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top.1, align 4
  %30 = load i32, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %29, %30
  %size.1 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 1, i32 2
  %31 = ptrtoint ptr %size.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.1, ptr %size.1, align 8
  %32 = load ptr, ptr %params, align 8
  %arrayidx.2 = getelementptr %struct.dmub_srv_region_info, ptr %32, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2, align 4
  %add.ptr.2 = getelementptr i8, ptr %8, i32 %34
  %arrayidx7.2 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.2, ptr %arrayidx7.2, align 8
  %36 = load i32, ptr %arrayidx.2, align 4
  %conv10.2 = zext i32 %36 to i64
  %add.2 = add i64 %10, %conv10.2
  %gpu_addr13.2 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 2, i32 1
  %37 = ptrtoint ptr %gpu_addr13.2 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.2, ptr %gpu_addr13.2, align 8
  %top.2 = getelementptr %struct.dmub_srv_region_info, ptr %32, i32 0, i32 2, i32 2, i32 1
  %38 = ptrtoint ptr %top.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %top.2, align 4
  %40 = load i32, ptr %arrayidx.2, align 4
  %sub.2 = sub i32 %39, %40
  %size.2 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 2, i32 2
  %41 = ptrtoint ptr %size.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.2, ptr %size.2, align 8
  %42 = load ptr, ptr %params, align 8
  %arrayidx.3 = getelementptr %struct.dmub_srv_region_info, ptr %42, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.3, align 4
  %add.ptr.3 = getelementptr i8, ptr %8, i32 %44
  %arrayidx7.3 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.3, ptr %arrayidx7.3, align 8
  %46 = load i32, ptr %arrayidx.3, align 4
  %conv10.3 = zext i32 %46 to i64
  %add.3 = add i64 %10, %conv10.3
  %gpu_addr13.3 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 3, i32 1
  %47 = ptrtoint ptr %gpu_addr13.3 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add.3, ptr %gpu_addr13.3, align 8
  %top.3 = getelementptr %struct.dmub_srv_region_info, ptr %42, i32 0, i32 2, i32 3, i32 1
  %48 = ptrtoint ptr %top.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top.3, align 4
  %50 = load i32, ptr %arrayidx.3, align 4
  %sub.3 = sub i32 %49, %50
  %size.3 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 3, i32 2
  %51 = ptrtoint ptr %size.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.3, ptr %size.3, align 8
  %52 = load ptr, ptr %params, align 8
  %arrayidx.4 = getelementptr %struct.dmub_srv_region_info, ptr %52, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.4, align 4
  %add.ptr.4 = getelementptr i8, ptr %8, i32 %54
  %arrayidx7.4 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.4, ptr %arrayidx7.4, align 8
  %56 = load i32, ptr %arrayidx.4, align 4
  %conv10.4 = zext i32 %56 to i64
  %add.4 = add i64 %10, %conv10.4
  %gpu_addr13.4 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 4, i32 1
  %57 = ptrtoint ptr %gpu_addr13.4 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add.4, ptr %gpu_addr13.4, align 8
  %top.4 = getelementptr %struct.dmub_srv_region_info, ptr %52, i32 0, i32 2, i32 4, i32 1
  %58 = ptrtoint ptr %top.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %top.4, align 4
  %60 = load i32, ptr %arrayidx.4, align 4
  %sub.4 = sub i32 %59, %60
  %size.4 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 4, i32 2
  %61 = ptrtoint ptr %size.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.4, ptr %size.4, align 8
  %62 = load ptr, ptr %params, align 8
  %arrayidx.5 = getelementptr %struct.dmub_srv_region_info, ptr %62, i32 0, i32 2, i32 5
  %63 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.5, align 4
  %add.ptr.5 = getelementptr i8, ptr %8, i32 %64
  %arrayidx7.5 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.5, ptr %arrayidx7.5, align 8
  %66 = load i32, ptr %arrayidx.5, align 4
  %conv10.5 = zext i32 %66 to i64
  %add.5 = add i64 %10, %conv10.5
  %gpu_addr13.5 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 5, i32 1
  %67 = ptrtoint ptr %gpu_addr13.5 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.5, ptr %gpu_addr13.5, align 8
  %top.5 = getelementptr %struct.dmub_srv_region_info, ptr %62, i32 0, i32 2, i32 5, i32 1
  %68 = ptrtoint ptr %top.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %top.5, align 4
  %70 = load i32, ptr %arrayidx.5, align 4
  %sub.5 = sub i32 %69, %70
  %size.5 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 5, i32 2
  %71 = ptrtoint ptr %size.5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.5, ptr %size.5, align 8
  %72 = load ptr, ptr %params, align 8
  %arrayidx.6 = getelementptr %struct.dmub_srv_region_info, ptr %72, i32 0, i32 2, i32 6
  %73 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.6, align 4
  %add.ptr.6 = getelementptr i8, ptr %8, i32 %74
  %arrayidx7.6 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 6
  %75 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.6, ptr %arrayidx7.6, align 8
  %76 = load i32, ptr %arrayidx.6, align 4
  %conv10.6 = zext i32 %76 to i64
  %add.6 = add i64 %10, %conv10.6
  %gpu_addr13.6 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 6, i32 1
  %77 = ptrtoint ptr %gpu_addr13.6 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add.6, ptr %gpu_addr13.6, align 8
  %top.6 = getelementptr %struct.dmub_srv_region_info, ptr %72, i32 0, i32 2, i32 6, i32 1
  %78 = ptrtoint ptr %top.6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %top.6, align 4
  %80 = load i32, ptr %arrayidx.6, align 4
  %sub.6 = sub i32 %79, %80
  %size.6 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 6, i32 2
  %81 = ptrtoint ptr %size.6 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.6, ptr %size.6, align 8
  %82 = load ptr, ptr %params, align 8
  %arrayidx.7 = getelementptr %struct.dmub_srv_region_info, ptr %82, i32 0, i32 2, i32 7
  %83 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.7, align 4
  %add.ptr.7 = getelementptr i8, ptr %8, i32 %84
  %arrayidx7.7 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 7
  %85 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr.7, ptr %arrayidx7.7, align 8
  %86 = load i32, ptr %arrayidx.7, align 4
  %conv10.7 = zext i32 %86 to i64
  %add.7 = add i64 %10, %conv10.7
  %gpu_addr13.7 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 7, i32 1
  %87 = ptrtoint ptr %gpu_addr13.7 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add.7, ptr %gpu_addr13.7, align 8
  %top.7 = getelementptr %struct.dmub_srv_region_info, ptr %82, i32 0, i32 2, i32 7, i32 1
  %88 = ptrtoint ptr %top.7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %top.7, align 4
  %90 = load i32, ptr %arrayidx.7, align 4
  %sub.7 = sub i32 %89, %90
  %size.7 = getelementptr %struct.dmub_srv_fb_info, ptr %out, i32 0, i32 1, i32 7, i32 2
  %91 = ptrtoint ptr %size.7 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub.7, ptr %size.7, align 8
  %92 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 8, ptr %out, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 4, %entry.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_has_hw_support(ptr noundef %dmub, ptr nocapture noundef writeonly %is_supported) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %is_supported to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_supported, align 1
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %1 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %is_supported1 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 16
  %3 = ptrtoint ptr %is_supported1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is_supported1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 %4(ptr noundef %dmub) #8
  %frombool = zext i1 %call to i8
  %5 = ptrtoint ptr %is_supported to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %is_supported, align 1
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_is_hw_init(ptr noundef %dmub, ptr nocapture noundef writeonly %is_hw_init) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %is_hw_init to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_hw_init, align 1
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %1 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  %is_hw_init4 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 17
  %5 = ptrtoint ptr %is_hw_init4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is_hw_init4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.then6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 %6(ptr noundef %dmub) #8
  %frombool = zext i1 %call to i8
  %7 = ptrtoint ptr %is_hw_init to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %is_hw_init, align 1
  br label %return

return:                                           ; preds = %if.then6, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_hw_init(ptr noundef %dmub, ptr noundef %params) local_unnamed_addr #5 align 64 {
entry:
  %cw0 = alloca %struct.dmub_window, align 8
  %cw1 = alloca %struct.dmub_window, align 8
  %cw2 = alloca %struct.dmub_window, align 8
  %cw3 = alloca %struct.dmub_window, align 8
  %cw4 = alloca %struct.dmub_window, align 8
  %cw5 = alloca %struct.dmub_window, align 8
  %cw6 = alloca %struct.dmub_window, align 8
  %inbox1 = alloca %struct.dmub_region, align 4
  %outbox1 = alloca %struct.dmub_region, align 4
  %outbox0 = alloca %struct.dmub_region, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %arrayidx2 = getelementptr [8 x ptr], ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [8 x ptr], ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr [8 x ptr], ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [8 x ptr], ptr %params, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr [8 x ptr], ptr %params, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [8 x ptr], ptr %params, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr [8 x ptr], ptr %params, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw0) #8
  %16 = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1, i32 1
  %18 = call ptr @memset(ptr %cw0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw1) #8
  %19 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1, i32 1
  %21 = getelementptr inbounds i8, ptr %cw1, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw2) #8
  %23 = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1, i32 1
  %25 = call ptr @memset(ptr %cw2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw3) #8
  %26 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1, i32 1
  %28 = call ptr @memset(ptr %cw3, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw4) #8
  %29 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %31 = call ptr @memset(ptr %cw4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw5) #8
  %32 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1, i32 1
  %34 = call ptr @memset(ptr %cw5, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cw6) #8
  %35 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1, i32 1
  %37 = call ptr @memset(ptr %cw6, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbox1) #8
  %38 = getelementptr inbounds %struct.dmub_region, ptr %inbox1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbox1) #8
  %39 = getelementptr inbounds %struct.dmub_region, ptr %outbox1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbox0) #8
  %40 = getelementptr inbounds %struct.dmub_region, ptr %outbox0, i32 0, i32 1
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %41 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool15.not = icmp eq ptr %1, null
  %tobool16.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  %tobool18.not = icmp eq ptr %5, null
  %or.cond327 = select i1 %or.cond, i1 true, i1 %tobool18.not
  %tobool20.not = icmp eq ptr %7, null
  %or.cond328 = select i1 %or.cond327, i1 true, i1 %tobool20.not
  %tobool22.not = icmp eq ptr %9, null
  %or.cond329 = select i1 %or.cond328, i1 true, i1 %tobool22.not
  %tobool24.not = icmp eq ptr %11, null
  %or.cond330 = select i1 %or.cond329, i1 true, i1 %tobool24.not
  %tobool26.not = icmp eq ptr %13, null
  %or.cond331 = select i1 %or.cond330, i1 true, i1 %tobool26.not
  %tobool28.not = icmp eq ptr %15, null
  %or.cond332 = select i1 %or.cond331, i1 true, i1 %tobool28.not
  br i1 %or.cond332, label %land.end, label %if.end71

land.end:                                         ; preds = %if.end
  %.b326 = load i1, ptr @dmub_srv_hw_init.__already_done, align 1
  br i1 %.b326, label %land.end.if.then67_crit_edge, label %if.then35, !prof !13

land.end.if.then67_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then35:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dmub_srv_hw_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #8
  br label %if.then67

if.then67:                                        ; preds = %if.then35, %land.end.if.then67_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end
  %fb_base = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 1
  %43 = ptrtoint ptr %fb_base to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %fb_base, align 8
  %fb_base72 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 16
  %45 = ptrtoint ptr %fb_base72 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %fb_base72, align 8
  %fb_offset = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 2
  %46 = ptrtoint ptr %fb_offset to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %fb_offset, align 8
  %fb_offset73 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 17
  %48 = ptrtoint ptr %fb_offset73 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %fb_offset73, align 8
  %psp_version = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 3
  %49 = ptrtoint ptr %psp_version to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %psp_version, align 8
  %psp_version74 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 18
  %51 = ptrtoint ptr %psp_version74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %psp_version74, align 8
  %reset = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reset, align 4
  %tobool75.not = icmp eq ptr %53, null
  br i1 %tobool75.not, label %if.end71.if.end79_crit_edge, label %if.then76

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %53(ptr noundef %dmub) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end71.if.end79_crit_edge
  %gpu_addr = getelementptr inbounds %struct.dmub_fb, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gpu_addr, align 8
  %56 = ptrtoint ptr %cw0 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %cw0, align 8
  %57 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1610612736, ptr %16, align 8
  %size = getelementptr inbounds %struct.dmub_fb, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 8
  %sub = add i32 %59, 1610612735
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %17, align 4
  %gpu_addr83 = getelementptr inbounds %struct.dmub_fb, ptr %3, i32 0, i32 1
  %61 = ptrtoint ptr %gpu_addr83 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %gpu_addr83, align 8
  %63 = ptrtoint ptr %cw1 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %cw1, align 8
  %64 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1627389952, ptr %19, align 8
  %size89 = getelementptr inbounds %struct.dmub_fb, ptr %3, i32 0, i32 2
  %65 = ptrtoint ptr %size89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size89, align 8
  %sub91 = add i32 %66, 1627389951
  %67 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub91, ptr %20, align 4
  %load_inst_const = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 4
  %68 = ptrtoint ptr %load_inst_const to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %load_inst_const, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool94.not = icmp eq i8 %69, 0
  br i1 %tobool94.not, label %if.end79.if.end100_crit_edge, label %land.lhs.true

if.end79.if.end100_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end79
  %backdoor_load = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 3
  %70 = ptrtoint ptr %backdoor_load to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %backdoor_load, align 4
  %tobool96.not = icmp eq ptr %71, null
  br i1 %tobool96.not, label %land.lhs.true.if.end100_crit_edge, label %if.then97

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void %71(ptr noundef %dmub, ptr noundef nonnull %cw0, ptr noundef nonnull %cw1) #8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %land.lhs.true.if.end100_crit_edge, %if.end79.if.end100_crit_edge
  %gpu_addr101 = getelementptr inbounds %struct.dmub_fb, ptr %5, i32 0, i32 1
  %72 = ptrtoint ptr %gpu_addr101 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gpu_addr101, align 8
  %74 = ptrtoint ptr %cw2 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %cw2, align 8
  %75 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size, align 8
  %add104 = add i32 %76, 1610612736
  %77 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add104, ptr %23, align 8
  %size109 = getelementptr inbounds %struct.dmub_fb, ptr %5, i32 0, i32 2
  %78 = ptrtoint ptr %size109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size109, align 8
  %add110 = add i32 %79, %add104
  %80 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add110, ptr %24, align 4
  %gpu_addr113 = getelementptr inbounds %struct.dmub_fb, ptr %7, i32 0, i32 1
  %81 = ptrtoint ptr %gpu_addr113 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %gpu_addr113, align 8
  %83 = ptrtoint ptr %cw3 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %cw3, align 8
  %84 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1660944384, ptr %26, align 8
  %size119 = getelementptr inbounds %struct.dmub_fb, ptr %7, i32 0, i32 2
  %85 = ptrtoint ptr %size119 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size119, align 8
  %add120 = add i32 %86, 1660944384
  %87 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add120, ptr %27, align 4
  %gpu_addr123 = getelementptr inbounds %struct.dmub_fb, ptr %9, i32 0, i32 1
  %88 = ptrtoint ptr %gpu_addr123 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %gpu_addr123, align 8
  %90 = ptrtoint ptr %cw4 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %cw4, align 8
  %91 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1677721600, ptr %29, align 8
  %size129 = getelementptr inbounds %struct.dmub_fb, ptr %9, i32 0, i32 2
  %92 = ptrtoint ptr %size129 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size129, align 8
  %add130 = add i32 %93, 1677721600
  %94 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add130, ptr %30, align 4
  %95 = ptrtoint ptr %inbox1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1677721600, ptr %inbox1, align 4
  %96 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1677729792, ptr %38, align 4
  %97 = ptrtoint ptr %outbox1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1677729792, ptr %outbox1, align 4
  %98 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add130, ptr %39, align 4
  %gpu_addr145 = getelementptr inbounds %struct.dmub_fb, ptr %11, i32 0, i32 1
  %99 = ptrtoint ptr %gpu_addr145 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %gpu_addr145, align 8
  %101 = ptrtoint ptr %cw5 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %cw5, align 8
  %102 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1694498816, ptr %32, align 8
  %size151 = getelementptr inbounds %struct.dmub_fb, ptr %11, i32 0, i32 2
  %103 = ptrtoint ptr %size151 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size151, align 8
  %add152 = add i32 %104, 1694498816
  %105 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add152, ptr %33, align 4
  %106 = ptrtoint ptr %outbox0 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1610612720, ptr %outbox0, align 4
  %sub159 = add i32 %104, -1610612736
  %107 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub159, ptr %40, align 4
  %gpu_addr161 = getelementptr inbounds %struct.dmub_fb, ptr %13, i32 0, i32 1
  %108 = ptrtoint ptr %gpu_addr161 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gpu_addr161, align 8
  %110 = ptrtoint ptr %cw6 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %cw6, align 8
  %111 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1711276032, ptr %35, align 8
  %size167 = getelementptr inbounds %struct.dmub_fb, ptr %13, i32 0, i32 2
  %112 = ptrtoint ptr %size167 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size167, align 8
  %add168 = add i32 %113, 1711276032
  %114 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add168, ptr %36, align 4
  %115 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %13, align 8
  %fw_state = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 5
  %117 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %fw_state, align 8
  %scratch_mem_fb171 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 4
  %118 = call ptr @memcpy(ptr %scratch_mem_fb171, ptr %15, i32 24)
  %setup_windows = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 4
  %119 = ptrtoint ptr %setup_windows to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %setup_windows, align 4
  %tobool173.not = icmp eq ptr %120, null
  br i1 %tobool173.not, label %if.end100.if.end177_crit_edge, label %if.then174

if.end100.if.end177_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then174:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  call void %120(ptr noundef %dmub, ptr noundef nonnull %cw2, ptr noundef nonnull %cw3, ptr noundef nonnull %cw4, ptr noundef nonnull %cw5, ptr noundef nonnull %cw6) #8
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %if.end100.if.end177_crit_edge
  %setup_outbox0 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 11
  %121 = ptrtoint ptr %setup_outbox0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %setup_outbox0, align 4
  %tobool179.not = icmp eq ptr %122, null
  br i1 %tobool179.not, label %if.end177.if.end183_crit_edge, label %if.then180

if.end177.if.end183_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  call void %122(ptr noundef %dmub, ptr noundef nonnull %outbox0) #8
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.end177.if.end183_crit_edge
  %setup_mailbox = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 5
  %123 = ptrtoint ptr %setup_mailbox to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %setup_mailbox, align 4
  %tobool185.not = icmp eq ptr %124, null
  br i1 %tobool185.not, label %if.end183.if.end189_crit_edge, label %if.then186

if.end183.if.end189_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  call void %124(ptr noundef %dmub, ptr noundef nonnull %inbox1) #8
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %if.end183.if.end189_crit_edge
  %setup_out_mailbox = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 8
  %125 = ptrtoint ptr %setup_out_mailbox to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %setup_out_mailbox, align 4
  %tobool191.not = icmp eq ptr %126, null
  br i1 %tobool191.not, label %if.end189.if.end195_crit_edge, label %if.then192

if.end189.if.end195_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  call void %126(ptr noundef %dmub, ptr noundef nonnull %outbox1) #8
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end189.if.end195_crit_edge
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %9, align 8
  %inbox1_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10
  %129 = ptrtoint ptr %inbox1_rb to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %inbox1_rb, align 4
  %capacity2.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %130 = ptrtoint ptr %capacity2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 8192, ptr %capacity2.i, align 4
  %rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 1
  %131 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %rptr.i, align 4
  %wrpt.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 2
  %132 = ptrtoint ptr %wrpt.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %wrpt.i, align 4
  %133 = load ptr, ptr %9, align 8
  %add.ptr = getelementptr i8, ptr %133, i32 8192
  %outbox1_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12
  %134 = ptrtoint ptr %outbox1_rb to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr, ptr %outbox1_rb, align 4
  %capacity2.i335 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 3
  %135 = ptrtoint ptr %capacity2.i335 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 8192, ptr %capacity2.i335, align 4
  %rptr.i337 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 1
  %136 = ptrtoint ptr %rptr.i337 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %rptr.i337, align 4
  %wrpt.i339 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 2
  %137 = ptrtoint ptr %wrpt.i339 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %wrpt.i339, align 4
  %138 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %11, align 8
  %140 = ptrtoint ptr %139 to i32
  %add203 = add i32 %140, 16
  %141 = inttoptr i32 %add203 to ptr
  %142 = ptrtoint ptr %size151 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size151, align 8
  %sub206 = add i32 %143, -64
  %outbox0_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13
  %144 = ptrtoint ptr %outbox0_rb to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %outbox0_rb, align 4
  %capacity2.i342 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 3
  %145 = ptrtoint ptr %capacity2.i342 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub206, ptr %capacity2.i342, align 4
  %rptr.i344 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 1
  %146 = ptrtoint ptr %rptr.i344 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %rptr.i344, align 4
  %wrpt.i346 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 2
  %147 = ptrtoint ptr %wrpt.i346 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %wrpt.i346, align 4
  %enable_dmub_boot_options = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 19
  %148 = ptrtoint ptr %enable_dmub_boot_options to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %enable_dmub_boot_options, align 4
  %tobool209.not = icmp eq ptr %149, null
  br i1 %tobool209.not, label %if.end195.if.end213_crit_edge, label %if.then210

if.end195.if.end213_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then210:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  call void %149(ptr noundef %dmub, ptr noundef %params) #8
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.end195.if.end213_crit_edge
  %reset_release = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 2
  %150 = ptrtoint ptr %reset_release to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reset_release, align 4
  %tobool215.not = icmp eq ptr %151, null
  br i1 %tobool215.not, label %if.end213.if.end219_crit_edge, label %if.then216

if.end213.if.end219_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

if.then216:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  call void %151(ptr noundef %dmub) #8
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end213.if.end219_crit_edge
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %152 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %hw_init, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %if.then67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end219 ], [ 4, %if.then67 ], [ 4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbox0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbox1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbox1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cw0) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_hw_reset(ptr noundef %dmub) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %0 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %dmub) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 1
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 4, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_cmd_queue(ptr nocapture noundef %dmub, ptr nocapture noundef readonly %cmd) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %inbox1_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10
  %2 = ptrtoint ptr %inbox1_rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inbox1_rb, align 4
  %wrpt.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %wrpt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrpt.i, align 4
  %rptr.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp ult i32 %5, %7
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %7
  br label %dmub_rb_full.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %capacity.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity.i.i, align 4
  %sub5.neg.i.i = sub i32 %5, %7
  %sub6.i.i = add i32 %sub5.neg.i.i, %9
  br label %dmub_rb_full.exit.i

dmub_rb_full.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %data_count.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub6.i.i, %if.else.i.i ]
  %capacity7.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %capacity7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity7.i.i, align 4
  %sub8.i.i = add i32 %11, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %data_count.0.i.i, i32 %sub8.i.i)
  %cmp9.i.i = icmp eq i32 %data_count.0.i.i, %sub8.i.i
  br i1 %cmp9.i.i, label %dmub_rb_full.exit.i.return_crit_edge, label %if.end.i

dmub_rb_full.exit.i.return_crit_edge:             ; preds = %dmub_rb_full.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %dmub_rb_full.exit.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %incdec.ptr.i = getelementptr i64, ptr %cmd, i32 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cmd, align 8
  %incdec.ptr2.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %13, ptr %add.ptr.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %cmd, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %incdec.ptr.i, align 8
  %incdec.ptr2.1.i = getelementptr i64, ptr %incdec.ptr2.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %16, ptr %incdec.ptr2.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %cmd, i32 3
  %18 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %incdec.ptr.1.i, align 8
  %incdec.ptr2.2.i = getelementptr i64, ptr %incdec.ptr2.1.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr2.1.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %19, ptr %incdec.ptr2.1.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %cmd, i32 4
  %21 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %incdec.ptr.2.i, align 8
  %incdec.ptr2.3.i = getelementptr i64, ptr %incdec.ptr2.2.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr2.2.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %22, ptr %incdec.ptr2.2.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %cmd, i32 5
  %24 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %incdec.ptr.3.i, align 8
  %incdec.ptr2.4.i = getelementptr i64, ptr %incdec.ptr2.3.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr2.3.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %25, ptr %incdec.ptr2.3.i, align 8
  %incdec.ptr.5.i = getelementptr i64, ptr %cmd, i32 6
  %27 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %incdec.ptr.4.i, align 8
  %incdec.ptr2.5.i = getelementptr i64, ptr %incdec.ptr2.4.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr2.4.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %28, ptr %incdec.ptr2.4.i, align 8
  %incdec.ptr.6.i = getelementptr i64, ptr %cmd, i32 7
  %30 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %incdec.ptr.5.i, align 8
  %incdec.ptr2.6.i = getelementptr i64, ptr %incdec.ptr2.5.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr2.5.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %31, ptr %incdec.ptr2.5.i, align 8
  %33 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %incdec.ptr.6.i, align 8
  %35 = ptrtoint ptr %incdec.ptr2.6.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %34, ptr %incdec.ptr2.6.i, align 8
  %36 = ptrtoint ptr %wrpt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrpt.i, align 4
  %add.i = add i32 %37, 64
  store i32 %add.i, ptr %wrpt.i, align 4
  %38 = ptrtoint ptr %capacity7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %capacity7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %39)
  %cmp5.not.i = icmp ult i32 %add.i, %39
  br i1 %cmp5.not.i, label %if.end.i.return_crit_edge, label %if.then7.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %add.i, %39
  %40 = ptrtoint ptr %wrpt.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem.i, ptr %wrpt.i, align 4
  br label %return

return:                                           ; preds = %if.then7.i, %if.end.i.return_crit_edge, %dmub_rb_full.exit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %entry.return_crit_edge ], [ 2, %dmub_rb_full.exit.i.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_cmd_execute(ptr noundef %dmub) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inbox1_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10
  %2 = ptrtoint ptr %inbox1_rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %flush_rb.sroa.0.0.copyload = load ptr, ptr %inbox1_rb, align 4
  %flush_rb.sroa.8.0.inbox1_rb.sroa_idx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %flush_rb.sroa.8.0.copyload = load i32, ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx, align 4
  %flush_rb.sroa.10.0.inbox1_rb.sroa_idx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %flush_rb.sroa.10.0.inbox1_rb.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %flush_rb.sroa.10.0.copyload = load i32, ptr %flush_rb.sroa.10.0.inbox1_rb.sroa_idx, align 4
  %inbox1_last_wptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 11
  %5 = ptrtoint ptr %inbox1_last_wptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inbox1_last_wptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %flush_rb.sroa.8.0.copyload)
  %cmp.not18.i = icmp eq i32 %6, %flush_rb.sroa.8.0.copyload
  br i1 %cmp.not18.i, label %if.end.dmub_rb_flush_pending.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.dmub_rb_flush_pending.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmub_rb_flush_pending.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %rptr.019.i = phi i32 [ %rptr.1.i, %if.end.i.while.body.i_crit_edge ], [ %6, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %flush_rb.sroa.0.0.copyload, i32 %rptr.019.i
  %incdec.ptr.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load volatile i64, ptr %add.ptr.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %incdec.ptr.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load volatile i64, ptr %incdec.ptr.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %incdec.ptr.1.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load volatile i64, ptr %incdec.ptr.1.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %incdec.ptr.2.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load volatile i64, ptr %incdec.ptr.2.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %incdec.ptr.3.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load volatile i64, ptr %incdec.ptr.3.i, align 8
  %incdec.ptr.5.i = getelementptr i64, ptr %incdec.ptr.4.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %incdec.ptr.4.i, align 8
  %incdec.ptr.6.i = getelementptr i64, ptr %incdec.ptr.5.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load volatile i64, ptr %incdec.ptr.5.i, align 8
  %21 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load volatile i64, ptr %incdec.ptr.6.i, align 8
  %add.i = add i32 %rptr.019.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %flush_rb.sroa.10.0.copyload)
  %cmp4.not.i = icmp ult i32 %add.i, %flush_rb.sroa.10.0.copyload
  br i1 %cmp4.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %add.i, %flush_rb.sroa.10.0.copyload
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %rptr.1.i = phi i32 [ %rem.i, %if.then.i ], [ %add.i, %while.body.i.if.end.i_crit_edge ]
  %cmp.not.i = icmp eq i32 %rptr.1.i, %flush_rb.sroa.8.0.copyload
  br i1 %cmp.not.i, label %if.end.i.dmub_rb_flush_pending.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.dmub_rb_flush_pending.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmub_rb_flush_pending.exit

dmub_rb_flush_pending.exit:                       ; preds = %if.end.i.dmub_rb_flush_pending.exit_crit_edge, %if.end.dmub_rb_flush_pending.exit_crit_edge
  %set_inbox1_wptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 7
  %23 = ptrtoint ptr %set_inbox1_wptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_inbox1_wptr, align 4
  %25 = ptrtoint ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx, align 4
  tail call void %24(ptr noundef %dmub, i32 noundef %26) #8
  %27 = ptrtoint ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flush_rb.sroa.8.0.inbox1_rb.sroa_idx, align 4
  %29 = ptrtoint ptr %inbox1_last_wptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %inbox1_last_wptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %dmub_rb_flush_pending.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dmub_rb_flush_pending.exit ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_wait_for_auto_load(ptr noundef %dmub, i32 noundef %timeout_us) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup8_crit_edge, label %for.cond.preheader

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

for.cond.preheader:                               ; preds = %entry
  %get_fw_status = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %add, %if.end7.for.body_crit_edge ]
  %2 = ptrtoint ptr %get_fw_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fw_status, align 4
  %call = tail call i32 %3(ptr noundef %dmub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call)
  %.not = icmp ugt i32 %call, -1073741825
  br i1 %.not, label %for.body.cleanup8_crit_edge, label %if.end7

for.body.cleanup8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #8
  %add = add i32 %i.013, 100
  %cmp.not = icmp ugt i32 %add, %timeout_us
  br i1 %cmp.not, label %if.end7.cleanup8_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end7.cleanup8_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7.cleanup8_crit_edge, %for.body.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ 4, %entry.cleanup8_crit_edge ], [ 3, %if.end7.cleanup8_crit_edge ], [ 0, %for.body.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_wait_for_phy_init(ptr noundef %dmub, i32 noundef %timeout_us) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_phy_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 18
  %2 = ptrtoint ptr %is_phy_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_phy_init, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.012 = phi i32 [ %add, %if.end7.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %is_phy_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_phy_init, align 4
  %call = tail call zeroext i1 %5(ptr noundef %dmub) #8
  br i1 %call, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #8
  %add = add i32 %i.012, 10
  %cmp.not = icmp ugt i32 %add, %timeout_us
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 3, %if.end7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_wait_for_idle(ptr noundef %dmub, i32 noundef %timeout_us) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %get_inbox1_rptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 6
  %rptr5 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 1
  %capacity = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %wrpt.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.cond.preheader
  %i.018 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end9.for.body_crit_edge ]
  %2 = ptrtoint ptr %get_inbox1_rptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_inbox1_rptr, align 4
  %call = tail call i32 %3(ptr noundef %dmub) #8
  %4 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp1 = icmp ugt i32 %call, %5
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %6 = ptrtoint ptr %rptr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %rptr5, align 4
  %7 = ptrtoint ptr %wrpt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wrpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call)
  %cmp.i = icmp eq i32 %8, %call
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %inc = add i32 %i.018, 1
  %cmp.not = icmp ugt i32 %inc, %timeout_us
  br i1 %cmp.not, label %if.end9.cleanup_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 3, %if.end9.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_send_gpint_command(ptr noundef %dmub, i32 noundef %command_code, i16 noundef zeroext %param, i32 noundef %timeout_us) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %0 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_gpint = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %2 = ptrtoint ptr %set_gpint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_gpint, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %is_gpint_acked = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 23
  %4 = ptrtoint ptr %is_gpint_acked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_gpint_acked, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %bf.value = shl i32 %command_code, 4
  %conv = zext i16 %param to i32
  %bf.shl13 = shl nuw i32 %conv, 16
  %bf.set10 = and i32 %bf.value, 65520
  %bf.clear14 = or i32 %bf.shl13, %bf.set10
  %bf.set15 = or i32 %bf.clear14, 1
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.set15, 0
  tail call void %3(ptr noundef %dmub, [1 x i32] %.fca.0.insert) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_us)
  %cmp41.not = icmp eq i32 %timeout_us, 0
  br i1 %cmp41.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %timeout_us
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %is_gpint_acked to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is_gpint_acked, align 4
  %call = tail call zeroext i1 %8(ptr noundef %dmub, [1 x i32] %.fca.0.insert) #8
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ], [ 4, %if.end3.cleanup_crit_edge ], [ 3, %if.end7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 3, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_get_gpint_response(ptr noundef %dmub, ptr nocapture noundef writeonly %response) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %response, align 4
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %1 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %get_gpint_response = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 24
  %3 = ptrtoint ptr %get_gpint_response to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_gpint_response, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %dmub) #8
  %5 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %response, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 4, %entry.return_crit_edge ], [ 4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_get_gpint_dataout(ptr noundef %dmub, ptr nocapture noundef writeonly %dataout) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dataout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dataout, align 4
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %1 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %get_gpint_dataout = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 25
  %3 = ptrtoint ptr %get_gpint_dataout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_gpint_dataout, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %dmub) #8
  %5 = ptrtoint ptr %dataout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %dataout, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 4, %entry.return_crit_edge ], [ 4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_get_fw_boot_status(ptr noundef %dmub, ptr nocapture noundef writeonly %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %sw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 14
  %1 = ptrtoint ptr %sw_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sw_init, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %get_fw_status = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 21
  %3 = ptrtoint ptr %get_fw_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_fw_status, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %dmub) #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %status, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 4, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_cmd_with_reply_data(ptr noundef %dmub, ptr nocapture noundef %cmd) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init.i, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %inbox1_rb.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10
  %2 = ptrtoint ptr %inbox1_rb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inbox1_rb.i, align 4
  %wrpt.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrpt.i.i, align 4
  %rptr.i.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i.i = icmp ult i32 %5, %7
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %5, %7
  br label %dmub_rb_full.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %capacity.i.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %capacity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity.i.i.i, align 4
  %sub5.neg.i.i.i = sub i32 %5, %7
  %sub6.i.i.i = add i32 %sub5.neg.i.i.i, %9
  br label %dmub_rb_full.exit.i.i

dmub_rb_full.exit.i.i:                            ; preds = %if.else.i.i.i, %if.then.i.i.i
  %data_count.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %sub6.i.i.i, %if.else.i.i.i ]
  %capacity7.i.i.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %capacity7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity7.i.i.i, align 4
  %sub8.i.i.i = add i32 %11, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %data_count.0.i.i.i, i32 %sub8.i.i.i)
  %cmp9.i.i.i = icmp eq i32 %data_count.0.i.i.i, %sub8.i.i.i
  br i1 %cmp9.i.i.i, label %dmub_rb_full.exit.i.i.cleanup_crit_edge, label %if.end.i.i

dmub_rb_full.exit.i.i.cleanup_crit_edge:          ; preds = %dmub_rb_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %dmub_rb_full.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %incdec.ptr.i.i = getelementptr i64, ptr %cmd, i32 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cmd, align 8
  %incdec.ptr2.i.i = getelementptr i64, ptr %add.ptr.i.i, i32 1
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %13, ptr %add.ptr.i.i, align 8
  %incdec.ptr.1.i.i = getelementptr i64, ptr %cmd, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %incdec.ptr.i.i, align 8
  %incdec.ptr2.1.i.i = getelementptr i64, ptr %incdec.ptr2.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %16, ptr %incdec.ptr2.i.i, align 8
  %incdec.ptr.2.i.i = getelementptr i64, ptr %cmd, i32 3
  %18 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %incdec.ptr.1.i.i, align 8
  %incdec.ptr2.2.i.i = getelementptr i64, ptr %incdec.ptr2.1.i.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr2.1.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %19, ptr %incdec.ptr2.1.i.i, align 8
  %incdec.ptr.3.i.i = getelementptr i64, ptr %cmd, i32 4
  %21 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %incdec.ptr.2.i.i, align 8
  %incdec.ptr2.3.i.i = getelementptr i64, ptr %incdec.ptr2.2.i.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr2.2.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %22, ptr %incdec.ptr2.2.i.i, align 8
  %incdec.ptr.4.i.i = getelementptr i64, ptr %cmd, i32 5
  %24 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %incdec.ptr.3.i.i, align 8
  %incdec.ptr2.4.i.i = getelementptr i64, ptr %incdec.ptr2.3.i.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr2.3.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %25, ptr %incdec.ptr2.3.i.i, align 8
  %incdec.ptr.5.i.i = getelementptr i64, ptr %cmd, i32 6
  %27 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %incdec.ptr.4.i.i, align 8
  %incdec.ptr2.5.i.i = getelementptr i64, ptr %incdec.ptr2.4.i.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr2.4.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %28, ptr %incdec.ptr2.4.i.i, align 8
  %incdec.ptr.6.i.i = getelementptr i64, ptr %cmd, i32 7
  %30 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %incdec.ptr.5.i.i, align 8
  %incdec.ptr2.6.i.i = getelementptr i64, ptr %incdec.ptr2.5.i.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr2.5.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %31, ptr %incdec.ptr2.5.i.i, align 8
  %33 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %incdec.ptr.6.i.i, align 8
  %35 = ptrtoint ptr %incdec.ptr2.6.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %34, ptr %incdec.ptr2.6.i.i, align 8
  %36 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrpt.i.i, align 4
  %add.i.i = add i32 %37, 64
  store i32 %add.i.i, ptr %wrpt.i.i, align 4
  %38 = ptrtoint ptr %capacity7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %capacity7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %39)
  %cmp5.not.i.i = icmp ult i32 %add.i.i, %39
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then7.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.i = urem i32 %add.i.i, %39
  %40 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem.i.i, ptr %wrpt.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7.i.i, %if.end.i.i.if.end_crit_edge
  %41 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hw_init.i, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i20 = icmp eq i8 %42, 0
  br i1 %tobool.not.i20, label %if.end.cleanup_crit_edge, label %if.end.i22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i22:                                       ; preds = %if.end
  %43 = ptrtoint ptr %inbox1_rb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %flush_rb.sroa.0.0.copyload.i = load ptr, ptr %inbox1_rb.i, align 4
  %44 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %flush_rb.sroa.8.0.copyload.i = load i32, ptr %wrpt.i.i, align 4
  %45 = ptrtoint ptr %capacity7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %flush_rb.sroa.10.0.copyload.i = load i32, ptr %capacity7.i.i.i, align 4
  %inbox1_last_wptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 11
  %46 = ptrtoint ptr %inbox1_last_wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inbox1_last_wptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %flush_rb.sroa.8.0.copyload.i)
  %cmp.not18.i.i = icmp eq i32 %47, %flush_rb.sroa.8.0.copyload.i
  br i1 %cmp.not18.i.i, label %if.end.i22.if.end4_crit_edge, label %if.end.i22.while.body.i.i_crit_edge

if.end.i22.while.body.i.i_crit_edge:              ; preds = %if.end.i22
  br label %while.body.i.i

if.end.i22.if.end4_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

while.body.i.i:                                   ; preds = %if.end.i.i33.while.body.i.i_crit_edge, %if.end.i22.while.body.i.i_crit_edge
  %rptr.019.i.i = phi i32 [ %rptr.1.i.i, %if.end.i.i33.while.body.i.i_crit_edge ], [ %47, %if.end.i22.while.body.i.i_crit_edge ]
  %add.ptr.i.i23 = getelementptr i8, ptr %flush_rb.sroa.0.0.copyload.i, i32 %rptr.019.i.i
  %incdec.ptr.i.i24 = getelementptr i64, ptr %add.ptr.i.i23, i32 1
  %48 = ptrtoint ptr %add.ptr.i.i23 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load volatile i64, ptr %add.ptr.i.i23, align 8
  %incdec.ptr.1.i.i25 = getelementptr i64, ptr %incdec.ptr.i.i24, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i.i24 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load volatile i64, ptr %incdec.ptr.i.i24, align 8
  %incdec.ptr.2.i.i26 = getelementptr i64, ptr %incdec.ptr.1.i.i25, i32 1
  %52 = ptrtoint ptr %incdec.ptr.1.i.i25 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load volatile i64, ptr %incdec.ptr.1.i.i25, align 8
  %incdec.ptr.3.i.i27 = getelementptr i64, ptr %incdec.ptr.2.i.i26, i32 1
  %54 = ptrtoint ptr %incdec.ptr.2.i.i26 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load volatile i64, ptr %incdec.ptr.2.i.i26, align 8
  %incdec.ptr.4.i.i28 = getelementptr i64, ptr %incdec.ptr.3.i.i27, i32 1
  %56 = ptrtoint ptr %incdec.ptr.3.i.i27 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load volatile i64, ptr %incdec.ptr.3.i.i27, align 8
  %incdec.ptr.5.i.i29 = getelementptr i64, ptr %incdec.ptr.4.i.i28, i32 1
  %58 = ptrtoint ptr %incdec.ptr.4.i.i28 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load volatile i64, ptr %incdec.ptr.4.i.i28, align 8
  %incdec.ptr.6.i.i30 = getelementptr i64, ptr %incdec.ptr.5.i.i29, i32 1
  %60 = ptrtoint ptr %incdec.ptr.5.i.i29 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load volatile i64, ptr %incdec.ptr.5.i.i29, align 8
  %62 = ptrtoint ptr %incdec.ptr.6.i.i30 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load volatile i64, ptr %incdec.ptr.6.i.i30, align 8
  %add.i.i31 = add i32 %rptr.019.i.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i31, i32 %flush_rb.sroa.10.0.copyload.i)
  %cmp4.not.i.i = icmp ult i32 %add.i.i31, %flush_rb.sroa.10.0.copyload.i
  br i1 %cmp4.not.i.i, label %while.body.i.i.if.end.i.i33_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i33_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i33

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.i32 = urem i32 %add.i.i31, %flush_rb.sroa.10.0.copyload.i
  br label %if.end.i.i33

if.end.i.i33:                                     ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i33_crit_edge
  %rptr.1.i.i = phi i32 [ %rem.i.i32, %if.then.i.i ], [ %add.i.i31, %while.body.i.i.if.end.i.i33_crit_edge ]
  %cmp.not.i.i = icmp eq i32 %rptr.1.i.i, %flush_rb.sroa.8.0.copyload.i
  br i1 %cmp.not.i.i, label %if.end.i.i33.if.end4_crit_edge, label %if.end.i.i33.while.body.i.i_crit_edge

if.end.i.i33.while.body.i.i_crit_edge:            ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i33.if.end4_crit_edge:                   ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i33.if.end4_crit_edge, %if.end.i22.if.end4_crit_edge
  %set_inbox1_wptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 7
  %64 = ptrtoint ptr %set_inbox1_wptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_inbox1_wptr.i, align 4
  tail call void %65(ptr noundef %dmub, i32 noundef %flush_rb.sroa.8.0.copyload.i) #8
  %66 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wrpt.i.i, align 4
  %68 = ptrtoint ptr %inbox1_last_wptr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %inbox1_last_wptr.i, align 4
  %69 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hw_init.i, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i36 = icmp eq i8 %70, 0
  br i1 %tobool.not.i36, label %if.end4.cleanup_crit_edge, label %for.cond.preheader.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end4
  %get_inbox1_rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.018.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %get_inbox1_rptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_inbox1_rptr.i, align 4
  %call.i = tail call i32 %72(ptr noundef %dmub) #8
  %73 = ptrtoint ptr %capacity7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %capacity7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %74)
  %cmp1.i = icmp ugt i32 %call.i, %74
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %if.end3.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %for.body.i
  %75 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i, ptr %rptr.i.i.i, align 4
  %76 = ptrtoint ptr %wrpt.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wrpt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %call.i)
  %cmp.i.i = icmp eq i32 %77, %call.i
  br i1 %cmp.i.i, label %if.end8, label %if.end9.i

if.end9.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond = icmp eq i32 %inc.i, 100001
  br i1 %exitcond, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3.i
  %79 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i = icmp eq i32 %80, 0
  %81 = ptrtoint ptr %inbox1_rb.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %inbox1_rb.i, align 4
  br i1 %cmp.i, label %cond.true.i, label %if.end8.dmub_rb_get_return_data.exit_crit_edge

if.end8.dmub_rb_get_return_data.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmub_rb_get_return_data.exit

cond.true.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %capacity7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %capacity7.i.i.i, align 4
  br label %dmub_rb_get_return_data.exit

dmub_rb_get_return_data.exit:                     ; preds = %cond.true.i, %if.end8.dmub_rb_get_return_data.exit_crit_edge
  %.sink.i = phi i32 [ %84, %cond.true.i ], [ %80, %if.end8.dmub_rb_get_return_data.exit_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %82, i32 %.sink.i
  %cond.i = getelementptr i8, ptr %add.ptr4.i, i32 -64
  %85 = call ptr @memcpy(ptr %cmd, ptr %cond.i, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %dmub_rb_get_return_data.exit, %if.end9.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dmub_rb_full.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dmub_rb_get_return_data.exit ], [ 4, %entry.cleanup_crit_edge ], [ 2, %dmub_rb_full.exit.i.i.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ], [ 4, %if.end4.cleanup_crit_edge ], [ 3, %if.end9.i.cleanup_crit_edge ], [ 5, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_srv_get_outbox0_msg(ptr noundef %dmub, ptr nocapture noundef writeonly %entry1) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_outbox0_wptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 12
  %0 = ptrtoint ptr %get_outbox0_wptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_outbox0_wptr, align 4
  %call = tail call i32 %1(ptr noundef %dmub) #8
  %wrpt = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %wrpt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %wrpt, align 8
  %rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %call)
  %cmp.i = icmp eq i32 %4, %call
  br i1 %cmp.i, label %entry.dmub_rb_out_trace_buffer_front.exit_crit_edge, label %if.end.i

entry.dmub_rb_out_trace_buffer_front.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmub_rb_out_trace_buffer_front.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %outbox0_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13
  %5 = ptrtoint ptr %outbox0_rb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outbox0_rb, align 4
  %div19.i = lshr i32 %4, 3
  %add.ptr.i = getelementptr i64, ptr %6, i32 %div19.i
  %incdec.ptr.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  %incdec.ptr6.i = getelementptr i64, ptr %entry1, i32 1
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %entry1, align 8
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %incdec.ptr.i, align 8
  %12 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %incdec.ptr6.i, align 8
  %13 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rptr.i, align 4
  %add.i = add i32 %14, 16
  %capacity.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 13, i32 3
  %15 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capacity.i, align 4
  %rem.i = urem i32 %add.i, %16
  store i32 %rem.i, ptr %rptr.i, align 4
  br label %dmub_rb_out_trace_buffer_front.exit

dmub_rb_out_trace_buffer_front.exit:              ; preds = %if.end.i, %entry.dmub_rb_out_trace_buffer_front.exit_crit_edge
  %17 = xor i1 %cmp.i, true
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_srv_get_diagnostic_data(ptr noundef %dmub, ptr noundef %diag_data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dmub, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %get_diagnostic_data = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 30
  %0 = ptrtoint ptr %get_diagnostic_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_diagnostic_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %diag_data, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef nonnull %dmub, ptr noundef nonnull %diag_data) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_srv_should_detect(ptr noundef %dmub) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %should_detect = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 31
  %2 = ptrtoint ptr %should_detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %should_detect, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 %3(ptr noundef %dmub) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_clear_inbox0_ack(ptr noundef %dmub) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %clear_inbox0_ack_register = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 26
  %2 = ptrtoint ptr %clear_inbox0_ack_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clear_inbox0_ack_register, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %dmub) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 4, %lor.lhs.false.return_crit_edge ], [ 4, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_wait_for_inbox0_ack(ptr noundef %dmub, i32 noundef %timeout_us) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %read_inbox0_ack_register = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 27
  %2 = ptrtoint ptr %read_inbox0_ack_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_inbox0_ack_register, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.012, 1
  %cmp.not = icmp ugt i32 %inc, %timeout_us
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %4 = ptrtoint ptr %read_inbox0_ack_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_inbox0_ack_register, align 4
  %call = tail call i32 %5(ptr noundef %dmub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %lor.lhs.false.cleanup_crit_edge ], [ 4, %entry.cleanup_crit_edge ], [ 3, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_send_inbox0_cmd(ptr noundef %dmub, [1 x i32] %data.coerce) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %send_inbox0_cmd = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 28
  %2 = ptrtoint ptr %send_inbox0_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_inbox0_cmd, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %dmub, [1 x i32] %data.coerce) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 4, %lor.lhs.false.return_crit_edge ], [ 4, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_reset(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_reset_release(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_backdoor_load(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_setup_windows(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_setup_mailbox(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_inbox1_rptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_set_inbox1_wptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn20_is_supported(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn20_is_hw_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_set_gpint(ptr noundef, [1 x i32]) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn20_is_gpint_acked(ptr noundef, [1 x i32]) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_gpint_response(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_fw_boot_status(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_enable_dmub_boot_options(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_skip_dmub_panel_power_sequence(ptr noundef, i1 noundef zeroext) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_current_time(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_setup_out_mailbox(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_outbox1_wptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_set_outbox1_rptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_setup_outbox0(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn20_get_outbox0_wptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_set_outbox0_rptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn20_get_diagnostic_data(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn21_is_phy_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn30_backdoor_load(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn30_setup_windows(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_reset(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_reset_release(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_backdoor_load(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_setup_windows(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_setup_mailbox(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_inbox1_rptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_set_inbox1_wptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_setup_out_mailbox(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_outbox1_wptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_set_outbox1_rptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn31_is_supported(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn31_is_hw_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_set_gpint(ptr noundef, [1 x i32]) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn31_is_gpint_acked(ptr noundef, [1 x i32]) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_gpint_response(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_gpint_dataout(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_fw_boot_status(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_enable_dmub_boot_options(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_skip_dmub_panel_power_sequence(ptr noundef, i1 noundef zeroext) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_setup_outbox0(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_outbox0_wptr(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_set_outbox0_rptr(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_dcn31_get_diagnostic_data(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn31_should_detect(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_dcn31_get_current_time(ptr noundef) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c", i32 476, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_dmcu.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dce_dmcu = type { %struct.dmcu, ptr, ptr, ptr }
%struct.dce_dmcu_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_dmcu_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_dmcu_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.max_lane_count = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.max_down_spread = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%union.dprx_feature = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%union.sink_count = type { %struct.anon.47 }
%struct.anon.47 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.48 }
%struct.anon.48 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.49 }
%struct.anon.49 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.50 }
%struct.anon.50 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.dpia_info = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.53 }
%struct.anon.53 = type { i8, i8, %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psr_context = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, %union.dmcu_psr_level, i32, i8, i8 }
%union.dmcu_psr_level = type { %struct.anon.69 }
%struct.anon.69 = type { i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_dmcu_create = private unnamed_addr constant [16 x i8] c"dce_dmcu_create\00", align 1
@dce_funcs = internal constant { %struct.dmcu_funcs, [44 x i8] } { %struct.dmcu_funcs { ptr @dce_dmcu_init, ptr @dce_dmcu_load_iram, ptr @dce_dmcu_set_psr_enable, ptr @dce_dmcu_setup_psr, ptr @dce_get_dmcu_psr_state, ptr @dce_psr_wait_loop, ptr @dce_get_psr_wait_loop, ptr @dce_is_dmcu_initialized, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dce_dmcu_load_iram = private unnamed_addr constant [19 x i8] c"dce_dmcu_load_iram\00", align 1
@__func__.dce_dmcu_set_psr_enable = private unnamed_addr constant [24 x i8] c"dce_dmcu_set_psr_enable\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.dce_dmcu_setup_psr = private unnamed_addr constant [19 x i8] c"dce_dmcu_setup_psr\00", align 1
@__func__.dce_get_dmcu_psr_state = private unnamed_addr constant [23 x i8] c"dce_get_dmcu_psr_state\00", align 1
@__func__.dce_psr_wait_loop = private unnamed_addr constant [18 x i8] c"dce_psr_wait_loop\00", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 1117, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"dce_funcs\00", align 1
@___asan_gen_.5 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 1013, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @dce_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dce_dmcu_create(ptr noundef %ctx, ptr noundef %regs, ptr noundef %dmcu_shift, ptr noundef %dmcu_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce_dmcu_create, i32 noundef 1117) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.dmcu, ptr %call7.i.i, i32 0, i32 1
  %cached_wait_loop_number.i = getelementptr inbounds %struct.dmcu, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %cached_wait_loop_number.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cached_wait_loop_number.i, align 4
  %regs3.i = getelementptr inbounds %struct.dce_dmcu, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs3.i, align 8
  %dmcu_shift4.i = getelementptr inbounds %struct.dce_dmcu, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dmcu_shift4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dmcu_shift, ptr %dmcu_shift4.i, align 4
  %dmcu_mask5.i = getelementptr inbounds %struct.dce_dmcu, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmcu_mask5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dmcu_mask, ptr %dmcu_mask5.i, align 8
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dce_funcs, ptr %funcs.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_dmcu_destroy(ptr nocapture noundef %dmcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmcu, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %dmcu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmcu, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dce_dmcu_init(ptr nocapture noundef readnone %dmcu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_dmcu_load_iram(ptr nocapture noundef readonly %dmcu, i32 noundef %start_offset, ptr nocapture noundef readonly %src, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmcu, align 4
  %regs = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DMCU_RAM_ACCESS_CTRL = getelementptr inbounds %struct.dce_dmcu_registers, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %DMCU_RAM_ACCESS_CTRL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DMCU_RAM_ACCESS_CTRL, align 4
  %dmcu_shift = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %6 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmcu_shift, align 4
  %IRAM_HOST_ACCESS_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %IRAM_HOST_ACCESS_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %IRAM_HOST_ACCESS_EN, align 1
  %dmcu_mask = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %10 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmcu_mask, align 4
  %IRAM_HOST_ACCESS_EN1 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %IRAM_HOST_ACCESS_EN1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %IRAM_HOST_ACCESS_EN1, align 4
  %IRAM_WR_ADDR_AUTO_INC = getelementptr inbounds %struct.dce_dmcu_shift, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %IRAM_WR_ADDR_AUTO_INC to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %IRAM_WR_ADDR_AUTO_INC, align 1
  %conv = zext i8 %15 to i32
  %IRAM_WR_ADDR_AUTO_INC4 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %IRAM_WR_ADDR_AUTO_INC4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %IRAM_WR_ADDR_AUTO_INC4, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1, i32 noundef %conv, i32 noundef %17, i32 noundef 1) #6
  %18 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmcu, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %DCI_MEM_PWR_STATUS = getelementptr inbounds %struct.dce_dmcu_registers, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %DCI_MEM_PWR_STATUS to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DCI_MEM_PWR_STATUS, align 4
  %24 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmcu_shift, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv9 = zext i8 %27 to i32
  %28 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmcu_mask, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  tail call void @generic_reg_wait(ptr noundef %19, i32 noundef %23, i32 noundef %conv9, i32 noundef %31, i32 noundef 0, i32 noundef 2, i32 noundef 10, ptr noundef nonnull @__func__.dce_dmcu_load_iram, i32 noundef 96) #6
  %32 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmcu, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %DMCU_IRAM_WR_CTRL = getelementptr inbounds %struct.dce_dmcu_registers, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %DMCU_IRAM_WR_CTRL to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DMCU_IRAM_WR_CTRL, align 4
  tail call void @dm_write_reg_func(ptr noundef %33, i32 noundef %37, i32 noundef %start_offset, ptr noundef nonnull @__func__.dce_dmcu_load_iram) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp55.not = icmp eq i32 %bytes, 0
  br i1 %cmp55.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %count.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %38 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmcu, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %DMCU_IRAM_WR_DATA = getelementptr inbounds %struct.dce_dmcu_registers, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %DMCU_IRAM_WR_DATA to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DMCU_IRAM_WR_DATA, align 4
  %arrayidx = getelementptr i8, ptr %src, i32 %count.056
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %45 to i32
  tail call void @dm_write_reg_func(ptr noundef %39, i32 noundef %43, i32 noundef %conv19, ptr noundef nonnull @__func__.dce_dmcu_load_iram) #6
  %inc = add nuw i32 %count.056, 1
  %exitcond.not = icmp eq i32 %inc, %bytes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %46 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dmcu, align 4
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %DMCU_RAM_ACCESS_CTRL23 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %DMCU_RAM_ACCESS_CTRL23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %DMCU_RAM_ACCESS_CTRL23, align 4
  %52 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dmcu_shift, align 4
  %IRAM_HOST_ACCESS_EN25 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %IRAM_HOST_ACCESS_EN25 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %IRAM_HOST_ACCESS_EN25, align 1
  %56 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dmcu_mask, align 4
  %IRAM_HOST_ACCESS_EN27 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %IRAM_HOST_ACCESS_EN27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %IRAM_HOST_ACCESS_EN27, align 4
  %IRAM_WR_ADDR_AUTO_INC29 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %53, i32 0, i32 2
  %60 = ptrtoint ptr %IRAM_WR_ADDR_AUTO_INC29 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %IRAM_WR_ADDR_AUTO_INC29, align 1
  %conv30 = zext i8 %61 to i32
  %IRAM_WR_ADDR_AUTO_INC32 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %57, i32 0, i32 2
  %62 = ptrtoint ptr %IRAM_WR_ADDR_AUTO_INC32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %IRAM_WR_ADDR_AUTO_INC32, align 4
  %call33 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %47, i32 noundef %51, i32 noundef 2, i8 noundef zeroext %55, i32 noundef %59, i32 noundef 0, i32 noundef %conv30, i32 noundef %63, i32 noundef 0) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_dmcu_set_psr_enable(ptr nocapture noundef readonly %dmcu, i1 noundef zeroext %enable, i1 noundef zeroext %wait) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %1 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmcu, align 4
  %regs = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %MASTER_COMM_CNTL_REG to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %MASTER_COMM_CNTL_REG, align 4
  %dmcu_shift = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %7 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_INTERRUPT = getelementptr inbounds %struct.dce_dmcu_shift, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %MASTER_COMM_INTERRUPT to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %MASTER_COMM_INTERRUPT, align 1
  %conv = zext i8 %10 to i32
  %dmcu_mask = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %11 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_INTERRUPT2 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %MASTER_COMM_INTERRUPT2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %MASTER_COMM_INTERRUPT2, align 4
  tail call void @generic_reg_wait(ptr noundef %2, i32 noundef %6, i32 noundef %conv, i32 noundef %14, i32 noundef 0, i32 noundef 100, i32 noundef 801, ptr noundef nonnull @__func__.dce_dmcu_set_psr_enable, i32 noundef 146) #6
  %15 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmcu, align 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CMD_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %MASTER_COMM_CMD_REG to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %MASTER_COMM_CMD_REG, align 4
  %21 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_CMD_REG_BYTE0 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0, align 1
  %25 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_CMD_REG_BYTE08 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE08 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE08, align 4
  %. = select i1 %enable, i32 32, i32 33
  %call17 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %16, i32 noundef %20, i32 noundef 1, i8 noundef zeroext %24, i32 noundef %28, i32 noundef %.) #6
  %29 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmcu, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG21 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %MASTER_COMM_CNTL_REG21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %MASTER_COMM_CNTL_REG21, align 4
  %35 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_INTERRUPT23 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %MASTER_COMM_INTERRUPT23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %MASTER_COMM_INTERRUPT23, align 1
  %39 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_INTERRUPT25 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %MASTER_COMM_INTERRUPT25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %MASTER_COMM_INTERRUPT25, align 4
  %call26 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %30, i32 noundef %34, i32 noundef 1, i8 noundef zeroext %38, i32 noundef %42, i32 noundef 1) #6
  br i1 %wait, label %entry.for.body_crit_edge, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %entry.for.body_crit_edge
  %retryCount.064 = phi i32 [ %inc, %if.end44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @dce_get_dmcu_psr_state(ptr noundef %dmcu, ptr noundef nonnull %state)
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp35.not = icmp eq i32 %44, 0
  br i1 %enable, label %if.then34, label %if.else39

if.then34:                                        ; preds = %for.body
  br i1 %cmp35.not, label %if.then34.if.end44_crit_edge, label %if.then34.if.end45_crit_edge

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else39:                                        ; preds = %for.body
  br i1 %cmp35.not, label %if.else39.if.end45_crit_edge, label %if.else39.if.end44_crit_edge

if.else39.if.end44_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else39.if.end45_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end44:                                         ; preds = %if.else39.if.end44_crit_edge, %if.then34.if.end44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %retryCount.064, 1
  %exitcond.not = icmp eq i32 %inc, 101
  br i1 %exitcond.not, label %if.end44.if.end45_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end44.if.end45_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %if.end44.if.end45_crit_edge, %if.else39.if.end45_crit_edge, %if.then34.if.end45_crit_edge, %entry.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_dmcu_setup_psr(ptr nocapture noundef readonly %dmcu, ptr nocapture noundef readonly %link, ptr nocapture noundef readonly %psr_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %0 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_enc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %psr_program_dp_dphy_fast_training = getelementptr inbounds %struct.link_encoder_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %psr_program_dp_dphy_fast_training to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psr_program_dp_dphy_fast_training, align 4
  %psrExitLinkTrainingRequired = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 8
  %6 = ptrtoint ptr %psrExitLinkTrainingRequired to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %psrExitLinkTrainingRequired, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  tail call void %5(ptr noundef %1, i1 noundef zeroext %tobool) #6
  %8 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmcu, align 4
  %regs = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK = getelementptr inbounds %struct.dce_dmcu_registers, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %dmcu_shift = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %14 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %STATIC_SCREEN1_INT_TO_UC_EN, align 1
  %dmcu_mask = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %18 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN2 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %STATIC_SCREEN1_INT_TO_UC_EN2, align 4
  %STATIC_SCREEN2_INT_TO_UC_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %15, i32 0, i32 13
  %22 = ptrtoint ptr %STATIC_SCREEN2_INT_TO_UC_EN to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %STATIC_SCREEN2_INT_TO_UC_EN, align 1
  %conv = zext i8 %23 to i32
  %STATIC_SCREEN2_INT_TO_UC_EN5 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %19, i32 0, i32 13
  %24 = ptrtoint ptr %STATIC_SCREEN2_INT_TO_UC_EN5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %STATIC_SCREEN2_INT_TO_UC_EN5, align 4
  %STATIC_SCREEN3_INT_TO_UC_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %15, i32 0, i32 14
  %26 = ptrtoint ptr %STATIC_SCREEN3_INT_TO_UC_EN to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %STATIC_SCREEN3_INT_TO_UC_EN, align 1
  %conv7 = zext i8 %27 to i32
  %STATIC_SCREEN3_INT_TO_UC_EN9 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %19, i32 0, i32 14
  %28 = ptrtoint ptr %STATIC_SCREEN3_INT_TO_UC_EN9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %STATIC_SCREEN3_INT_TO_UC_EN9, align 4
  %STATIC_SCREEN4_INT_TO_UC_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %15, i32 0, i32 15
  %30 = ptrtoint ptr %STATIC_SCREEN4_INT_TO_UC_EN to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %STATIC_SCREEN4_INT_TO_UC_EN, align 1
  %conv11 = zext i8 %31 to i32
  %STATIC_SCREEN4_INT_TO_UC_EN13 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %19, i32 0, i32 15
  %32 = ptrtoint ptr %STATIC_SCREEN4_INT_TO_UC_EN13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %STATIC_SCREEN4_INT_TO_UC_EN13, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %9, i32 noundef %13, i32 noundef 4, i8 noundef zeroext %17, i32 noundef %21, i32 noundef 0, i32 noundef %conv, i32 noundef %25, i32 noundef 0, i32 noundef %conv7, i32 noundef %29, i32 noundef 0, i32 noundef %conv11, i32 noundef %33, i32 noundef 0) #6
  %controllerId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 3
  %34 = ptrtoint ptr %controllerId to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %controllerId, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb33
    i32 4, label %sw.bb43
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge258
  ]

entry.sw.epilog_crit_edge258:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dmcu, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK17 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK17, align 4
  %43 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN19 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN19 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %STATIC_SCREEN1_INT_TO_UC_EN19, align 1
  %47 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN21 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %STATIC_SCREEN1_INT_TO_UC_EN21, align 4
  %call22 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %38, i32 noundef %42, i32 noundef 1, i8 noundef zeroext %46, i32 noundef %50, i32 noundef 1) #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmcu, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK27 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK27, align 4
  %57 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN2_INT_TO_UC_EN29 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %STATIC_SCREEN2_INT_TO_UC_EN29 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %STATIC_SCREEN2_INT_TO_UC_EN29, align 1
  %61 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN2_INT_TO_UC_EN31 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %STATIC_SCREEN2_INT_TO_UC_EN31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %STATIC_SCREEN2_INT_TO_UC_EN31, align 4
  %call32 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %52, i32 noundef %56, i32 noundef 1, i8 noundef zeroext %60, i32 noundef %64, i32 noundef 1) #6
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dmcu, align 4
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK37 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK37, align 4
  %71 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN3_INT_TO_UC_EN39 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %STATIC_SCREEN3_INT_TO_UC_EN39 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %STATIC_SCREEN3_INT_TO_UC_EN39, align 1
  %75 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN3_INT_TO_UC_EN41 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %STATIC_SCREEN3_INT_TO_UC_EN41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %STATIC_SCREEN3_INT_TO_UC_EN41, align 4
  %call42 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %66, i32 noundef %70, i32 noundef 1, i8 noundef zeroext %74, i32 noundef %78, i32 noundef 1) #6
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dmcu, align 4
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK47 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK47 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK47, align 4
  %85 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN4_INT_TO_UC_EN49 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %STATIC_SCREEN4_INT_TO_UC_EN49 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %STATIC_SCREEN4_INT_TO_UC_EN49, align 1
  %89 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN4_INT_TO_UC_EN51 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %STATIC_SCREEN4_INT_TO_UC_EN51 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %STATIC_SCREEN4_INT_TO_UC_EN51, align 4
  %call52 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %80, i32 noundef %84, i32 noundef 1, i8 noundef zeroext %88, i32 noundef %92, i32 noundef 1) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dmcu, align 4
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %DMCU_INTERRUPT_TO_UC_EN_MASK56 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %DMCU_INTERRUPT_TO_UC_EN_MASK56 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DMCU_INTERRUPT_TO_UC_EN_MASK56, align 4
  %99 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dmcu_shift, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN58 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN58 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %STATIC_SCREEN1_INT_TO_UC_EN58, align 1
  %103 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dmcu_mask, align 4
  %STATIC_SCREEN1_INT_TO_UC_EN60 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %STATIC_SCREEN1_INT_TO_UC_EN60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %STATIC_SCREEN1_INT_TO_UC_EN60, align 4
  %call61 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %94, i32 noundef %98, i32 noundef 1, i8 noundef zeroext %102, i32 noundef %106, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb43, %sw.bb33, %sw.bb23, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge258
  %107 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %link_enc, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %psr_program_secondary_packet = getelementptr inbounds %struct.link_encoder_funcs, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %psr_program_secondary_packet to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %psr_program_secondary_packet, align 4
  %sdpTransmitLineNumDeadline = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 10
  %113 = ptrtoint ptr %sdpTransmitLineNumDeadline to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sdpTransmitLineNumDeadline, align 4
  tail call void %112(ptr noundef %108, i32 noundef %114) #6
  %115 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dmcu, align 4
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %MASTER_COMM_CNTL_REG to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %MASTER_COMM_CNTL_REG, align 4
  %121 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_INTERRUPT = getelementptr inbounds %struct.dce_dmcu_shift, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %MASTER_COMM_INTERRUPT to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %MASTER_COMM_INTERRUPT, align 1
  %conv69 = zext i8 %124 to i32
  %125 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_INTERRUPT71 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %MASTER_COMM_INTERRUPT71 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %MASTER_COMM_INTERRUPT71, align 4
  tail call void @generic_reg_wait(ptr noundef %116, i32 noundef %120, i32 noundef %conv69, i32 noundef %128, i32 noundef 0, i32 noundef 100, i32 noundef 801, ptr noundef nonnull @__func__.dce_dmcu_setup_psr, i32 noundef 240) #6
  %timehyst_frames = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 15
  %129 = ptrtoint ptr %timehyst_frames to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %timehyst_frames, align 4
  %bf.shl = shl i32 %130, 24
  %hyst_lines = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 16
  %131 = ptrtoint ptr %hyst_lines to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hyst_lines, align 4
  %bf.value73 = shl i32 %132, 17
  %bf.shl74 = and i32 %bf.value73, 16646144
  %bf.set76 = or i32 %bf.shl74, %bf.shl
  %rfb_update_auto_en = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 14
  %133 = ptrtoint ptr %rfb_update_auto_en to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rfb_update_auto_en, align 4, !range !24
  %135 = zext i8 %134 to i32
  %bf.shl81 = shl nuw nsw i32 %135, 16
  %bf.set83 = or i32 %bf.set76, %bf.shl81
  %transmitterId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 1
  %136 = ptrtoint ptr %transmitterId to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %transmitterId, align 4
  %bf.value85 = shl i32 %137, 13
  %bf.shl86 = and i32 %bf.value85, 57344
  %bf.set88 = or i32 %bf.set83, %bf.shl86
  %138 = ptrtoint ptr %controllerId to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %controllerId, align 4
  %bf.value91 = shl i32 %139, 10
  %bf.shl92 = and i32 %bf.value91, 7168
  %bf.set94 = or i32 %bf.set88, %bf.shl92
  %phyType = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 4
  %140 = ptrtoint ptr %phyType to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %phyType, align 4
  %bf.value96 = shl i32 %141, 9
  %bf.shl97 = and i32 %bf.value96, 512
  %psrFrameCaptureIndicationReq = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 9
  %142 = ptrtoint ptr %psrFrameCaptureIndicationReq to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %psrFrameCaptureIndicationReq, align 2, !range !24
  %144 = zext i8 %143 to i32
  %bf.shl104 = shl nuw nsw i32 %144, 8
  %bf.clear105 = or i32 %bf.set94, %bf.shl97
  %145 = ptrtoint ptr %psr_context to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %psr_context, align 4
  %bf.value108 = shl i32 %146, 5
  %bf.shl109 = and i32 %bf.value108, 224
  %aux_repeats = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 17
  %147 = ptrtoint ptr %aux_repeats to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %aux_repeats, align 4
  %bf.value113 = shl i32 %148, 1
  %bf.shl114 = and i32 %bf.value113, 30
  %bf.clear110.masked = or i32 %bf.clear105, %bf.shl104
  %bf.clear115 = or i32 %bf.clear110.masked, %bf.shl109
  %bf.set116 = or i32 %bf.clear115, %bf.shl114
  %149 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dmcu, align 4
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  %MASTER_COMM_DATA_REG1 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %152, i32 0, i32 7
  %153 = ptrtoint ptr %MASTER_COMM_DATA_REG1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %MASTER_COMM_DATA_REG1, align 4
  tail call void @dm_write_reg_func(ptr noundef %150, i32 noundef %154, i32 noundef %bf.set116, ptr noundef nonnull @__func__.dce_dmcu_setup_psr) #6
  %engineId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 2
  %155 = ptrtoint ptr %engineId to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %engineId, align 4
  %bf.shl121 = shl i32 %156, 29
  %157 = ptrtoint ptr %transmitterId to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %transmitterId, align 4
  %bf.value126 = shl i32 %158, 26
  %bf.shl127 = and i32 %bf.value126, 469762048
  %bf.set129 = or i32 %bf.shl127, %bf.shl121
  %skipPsrWaitForPllLock = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 12
  %159 = ptrtoint ptr %skipPsrWaitForPllLock to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %skipPsrWaitForPllLock, align 4
  %bf.value131 = shl i32 %160, 25
  %bf.shl132 = and i32 %bf.value131, 33554432
  %bf.set134 = or i32 %bf.set129, %bf.shl132
  %frame_delay = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 19
  %161 = ptrtoint ptr %frame_delay to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %frame_delay, align 4
  %bf.value136 = shl i32 %162, 8
  %bf.shl137 = and i32 %bf.value136, 65280
  %bf.set139 = or i32 %bf.set134, %bf.shl137
  %smuPhyId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 5
  %163 = ptrtoint ptr %smuPhyId to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %smuPhyId, align 4
  %bf.value141 = shl i32 %164, 4
  %bf.shl142 = and i32 %bf.value141, 240
  %bf.set144 = or i32 %bf.set139, %bf.shl142
  %numberOfControllers = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 13
  %165 = ptrtoint ptr %numberOfControllers to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %numberOfControllers, align 4
  %bf.value146 = and i32 %166, 15
  %bf.set148 = or i32 %bf.set144, %bf.value146
  %167 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dmcu, align 4
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %MASTER_COMM_DATA_REG2 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %170, i32 0, i32 8
  %171 = ptrtoint ptr %MASTER_COMM_DATA_REG2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %MASTER_COMM_DATA_REG2, align 4
  tail call void @dm_write_reg_func(ptr noundef %168, i32 noundef %172, i32 noundef %bf.set148, ptr noundef nonnull @__func__.dce_dmcu_setup_psr) #6
  %psr_level = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 18
  %173 = ptrtoint ptr %psr_level to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %psr_level, align 4
  %bf.shl153 = shl i32 %174, 16
  %175 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dmcu, align 4
  %177 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs, align 4
  %MASTER_COMM_DATA_REG3 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %MASTER_COMM_DATA_REG3 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %MASTER_COMM_DATA_REG3, align 4
  tail call void @dm_write_reg_func(ptr noundef %176, i32 noundef %180, i32 noundef %bf.shl153, ptr noundef nonnull @__func__.dce_dmcu_setup_psr) #6
  %181 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dmcu, align 4
  %183 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CMD_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %MASTER_COMM_CMD_REG to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %MASTER_COMM_CMD_REG, align 4
  %187 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_CMD_REG_BYTE0 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %188, i32 0, i32 7
  %189 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0, align 1
  %191 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_CMD_REG_BYTE0163 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %192, i32 0, i32 7
  %193 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0163 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE0163, align 4
  %call164 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %182, i32 noundef %186, i32 noundef 1, i8 noundef zeroext %190, i32 noundef %194, i32 noundef 35) #6
  %195 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dmcu, align 4
  %197 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG168 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %MASTER_COMM_CNTL_REG168 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %MASTER_COMM_CNTL_REG168, align 4
  %201 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dmcu_shift, align 4
  %MASTER_COMM_INTERRUPT170 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %202, i32 0, i32 8
  %203 = ptrtoint ptr %MASTER_COMM_INTERRUPT170 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %MASTER_COMM_INTERRUPT170, align 1
  %205 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dmcu_mask, align 4
  %MASTER_COMM_INTERRUPT172 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %206, i32 0, i32 8
  %207 = ptrtoint ptr %MASTER_COMM_INTERRUPT172 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %MASTER_COMM_INTERRUPT172, align 4
  %call173 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %196, i32 noundef %200, i32 noundef 1, i8 noundef zeroext %204, i32 noundef %208, i32 noundef 1) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_get_dmcu_psr_state(ptr nocapture noundef readonly %dmcu, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmcu, align 4
  %regs = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DMCU_RAM_ACCESS_CTRL = getelementptr inbounds %struct.dce_dmcu_registers, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %DMCU_RAM_ACCESS_CTRL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DMCU_RAM_ACCESS_CTRL, align 4
  %dmcu_shift = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %6 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmcu_shift, align 4
  %IRAM_HOST_ACCESS_EN = getelementptr inbounds %struct.dce_dmcu_shift, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %IRAM_HOST_ACCESS_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %IRAM_HOST_ACCESS_EN, align 1
  %dmcu_mask = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %10 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmcu_mask, align 4
  %IRAM_HOST_ACCESS_EN1 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %IRAM_HOST_ACCESS_EN1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %IRAM_HOST_ACCESS_EN1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #6
  %14 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmcu, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %DCI_MEM_PWR_STATUS = getelementptr inbounds %struct.dce_dmcu_registers, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %DCI_MEM_PWR_STATUS to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DCI_MEM_PWR_STATUS, align 4
  %20 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmcu_shift, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmcu_mask, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  tail call void @generic_reg_wait(ptr noundef %15, i32 noundef %19, i32 noundef %conv, i32 noundef %27, i32 noundef 0, i32 noundef 2, i32 noundef 10, ptr noundef nonnull @__func__.dce_get_dmcu_psr_state, i32 noundef 120) #6
  %28 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmcu, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %DMCU_IRAM_RD_CTRL = getelementptr inbounds %struct.dce_dmcu_registers, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %DMCU_IRAM_RD_CTRL to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DMCU_IRAM_RD_CTRL, align 4
  tail call void @dm_write_reg_func(ptr noundef %29, i32 noundef %33, i32 noundef 240, ptr noundef nonnull @__func__.dce_get_dmcu_psr_state) #6
  %34 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dmcu, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %DMCU_IRAM_RD_DATA = getelementptr inbounds %struct.dce_dmcu_registers, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %DMCU_IRAM_RD_DATA to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DMCU_IRAM_RD_DATA, align 4
  %call14 = tail call i32 @dm_read_reg_func(ptr noundef %35, i32 noundef %39, ptr noundef nonnull @__func__.dce_get_dmcu_psr_state) #6
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call14, ptr %state, align 4
  %41 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dmcu, align 4
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %DMCU_RAM_ACCESS_CTRL18 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %DMCU_RAM_ACCESS_CTRL18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DMCU_RAM_ACCESS_CTRL18, align 4
  %47 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmcu_shift, align 4
  %IRAM_HOST_ACCESS_EN20 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %IRAM_HOST_ACCESS_EN20 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %IRAM_HOST_ACCESS_EN20, align 1
  %51 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmcu_mask, align 4
  %IRAM_HOST_ACCESS_EN22 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %IRAM_HOST_ACCESS_EN22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %IRAM_HOST_ACCESS_EN22, align 4
  %call23 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %42, i32 noundef %46, i32 noundef 1, i8 noundef zeroext %50, i32 noundef %54, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_psr_wait_loop(ptr nocapture noundef %dmcu, i32 noundef %wait_loop_number) #0 align 64 {
entry:
  %dmcu_uc_reset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_wait_loop_number = getelementptr inbounds %struct.dmcu, ptr %dmcu, i32 0, i32 4
  %0 = ptrtoint ptr %cached_wait_loop_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached_wait_loop_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %wait_loop_number)
  %cmp = icmp eq i32 %1, %wait_loop_number
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmcu_uc_reset.i) #6
  %2 = ptrtoint ptr %dmcu_uc_reset.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dmcu_uc_reset.i, align 4, !annotation !25
  %3 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmcu, align 4
  %regs.i = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %DMCU_STATUS.i = getelementptr inbounds %struct.dce_dmcu_registers, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %DMCU_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DMCU_STATUS.i, align 4
  %dmcu_shift.i = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %9 = ptrtoint ptr %dmcu_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmcu_shift.i, align 4
  %UC_IN_RESET.i = getelementptr inbounds %struct.dce_dmcu_shift, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %UC_IN_RESET.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %UC_IN_RESET.i, align 1
  %dmcu_mask.i = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %13 = ptrtoint ptr %dmcu_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmcu_mask.i, align 4
  %UC_IN_RESET1.i = getelementptr inbounds %struct.dce_dmcu_mask, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %UC_IN_RESET1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %UC_IN_RESET1.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %12, i32 noundef %16, ptr noundef nonnull %dmcu_uc_reset.i) #6
  %17 = ptrtoint ptr %dmcu_uc_reset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dmcu_uc_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmcu_uc_reset.i) #6
  br i1 %tobool.not.i, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmcu, align 4
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CNTL_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %MASTER_COMM_CNTL_REG to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %MASTER_COMM_CNTL_REG, align 4
  %25 = ptrtoint ptr %dmcu_shift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmcu_shift.i, align 4
  %MASTER_COMM_INTERRUPT = getelementptr inbounds %struct.dce_dmcu_shift, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %MASTER_COMM_INTERRUPT to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %MASTER_COMM_INTERRUPT, align 1
  %conv = zext i8 %28 to i32
  %29 = ptrtoint ptr %dmcu_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmcu_mask.i, align 4
  %MASTER_COMM_INTERRUPT3 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %MASTER_COMM_INTERRUPT3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %MASTER_COMM_INTERRUPT3, align 4
  call void @generic_reg_wait(ptr noundef %20, i32 noundef %24, i32 noundef %conv, i32 noundef %32, i32 noundef 0, i32 noundef 1, i32 noundef 10000, ptr noundef nonnull @__func__.dce_psr_wait_loop, i32 noundef 315) #6
  %bf.shl = shl i32 %wait_loop_number, 16
  %33 = ptrtoint ptr %cached_wait_loop_number to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %wait_loop_number, ptr %cached_wait_loop_number, align 4
  %34 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dmcu, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_DATA_REG1 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %MASTER_COMM_DATA_REG1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MASTER_COMM_DATA_REG1, align 4
  call void @dm_write_reg_func(ptr noundef %35, i32 noundef %39, i32 noundef %bf.shl, ptr noundef nonnull @__func__.dce_psr_wait_loop) #6
  %40 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dmcu, align 4
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CMD_REG = getelementptr inbounds %struct.dce_dmcu_registers, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %MASTER_COMM_CMD_REG to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %MASTER_COMM_CMD_REG, align 4
  %46 = ptrtoint ptr %dmcu_shift.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dmcu_shift.i, align 4
  %MASTER_COMM_CMD_REG_BYTE0 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0, align 1
  %50 = ptrtoint ptr %dmcu_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dmcu_mask.i, align 4
  %MASTER_COMM_CMD_REG_BYTE012 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE012 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE012, align 4
  %call13 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 49) #6
  %54 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dmcu, align 4
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CNTL_REG17 = getelementptr inbounds %struct.dce_dmcu_registers, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %MASTER_COMM_CNTL_REG17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %MASTER_COMM_CNTL_REG17, align 4
  %60 = ptrtoint ptr %dmcu_shift.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dmcu_shift.i, align 4
  %MASTER_COMM_INTERRUPT19 = getelementptr inbounds %struct.dce_dmcu_shift, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %MASTER_COMM_INTERRUPT19 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %MASTER_COMM_INTERRUPT19, align 1
  %64 = ptrtoint ptr %dmcu_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dmcu_mask.i, align 4
  %MASTER_COMM_INTERRUPT21 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %MASTER_COMM_INTERRUPT21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %MASTER_COMM_INTERRUPT21, align 4
  %call22 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %55, i32 noundef %59, i32 noundef 1, i8 noundef zeroext %63, i32 noundef %67, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_get_psr_wait_loop(ptr nocapture noundef readonly %dmcu, ptr nocapture noundef writeonly %psr_wait_loop_number) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_wait_loop_number = getelementptr inbounds %struct.dmcu, ptr %dmcu, i32 0, i32 4
  %0 = ptrtoint ptr %cached_wait_loop_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached_wait_loop_number, align 4
  %2 = ptrtoint ptr %psr_wait_loop_number to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %psr_wait_loop_number, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_is_dmcu_initialized(ptr nocapture noundef readonly %dmcu) #0 align 64 {
entry:
  %dmcu_uc_reset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmcu_uc_reset) #6
  %0 = ptrtoint ptr %dmcu_uc_reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dmcu_uc_reset, align 4, !annotation !25
  %1 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmcu, align 4
  %regs = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %DMCU_STATUS = getelementptr inbounds %struct.dce_dmcu_registers, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %DMCU_STATUS to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DMCU_STATUS, align 4
  %dmcu_shift = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 2
  %7 = ptrtoint ptr %dmcu_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmcu_shift, align 4
  %UC_IN_RESET = getelementptr inbounds %struct.dce_dmcu_shift, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %UC_IN_RESET to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %UC_IN_RESET, align 1
  %dmcu_mask = getelementptr inbounds %struct.dce_dmcu, ptr %dmcu, i32 0, i32 3
  %11 = ptrtoint ptr %dmcu_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmcu_mask, align 4
  %UC_IN_RESET1 = getelementptr inbounds %struct.dce_dmcu_mask, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %UC_IN_RESET1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %UC_IN_RESET1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %dmcu_uc_reset) #6
  %15 = ptrtoint ptr %dmcu_uc_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dmcu_uc_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmcu_uc_reset) #6
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 1117, i32 3}
!2 = !{ptr @__func__.dce_dmcu_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dce_funcs, !4, !"dce_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 1013, i32 32}
!5 = !{ptr @__func__.dce_dmcu_load_iram, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 96, i32 2}
!7 = !{ptr @__func__.dce_dmcu_set_psr_enable, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 144, i32 2}
!9 = !{ptr @__func__.dce_dmcu_setup_psr, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 238, i32 2}
!11 = !{ptr @__func__.dce_get_dmcu_psr_state, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 120, i32 2}
!13 = !{ptr @__func__.dce_psr_wait_loop, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_dmcu.c", i32 315, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{!"auto-init"}

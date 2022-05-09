; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dc_dmub_srv.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.8 }
%struct.anon.8 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.9, %struct.anon.10, %struct.anon.11, i32, i32 }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.10 = type { i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.15, %struct.anon.16, i8, i8, i64 }
%struct.anon.15 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.16 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.66 }
%struct.anon.66 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_dmub_srv = type { ptr, %struct.dc_reg_helper_state, ptr, ptr }
%struct.dc_reg_helper_state = type <{ i8, [3 x i8], i32, i8, %union.dmub_rb_cmd, [3 x i8], i32 }>
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dmub_diagnostic_data = type { i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dmub_fw_boot_status = type { i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dc_dmub_srv_create = private unnamed_addr constant [19 x i8] c"dc_dmub_srv_create\00", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error queuing DMUB command: status=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error starting DMUB execution: status=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error waiting for DMUB idle: status=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error clearing INBOX0 ack: status=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error waiting for INBOX0 HW Lock Ack\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error sending INBOX0 cmd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No reply for DMUB command: status=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMCUB PHY init failed: status=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dc_dmub_srv_wait_phy_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error querying DMUB boot status: error=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid parameters.\00", [40 x i8] zeroinitializer }, align 32
@__func__.dc_dmub_srv_log_diagnostic_data = private unnamed_addr constant [32 x i8] c"dc_dmub_srv_log_diagnostic_data\00", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: dc_dmub_srv_get_diagnostic_data failed.\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [991 x i8], [225 x i8] } { [991 x i8] c"DMCUB STATE\0A    dmcub_version      : %08x\0A    scratch  [0]       : %08x\0A    scratch  [1]       : %08x\0A    scratch  [2]       : %08x\0A    scratch  [3]       : %08x\0A    scratch  [4]       : %08x\0A    scratch  [5]       : %08x\0A    scratch  [6]       : %08x\0A    scratch  [7]       : %08x\0A    scratch  [8]       : %08x\0A    scratch  [9]       : %08x\0A    scratch [10]       : %08x\0A    scratch [11]       : %08x\0A    scratch [12]       : %08x\0A    scratch [13]       : %08x\0A    scratch [14]       : %08x\0A    scratch [15]       : %08x\0A    pc                 : %08x\0A    unk_fault_addr     : %08x\0A    inst_fault_addr    : %08x\0A    data_fault_addr    : %08x\0A    inbox1_rptr        : %08x\0A    inbox1_wptr        : %08x\0A    inbox1_size        : %08x\0A    inbox0_rptr        : %08x\0A    inbox0_wptr        : %08x\0A    inbox0_size        : %08x\0A    is_enabled         : %d\0A    is_soft_reset      : %d\0A    is_secure_reset    : %d\0A    is_traceport_en    : %d\0A    is_cw0_en          : %d\0A    is_cw6_en          : %d\0A\00", [225 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 47, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 88, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 100, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 113, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 126, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 153, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 170, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 190, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 191, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 235, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 265, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 270, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 274, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 991, i32 1216, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dc_dmub_srv_create(ptr nocapture noundef readonly %dc, ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_dmub_srv_create, i32 noundef 47) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dmub, ptr %call7.i.i, align 8
  %ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 8
  %ctx2.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctx2.i, align 4
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
define dso_local void @dc_dmub_srv_destroy(ptr nocapture noundef %dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmub_srv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_cmd_queue(ptr noundef %dc_dmub_srv, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %call = tail call i32 @dmub_srv_cmd_queue(ptr noundef %1, ptr noundef %cmd) #4
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.do.body_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %if.end4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end4:                                          ; preds = %entry
  %3 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_dmub_srv, align 4
  %call.i = tail call i32 @dmub_srv_cmd_execute(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end4.dc_dmub_srv_cmd_execute.exit_crit_edge, label %do.body.i

if.end4.dc_dmub_srv_cmd_execute.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_dmub_srv_cmd_execute.exit

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call.i) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dc_dmub_srv) #4
  br label %dc_dmub_srv_cmd_execute.exit

dc_dmub_srv_cmd_execute.exit:                     ; preds = %do.body.i, %if.end4.dc_dmub_srv_cmd_execute.exit_crit_edge
  %5 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dc_dmub_srv, align 4
  %call.i20 = tail call i32 @dmub_srv_wait_for_idle(ptr noundef %6, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %cmp.not.i21, label %dc_dmub_srv_cmd_execute.exit.dc_dmub_srv_wait_idle.exit_crit_edge, label %do.body.i22

dc_dmub_srv_cmd_execute.exit.dc_dmub_srv_wait_idle.exit_crit_edge: ; preds = %dc_dmub_srv_cmd_execute.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_dmub_srv_wait_idle.exit

do.body.i22:                                      ; preds = %dc_dmub_srv_cmd_execute.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %call.i20) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dc_dmub_srv) #4
  br label %dc_dmub_srv_wait_idle.exit

dc_dmub_srv_wait_idle.exit:                       ; preds = %do.body.i22, %dc_dmub_srv_cmd_execute.exit.dc_dmub_srv_wait_idle.exit_crit_edge
  %call5 = tail call i32 @dmub_srv_cmd_queue(ptr noundef %1, ptr noundef %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %dc_dmub_srv_wait_idle.exit.cleanup_crit_edge, label %dc_dmub_srv_wait_idle.exit.do.body_crit_edge

dc_dmub_srv_wait_idle.exit.do.body_crit_edge:     ; preds = %dc_dmub_srv_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

dc_dmub_srv_wait_idle.exit.cleanup_crit_edge:     ; preds = %dc_dmub_srv_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %dc_dmub_srv_wait_idle.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %status.0 = phi i32 [ %call5, %dc_dmub_srv_wait_idle.exit.do.body_crit_edge ], [ %call, %entry.do.body_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %status.0) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dc_dmub_srv)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dc_dmub_srv_wait_idle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_cmd_execute(ptr noundef %dc_dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %call = tail call i32 @dmub_srv_cmd_execute(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dc_dmub_srv)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_wait_idle(ptr noundef %dc_dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %call = tail call i32 @dmub_srv_wait_for_idle(ptr noundef %1, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %call) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dc_dmub_srv)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_log_diagnostic_data(ptr noundef readonly %dc_dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  %diag_data = alloca %struct.dmub_diagnostic_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %diag_data) #4
  %0 = call ptr @memset(ptr %diag_data, i32 0, i32 112)
  %tobool.not = icmp eq ptr %dc_dmub_srv, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_dmub_srv, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %dc_dmub_srv_get_diagnostic_data.exit

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dc_dmub_srv_log_diagnostic_data) #4
  br label %cleanup

dc_dmub_srv_get_diagnostic_data.exit:             ; preds = %lor.lhs.false
  %call.i = call zeroext i1 @dmub_srv_get_diagnostic_data(ptr noundef nonnull %2, ptr noundef nonnull %diag_data) #4
  br i1 %call.i, label %if.end3, label %if.then2

if.then2:                                         ; preds = %dc_dmub_srv_get_diagnostic_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dc_dmub_srv_log_diagnostic_data) #4
  br label %cleanup

if.end3:                                          ; preds = %dc_dmub_srv_get_diagnostic_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %diag_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %diag_data, align 4
  %scratch = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scratch, align 4
  %arrayidx5 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 11
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 12
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 13
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 14
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 15
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx33, align 4
  %pc = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 2
  %37 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pc, align 4
  %undefined_address_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 3
  %39 = ptrtoint ptr %undefined_address_fault_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %undefined_address_fault_addr, align 4
  %inst_fetch_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 4
  %41 = ptrtoint ptr %inst_fetch_fault_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inst_fetch_fault_addr, align 4
  %data_write_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 5
  %43 = ptrtoint ptr %data_write_fault_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_write_fault_addr, align 4
  %inbox1_rptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 6
  %45 = ptrtoint ptr %inbox1_rptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inbox1_rptr, align 4
  %inbox1_wptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 7
  %47 = ptrtoint ptr %inbox1_wptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inbox1_wptr, align 4
  %inbox1_size = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 8
  %49 = ptrtoint ptr %inbox1_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inbox1_size, align 4
  %inbox0_rptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 9
  %51 = ptrtoint ptr %inbox0_rptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %inbox0_rptr, align 4
  %inbox0_wptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 10
  %53 = ptrtoint ptr %inbox0_wptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inbox0_wptr, align 4
  %inbox0_size = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 11
  %55 = ptrtoint ptr %inbox0_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inbox0_size, align 4
  %is_dmcub_enabled = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 12
  %57 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %is_dmcub_enabled, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %conv = zext i8 %bf.lshr to i32
  %bf.lshr35 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr35, 1
  %conv36 = zext i8 %bf.clear to i32
  %bf.lshr38 = lshr i8 %bf.load, 5
  %bf.clear39 = and i8 %bf.lshr38, 1
  %conv40 = zext i8 %bf.clear39 to i32
  %bf.lshr42 = lshr i8 %bf.load, 4
  %bf.clear43 = and i8 %bf.lshr42, 1
  %conv44 = zext i8 %bf.clear43 to i32
  %bf.lshr46 = lshr i8 %bf.load, 3
  %bf.clear47 = and i8 %bf.lshr46, 1
  %conv48 = zext i8 %bf.clear47 to i32
  %bf.lshr50 = lshr i8 %bf.load, 2
  %bf.clear51 = and i8 %bf.lshr50, 1
  %conv52 = zext i8 %bf.clear51 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %conv, i32 noundef %conv36, i32 noundef %conv40, i32 noundef %conv44, i32 noundef %conv48, i32 noundef %conv52) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %diag_data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_wait_for_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_clear_inbox0_ack(ptr noundef %dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 4
  %call = tail call i32 @dmub_srv_clear_inbox0_ack(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dmub_srv)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_clear_inbox0_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_wait_for_inbox0_ack(ptr noundef %dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 4
  %call = tail call i32 @dmub_srv_wait_for_inbox0_ack(ptr noundef %1, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dmub_srv)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_wait_for_inbox0_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_send_inbox0_cmd(ptr noundef %dmub_srv, [1 x i32] %data.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 4
  %call = tail call i32 @dmub_srv_send_inbox0_cmd(ptr noundef %1, [1 x i32] %data.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #4
  tail call void @dc_dmub_srv_log_diagnostic_data(ptr noundef %dmub_srv)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_send_inbox0_cmd(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_dmub_srv_cmd_with_reply_data(ptr noundef readonly %dc_dmub_srv, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc_dmub_srv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @dmub_srv_cmd_with_reply_data(ptr noundef nonnull %1, ptr noundef %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_cmd_with_reply_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_srv_wait_phy_init(ptr nocapture noundef readonly %dc_dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.then41.for.cond_crit_edge, %entry
  %call = tail call i32 @dmub_srv_wait_for_phy_init(ptr noundef %1, i32 noundef 1000000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %for.cond.for.end_crit_edge, label %do.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body:                                          ; preds = %for.cond
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %call) #4
  %.b53 = load i1, ptr @dc_dmub_srv_wait_phy_init.__already_done, align 1
  br i1 %.b53, label %do.body.if.then41_crit_edge, label %if.then7, !prof !40

do.body.if.then41_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_dmub_srv_wait_phy_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 191, i32 noundef 9, ptr noundef null) #4
  br label %if.then41

if.then41:                                        ; preds = %if.then7, %do.body.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #4
  %cmp45.not = icmp eq i32 %call, 3
  br i1 %cmp45.not, label %if.then41.for.cond_crit_edge, label %if.then41.for.end_crit_edge

if.then41.for.end_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then41.for.cond_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.end:                                          ; preds = %if.then41.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_wait_for_phy_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_dmub_srv_notify_stream_mask(ptr noundef readonly %dc_dmub_srv, i32 noundef %stream_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc_dmub_srv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %stream_mask to i16
  %call = tail call i32 @dmub_srv_send_gpint_command(ptr noundef nonnull %1, i32 noundef 8, i16 noundef zeroext %conv, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_send_gpint_command(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_dmub_srv_is_restore_required(ptr noundef readonly %dc_dmub_srv) local_unnamed_addr #0 align 64 {
entry:
  %boot_status = alloca %union.dmub_fw_boot_status, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_status) #4
  %0 = ptrtoint ptr %boot_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %boot_status, align 4, !annotation !41
  %tobool.not = icmp eq ptr %dc_dmub_srv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_dmub_srv, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @dmub_srv_get_fw_boot_status(ptr noundef nonnull %2, ptr noundef nonnull %boot_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %boot_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %boot_status, align 4
  %4 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6 = icmp ne i8 %4, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.body ], [ %tobool6, %if.end5 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_status) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_get_fw_boot_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_dmub_srv_get_dmub_outbox0_msg(ptr nocapture noundef readonly %dc, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call zeroext i1 @dmub_srv_get_outbox0_msg(ptr noundef %5, ptr noundef %entry1) #4
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_srv_get_outbox0_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_dmub_trace_event_control(ptr nocapture noundef readonly %dc, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call zeroext i1 @dm_helpers_dmub_outbox_interrupt_control(ptr noundef %1, i1 noundef zeroext %enable) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dmub_outbox_interrupt_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_dmub_srv_get_diagnostic_data(ptr noundef readonly %dc_dmub_srv, ptr noundef %diag_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc_dmub_srv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %dc_dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_dmub_srv, align 4
  %tobool1.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %diag_data, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @dmub_srv_get_diagnostic_data(ptr noundef nonnull %1, ptr noundef nonnull %diag_data) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_srv_get_diagnostic_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 47, i32 3}
!2 = !{ptr @__func__.dc_dmub_srv_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 88, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 100, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 113, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 126, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 139, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 153, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 170, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 190, i32 3}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 191, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 235, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 265, i32 3}
!26 = !{ptr @__func__.dc_dmub_srv_log_diagnostic_data, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 270, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.c", i32 274, i32 2}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"auto-init"}

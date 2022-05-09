; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce112/dce112_compressor.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce112_compressor_reg_offsets = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.compressor = type { ptr, i32, i8, ptr, %union.anon.2, %union.fbc_physical_address, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.2 = type { i32 }
%union.fbc_physical_address = type { i64 }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32 }
%struct.dce112_compressor = type { %struct.compressor, %struct.dce112_compressor_reg_offsets }
%struct.anon.4 = type { i32, i32 }
%struct.embedded_panel_info = type { %struct.device_timing, i32, %struct.supported_refresh_rate, i32, i32, i8 }
%struct.device_timing = type { %struct.misc_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.misc_info = type { i16, [2 x i8] }
%struct.supported_refresh_rate = type { i8, [3 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.dce112_compressor_power_up_fbc = private unnamed_addr constant [31 x i8] c"dce112_compressor_power_up_fbc\00", align 1
@__func__.dce112_compressor_enable_fbc = private unnamed_addr constant [29 x i8] c"dce112_compressor_enable_fbc\00", align 1
@reg_offsets = internal constant { [3 x %struct.dce112_compressor_reg_offsets], [40 x i8] } { [3 x %struct.dce112_compressor_reg_offsets] [%struct.dce112_compressor_reg_offsets zeroinitializer, %struct.dce112_compressor_reg_offsets { i32 512, i32 512 }, %struct.dce112_compressor_reg_offsets { i32 1024, i32 1024 }], [40 x i8] zeroinitializer }, align 32
@__func__.dce112_compressor_disable_fbc = private unnamed_addr constant [30 x i8] c"dce112_compressor_disable_fbc\00", align 1
@__func__.dce112_compressor_is_fbc_enabled_in_hw = private unnamed_addr constant [39 x i8] c"dce112_compressor_is_fbc_enabled_in_hw\00", align 1
@__func__.dce112_compressor_is_lpt_enabled_in_hw = private unnamed_addr constant [39 x i8] c"dce112_compressor_is_lpt_enabled_in_hw\00", align 1
@__func__.dce112_compressor_program_compressed_surface_address_and_pitch = private unnamed_addr constant [63 x i8] c"dce112_compressor_program_compressed_surface_address_and_pitch\00", align 1
@dce112_compressor_program_compressed_surface_address_and_pitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @__func__.dce112_compressor_program_compressed_surface_address_and_pitch, ptr @.str.1, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014[drm] %s: Unexpected DCE11 compression ratio\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c\00", [60 x i8] zeroinitializer }, align 32
@dce112_compressor_program_compressed_surface_address_and_pitch._entry_ptr = internal global ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry, section ".printk_index", align 4
@__func__.dce112_compressor_disable_lpt = private unnamed_addr constant [30 x i8] c"dce112_compressor_disable_lpt\00", align 1
@__func__.dce112_compressor_enable_lpt = private unnamed_addr constant [29 x i8] c"dce112_compressor_enable_lpt\00", align 1
@__func__.dce112_compressor_program_lpt_control = private unnamed_addr constant [38 x i8] c"dce112_compressor_program_lpt_control\00", align 1
@dce112_compressor_program_lpt_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.dce112_compressor_program_lpt_control, ptr @.str.1, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014[drm] %s: Invalid selected DRAM channels for LPT!!!\00", [42 x i8] zeroinitializer }, align 32
@dce112_compressor_program_lpt_control._entry_ptr = internal global ptr @dce112_compressor_program_lpt_control._entry, section ".printk_index", align 4
@__func__.dce112_compressor_set_fbc_invalidation_triggers = private unnamed_addr constant [48 x i8] c"dce112_compressor_set_fbc_invalidation_triggers\00", align 1
@__func__.wait_for_fbc_state_changed = private unnamed_addr constant [27 x i8] c"wait_for_fbc_state_changed\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_for_fbc_state_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.wait_for_fbc_state_changed, ptr @.str.1, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014[drm] %s: wait counter exceeded, changes to HW not applied\00", [35 x i8] zeroinitializer }, align 32
@wait_for_fbc_state_changed._entry_ptr = internal global ptr @wait_for_fbc_state_changed._entry, section ".printk_index", align 4
@lpt_memory_control_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014[drm] %s: Invalid LPT NUM_PIPES!!!\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpt_memory_control_config\00", [38 x i8] zeroinitializer }, align 32
@lpt_memory_control_config._entry_ptr = internal global ptr @lpt_memory_control_config._entry, section ".printk_index", align 4
@lpt_memory_control_config._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.1, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014[drm] %s: Invalid LPT NUM_BANKS!!!\00", [59 x i8] zeroinitializer }, align 32
@lpt_memory_control_config._entry_ptr.9 = internal global ptr @lpt_memory_control_config._entry.7, section ".printk_index", align 4
@lpt_memory_control_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.1, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014[drm] %s: Invalid LPT INTERLEAVE_SIZE!!!\00", [53 x i8] zeroinitializer }, align 32
@lpt_memory_control_config._entry_ptr.12 = internal global ptr @lpt_memory_control_config._entry.10, section ".printk_index", align 4
@lpt_memory_control_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.1, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014[drm] %s: Invalid LPT ROW_SIZE!!!\00", [60 x i8] zeroinitializer }, align 32
@lpt_memory_control_config._entry_ptr.15 = internal global ptr @lpt_memory_control_config._entry.13, section ".printk_index", align 4
@lpt_memory_control_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.1, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014[drm] %s: LPT MC Configuration is not provided\00", [47 x i8] zeroinitializer }, align 32
@lpt_memory_control_config._entry_ptr.18 = internal global ptr @lpt_memory_control_config._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 4096]
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"reg_offsets\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 46, i32 51 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 526, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 690, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 313, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 136, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 181, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 257, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 263, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry, ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry_ptr, ptr @dce112_compressor_program_lpt_control._entry, ptr @dce112_compressor_program_lpt_control._entry_ptr, ptr @lpt_memory_control_config._entry, ptr @lpt_memory_control_config._entry.10, ptr @lpt_memory_control_config._entry.13, ptr @lpt_memory_control_config._entry.16, ptr @lpt_memory_control_config._entry.7, ptr @lpt_memory_control_config._entry_ptr, ptr @lpt_memory_control_config._entry_ptr.12, ptr @lpt_memory_control_config._entry_ptr.15, ptr @lpt_memory_control_config._entry_ptr.18, ptr @lpt_memory_control_config._entry_ptr.9, ptr @wait_for_fbc_state_changed._entry, ptr @wait_for_fbc_state_changed._entry_ptr, ptr @reg_offsets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_compressor_program_lpt_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_fbc_state_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt_memory_control_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt_memory_control_config._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt_memory_control_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt_memory_control_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt_memory_control_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_power_up_fbc(ptr nocapture noundef %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %and.i50 = and i32 %call, 2147287038
  %or.i52 = or i32 %and.i50, -2147352576
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %options, align 8
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %and.i53 = and i32 %or.i52, -65794
  %spec.select = select i1 %cmp.not, i32 %or.i52, i32 %and.i53
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef 640, i32 noundef %spec.select, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef 645, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %or.i59 = or i32 %call7, 65793
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef 645, i32 noundef %or.i59, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %10 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressor, align 8
  %call13 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef 644, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %or.i61 = or i32 %call13, 524288
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef 644, i32 noundef %or.i61, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %or.i63 = or i32 %call13, 524303
  %14 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef 644, i32 noundef %or.i63, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %min_compress_ratio = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 16
  %16 = ptrtoint ptr %min_compress_ratio to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %min_compress_ratio, align 8
  %17 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %18, i32 noundef 649, i32 noundef 0, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  %19 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %20, i32 noundef 650, i32 noundef 16777215, ptr noundef nonnull @__func__.dce112_compressor_power_up_fbc) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_enable_fbc(ptr nocapture noundef %compressor, i32 noundef %paths_num, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %options, align 8
  %1 = and i8 %bf.load, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %2 = icmp eq i8 %1, -128
  br i1 %2, label %land.lhs.true5, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true5:                                   ; preds = %entry
  %3 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %compressor, align 8
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef 675, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %land.lhs.true5.if.end31_crit_edge

land.lhs.true5.if.end31_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end3.i:                                        ; preds = %land.lhs.true5
  %5 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %compressor, align 8
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 674, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %7 = and i32 %call5.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %if.end3.i.land.lhs.true6_crit_edge, label %if.then8.i

if.end3.i.land.lhs.true6_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true6

if.then8.i:                                       ; preds = %if.end3.i
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  %call10.i = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i30.i = and i32 %call10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool12.not.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool12.not.i, label %if.then8.i.land.lhs.true6_crit_edge, label %if.then8.i.if.end31_crit_edge

if.then8.i.if.end31_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then8.i.land.lhs.true6_crit_edge:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.then8.i.land.lhs.true6_crit_edge, %if.end3.i.land.lhs.true6_crit_edge
  %source_view_width = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %source_view_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %source_view_width, align 4
  %source_view_height = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %source_view_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %source_view_height, align 4
  %embedded_panel_h_size.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 6
  %14 = ptrtoint ptr %embedded_panel_h_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %embedded_panel_h_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %land.lhs.true6.if.then_crit_edge, label %land.lhs.true.i

land.lhs.true6.if.then_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %land.lhs.true6
  %embedded_panel_v_size.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 7
  %16 = ptrtoint ptr %embedded_panel_v_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %embedded_panel_v_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.not.i = icmp eq i32 %17, 0
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %mul.i = mul i32 %13, %11
  %mul8.i = mul i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul8.i)
  %cmp9.i = icmp ugt i32 %mul.i, %mul8.i
  br i1 %cmp9.i, label %land.lhs.true3.i.if.end31_crit_edge, label %land.lhs.true3.i.if.then_crit_edge

land.lhs.true3.i.if.then_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true3.i.if.end31_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %land.lhs.true3.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %land.lhs.true6.if.then_crit_edge
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load9 = load i8, ptr %options, align 8
  %19 = and i8 %bf.load9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %paths_num)
  %cmp15 = icmp ult i32 %paths_num, 2
  %or.cond60 = and i1 %cmp15, %tobool13.not
  %mul = mul i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096001, i32 %mul)
  %cmp19 = icmp ult i32 %mul, 4096001
  %or.cond68 = select i1 %or.cond60, i1 %cmp19, i1 false
  br i1 %or.cond68, label %if.then20, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce112_compressor_enable_lpt(ptr noundef %compressor)
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %compressor, align 8
  %call21 = tail call i32 @dm_read_reg_func(ptr noundef %21, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_enable_fbc) #6
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params, align 4
  %or.i = and i32 %call21, -16
  %shl.i = shl i32 %23, 1
  %and42.i = and i32 %shl.i, 14
  %and.i62 = or i32 %and42.i, %or.i
  %or.i63 = or i32 %and.i62, 1
  %24 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef 640, i32 noundef %or.i63, ptr noundef nonnull @__func__.dce112_compressor_enable_fbc) #6
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %26 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %is_enabled, align 8
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %params, align 4
  %attached_inst = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %29 = ptrtoint ptr %attached_inst to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %attached_inst, align 4
  %offsets = getelementptr inbounds %struct.dce112_compressor, ptr %compressor, i32 0, i32 1
  %30 = load i32, ptr %params, align 4
  %arrayidx = getelementptr [3 x %struct.dce112_compressor_reg_offsets], ptr @reg_offsets, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %offsets to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %offsets, align 8
  %34 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %35, i32 noundef 640, i32 noundef %and.i62, ptr noundef nonnull @__func__.dce112_compressor_enable_fbc) #6
  %36 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %37, i32 noundef 640, i32 noundef %or.i63, ptr noundef nonnull @__func__.dce112_compressor_enable_fbc) #6
  tail call fastcc void @wait_for_fbc_state_changed(ptr noundef %compressor, i1 noundef zeroext true)
  br label %if.end31

if.end31:                                         ; preds = %if.end, %land.lhs.true3.i.if.end31_crit_edge, %if.then8.i.if.end31_crit_edge, %land.lhs.true5.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce112_compressor_is_fbc_enabled_in_hw(ptr nocapture noundef readonly %compressor, ptr noundef writeonly %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 675, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %inst, null
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef 674, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %4 = and i32 %call5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.then8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %compressor, align 8
  %call10 = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i30 = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool12.not = icmp eq i32 %and.i30, 0
  br i1 %tobool12.not, label %if.then8.cleanup_crit_edge, label %if.then13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  %cmp14.not = icmp eq ptr %inst, null
  br i1 %cmp14.not, label %if.then13.cleanup_crit_edge, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then13.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %attached_inst16 = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %7 = ptrtoint ptr %attached_inst16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attached_inst16, align 4
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %inst, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then.cleanup_crit_edge ], [ true, %if.then13.cleanup_crit_edge ], [ false, %if.then8.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_enable_lpt(ptr nocapture noundef readonly %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %dmif_offset = getelementptr inbounds %struct.dce112_compressor, ptr %compressor, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmif_offset, align 4
  %add = add i32 %3, 6967
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %or.i = or i32 %call, 1
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  %6 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmif_offset, align 4
  %add5 = add i32 %7, 6967
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add5, i32 noundef %or.i, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 18231, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %or.i46 = or i32 %call7, 1
  %10 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %11, i32 noundef 18231, i32 noundef %or.i46, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 779, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %and.i47 = lshr i32 %call11, 3
  %shr.i = and i32 %and.i47, 3
  %14 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %compressor, align 8
  %call14 = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef 3411, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %add15 = add nuw nsw i32 %shr.i, 1
  %16 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %17, i32 noundef 3411, i32 noundef %add15, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %18 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %compressor, align 8
  %call19 = tail call i32 @dm_read_reg_func(ptr noundef %19, i32 noundef 779, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  %or.i49 = or i32 %call19, 1
  %20 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef 779, i32 noundef %or.i49, ptr noundef nonnull @__func__.dce112_compressor_enable_lpt) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_fbc_state_changed(ptr nocapture noundef readonly %cp110, i1 noundef zeroext %enabled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp110, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %2 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp4 = xor i1 %3, %enabled
  br i1 %cmp4, label %entry.if.end11_crit_edge, label %if.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %5 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cp110, align 8
  %call.1 = tail call i32 @dm_read_reg_func(ptr noundef %6, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %7 = and i32 %call.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %cmp4.1 = xor i1 %8, %enabled
  br i1 %cmp4.1, label %if.end.if.end11_crit_edge, label %if.end.1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #6
  %10 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp110, align 8
  %call.2 = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %12 = and i32 %call.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %cmp4.2 = xor i1 %13, %enabled
  br i1 %cmp4.2, label %if.end.1.if.end11_crit_edge, label %if.end.2

if.end.1.if.end11_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  %15 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cp110, align 8
  %call.3 = tail call i32 @dm_read_reg_func(ptr noundef %16, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %17 = and i32 %call.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %cmp4.3 = xor i1 %18, %enabled
  br i1 %cmp4.3, label %if.end.2.if.end11_crit_edge, label %if.end.3

if.end.2.if.end11_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #6
  %20 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cp110, align 8
  %call.4 = tail call i32 @dm_read_reg_func(ptr noundef %21, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %22 = and i32 %call.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %cmp4.4 = xor i1 %23, %enabled
  br i1 %cmp4.4, label %if.end.3.if.end11_crit_edge, label %if.end.4

if.end.3.if.end11_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #6
  %25 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp110, align 8
  %call.5 = tail call i32 @dm_read_reg_func(ptr noundef %26, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %27 = and i32 %call.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  %cmp4.5 = xor i1 %28, %enabled
  br i1 %cmp4.5, label %if.end.4.if.end11_crit_edge, label %if.end.5

if.end.4.if.end11_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #6
  %30 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp110, align 8
  %call.6 = tail call i32 @dm_read_reg_func(ptr noundef %31, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %32 = and i32 %call.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  %cmp4.6 = xor i1 %33, %enabled
  br i1 %cmp4.6, label %if.end.5.if.end11_crit_edge, label %if.end.6

if.end.5.if.end11_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #6
  %35 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cp110, align 8
  %call.7 = tail call i32 @dm_read_reg_func(ptr noundef %36, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %37 = and i32 %call.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  %cmp4.7 = xor i1 %38, %enabled
  br i1 %cmp4.7, label %if.end.6.if.end11_crit_edge, label %if.end.7

if.end.6.if.end11_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #6
  %40 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cp110, align 8
  %call.8 = tail call i32 @dm_read_reg_func(ptr noundef %41, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %42 = and i32 %call.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  %cmp4.8 = xor i1 %43, %enabled
  br i1 %cmp4.8, label %if.end.7.if.end11_crit_edge, label %if.end.8

if.end.7.if.end11_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #6
  %45 = ptrtoint ptr %cp110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cp110, align 8
  %call.9 = tail call i32 @dm_read_reg_func(ptr noundef %46, i32 noundef 675, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #6
  %47 = and i32 %call.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  %cmp4.9 = xor i1 %48, %enabled
  br i1 %cmp4.9, label %if.end.8.if.end11_crit_edge, label %do.end

if.end.8.if.end11_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end:                                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wait_for_fbc_state_changed) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.8.if.end11_crit_edge, %if.end.7.if.end11_crit_edge, %if.end.6.if.end11_crit_edge, %if.end.5.if.end11_crit_edge, %if.end.4.if.end11_crit_edge, %if.end.3.if.end11_crit_edge, %if.end.2.if.end11_crit_edge, %if.end.1.if.end11_crit_edge, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_disable_fbc(ptr nocapture noundef %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %options, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %compressor, align 8
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef 675, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end3.i:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %compressor, align 8
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %4, i32 noundef 674, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %5 = and i32 %call5.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.end3.i.if.end10_crit_edge, label %if.then8.i

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8.i:                                       ; preds = %if.end3.i
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %call10.i = tail call i32 @dm_read_reg_func(ptr noundef %7, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_is_fbc_enabled_in_hw) #6
  %and.i30.i = and i32 %call10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool12.not.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool12.not.i, label %if.then8.i.if.end10_crit_edge, label %if.then8.i.if.then_crit_edge

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then8.i.if.end10_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %if.then8.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  %call1 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 640, ptr noundef nonnull @__func__.dce112_compressor_disable_fbc) #6
  %and.i = and i32 %call1, -2
  %10 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %11, i32 noundef 640, i32 noundef %and.i, ptr noundef nonnull @__func__.dce112_compressor_disable_fbc) #6
  %attached_inst = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %12 = ptrtoint ptr %attached_inst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %attached_inst, align 4
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %13 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_enabled, align 8
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load5 = load i8, ptr %options, align 8
  %15 = and i8 %bf.load5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce112_compressor_disable_lpt(ptr noundef %compressor)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  tail call fastcc void @wait_for_fbc_state_changed(ptr noundef %compressor, i1 noundef zeroext false)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8.i.if.end10_crit_edge, %if.end3.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_disable_lpt(ptr nocapture noundef readonly %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dmif_offset = getelementptr inbounds %struct.dce112_compressor, ptr %compressor, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %2 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmif_offset, align 4
  %add = add i32 %3, 6967
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %add, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %and.i = and i32 %call, -2
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  %6 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmif_offset, align 4
  %add5 = add i32 %7, 6967
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef %add5, i32 noundef %and.i, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressor, align 8
  %10 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmif_offset, align 4
  %add.1 = add i32 %11, 6967
  %call.1 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef %add.1, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %and.i.1 = and i32 %call.1, -2
  %12 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compressor, align 8
  %14 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmif_offset, align 4
  %add5.1 = add i32 %15, 6967
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %add5.1, i32 noundef %and.i.1, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %16 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %compressor, align 8
  %18 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmif_offset, align 4
  %add.2 = add i32 %19, 6967
  %call.2 = tail call i32 @dm_read_reg_func(ptr noundef %17, i32 noundef %add.2, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %and.i.2 = and i32 %call.2, -2
  %20 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %compressor, align 8
  %22 = ptrtoint ptr %dmif_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmif_offset, align 4
  %add5.2 = add i32 %23, 6967
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef %add5.2, i32 noundef %and.i.2, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %24 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %compressor, align 8
  %call7 = tail call i32 @dm_read_reg_func(ptr noundef %25, i32 noundef 18231, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %and.i39 = and i32 %call7, -2
  %26 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %27, i32 noundef 18231, i32 noundef %and.i39, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %28 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %compressor, align 8
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %29, i32 noundef 779, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %and.i40 = and i32 %call11, -2
  %30 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %31, i32 noundef 779, i32 noundef %and.i40, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %32 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %compressor, align 8
  %call15 = tail call i32 @dm_read_reg_func(ptr noundef %33, i32 noundef 3411, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  %34 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %35, i32 noundef 3411, i32 noundef -1, ptr noundef nonnull @__func__.dce112_compressor_disable_lpt) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce112_compressor_is_lpt_enabled_in_hw(ptr nocapture noundef readonly %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 779, ptr noundef nonnull @__func__.dce112_compressor_is_lpt_enabled_in_hw) #6
  %and.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_program_compressed_surface_address_and_pitch(ptr nocapture noundef readonly %compressor, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %compr_surface_address = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 5
  %0 = ptrtoint ptr %compr_surface_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compr_surface_address, align 8
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  %offsets = getelementptr inbounds %struct.dce112_compressor, ptr %compressor, i32 0, i32 1
  %4 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets, align 8
  %add = add i32 %5, 6683
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 8
  %add4 = add i32 %9, 6681
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %add4, i32 noundef 0, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %10 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %options, align 8
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %raw_size.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 10
  %12 = ptrtoint ptr %raw_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raw_size.i, align 8
  %banks_num.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 9
  %14 = ptrtoint ptr %banks_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %banks_num.i, align 4
  %mul.i = mul i32 %15, %13
  %dram_channels_num.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 12
  %16 = ptrtoint ptr %dram_channels_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dram_channels_num.i, align 8
  %mul3.i = mul i32 %mul.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3.i)
  %cmp.not = icmp eq i32 %mul3.i, 0
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %1, -1
  %add6 = add i32 %sub, %mul3.i
  %18 = urem i32 %add6, %mul3.i
  %mul = sub i32 %add6, %18
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %compressed_surf_address_low_part.1 = phi i32 [ %1, %entry.if.end7_crit_edge ], [ %mul, %if.then5 ], [ %1, %if.then.if.end7_crit_edge ]
  %19 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %compressor, align 8
  %21 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets, align 8
  %add11 = add i32 %22, 6683
  %high_part = getelementptr inbounds %struct.anon.4, ptr %compr_surface_address, i32 0, i32 1
  %23 = ptrtoint ptr %high_part to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %high_part, align 4
  tail call void @dm_write_reg_func(ptr noundef %20, i32 noundef %add11, i32 noundef %24, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  %25 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %compressor, align 8
  %27 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offsets, align 8
  %add16 = add i32 %28, 6681
  tail call void @dm_write_reg_func(ptr noundef %26, i32 noundef %add16, i32 noundef %compressed_surf_address_low_part.1, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  %source_view_width = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 1
  %29 = ptrtoint ptr %source_view_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %source_view_width, align 4
  %add.i = add i32 %30, 255
  %div1.i = and i32 %add.i, -256
  %min_compress_ratio = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 16
  %31 = ptrtoint ptr %min_compress_ratio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_compress_ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp18 = icmp eq i32 %32, 1
  br i1 %cmp18, label %if.then19, label %do.end

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %div2056 = lshr exact i32 %div1.i, 3
  br label %if.end23

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then19
  %fbc_pitch.0 = phi i32 [ %div2056, %if.then19 ], [ %div1.i, %do.end ]
  %33 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %compressor, align 8
  %35 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets, align 8
  %add27 = add i32 %36, 6682
  tail call void @dm_write_reg_func(ptr noundef %34, i32 noundef %add27, i32 noundef 0, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  %shl.i = shl i32 %fbc_pitch.0, 6
  %and42.i = and i32 %shl.i, 131008
  %37 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %compressor, align 8
  %39 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offsets, align 8
  %add32 = add i32 %40, 6682
  tail call void @dm_write_reg_func(ptr noundef %38, i32 noundef %add32, i32 noundef %and42.i, ptr noundef nonnull @__func__.dce112_compressor_program_compressed_surface_address_and_pitch) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_program_lpt_control(ptr nocapture noundef readonly %compressor, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %options, align 8
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef 779, ptr noundef nonnull @__func__.dce112_compressor_program_lpt_control) #6
  %lpt_channels_num = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 15
  %4 = ptrtoint ptr %lpt_channels_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lpt_channels_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond22 = icmp eq i32 %5, 1
  br i1 %cond22, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %call, -25
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dce112_compressor_program_lpt_control) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %lpt_control.0 = phi i32 [ %and.i, %sw.bb ], [ %call, %do.end ]
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %options, align 8
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i, label %do.end45.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  %dram_channels_num.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 12
  %8 = ptrtoint ptr %dram_channels_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dram_channels_num.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %lpt_control.0, -225
  %or.i.i = or i32 %and.i.i, 32
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i63.i = and i32 %lpt_control.0, -225
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb2.i, %sw.bb.i
  %lpt_control.addr.0.i = phi i32 [ %lpt_control.0, %do.end.i ], [ %and.i63.i, %sw.bb2.i ], [ %or.i.i, %sw.bb.i ]
  %banks_num.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 9
  %11 = ptrtoint ptr %banks_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %banks_num.i, align 4
  %13 = add i32 %12, -2
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31) #6
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %14, label %do.end16.i [
    i32 7, label %sw.bb6.i
    i32 3, label %sw.bb8.i
    i32 1, label %sw.bb10.i
    i32 0, label %sw.bb12.i
  ]

sw.bb6.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i64.i = and i32 %lpt_control.addr.0.i, -1793
  %or.i65.i = or i32 %and.i64.i, 768
  br label %sw.epilog19.i

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i66.i = and i32 %lpt_control.addr.0.i, -1793
  %or.i67.i = or i32 %and.i66.i, 512
  br label %sw.epilog19.i

sw.bb10.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i68.i = and i32 %lpt_control.addr.0.i, -1793
  %or.i69.i = or i32 %and.i68.i, 256
  br label %sw.epilog19.i

sw.bb12.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i70.i = and i32 %lpt_control.addr.0.i, -1793
  br label %sw.epilog19.i

do.end16.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #9
  br label %sw.epilog19.i

sw.epilog19.i:                                    ; preds = %do.end16.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb6.i
  %lpt_control.addr.1.i = phi i32 [ %lpt_control.addr.0.i, %do.end16.i ], [ %and.i70.i, %sw.bb12.i ], [ %or.i69.i, %sw.bb10.i ], [ %or.i67.i, %sw.bb8.i ], [ %or.i65.i, %sw.bb6.i ]
  %channel_interleave_size.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 11
  %16 = ptrtoint ptr %channel_interleave_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_interleave_size.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %17, label %do.end27.i [
    i32 256, label %sw.bb21.i
    i32 512, label %sw.bb23.i
  ]

sw.bb21.i:                                        ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i71.i = and i32 %lpt_control.addr.1.i, -2049
  br label %sw.epilog30.i

sw.bb23.i:                                        ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i73.i = or i32 %lpt_control.addr.1.i, 2048
  br label %sw.epilog30.i

do.end27.i:                                       ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6) #9
  br label %sw.epilog30.i

sw.epilog30.i:                                    ; preds = %do.end27.i, %sw.bb23.i, %sw.bb21.i
  %lpt_control.addr.2.i = phi i32 [ %lpt_control.addr.1.i, %do.end27.i ], [ %or.i73.i, %sw.bb23.i ], [ %and.i71.i, %sw.bb21.i ]
  %raw_size.i = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 10
  %19 = ptrtoint ptr %raw_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %raw_size.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %20, label %do.end40.i [
    i32 4096, label %sw.bb32.i
    i32 2048, label %sw.bb34.i
    i32 1024, label %sw.bb36.i
  ]

sw.bb32.i:                                        ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i74.i = and i32 %lpt_control.addr.2.i, -28673
  %or.i75.i = or i32 %and.i74.i, 8192
  br label %lpt_memory_control_config.exit

sw.bb34.i:                                        ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i76.i = and i32 %lpt_control.addr.2.i, -28673
  %or.i77.i = or i32 %and.i76.i, 4096
  br label %lpt_memory_control_config.exit

sw.bb36.i:                                        ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i78.i = and i32 %lpt_control.addr.2.i, -28673
  br label %lpt_memory_control_config.exit

do.end40.i:                                       ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #8
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6) #9
  br label %lpt_memory_control_config.exit

do.end45.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6) #9
  br label %lpt_memory_control_config.exit

lpt_memory_control_config.exit:                   ; preds = %do.end45.i, %do.end40.i, %sw.bb36.i, %sw.bb34.i, %sw.bb32.i
  %lpt_control.addr.3.i = phi i32 [ %lpt_control.addr.2.i, %do.end40.i ], [ %and.i78.i, %sw.bb36.i ], [ %or.i77.i, %sw.bb34.i ], [ %or.i75.i, %sw.bb32.i ], [ %lpt_control.0, %do.end45.i ]
  %raw_size.i39 = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 10
  %22 = ptrtoint ptr %raw_size.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %raw_size.i39, align 8
  %banks_num.i40 = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 9
  %24 = ptrtoint ptr %banks_num.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %banks_num.i40, align 4
  %mul.i = mul i32 %25, %23
  %dram_channels_num.i41 = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 12
  %26 = ptrtoint ptr %dram_channels_num.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dram_channels_num.i41, align 8
  %mul3.i = mul i32 %mul.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3.i)
  %cmp.not = icmp eq i32 %mul3.i, 0
  br i1 %cmp.not, label %lpt_memory_control_config.exit.if.end14_crit_edge, label %if.then9

lpt_memory_control_config.exit.if.end14_crit_edge: ; preds = %lpt_memory_control_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %lpt_memory_control_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %source_view_width6 = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 1
  %28 = ptrtoint ptr %source_view_width6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %source_view_width6, align 4
  %source_view_height8 = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 2
  %30 = ptrtoint ptr %source_view_height8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %source_view_height8, align 4
  %add = add i32 %31, 1
  %and = and i32 %add, 1073741822
  %add.i = shl i32 %29, 2
  %div1.i = add i32 %add.i, 1020
  %mul = and i32 %div1.i, -1024
  %mul10 = mul i32 %mul, %and
  %mul10.frozen = freeze i32 %mul10
  %mul3.i.frozen = freeze i32 %mul3.i
  %div13 = udiv i32 %mul10.frozen, %mul3.i.frozen
  %32 = mul i32 %div13, %mul3.i.frozen
  %rem.decomposed = sub i32 %mul10.frozen, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool11.not = icmp ne i32 %rem.decomposed, 0
  %add12 = zext i1 %tobool11.not to i32
  %spec.select = add nuw i32 %div13, %add12
  %phi.bo = shl i32 %spec.select, 16
  %phi.bo43 = and i32 %phi.bo, 268369920
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %lpt_memory_control_config.exit.if.end14_crit_edge
  %rows_per_channel.0 = phi i32 [ 0, %lpt_memory_control_config.exit.if.end14_crit_edge ], [ %phi.bo43, %if.then9 ]
  %and.i42 = and i32 %lpt_control.addr.3.i, -268369921
  %or.i = or i32 %rows_per_channel.0, %and.i42
  %33 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %34, i32 noundef 779, i32 noundef %or.i, ptr noundef nonnull @__func__.dce112_compressor_program_lpt_control) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_set_fbc_invalidation_triggers(ptr nocapture noundef readonly %compressor, i32 noundef %fbc_trigger) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 8
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 667, ptr noundef nonnull @__func__.dce112_compressor_set_fbc_invalidation_triggers) #6
  %and.i = and i32 %call, -983041
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 667, i32 noundef %and.i, ptr noundef nonnull @__func__.dce112_compressor_set_fbc_invalidation_triggers) #6
  %4 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compressor, align 8
  %call4 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef 642, ptr noundef nonnull @__func__.dce112_compressor_set_fbc_invalidation_triggers) #6
  %or9 = or i32 %fbc_trigger, 126
  %6 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compressor, align 8
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef 642, i32 noundef %or9, ptr noundef nonnull @__func__.dce112_compressor_set_fbc_invalidation_triggers) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_construct(ptr nocapture noundef %compressor, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %panel_info = alloca %struct.embedded_panel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_bios, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %panel_info) #6
  %2 = call ptr @memset(ptr %panel_info, i32 255, i32 68)
  %options = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 4
  %3 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1879048192, ptr %options, align 8
  %lpt_channels_num = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 15
  %4 = ptrtoint ptr %lpt_channels_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %lpt_channels_num, align 4
  %memory_bus_width = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 8
  %5 = ptrtoint ptr %memory_bus_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memory_bus_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp = icmp eq i32 %6, 64
  %spec.store.select = select i1 %cmp, i8 -128, i8 -112
  %7 = ptrtoint ptr %options to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select, ptr %options, align 8
  %8 = ptrtoint ptr %compressor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctx, ptr %compressor, align 8
  %embedded_panel_h_size = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 6
  %9 = ptrtoint ptr %embedded_panel_h_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %embedded_panel_h_size, align 8
  %embedded_panel_v_size = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 7
  %10 = ptrtoint ptr %embedded_panel_v_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %embedded_panel_v_size, align 4
  %vram_width = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vram_width, align 4
  %13 = ptrtoint ptr %memory_bus_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %memory_bus_width, align 8
  %banks_num = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 9
  %attached_inst = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 1
  %14 = ptrtoint ptr %attached_inst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %attached_inst, align 4
  %is_enabled = getelementptr inbounds %struct.compressor, ptr %compressor, i32 0, i32 2
  %15 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_enabled, align 8
  %16 = call ptr @memset(ptr %banks_num, i32 0, i32 32)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %get_embedded_panel_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %get_embedded_panel_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_embedded_panel_info, align 4
  %call = call i32 %20(ptr noundef %1, ptr noundef nonnull %panel_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42 = icmp eq i32 %call, 0
  br i1 %cmp42, label %if.then43, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %horizontal_addressable = getelementptr inbounds %struct.device_timing, ptr %panel_info, i32 0, i32 2
  %21 = ptrtoint ptr %horizontal_addressable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %horizontal_addressable, align 4
  %23 = ptrtoint ptr %embedded_panel_h_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %embedded_panel_h_size, align 8
  %vertical_addressable = getelementptr inbounds %struct.device_timing, ptr %panel_info, i32 0, i32 4
  %24 = ptrtoint ptr %vertical_addressable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vertical_addressable, align 4
  %26 = ptrtoint ptr %embedded_panel_v_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %embedded_panel_v_size, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %entry.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce112_compressor_create(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %panel_info.i = alloca %struct.embedded_panel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %1 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_bios.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %panel_info.i) #6
  %3 = call ptr @memset(ptr %panel_info.i, i32 255, i32 68)
  %options.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1879048192, ptr %options.i, align 8
  %memory_bus_width.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %memory_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memory_bus_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp.i = icmp eq i32 %6, 64
  %spec.store.select.i = select i1 %cmp.i, i8 -128, i8 -112
  %7 = ptrtoint ptr %options.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select.i, ptr %options.i, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctx, ptr %call7.i.i, align 8
  %embedded_panel_h_size.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %embedded_panel_h_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %embedded_panel_h_size.i, align 8
  %embedded_panel_v_size.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %embedded_panel_v_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %embedded_panel_v_size.i, align 4
  %vram_width.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vram_width.i, align 4
  %13 = ptrtoint ptr %memory_bus_width.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %memory_bus_width.i, align 8
  %banks_num.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 9
  %attached_inst.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %attached_inst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %attached_inst.i, align 4
  %is_enabled.i = getelementptr inbounds %struct.compressor, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_enabled.i, align 8
  %16 = call ptr @memset(ptr %banks_num.i, i32 0, i32 32)
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %get_embedded_panel_info.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %get_embedded_panel_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_embedded_panel_info.i, align 4
  %call.i = call i32 %20(ptr noundef %2, ptr noundef nonnull %panel_info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp42.i = icmp eq i32 %call.i, 0
  br i1 %cmp42.i, label %if.then43.i, label %if.end.dce112_compressor_construct.exit_crit_edge

if.end.dce112_compressor_construct.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce112_compressor_construct.exit

if.then43.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %horizontal_addressable.i = getelementptr inbounds %struct.device_timing, ptr %panel_info.i, i32 0, i32 2
  %21 = ptrtoint ptr %horizontal_addressable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %horizontal_addressable.i, align 4
  %23 = ptrtoint ptr %embedded_panel_h_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %embedded_panel_h_size.i, align 8
  %vertical_addressable.i = getelementptr inbounds %struct.device_timing, ptr %panel_info.i, i32 0, i32 4
  %24 = ptrtoint ptr %vertical_addressable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vertical_addressable.i, align 4
  %26 = ptrtoint ptr %embedded_panel_v_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %embedded_panel_v_size.i, align 4
  br label %dce112_compressor_construct.exit

dce112_compressor_construct.exit:                 ; preds = %if.then43.i, %if.end.dce112_compressor_construct.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dce112_compressor_construct.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_compressor_destroy(ptr nocapture noundef %compressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressor, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %compressor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %compressor, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__func__.dce112_compressor_power_up_fbc, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 325, i32 10}
!2 = !{ptr @__func__.dce112_compressor_enable_fbc, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 394, i32 11}
!4 = !{ptr @__func__.dce112_compressor_disable_fbc, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 425, i32 14}
!6 = !{ptr @__func__.dce112_compressor_is_fbc_enabled_in_hw, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 449, i32 10}
!8 = !{ptr @__func__.dce112_compressor_is_lpt_enabled_in_hw, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 473, i32 19}
!10 = !{ptr @__func__.dce112_compressor_program_compressed_surface_address_and_pitch, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 493, i32 2}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 526, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dce112_compressor_program_compressed_surface_address_and_pitch._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__func__.dce112_compressor_disable_lpt, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 553, i32 4}
!19 = !{ptr @__func__.dce112_compressor_enable_lpt, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 606, i32 10}
!21 = !{ptr @__func__.dce112_compressor_program_lpt_control, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 670, i32 16}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 690, i32 3}
!25 = !{ptr @dce112_compressor_program_lpt_control._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dce112_compressor_program_lpt_control._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__func__.dce112_compressor_set_fbc_invalidation_triggers, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 741, i32 19}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @reg_offsets, !33, !"reg_offsets", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 46, i32 51}
!34 = !{ptr @__func__.wait_for_fbc_state_changed, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 302, i32 11}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 313, i32 3}
!38 = !{ptr @wait_for_fbc_state_changed._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wait_for_fbc_state_changed._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 136, i32 4}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lpt_memory_control_config._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lpt_memory_control_config._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 181, i32 4}
!47 = !{ptr @lpt_memory_control_config._entry.7, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpt_memory_control_config._entry_ptr.9, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 214, i32 4}
!51 = !{ptr @lpt_memory_control_config._entry.10, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lpt_memory_control_config._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 257, i32 4}
!55 = !{ptr @lpt_memory_control_config._entry.13, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lpt_memory_control_config._entry_ptr.15, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.c", i32 263, i32 3}
!59 = !{ptr @lpt_memory_control_config._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lpt_memory_control_config._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

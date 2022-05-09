; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/io.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }
%struct.prcm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@omap24xx_io_desc = internal global [2 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 425984, i32 1048576, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 1048576, i32 0 }], section ".init.data", align 4
@omap242x_io_desc = internal global [3 x %struct.map_desc] [%struct.map_desc { i32 -66060288, i32 360448, i32 163840, i32 0 }, %struct.map_desc { i32 -65896448, i32 364544, i32 4096, i32 0 }, %struct.map_desc { i32 -65892352, i32 368640, i32 4096, i32 0 }], section ".init.data", align 4
@omap243x_io_desc = internal global [4 x %struct.map_desc] [%struct.map_desc { i32 -83886080, i32 299008, i32 1048576, i32 0 }, %struct.map_desc { i32 -33554432, i32 450560, i32 1048576, i32 0 }, %struct.map_desc { i32 -50331648, i32 446464, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 442368, i32 1048576, i32 0 }], section ".init.data", align 4
@omap34xx_io_desc = internal global [7 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 425984, i32 1048576, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }, %struct.map_desc { i32 -33554432, i32 450560, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 442368, i32 1048576, i32 0 }, %struct.map_desc { i32 -50331648, i32 446464, i32 1048576, i32 0 }, %struct.map_desc { i32 -83886080, i32 299008, i32 1048576, i32 0 }, %struct.map_desc { i32 -25165824, i32 344064, i32 8388608, i32 0 }], section ".init.data", align 4
@omapti81xx_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@omapam33xx_io_desc = internal global [2 x %struct.map_desc] [%struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }, %struct.map_desc { i32 -104857600, i32 281600, i32 4194304, i32 0 }], section ".init.data", align 4
@omap44xx_io_desc = internal global [3 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 4194304, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@omap54xx_io_desc = internal global [4 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 4194304, i32 0 }, %struct.map_desc { i32 -52428800, i32 306688, i32 2097152, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@dra7xx_io_desc = internal global [7 x %struct.map_desc] [%struct.map_desc { i32 -98500608, i32 295440, i32 1048576, i32 0 }, %struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 1048576, i32 0 }, %struct.map_desc { i32 -96468992, i32 295936, i32 1048576, i32 0 }, %struct.map_desc { i32 -92274688, i32 296960, i32 2097152, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 3145728, i32 0 }, %struct.map_desc { i32 -52428800, i32 306688, i32 1048576, i32 0 }], section ".init.data", align 4
@omap_clk_soc_init = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2420_rate_table = external dso_local constant [0 x %struct.prcm_config], align 4
@rate_table = external dso_local local_unnamed_addr global ptr, align 4
@omap_pm_soc_init = external dso_local local_unnamed_addr global ptr, align 4
@omap2430_rate_table = external dso_local constant [0 x %struct.prcm_config], align 4
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll3_m2_ck\00", [20 x i8] zeroinitializer }, align 32
@_omap2_init_reprogram_sdrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Reprogramming SDRC clock to %ld Hz\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_omap2_init_reprogram_sdrc\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-omap2/io.c\00", [39 x i8] zeroinitializer }, align 32
@_omap2_init_reprogram_sdrc._entry_ptr = internal global ptr @_omap2_init_reprogram_sdrc._entry, section ".printk_index", align 4
@_omap2_init_reprogram_sdrc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dpll3_m2_clk rate change failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@_omap2_init_reprogram_sdrc._entry_ptr.6 = internal global ptr @_omap2_init_reprogram_sdrc._entry.4, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"omap_clk_soc_init\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 60, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 390, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 395, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [28 x i8] c"../arch/arm/mach-omap2/io.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 398, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @_omap2_init_reprogram_sdrc._entry, ptr @_omap2_init_reprogram_sdrc._entry.4, ptr @_omap2_init_reprogram_sdrc._entry_ptr, ptr @_omap2_init_reprogram_sdrc._entry_ptr.6, ptr @omap_clk_soc_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_clk_soc_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap2_init_reprogram_sdrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap2_init_reprogram_sdrc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap242x_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omap24xx_io_desc, i32 noundef 2) #6
  tail call void @iotable_init(ptr noundef nonnull @omap242x_io_desc, i32 noundef 3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap243x_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omap24xx_io_desc, i32 noundef 2) #6
  tail call void @iotable_init(ptr noundef nonnull @omap243x_io_desc, i32 noundef 4) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omap34xx_io_desc, i32 noundef 7) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti81xx_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omapti81xx_io_desc, i32 noundef 1) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am33xx_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omapam33xx_io_desc, i32 noundef 2) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omap44xx_io_desc, i32 noundef 3) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_barriers_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap5_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @omap54xx_io_desc, i32 noundef 4) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dra7xx_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @dra7xx_io_desc, i32 noundef 7) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2420_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %postsetup_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 606076964, ptr noundef nonnull inttoptr (i32 -100581376 to ptr)) #9
  tail call void @omap2_set_globals_sdrc(ptr noundef nonnull inttoptr (i32 -134180864 to ptr), ptr noundef nonnull inttoptr (i32 -134184960 to ptr)) #6
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap2xxx_check_revision() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap2xxx_voltagedomains_init() #6
  tail call void @omap242x_powerdomains_init() #6
  tail call void @omap242x_clockdomains_init() #9
  %call2 = tail call i32 @omap2420_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  %0 = ptrtoint ptr %postsetup_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %postsetup_state.i, align 1
  %call.i = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %postsetup_state.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  store ptr @omap2420_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rate_table to i32))
  store ptr @omap2420_rate_table, ptr @rate_table, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap2_set_globals_tap(i32 noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_set_globals_sdrc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_control_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prcm_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap242x_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap242x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2420_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2420_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2420_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap2_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pm_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2430_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %postsetup_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 607125540, ptr noundef nonnull inttoptr (i32 -83845120 to ptr)) #9
  tail call void @omap2_set_globals_sdrc(ptr noundef nonnull inttoptr (i32 -50331648 to ptr), ptr noundef nonnull inttoptr (i32 -67108864 to ptr)) #6
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap2xxx_check_revision() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap2xxx_voltagedomains_init() #6
  tail call void @omap243x_powerdomains_init() #6
  tail call void @omap243x_clockdomains_init() #9
  %call2 = tail call i32 @omap2430_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  %0 = ptrtoint ptr %postsetup_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %postsetup_state.i, align 1
  %call.i = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %postsetup_state.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  store ptr @omap2430_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rate_table to i32))
  store ptr @omap2430_rate_table, ptr @rate_table, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap243x_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap243x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2430_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2430_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2430_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap2_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %postsetup_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 875561012, ptr noundef nonnull inttoptr (i32 -97476608 to ptr)) #9
  tail call void @omap2_set_globals_sdrc(ptr noundef nonnull inttoptr (i32 -50331648 to ptr), ptr noundef nonnull inttoptr (i32 -67108864 to ptr)) #6
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @omap3xxx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @omap3xxx_clockdomains_init() #9
  %call2 = tail call i32 @omap3xxx_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  %0 = ptrtoint ptr %postsetup_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %postsetup_state.i, align 1
  %call.i = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %postsetup_state.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap3xxx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3xxx_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_secure_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3430_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3_init_early() #10
  store ptr @omap3430_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3430_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap35xx_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3_init_early() #10
  store ptr @omap3430_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3630_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3_init_early() #10
  store ptr @omap3630_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3630_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am35xx_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3_init_early() #10
  store ptr @am35xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am35xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap3_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap3_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_pm_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ti81xx_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap_pm_nop_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_nop_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti814x_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %postsetup_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef -2126511999, ptr noundef nonnull inttoptr (i32 -99351556 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @ti81xx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @ti814x_clockdomains_init() #9
  %call2 = tail call i32 @dm814x_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  %0 = ptrtoint ptr %postsetup_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %postsetup_state.i, align 1
  %call.i = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %postsetup_state.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  store ptr @dm814x_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_check_features() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti814x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm814x_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm814x_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti816x_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %postsetup_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef -2124414847, ptr noundef nonnull inttoptr (i32 -99351556 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @ti81xx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @ti816x_clockdomains_init() #9
  %call2 = tail call i32 @dm816x_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  %0 = ptrtoint ptr %postsetup_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %postsetup_state.i, align 1
  %call.i = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %postsetup_state.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %postsetup_state.i) #6
  store ptr @dm816x_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti816x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm816x_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm816x_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am33xx_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 860880947, ptr noundef nonnull inttoptr (i32 -102693892 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @am33xx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @am33xx_powerdomains_init() #6
  tail call void @am33xx_clockdomains_init() #9
  store ptr @am33xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @am33xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @am33xx_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @amx3_common_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amx3_common_pm_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am43xx_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 860880947, ptr noundef nonnull inttoptr (i32 -102693892 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @am33xx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @am43xx_powerdomains_init() #6
  tail call void @am43xx_clockdomains_init() #6
  %call2 = tail call i32 @omap_l2_cache_init() #6
  store ptr @am43xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_clockdomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_l2_cache_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am43xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @am43xx_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @amx3_common_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4430_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 1143996484, ptr noundef nonnull inttoptr (i32 -67100672 to ptr)) #9
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  tail call void @omap4xxx_check_revision() #6
  tail call void @omap4xxx_check_features() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap4_sar_ram_init() #6
  tail call void @omap4_mpuss_early_init() #6
  %call2 = tail call i32 @omap4_pm_init_early() #6
  tail call void @omap44xx_voltagedomains_init() #6
  tail call void @omap44xx_powerdomains_init() #6
  tail call void @omap44xx_clockdomains_init() #9
  %call3 = tail call i32 @omap_l2_cache_init() #6
  store ptr @omap4xxx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap2_set_globals_prcm_mpu(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4xxx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_sar_ram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_mpuss_early_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_pm_init_early() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap44xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4xxx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap4430_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_pm_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap5_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 1409286228, ptr noundef nonnull inttoptr (i32 -67100672 to ptr)) #9
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  %call1 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap5xxx_check_revision() #6
  tail call void @omap4_sar_ram_init() #6
  tail call void @omap4_mpuss_early_init() #6
  %call2 = tail call i32 @omap4_pm_init_early() #6
  tail call void @omap54xx_voltagedomains_init() #6
  tail call void @omap54xx_powerdomains_init() #6
  tail call void @omap54xx_clockdomains_init() #9
  store ptr @omap5xxx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap54xx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap54xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap54xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap5xxx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap5_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dra7xx_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap2_set_globals_tap(i32 noundef 117440512, ptr noundef nonnull inttoptr (i32 -52379648 to ptr)) #9
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #9
  %call = tail call i32 @omap2_control_base_init() #6
  %call1 = tail call i32 @omap4_pm_init_early() #6
  %call2 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @dra7xxx_check_revision() #6
  tail call void @dra7xx_powerdomains_init() #6
  tail call void @dra7xx_clockdomains_init() #9
  store ptr @dra7xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dra7xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dra7xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dra7xx_init_late() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap_pm_soc_init to i32))
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_sdrc_init(ptr noundef %sdrc_cs0, ptr noundef %sdrc_cs1) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_sram_init() #6
  %call.i = tail call i32 @omap_rev() #6
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_features to i32))
  %0 = load i32, ptr @omap_features, align 4
  %and.i5 = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool3.not = icmp eq i32 %and.i5, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @omap2_sdrc_init(ptr noundef %sdrc_cs0, ptr noundef %sdrc_cs1) #6
  tail call fastcc void @_omap2_init_reprogram_sdrc() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_sram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sdrc_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_omap2_init_reprogram_sdrc() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #6
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #6
  %cmp.i1 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @clk_get_rate(ptr noundef %call1) #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call5) #9
  %call7 = tail call i32 @clk_set_rate(ptr noundef %call1, i32 noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end4.if.end15_crit_edge, label %do.end12

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call7) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end4.if.end15_crit_edge
  tail call void @clk_put(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_clk_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_clk_soc_init, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ti_clk_init_features() #9
  %call = tail call i32 @omap2_clk_setup_ll_ops() #9
  %call1 = tail call i32 @omap_control_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @omap_prcm_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_clk_init(ptr noundef null) #6
  tail call void @ti_dt_clk_init_retry_clks() #6
  tail call void @ti_dt_clockdomains_setup() #6
  %1 = load ptr, ptr @omap_clk_soc_init, align 4
  %call9 = tail call i32 %1() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti_clk_init_features() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap2_clk_setup_ll_ops() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_control_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clk_init_retry_clks() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clockdomains_setup() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_set_hwmod_postsetup_state(ptr noundef %oh, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %call = tail call i32 @omap_hwmod_set_postsetup_state(ptr noundef %oh, i8 noundef zeroext %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_set_postsetup_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @omap_clk_soc_init, !1, !"omap_clk_soc_init", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/io.c", i32 60, i32 14}
!2 = !{ptr @omap24xx_io_desc, !3, !"omap24xx_io_desc", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/io.c", i32 68, i32 24}
!4 = !{ptr @omap242x_io_desc, !5, !"omap242x_io_desc", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/io.c", i32 84, i32 24}
!6 = !{ptr @omap243x_io_desc, !7, !"omap243x_io_desc", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/io.c", i32 108, i32 24}
!8 = !{ptr @omap34xx_io_desc, !9, !"omap34xx_io_desc", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/io.c", i32 138, i32 24}
!10 = !{ptr @omapti81xx_io_desc, !11, !"omapti81xx_io_desc", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/io.c", i32 185, i32 24}
!12 = !{ptr @omapam33xx_io_desc, !13, !"omapam33xx_io_desc", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/io.c", i32 196, i32 24}
!14 = !{ptr @omap44xx_io_desc, !15, !"omap44xx_io_desc", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/io.c", i32 213, i32 24}
!16 = !{ptr @omap54xx_io_desc, !17, !"omap54xx_io_desc", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/io.c", i32 236, i32 24}
!18 = !{ptr @dra7xx_io_desc, !19, !"dra7xx_io_desc", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/io.c", i32 265, i32 24}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/io.c", i32 390, i32 30}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/io.c", i32 395, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @_omap2_init_reprogram_sdrc._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @_omap2_init_reprogram_sdrc._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/io.c", i32 398, i32 3}
!30 = !{ptr @_omap2_init_reprogram_sdrc._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @_omap2_init_reprogram_sdrc._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

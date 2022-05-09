; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cm_common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@cm_ll_data = internal global { ptr, [28 x i8] } { ptr @null_cm_ll_data, [28 x i8] zeroinitializer }, align 32
@cm_split_idlest_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-omap2/cm_common.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cm: %s: no low-level function defined\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.cm_split_idlest_reg = private unnamed_addr constant [20 x i8] c"cm_split_idlest_reg\00", align 1
@cm_base = dso_local global { %struct.omap_domain_base, [20 x i8] } zeroinitializer, align 32
@omap_cm_wait_module_ready.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_wait_module_ready = private unnamed_addr constant [26 x i8] c"omap_cm_wait_module_ready\00", align 1
@omap_cm_wait_module_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_wait_module_idle = private unnamed_addr constant [25 x i8] c"omap_cm_wait_module_idle\00", align 1
@omap_cm_module_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_module_enable = private unnamed_addr constant [22 x i8] c"omap_cm_module_enable\00", align 1
@omap_cm_module_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_module_disable = private unnamed_addr constant [23 x i8] c"omap_cm_module_disable\00", align 1
@omap_cm_xlate_clkctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_xlate_clkctrl = private unnamed_addr constant [22 x i8] c"omap_cm_xlate_clkctrl\00", align 1
@null_cm_ll_data = internal global { %struct.cm_ll_data, [40 x i8] } zeroinitializer, align 32
@omap_cm_dt_match_table = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-cm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-cm1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-cm2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-cm-core-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cm-core-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@cm2_base = dso_local global { %struct.omap_domain_base, [20 x i8] } zeroinitializer, align 32
@omap2_prcm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 3, i32 0, ptr @omap2xxx_cm_init, ptr null }, section ".init.data", align 4
@omap3_cm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 2048, i16 2, i32 0, ptr @omap3xxx_cm_init, ptr null }, section ".init.data", align 4
@cm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4
@cm2_data = internal global %struct.omap_prcm_init_data { i32 1, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4
@am3_prcm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 3, i32 0, ptr @am33xx_cm_init, ptr null }, section ".init.data", align 4
@am4_prcm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 3, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"cm_ll_data\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 29, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 57, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"cm_base\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 32, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"null_cm_ll_data\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 28, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"cm2_base\00", align 1
@___asan_gen_.18 = private constant [35 x i8] c"../arch/arm/mach-omap2/cm_common.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 35, i32 25 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @cm_ll_data, ptr @.str, ptr @.str.1, ptr @cm_base, ptr @null_cm_ll_data, ptr @cm2_base], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_ll_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_cm_ll_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm2_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cm_split_idlest_reg(ptr noundef %idlest_reg, ptr noundef %prcm_inst, ptr noundef %idlest_reg_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b42 = load i1, ptr @cm_split_idlest_reg.__already_done, align 1
  br i1 %.b42, label %land.end.cleanup_crit_edge, label %if.then6, !prof !51

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cm_split_idlest_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cm_split_idlest_reg) #6
  br label %cleanup

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %2(ptr noundef %idlest_reg, ptr noundef %prcm_inst, ptr noundef %idlest_reg_id) #6
  %3 = load i16, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 2), align 4
  %4 = ptrtoint ptr %prcm_inst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_inst, align 2
  %sub = sub i16 %5, %3
  store i16 %sub, ptr %prcm_inst, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then6, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_reg, i8 noundef zeroext %idlest_shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %wait_module_ready = getelementptr inbounds %struct.cm_ll_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %wait_module_ready to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait_module_ready, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_cm_wait_module_ready.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_cm_wait_module_ready.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_wait_module_ready) #6
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %2(i8 noundef zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_reg, i8 noundef zeroext %idlest_shift) #6
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_wait_module_idle(i8 noundef zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_reg, i8 noundef zeroext %idlest_shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %wait_module_idle = getelementptr inbounds %struct.cm_ll_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %wait_module_idle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait_module_idle, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_cm_wait_module_idle.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_cm_wait_module_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_wait_module_idle) #6
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %2(i8 noundef zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_reg, i8 noundef zeroext %idlest_shift) #6
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_module_enable(i8 noundef zeroext %mode, i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %module_enable = getelementptr inbounds %struct.cm_ll_data, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %module_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %module_enable, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_cm_module_enable.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_cm_module_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_module_enable) #6
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %2(i8 noundef zeroext %mode, i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #6
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_module_disable(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %module_disable = getelementptr inbounds %struct.cm_ll_data, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %module_disable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %module_disable, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_cm_module_disable.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_cm_module_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_module_disable) #6
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %2(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #6
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_ll_data, align 4
  %xlate_clkctrl = getelementptr inbounds %struct.cm_ll_data, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %xlate_clkctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xlate_clkctrl, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_cm_xlate_clkctrl.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_cm_xlate_clkctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_xlate_clkctrl) #6
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %2(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #6
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ 0, %if.then6 ], [ 0, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cm_register(ptr noundef %cld) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cld, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @cm_ll_data, align 4
  %cmp.not = icmp eq ptr %0, @null_cm_ll_data
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %cld, ptr @cm_ll_data, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cm_unregister(ptr noundef readnone %cld) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cld, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @cm_ll_data, align 4
  %cmp.not = icmp eq ptr %0, %cld
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @null_cm_ll_data, ptr @cm_ll_data, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_cm_base_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not57 = icmp eq ptr %call, null
  br i1 %tobool.not57, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %mem.059 = phi ptr [ %mem.2, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %np.058 = phi ptr [ %call33, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %np.058, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %spec.select = select i1 %cmp, ptr @cm_base, ptr %mem.059
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp eq i32 %8, 1
  %mem.2 = select i1 %cmp7, ptr @cm2_base, ptr %spec.select
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call11 = call ptr @ioremap(i32 noundef %10, i32 noundef %add.i) #6
  %mem12 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %mem12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %mem12, align 4
  %tobool13.not = icmp eq ptr %mem.2, null
  br i1 %tobool13.not, label %if.end.if.end21_crit_edge, label %if.then14

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res, align 4
  %offset = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 3
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset, align 4
  %conv = sext i16 %17 to i32
  %add = add i32 %15, %conv
  %18 = ptrtoint ptr %mem.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %mem.2, align 4
  %19 = ptrtoint ptr %mem12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem12, align 4
  %21 = load i16, ptr %offset, align 4
  %conv18 = sext i16 %21 to i32
  %add.ptr = getelementptr i8, ptr %20, i32 %conv18
  %va = getelementptr inbounds %struct.omap_domain_base, ptr %mem.2, i32 0, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %va, align 4
  %23 = load i16, ptr %offset, align 4
  %offset20 = getelementptr inbounds %struct.omap_domain_base, ptr %mem.2, i32 0, i32 2
  %24 = ptrtoint ptr %offset20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %offset20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end.if.end21_crit_edge
  %np22 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 7
  %25 = ptrtoint ptr %np22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %np.058, ptr %np22, align 4
  %init = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 6
  %26 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init, align 4
  %tobool23.not = icmp eq ptr %27, null
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %land.lhs.true

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end21
  %flags = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 2
  %30 = and i16 %29, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool25.not = icmp eq i16 %30, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true27

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %32 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm2_base, i32 0, i32 1), align 4
  %tobool28.not = icmp eq ptr %32, null
  br i1 %tobool28.not, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.if.then29_crit_edge

land.lhs.true27.if.then29_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true27.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  %call31 = call i32 %27(ptr noundef %6) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %land.lhs.true27.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %call33 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.058, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not = icmp eq ptr %call33, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_cm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !52
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not16 = icmp eq ptr %call, null
  br i1 %tobool.not16, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.017 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %flags = getelementptr inbounds %struct.omap_prcm_init_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %mem = getelementptr inbounds %struct.omap_prcm_init_data, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %call3 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %np.017, i32 noundef %9, ptr noundef null, ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call7 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.017, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap2xxx_cm_init(ptr noundef) #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3xxx_cm_init(ptr noundef) #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_cm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_cm_init(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 57, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.cm_split_idlest_reg, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 85, i32 3}
!7 = !{ptr @__func__.omap_cm_wait_module_ready, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 111, i32 3}
!10 = !{ptr @__func__.omap_cm_wait_module_idle, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 134, i32 3}
!13 = !{ptr @__func__.omap_cm_module_enable, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 156, i32 3}
!16 = !{ptr @__func__.omap_cm_module_disable, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 168, i32 3}
!19 = !{ptr @__func__.omap_cm_xlate_clkctrl, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @null_cm_ll_data, !21, !"null_cm_ll_data", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 28, i32 26}
!22 = !{ptr @cm_base, !23, !"cm_base", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 32, i32 25}
!24 = !{ptr @cm2_base, !25, !"cm2_base", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 35, i32 25}
!26 = !{ptr @cm_ll_data, !27, !"cm_ll_data", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 29, i32 33}
!28 = !{ptr @omap_cm_dt_match_table, !29, !"omap_cm_dt_match_table", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 271, i32 34}
!30 = !{ptr @omap2_prcm_data, !31, !"omap2_prcm_data", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 234, i32 35}
!32 = !{ptr @omap3_cm_data, !33, !"omap3_cm_data", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 242, i32 35}
!34 = !{ptr @cm_data, !35, !"cm_data", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 222, i32 35}
!36 = !{ptr @cm2_data, !37, !"cm2_data", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 227, i32 35}
!38 = !{ptr @am3_prcm_data, !39, !"am3_prcm_data", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 256, i32 35}
!40 = !{ptr @am4_prcm_data, !41, !"am4_prcm_data", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/cm_common.c", i32 264, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"auto-init"}

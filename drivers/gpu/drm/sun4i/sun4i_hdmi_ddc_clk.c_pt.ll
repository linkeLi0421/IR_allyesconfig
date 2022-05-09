; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.sun4i_ddc = type { %struct.clk_hw, ptr, ptr, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi-ddc\00", [23 x i8] zeroinitializer }, align 32
@sun4i_ddc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ddc_recalc_rate, ptr @sun4i_ddc_round_rate, ptr null, ptr null, ptr null, ptr @sun4i_ddc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 127, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"sun4i_ddc_ops\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 102, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @sun4i_ddc_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ddc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ddc_create(ptr noundef %hdmi, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %call = tail call ptr @__clk_get_name(ptr noundef %parent) #6
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %parent_name, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %regmap = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %variant = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 32
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 8
  %ddc_clk_reg = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ddc_clk_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %ddc_clk_reg, align 4
  %12 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt46 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %10, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %.elt46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack47 = load i32, ptr %.elt46, align 4
  %14 = insertvalue [5 x i32] %12, i32 %.unpack47, 1
  %.elt48 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %10, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %.elt48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack49 = load i32, ptr %.elt48, align 4
  %16 = insertvalue [5 x i32] %14, i32 %.unpack49, 2
  %.elt50 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %10, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack51 = load i32, ptr %.elt50, align 4
  %18 = insertvalue [5 x i32] %16, i32 %.unpack51, 3
  %.elt52 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %10, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %.elt52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack53 = load i32, ptr %.elt52, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack53, 4
  %call6 = tail call ptr @devm_regmap_field_alloc(ptr noundef %6, ptr noundef %8, [5 x i32] %20) #6
  %reg = getelementptr inbounds %struct.sun4i_ddc, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sun4i_ddc_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %25 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %26 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents, align 4
  %hdmi13 = getelementptr inbounds %struct.sun4i_ddc, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %hdmi13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hdmi, ptr %hdmi13, align 4
  %init14 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %init14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init, ptr %init14, align 4
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 8
  %ddc_clk_pre_divider = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ddc_clk_pre_divider to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ddc_clk_pre_divider, align 4
  %pre_div = getelementptr inbounds %struct.sun4i_ddc, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %pre_div to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %pre_div, align 4
  %ddc_clk_m_offset = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %30, i32 0, i32 7
  %34 = ptrtoint ptr %ddc_clk_m_offset to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ddc_clk_m_offset, align 1
  %m_offset = getelementptr inbounds %struct.sun4i_ddc, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %m_offset to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %m_offset, align 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %call19 = call ptr @devm_clk_register(ptr noundef %38, ptr noundef nonnull %call.i) #6
  %ddc_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 11
  %39 = ptrtoint ptr %ddc_clk to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call19, ptr %ddc_clk, align 4
  %cmp.i54 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %40 = ptrtoint ptr %call19 to i32
  %spec.select = select i1 %cmp.i54, i32 %40, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then9 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !13
  %reg1 = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg1, align 4
  %call2 = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = lshr i32 %4, 3
  %conv = and i32 %5, 15
  %conv4 = and i32 %4, 7
  %pre_div = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %pre_div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pre_div, align 4
  %conv5 = zext i8 %7 to i32
  %div = udiv i32 %parent_rate, %conv5
  %div6 = udiv i32 %div, 10
  %shr8 = lshr i32 %div6, %conv4
  %m_offset = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %m_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_offset, align 1
  %conv10 = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv, %conv10
  %div11 = udiv i32 %shr8, %add
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %div11
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %pre_div = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %pre_div to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pre_div, align 4
  %m_offset = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %m_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_offset, align 1
  %call1 = tail call fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %rate, i32 noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5, ptr noundef null, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %div_m = alloca i8, align 1
  %div_n = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %div_m) #6
  %0 = ptrtoint ptr %div_m to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %div_m, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %div_n) #6
  %1 = ptrtoint ptr %div_n to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %div_n, align 1, !annotation !13
  %pre_div = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %pre_div to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pre_div, align 4
  %m_offset = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %m_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_offset, align 1
  %call1 = call fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %3, i8 noundef zeroext %5, ptr noundef nonnull %div_m, ptr noundef nonnull %div_n)
  %reg = getelementptr inbounds %struct.sun4i_ddc, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = ptrtoint ptr %div_m to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %div_m, align 1
  %10 = shl i8 %9, 3
  %11 = and i8 %10, 120
  %12 = ptrtoint ptr %div_n to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div_n, align 1
  %14 = and i8 %13, 7
  %or7 = or i8 %11, %14
  %or = zext i8 %or7 to i32
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %div_n) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %div_m) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %pre_div, i8 noundef zeroext %m_offset, ptr noundef writeonly %m, ptr noundef writeonly %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv7 = zext i8 %pre_div to i32
  %div = udiv i32 %parent_rate, %conv7
  %div8 = udiv i32 %div, 10
  %conv11 = zext i8 %m_offset to i32
  %shr.1 = lshr i32 %div8, 1
  %shr.2 = lshr i32 %div8, 2
  %shr.3 = lshr i32 %div8, 3
  %shr.4 = lshr i32 %div8, 4
  %shr.5 = lshr i32 %div8, 5
  %shr.6 = lshr i32 %div8, 6
  %shr.7 = lshr i32 %div8, 7
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %cleanup.7.for.cond2.preheader_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %cleanup.7.for.cond2.preheader_crit_edge ]
  %best_rate.068 = phi i32 [ 0, %entry ], [ %best_rate.3.7, %cleanup.7.for.cond2.preheader_crit_edge ]
  %best_m.067 = phi i8 [ 0, %entry ], [ %best_m.3.7, %cleanup.7.for.cond2.preheader_crit_edge ]
  %best_n.065 = phi i8 [ 0, %entry ], [ %best_n.3.7, %cleanup.7.for.cond2.preheader_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv, %conv11
  %div12 = udiv i32 %div8, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12, i32 %rate)
  %cmp13 = icmp ugt i32 %div12, %rate
  br i1 %cmp13, label %for.cond2.preheader.cleanup_crit_edge, label %if.end

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %rate, %div12
  %0 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub19 = sub i32 %rate, %best_rate.068
  %1 = tail call i32 @llvm.abs.i32(i32 %sub19, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp28 = icmp slt i32 %0, %1
  %best_n.2 = select i1 %cmp28, i8 0, i8 %best_n.065
  %2 = trunc i32 %indvars.iv to i8
  %best_m.2 = select i1 %cmp28, i8 %2, i8 %best_m.067
  %best_rate.2 = select i1 %cmp28, i32 %div12, i32 %best_rate.068
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond2.preheader.cleanup_crit_edge
  %best_n.3 = phi i8 [ %best_n.2, %if.end ], [ %best_n.065, %for.cond2.preheader.cleanup_crit_edge ]
  %best_m.3 = phi i8 [ %best_m.2, %if.end ], [ %best_m.067, %for.cond2.preheader.cleanup_crit_edge ]
  %best_rate.3 = phi i32 [ %best_rate.2, %if.end ], [ %best_rate.068, %for.cond2.preheader.cleanup_crit_edge ]
  %div12.1 = udiv i32 %shr.1, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.1, i32 %rate)
  %cmp13.1 = icmp ugt i32 %div12.1, %rate
  br i1 %cmp13.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %sub.1 = sub i32 %rate, %div12.1
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %sub19.1 = sub i32 %rate, %best_rate.3
  %4 = tail call i32 @llvm.abs.i32(i32 %sub19.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp28.1 = icmp slt i32 %3, %4
  %best_n.2.1 = select i1 %cmp28.1, i8 1, i8 %best_n.3
  %5 = trunc i32 %indvars.iv to i8
  %best_m.2.1 = select i1 %cmp28.1, i8 %5, i8 %best_m.3
  %best_rate.2.1 = select i1 %cmp28.1, i32 %div12.1, i32 %best_rate.3
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %best_n.3.1 = phi i8 [ %best_n.2.1, %if.end.1 ], [ %best_n.3, %cleanup.cleanup.1_crit_edge ]
  %best_m.3.1 = phi i8 [ %best_m.2.1, %if.end.1 ], [ %best_m.3, %cleanup.cleanup.1_crit_edge ]
  %best_rate.3.1 = phi i32 [ %best_rate.2.1, %if.end.1 ], [ %best_rate.3, %cleanup.cleanup.1_crit_edge ]
  %div12.2 = udiv i32 %shr.2, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.2, i32 %rate)
  %cmp13.2 = icmp ugt i32 %div12.2, %rate
  br i1 %cmp13.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub.2 = sub i32 %rate, %div12.2
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %sub19.2 = sub i32 %rate, %best_rate.3.1
  %7 = tail call i32 @llvm.abs.i32(i32 %sub19.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp28.2 = icmp slt i32 %6, %7
  %best_n.2.2 = select i1 %cmp28.2, i8 2, i8 %best_n.3.1
  %8 = trunc i32 %indvars.iv to i8
  %best_m.2.2 = select i1 %cmp28.2, i8 %8, i8 %best_m.3.1
  %best_rate.2.2 = select i1 %cmp28.2, i32 %div12.2, i32 %best_rate.3.1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %best_n.3.2 = phi i8 [ %best_n.2.2, %if.end.2 ], [ %best_n.3.1, %cleanup.1.cleanup.2_crit_edge ]
  %best_m.3.2 = phi i8 [ %best_m.2.2, %if.end.2 ], [ %best_m.3.1, %cleanup.1.cleanup.2_crit_edge ]
  %best_rate.3.2 = phi i32 [ %best_rate.2.2, %if.end.2 ], [ %best_rate.3.1, %cleanup.1.cleanup.2_crit_edge ]
  %div12.3 = udiv i32 %shr.3, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.3, i32 %rate)
  %cmp13.3 = icmp ugt i32 %div12.3, %rate
  br i1 %cmp13.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub.3 = sub i32 %rate, %div12.3
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %sub19.3 = sub i32 %rate, %best_rate.3.2
  %10 = tail call i32 @llvm.abs.i32(i32 %sub19.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp28.3 = icmp slt i32 %9, %10
  %best_n.2.3 = select i1 %cmp28.3, i8 3, i8 %best_n.3.2
  %11 = trunc i32 %indvars.iv to i8
  %best_m.2.3 = select i1 %cmp28.3, i8 %11, i8 %best_m.3.2
  %best_rate.2.3 = select i1 %cmp28.3, i32 %div12.3, i32 %best_rate.3.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %best_n.3.3 = phi i8 [ %best_n.2.3, %if.end.3 ], [ %best_n.3.2, %cleanup.2.cleanup.3_crit_edge ]
  %best_m.3.3 = phi i8 [ %best_m.2.3, %if.end.3 ], [ %best_m.3.2, %cleanup.2.cleanup.3_crit_edge ]
  %best_rate.3.3 = phi i32 [ %best_rate.2.3, %if.end.3 ], [ %best_rate.3.2, %cleanup.2.cleanup.3_crit_edge ]
  %div12.4 = udiv i32 %shr.4, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.4, i32 %rate)
  %cmp13.4 = icmp ugt i32 %div12.4, %rate
  br i1 %cmp13.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub.4 = sub i32 %rate, %div12.4
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %sub19.4 = sub i32 %rate, %best_rate.3.3
  %13 = tail call i32 @llvm.abs.i32(i32 %sub19.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp28.4 = icmp slt i32 %12, %13
  %best_n.2.4 = select i1 %cmp28.4, i8 4, i8 %best_n.3.3
  %14 = trunc i32 %indvars.iv to i8
  %best_m.2.4 = select i1 %cmp28.4, i8 %14, i8 %best_m.3.3
  %best_rate.2.4 = select i1 %cmp28.4, i32 %div12.4, i32 %best_rate.3.3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  %best_n.3.4 = phi i8 [ %best_n.2.4, %if.end.4 ], [ %best_n.3.3, %cleanup.3.cleanup.4_crit_edge ]
  %best_m.3.4 = phi i8 [ %best_m.2.4, %if.end.4 ], [ %best_m.3.3, %cleanup.3.cleanup.4_crit_edge ]
  %best_rate.3.4 = phi i32 [ %best_rate.2.4, %if.end.4 ], [ %best_rate.3.3, %cleanup.3.cleanup.4_crit_edge ]
  %div12.5 = udiv i32 %shr.5, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.5, i32 %rate)
  %cmp13.5 = icmp ugt i32 %div12.5, %rate
  br i1 %cmp13.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  %sub.5 = sub i32 %rate, %div12.5
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  %sub19.5 = sub i32 %rate, %best_rate.3.4
  %16 = tail call i32 @llvm.abs.i32(i32 %sub19.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp28.5 = icmp slt i32 %15, %16
  %best_n.2.5 = select i1 %cmp28.5, i8 5, i8 %best_n.3.4
  %17 = trunc i32 %indvars.iv to i8
  %best_m.2.5 = select i1 %cmp28.5, i8 %17, i8 %best_m.3.4
  %best_rate.2.5 = select i1 %cmp28.5, i32 %div12.5, i32 %best_rate.3.4
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.5, %cleanup.4.cleanup.5_crit_edge
  %best_n.3.5 = phi i8 [ %best_n.2.5, %if.end.5 ], [ %best_n.3.4, %cleanup.4.cleanup.5_crit_edge ]
  %best_m.3.5 = phi i8 [ %best_m.2.5, %if.end.5 ], [ %best_m.3.4, %cleanup.4.cleanup.5_crit_edge ]
  %best_rate.3.5 = phi i32 [ %best_rate.2.5, %if.end.5 ], [ %best_rate.3.4, %cleanup.4.cleanup.5_crit_edge ]
  %div12.6 = udiv i32 %shr.6, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.6, i32 %rate)
  %cmp13.6 = icmp ugt i32 %div12.6, %rate
  br i1 %cmp13.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.6

if.end.6:                                         ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  %sub.6 = sub i32 %rate, %div12.6
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 false)
  %sub19.6 = sub i32 %rate, %best_rate.3.5
  %19 = tail call i32 @llvm.abs.i32(i32 %sub19.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp28.6 = icmp slt i32 %18, %19
  %best_n.2.6 = select i1 %cmp28.6, i8 6, i8 %best_n.3.5
  %20 = trunc i32 %indvars.iv to i8
  %best_m.2.6 = select i1 %cmp28.6, i8 %20, i8 %best_m.3.5
  %best_rate.2.6 = select i1 %cmp28.6, i32 %div12.6, i32 %best_rate.3.5
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.6, %cleanup.5.cleanup.6_crit_edge
  %best_n.3.6 = phi i8 [ %best_n.2.6, %if.end.6 ], [ %best_n.3.5, %cleanup.5.cleanup.6_crit_edge ]
  %best_m.3.6 = phi i8 [ %best_m.2.6, %if.end.6 ], [ %best_m.3.5, %cleanup.5.cleanup.6_crit_edge ]
  %best_rate.3.6 = phi i32 [ %best_rate.2.6, %if.end.6 ], [ %best_rate.3.5, %cleanup.5.cleanup.6_crit_edge ]
  %div12.7 = udiv i32 %shr.7, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.7, i32 %rate)
  %cmp13.7 = icmp ugt i32 %div12.7, %rate
  br i1 %cmp13.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.7

if.end.7:                                         ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #8
  %sub.7 = sub i32 %rate, %div12.7
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 false)
  %sub19.7 = sub i32 %rate, %best_rate.3.6
  %22 = tail call i32 @llvm.abs.i32(i32 %sub19.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp28.7 = icmp slt i32 %21, %22
  %best_n.2.7 = select i1 %cmp28.7, i8 7, i8 %best_n.3.6
  %23 = trunc i32 %indvars.iv to i8
  %best_m.2.7 = select i1 %cmp28.7, i8 %23, i8 %best_m.3.6
  %best_rate.2.7 = select i1 %cmp28.7, i32 %div12.7, i32 %best_rate.3.6
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end.7, %cleanup.6.cleanup.7_crit_edge
  %best_n.3.7 = phi i8 [ %best_n.2.7, %if.end.7 ], [ %best_n.3.6, %cleanup.6.cleanup.7_crit_edge ]
  %best_m.3.7 = phi i8 [ %best_m.2.7, %if.end.7 ], [ %best_m.3.6, %cleanup.6.cleanup.7_crit_edge ]
  %best_rate.3.7 = phi i32 [ %best_rate.2.7, %if.end.7 ], [ %best_rate.3.6, %cleanup.6.cleanup.7_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end34, label %cleanup.7.for.cond2.preheader_crit_edge

cleanup.7.for.cond2.preheader_crit_edge:          ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader

for.end34:                                        ; preds = %cleanup.7
  %tobool.not = icmp eq ptr %m, null
  %tobool35.not = icmp eq ptr %n, null
  %or.cond = or i1 %tobool.not, %tobool35.not
  br i1 %or.cond, label %for.end34.if.end37_crit_edge, label %if.then36

for.end34.if.end37_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then36:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %best_m.3.7, ptr %m, align 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %best_n.3.7, ptr %n, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.end34.if.end37_crit_edge
  ret i32 %best_rate.3.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c", i32 127, i32 14}
!2 = !{ptr @sun4i_ddc_ops, !3, !"sun4i_ddc_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c", i32 102, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}

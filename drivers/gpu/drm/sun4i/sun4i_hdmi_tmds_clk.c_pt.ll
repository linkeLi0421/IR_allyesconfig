; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c"
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
%struct.sun4i_tmds = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmi-tmds\00", [22 x i8] zeroinitializer }, align 32
@sun4i_tmds_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tmds_recalc_rate, ptr null, ptr @sun4i_tmds_determine_rate, ptr @sun4i_tmds_set_parent, ptr @sun4i_tmds_get_parent, ptr @sun4i_tmds_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 221, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"sun4i_tmds_ops\00", align 1
@___asan_gen_.5 = private constant [47 x i8] c"../drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 194, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @sun4i_tmds_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tmds_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_tmds_create(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parents = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents) #4
  %pll0_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 9
  %2 = ptrtoint ptr %pll0_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll0_clk, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #4
  %4 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %parents, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [2 x ptr], ptr %parents, i32 0, i32 1
  %pll1_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 10
  %6 = ptrtoint ptr %pll1_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll1_clk, align 8
  %call2 = tail call ptr @__clk_get_name(ptr noundef %7) #4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %5, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 20, i32 noundef 3520) #4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4i_tmds_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parents, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %flags, align 4
  %hdmi12 = getelementptr inbounds %struct.sun4i_tmds, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %hdmi12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hdmi, ptr %hdmi12, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init13, align 4
  %variant = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 32
  %18 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %variant, align 8
  %tmds_clk_div_offset = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %tmds_clk_div_offset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmds_clk_div_offset, align 2
  %div_offset = getelementptr inbounds %struct.sun4i_tmds, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %div_offset to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %div_offset, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %call16 = call ptr @devm_clk_register(ptr noundef %24, ptr noundef nonnull %call.i) #4
  %tmds_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 12
  %25 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16, ptr %tmds_clk, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %call16 to i32
  %spec.select = select i1 %cmp.i, i32 %26, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %spec.select, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %5 = lshr i32 %4, 30
  %.lobit = and i32 %5, 1
  %spec.select = lshr i32 %parent_rate, %.lobit
  %6 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmi, align 4
  %base6 = getelementptr inbounds %struct.sun4i_hdmi, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base6, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 520
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !13
  %11 = lshr i32 %10, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %div_offset = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div_offset, align 4
  %conv = zext i8 %13 to i32
  %add = add nuw nsw i32 %11, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool12.not = icmp eq i32 %add, 0
  %spec.store.select = select i1 %tobool12.not, i32 1, i32 %add
  %div15 = udiv i32 %spec.select, %spec.store.select
  ret i32 %div15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %call2137 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2137)
  %cmp138.not = icmp eq i32 %call2137, 0
  br i1 %cmp138.not, label %entry.cleanup58_crit_edge, label %for.body.lr.ph

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

for.body.lr.ph:                                   ; preds = %entry
  %div_offset = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 2
  %mul.1 = shl i32 %1, 1
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %p.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %for.inc49.for.body_crit_edge ]
  %best_half.0141 = phi i32 [ 1, %for.body.lr.ph ], [ %best_half.5, %for.inc49.for.body_crit_edge ]
  %best_div.0140 = phi i32 [ 1, %for.body.lr.ph ], [ %best_div.5, %for.inc49.for.body_crit_edge ]
  %best_parent.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %best_parent.5, %for.inc49.for.body_crit_edge ]
  %call3 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %p.0142) #4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.for.inc49_crit_edge, label %for.body6.preheader

for.body.for.inc49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc49

for.body6.preheader:                              ; preds = %for.body
  %2 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %div_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  %narrow = select i1 %tobool7.not, i8 1, i8 %3
  %conv. = zext i8 %narrow to i32
  %conv10122 = zext i8 %3 to i32
  %add123 = add nuw nsw i32 %conv10122, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add123, i32 %conv.)
  %cmp11124 = icmp ugt i32 %add123, %conv.
  br i1 %cmp11124, label %for.body6.preheader.for.body13_crit_edge, label %for.body6.preheader.for.inc46_crit_edge

for.body6.preheader.for.inc46_crit_edge:          ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc46

for.body6.preheader.for.body13_crit_edge:         ; preds = %for.body6.preheader
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body6.preheader.for.body13_crit_edge
  %j.0128 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ %conv., %for.body6.preheader.for.body13_crit_edge ]
  %best_half.2127 = phi i32 [ %best_half.4.ph, %for.inc.for.body13_crit_edge ], [ %best_half.0141, %for.body6.preheader.for.body13_crit_edge ]
  %best_div.2126 = phi i32 [ %best_div.4.ph, %for.inc.for.body13_crit_edge ], [ %best_div.0140, %for.body6.preheader.for.body13_crit_edge ]
  %best_parent.2125 = phi i32 [ %best_parent.4.ph, %for.inc.for.body13_crit_edge ], [ %best_parent.0139, %for.body6.preheader.for.body13_crit_edge ]
  %mul14 = mul i32 %1, %j.0128
  %call15 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call3, i32 noundef %mul14) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %mul14)
  %cmp16 = icmp eq i32 %call15, %mul14
  br i1 %cmp16, label %for.body13.out_crit_edge, label %if.end19

for.body13.out_crit_edge:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end19:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_parent.2125)
  %tobool20.not = icmp eq i32 %best_parent.2125, 0
  br i1 %tobool20.not, label %if.end19.if.then43_crit_edge, label %lor.lhs.false

if.end19.if.then43_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end19
  %div21 = udiv i32 %call15, %j.0128
  %sub = sub i32 %1, %div21
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div30 = udiv i32 %best_parent.2125, %best_half.2127
  %div31 = udiv i32 %div30, %best_div.2126
  %sub32 = sub i32 %1, %div31
  %5 = tail call i32 @llvm.abs.i32(i32 %sub32, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp41 = icmp slt i32 %4, %5
  br i1 %cmp41, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end19.if.then43_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %lor.lhs.false.for.inc_crit_edge
  %best_parent.4.ph = phi i32 [ %best_parent.2125, %lor.lhs.false.for.inc_crit_edge ], [ %call15, %if.then43 ]
  %best_div.4.ph = phi i32 [ %best_div.2126, %lor.lhs.false.for.inc_crit_edge ], [ %j.0128, %if.then43 ]
  %best_half.4.ph = phi i32 [ %best_half.2127, %lor.lhs.false.for.inc_crit_edge ], [ 1, %if.then43 ]
  %inc = add nuw nsw i32 %j.0128, 1
  %6 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %div_offset, align 4
  %conv10 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv10, 16
  %cmp11 = icmp ult i32 %inc, %add
  br i1 %cmp11, label %for.inc.for.body13_crit_edge, label %for.inc.for.inc46_crit_edge

for.inc.for.inc46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc46

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13

for.inc46:                                        ; preds = %for.inc.for.inc46_crit_edge, %for.body6.preheader.for.inc46_crit_edge
  %best_parent.2.lcssa = phi i32 [ %best_parent.0139, %for.body6.preheader.for.inc46_crit_edge ], [ %best_parent.4.ph, %for.inc.for.inc46_crit_edge ]
  %best_div.2.lcssa = phi i32 [ %best_div.0140, %for.body6.preheader.for.inc46_crit_edge ], [ %best_div.4.ph, %for.inc.for.inc46_crit_edge ]
  %best_half.2.lcssa = phi i32 [ %best_half.0141, %for.body6.preheader.for.inc46_crit_edge ], [ %best_half.4.ph, %for.inc.for.inc46_crit_edge ]
  %8 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %div_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not.1 = icmp eq i8 %9, 0
  %narrow.1 = select i1 %tobool7.not.1, i8 1, i8 %9
  %conv..1 = zext i8 %narrow.1 to i32
  %conv10122.1 = zext i8 %9 to i32
  %add123.1 = add nuw nsw i32 %conv10122.1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add123.1, i32 %conv..1)
  %cmp11124.1 = icmp ugt i32 %add123.1, %conv..1
  br i1 %cmp11124.1, label %for.inc46.for.body13.1_crit_edge, label %for.inc46.for.inc49_crit_edge

for.inc46.for.inc49_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc49

for.inc46.for.body13.1_crit_edge:                 ; preds = %for.inc46
  br label %for.body13.1

for.body13.1:                                     ; preds = %for.inc.1.for.body13.1_crit_edge, %for.inc46.for.body13.1_crit_edge
  %j.0128.1 = phi i32 [ %inc.1, %for.inc.1.for.body13.1_crit_edge ], [ %conv..1, %for.inc46.for.body13.1_crit_edge ]
  %best_half.2127.1 = phi i32 [ %best_half.4.ph.1, %for.inc.1.for.body13.1_crit_edge ], [ %best_half.2.lcssa, %for.inc46.for.body13.1_crit_edge ]
  %best_div.2126.1 = phi i32 [ %best_div.4.ph.1, %for.inc.1.for.body13.1_crit_edge ], [ %best_div.2.lcssa, %for.inc46.for.body13.1_crit_edge ]
  %best_parent.2125.1 = phi i32 [ %best_parent.4.ph.1, %for.inc.1.for.body13.1_crit_edge ], [ %best_parent.2.lcssa, %for.inc46.for.body13.1_crit_edge ]
  %mul14.1 = mul i32 %mul.1, %j.0128.1
  %call15.1 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call3, i32 noundef %mul14.1) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.1, i32 %mul14.1)
  %cmp16.1 = icmp eq i32 %call15.1, %mul14.1
  br i1 %cmp16.1, label %for.body13.1.out_crit_edge, label %if.end19.1

for.body13.1.out_crit_edge:                       ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end19.1:                                       ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_parent.2125.1)
  %tobool20.not.1 = icmp eq i32 %best_parent.2125.1, 0
  br i1 %tobool20.not.1, label %if.end19.1.if.then43.1_crit_edge, label %lor.lhs.false.1

if.end19.1.if.then43.1_crit_edge:                 ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43.1

lor.lhs.false.1:                                  ; preds = %if.end19.1
  %div.1156 = lshr i32 %call15.1, 1
  %div21.1 = udiv i32 %div.1156, %j.0128.1
  %sub.1 = sub i32 %1, %div21.1
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %div30.1 = udiv i32 %best_parent.2125.1, %best_half.2127.1
  %div31.1 = udiv i32 %div30.1, %best_div.2126.1
  %sub32.1 = sub i32 %1, %div31.1
  %11 = tail call i32 @llvm.abs.i32(i32 %sub32.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp41.1 = icmp slt i32 %10, %11
  br i1 %cmp41.1, label %lor.lhs.false.1.if.then43.1_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

lor.lhs.false.1.if.then43.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43.1

if.then43.1:                                      ; preds = %lor.lhs.false.1.if.then43.1_crit_edge, %if.end19.1.if.then43.1_crit_edge
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then43.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %best_parent.4.ph.1 = phi i32 [ %best_parent.2125.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %call15.1, %if.then43.1 ]
  %best_div.4.ph.1 = phi i32 [ %best_div.2126.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %j.0128.1, %if.then43.1 ]
  %best_half.4.ph.1 = phi i32 [ %best_half.2127.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ 2, %if.then43.1 ]
  %inc.1 = add nuw nsw i32 %j.0128.1, 1
  %12 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div_offset, align 4
  %conv10.1 = zext i8 %13 to i32
  %add.1 = add nuw nsw i32 %conv10.1, 16
  %cmp11.1 = icmp ult i32 %inc.1, %add.1
  br i1 %cmp11.1, label %for.inc.1.for.body13.1_crit_edge, label %for.inc.1.for.inc49_crit_edge

for.inc.1.for.inc49_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc49

for.inc.1.for.body13.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13.1

for.inc49:                                        ; preds = %for.inc.1.for.inc49_crit_edge, %for.inc46.for.inc49_crit_edge, %for.body.for.inc49_crit_edge
  %best_parent.5 = phi i32 [ %best_parent.0139, %for.body.for.inc49_crit_edge ], [ %best_parent.2.lcssa, %for.inc46.for.inc49_crit_edge ], [ %best_parent.4.ph.1, %for.inc.1.for.inc49_crit_edge ]
  %best_div.5 = phi i32 [ %best_div.0140, %for.body.for.inc49_crit_edge ], [ %best_div.2.lcssa, %for.inc46.for.inc49_crit_edge ], [ %best_div.4.ph.1, %for.inc.1.for.inc49_crit_edge ]
  %best_half.5 = phi i32 [ %best_half.0141, %for.body.for.inc49_crit_edge ], [ %best_half.2.lcssa, %for.inc46.for.inc49_crit_edge ], [ %best_half.4.ph.1, %for.inc.1.for.inc49_crit_edge ]
  %inc50 = add nuw i32 %p.0142, 1
  %call2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  %cmp = icmp ult i32 %inc50, %call2
  br i1 %cmp, label %for.inc49.for.body_crit_edge, label %for.end51

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end51:                                        ; preds = %for.inc49
  %tobool52.not = icmp eq ptr %call3, null
  br i1 %tobool52.not, label %for.end51.cleanup58_crit_edge, label %for.end51.out_crit_edge

for.end51.out_crit_edge:                          ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.end51.cleanup58_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

out:                                              ; preds = %for.end51.out_crit_edge, %for.body13.1.out_crit_edge, %for.body13.out_crit_edge
  %best_parent.6 = phi i32 [ %best_parent.5, %for.end51.out_crit_edge ], [ %mul14.1, %for.body13.1.out_crit_edge ], [ %mul14, %for.body13.out_crit_edge ]
  %best_div.6 = phi i32 [ %best_div.5, %for.end51.out_crit_edge ], [ %j.0128.1, %for.body13.1.out_crit_edge ], [ %j.0128, %for.body13.out_crit_edge ]
  %best_half.6 = phi i32 [ %best_half.5, %for.end51.out_crit_edge ], [ 2, %for.body13.1.out_crit_edge ], [ 1, %for.body13.out_crit_edge ]
  %div55 = udiv i32 %best_parent.6, %best_half.6
  %div56 = udiv i32 %div55, %best_div.6
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div56, ptr %req, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %best_parent.6, ptr %best_parent_rate, align 4
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %best_parent_hw, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %out, %for.end51.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %for.end51.cleanup58_crit_edge ], [ -22, %entry.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hdmi = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 524
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %5 = and i32 %4, -8193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %and5 = zext i8 %index to i32
  %shl = shl nuw nsw i32 %and5, 21
  %or = or i32 %6, %shl
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmi, align 4
  %base7 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base7, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #4, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sun4i_tmds_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 524
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %5 = lshr i32 %4, 13
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, 1
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div_offset = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div_offset, align 4
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %conv1.i = select i1 %tobool.not.i, i8 1, i8 %1
  %add.i = add nuw nsw i32 %conv.i, 16
  %conv212.i = zext i8 %conv1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv212.i)
  %cmp13.i = icmp ugt i32 %add.i, %conv212.i
  br i1 %cmp13.i, label %entry.for.cond5.preheader.i_crit_edge, label %entry.sun4i_tmds_calc_divider.exit_crit_edge

entry.sun4i_tmds_calc_divider.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sun4i_tmds_calc_divider.exit

entry.for.cond5.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %cleanup.1.i.for.cond5.preheader.i_crit_edge, %entry.for.cond5.preheader.i_crit_edge
  %conv218.i = phi i32 [ %conv2.i, %cleanup.1.i.for.cond5.preheader.i_crit_edge ], [ %conv212.i, %entry.for.cond5.preheader.i_crit_edge ]
  %is_double.0.off017.i = phi i1 [ %is_double.3.off0.1.i, %cleanup.1.i.for.cond5.preheader.i_crit_edge ], [ false, %entry.for.cond5.preheader.i_crit_edge ]
  %m.016.i = phi i8 [ %inc28.i, %cleanup.1.i.for.cond5.preheader.i_crit_edge ], [ %conv1.i, %entry.for.cond5.preheader.i_crit_edge ]
  %best_m.015.i = phi i8 [ %best_m.3.1.i, %cleanup.1.i.for.cond5.preheader.i_crit_edge ], [ 0, %entry.for.cond5.preheader.i_crit_edge ]
  %best_rate.014.i = phi i32 [ %best_rate.3.1.i, %cleanup.1.i.for.cond5.preheader.i_crit_edge ], [ 0, %entry.for.cond5.preheader.i_crit_edge ]
  %div11.i = udiv i32 %parent_rate, %conv218.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div11.i, i32 %rate)
  %cmp14.i = icmp ugt i32 %div11.i, %rate
  br i1 %cmp14.i, label %for.cond5.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond5.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.014.i)
  %tobool16.not.i = icmp eq i32 %best_rate.014.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.then20.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sub.i = sub i32 %rate, %div11.i
  %sub17.i = sub i32 %rate, %best_rate.014.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub17.i)
  %cmp18.i = icmp ult i32 %sub.i, %sub17.i
  br i1 %cmp18.i, label %lor.lhs.false.i.if.then20.i_crit_edge, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false.i.if.then20.i_crit_edge, %if.end.i.if.then20.i_crit_edge
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then20.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.cond5.preheader.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.014.i, %for.cond5.preheader.i.cleanup.i_crit_edge ], [ %div11.i, %if.then20.i ], [ %best_rate.014.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i8 [ %best_m.015.i, %for.cond5.preheader.i.cleanup.i_crit_edge ], [ %m.016.i, %if.then20.i ], [ %best_m.015.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %is_double.3.off0.i = phi i1 [ %is_double.0.off017.i, %for.cond5.preheader.i.cleanup.i_crit_edge ], [ false, %if.then20.i ], [ %is_double.0.off017.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %div13.120.i = lshr i32 %div11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.120.i, i32 %rate)
  %cmp14.1.i = icmp ugt i32 %div13.120.i, %rate
  br i1 %cmp14.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.3.i)
  %tobool16.not.1.i = icmp eq i32 %best_rate.3.i, 0
  br i1 %tobool16.not.1.i, label %if.end.1.i.if.then20.1.i_crit_edge, label %lor.lhs.false.1.i

if.end.1.i.if.then20.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %sub.1.i = sub i32 %rate, %div13.120.i
  %sub17.1.i = sub i32 %rate, %best_rate.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %sub17.1.i)
  %cmp18.1.i = icmp ult i32 %sub.1.i, %sub17.1.i
  br i1 %cmp18.1.i, label %lor.lhs.false.1.i.if.then20.1.i_crit_edge, label %lor.lhs.false.1.i.cleanup.1.i_crit_edge

lor.lhs.false.1.i.cleanup.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

lor.lhs.false.1.i.if.then20.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.1.i

if.then20.1.i:                                    ; preds = %lor.lhs.false.1.i.if.then20.1.i_crit_edge, %if.end.1.i.if.then20.1.i_crit_edge
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then20.1.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %best_rate.3.1.i = phi i32 [ %best_rate.3.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %div13.120.i, %if.then20.1.i ], [ %best_rate.3.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %best_m.3.1.i = phi i8 [ %best_m.3.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %m.016.i, %if.then20.1.i ], [ %best_m.3.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %is_double.3.off0.1.i = phi i1 [ %is_double.3.off0.i, %cleanup.i.cleanup.1.i_crit_edge ], [ true, %if.then20.1.i ], [ %is_double.3.off0.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %inc28.i = add i8 %m.016.i, 1
  %conv2.i = zext i8 %inc28.i to i32
  %cmp.i = icmp ugt i32 %add.i, %conv2.i
  br i1 %cmp.i, label %cleanup.1.i.for.cond5.preheader.i_crit_edge, label %cleanup.1.i.sun4i_tmds_calc_divider.exit_crit_edge

cleanup.1.i.sun4i_tmds_calc_divider.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sun4i_tmds_calc_divider.exit

cleanup.1.i.for.cond5.preheader.i_crit_edge:      ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond5.preheader.i

sun4i_tmds_calc_divider.exit:                     ; preds = %cleanup.1.i.sun4i_tmds_calc_divider.exit_crit_edge, %entry.sun4i_tmds_calc_divider.exit_crit_edge
  %best_m.0.lcssa.i = phi i8 [ 0, %entry.sun4i_tmds_calc_divider.exit_crit_edge ], [ %best_m.3.1.i, %cleanup.1.i.sun4i_tmds_calc_divider.exit_crit_edge ]
  %is_double.0.off0.lcssa.i = phi i1 [ false, %entry.sun4i_tmds_calc_divider.exit_crit_edge ], [ %is_double.3.off0.1.i, %cleanup.1.i.sun4i_tmds_calc_divider.exit_crit_edge ]
  %hdmi = getelementptr inbounds %struct.sun4i_tmds, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 516
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %7 = and i32 %6, -1073741825
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, 64
  %spec.select = select i1 %is_double.0.off0.lcssa.i, i32 %or, i32 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %10 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmi, align 4
  %base5 = getelementptr inbounds %struct.sun4i_hdmi, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base5, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #4, !srcloc !18
  %14 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi, align 4
  %base10 = getelementptr inbounds %struct.sun4i_hdmi, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base10, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 520
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %19 = and i32 %18, 268435455
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %best_m.0.lcssa.i to i32
  %21 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %div_offset, align 4
  %conv20 = zext i8 %22 to i32
  %sub = sub nsw i32 %conv, %conv20
  %and21 = shl nsw i32 %sub, 4
  %shl = and i32 %and21, 240
  %or22 = or i32 %shl, %20
  %23 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %24 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdmi, align 4
  %base24 = getelementptr inbounds %struct.sun4i_hdmi, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base24, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %23) #4, !srcloc !18
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c", i32 221, i32 14}
!2 = !{ptr @sun4i_tmds_ops, !3, !"sun4i_tmds_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c", i32 194, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4030384}
!14 = !{i64 2156890414}
!15 = !{i64 2156891016}
!16 = !{i64 2156895060}
!17 = !{i64 2156895421}
!18 = !{i64 4029966}
!19 = !{i64 2156894450}
!20 = !{i64 2156891536}
!21 = !{i64 2156891927}
!22 = !{i64 2156892629}
!23 = !{i64 2156893616}

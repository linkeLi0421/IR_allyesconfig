; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sprd/megacores_pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/sprd/megacores_pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsi_context = type { ptr, ptr, %struct.dphy_pll, %struct.videomode, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.dphy_pll = type { i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }

@dphy_pll_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[drm] *ERROR* failed to calculate dphy pll parameters\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dphy_pll_config\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/sprd/megacores_pll.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dphy_pll_config._entry_ptr = internal global ptr @dphy_pll_config._entry, section ".printk_index", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %02x\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 119, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [40 x i8] c"../drivers/gpu/drm/sprd/megacores_pll.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 103, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @dphy_pll_config._entry, ptr @dphy_pll_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dphy_pll_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dphy_pll_config(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %pll2 = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2
  %slave = getelementptr i8, ptr %ctx, i32 -80
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %hs_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_rate, align 4
  %freq = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %freq, align 4
  %div.i = udiv i32 %5, 1000
  %potential_fvco.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %potential_fvco.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i, ptr %potential_fvco.i, align 4
  %ref_clk.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 26, ptr %ref_clk.i, align 4
  %9 = add nsw i32 %div.i, -750
  call void @__sanitizer_cov_trace_const_cmp4(i32 751, i32 %9)
  %10 = icmp ult i32 %9, 751
  br i1 %10, label %entry.if.then.i_crit_edge, label %if.end.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.2.i.if.then.i_crit_edge, %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.0678.lcssa.i = phi i8 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.end.i.if.then.i_crit_edge ], [ 2, %if.end.1.i.if.then.i_crit_edge ], [ 3, %if.end.2.i.if.then.i_crit_edge ]
  %shl7676677.lcssa.i = phi i32 [ %div.i, %entry.if.then.i_crit_edge ], [ %shl7.i, %if.end.i.if.then.i_crit_edge ], [ %shl7.1.i, %if.end.1.i.if.then.i_crit_edge ], [ %shl7.2.i, %if.end.2.i.if.then.i_crit_edge ]
  %fvco.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %fvco.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl7676677.lcssa.i, ptr %fvco.i, align 4
  %shl.i = shl nuw nsw i8 1, %i.0678.lcssa.i
  %out_sel.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %out_sel.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl.i, ptr %out_sel.i, align 1
  br label %for.end.i

if.end.i:                                         ; preds = %entry
  %shl7.i = shl nuw nsw i32 %div.i, 1
  %13 = ptrtoint ptr %potential_fvco.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl7.i, ptr %potential_fvco.i, align 4
  %14 = add nsw i32 %shl7.i, -750
  call void @__sanitizer_cov_trace_const_cmp4(i32 751, i32 %14)
  %15 = icmp ult i32 %14, 751
  br i1 %15, label %if.end.i.if.then.i_crit_edge, label %if.end.1.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  %shl7.1.i = shl nuw nsw i32 %div.i, 2
  %16 = ptrtoint ptr %potential_fvco.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl7.1.i, ptr %potential_fvco.i, align 4
  %17 = add nsw i32 %shl7.1.i, -750
  call void @__sanitizer_cov_trace_const_cmp4(i32 751, i32 %17)
  %18 = icmp ult i32 %17, 751
  br i1 %18, label %if.end.1.i.if.then.i_crit_edge, label %if.end.2.i

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %shl7.2.i = shl nuw nsw i32 %div.i, 3
  %19 = ptrtoint ptr %potential_fvco.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl7.2.i, ptr %potential_fvco.i, align 4
  %20 = add nsw i32 %shl7.2.i, -750
  call void @__sanitizer_cov_trace_const_cmp4(i32 751, i32 %20)
  %21 = icmp ult i32 %20, 751
  br i1 %21, label %if.end.2.i.if.then.i_crit_edge, label %if.end.3.i

if.end.2.i.if.then.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl7.3.i = shl nuw nsw i32 %div.i, 4
  %22 = ptrtoint ptr %potential_fvco.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl7.3.i, ptr %potential_fvco.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.3.i, %if.then.i
  %fvco8.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 8
  %23 = ptrtoint ptr %fvco8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fvco8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i = icmp eq i32 %24, 0
  br i1 %cmp9.i, label %for.end.i.do.end_crit_edge, label %if.end12.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end12.i:                                       ; preds = %for.end.i
  %25 = add i32 %24, -750
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %25)
  %26 = icmp ult i32 %25, 351
  br i1 %26, label %if.end12.i.if.end_crit_edge, label %if.else.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else.i:                                        ; preds = %if.end12.i
  %27 = add i32 %24, -1101
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %27)
  %28 = icmp ult i32 %27, 400
  br i1 %28, label %if.else.i.if.end_crit_edge, label %if.else.i.do.end_crit_edge

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.else.i.do.end_crit_edge, %for.end.i.do.end_crit_edge
  %add.ptr = getelementptr i8, ptr %ctx, i32 -100
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.end12.i.if.end_crit_edge
  %.sink681.i = phi i8 [ 0, %if.end12.i.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ]
  %.sink.i = phi i8 [ 1, %if.end12.i.if.end_crit_edge ], [ 0, %if.else.i.if.end_crit_edge ]
  %vco_band.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 14
  %33 = ptrtoint ptr %vco_band.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink681.i, ptr %vco_band.i, align 2
  %lpf_sel.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 12
  %34 = ptrtoint ptr %lpf_sel.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink.i, ptr %lpf_sel.i, align 4
  %div36.lhs.trunc.i = trunc i32 %24 to i16
  %div36673.i = udiv i16 %div36.lhs.trunc.i, 26
  %div36.zext.i = zext i16 %div36673.i to i32
  %nint.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 10
  %35 = ptrtoint ptr %nint.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div36.zext.i, ptr %nint.i, align 4
  %conv38.i = zext i32 %24 to i64
  %mul39.i = mul nuw nsw i64 %conv38.i, 100000000
  %36 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 5675921253449092805, i64 %mul39.i) #9, !srcloc !19
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 5675921253449092805, i64 %mul39.i, i64 %36, i32 0) #9, !srcloc !20
  %asmresult10.i.i = extractvalue { i64, i32 } %37, 0
  %div209674.i = lshr i64 %asmresult10.i.i, 3
  %conv232.i = zext i16 %div36673.i to i64
  %mul234.neg.i = mul nuw nsw i64 %conv232.i, 17592086044416
  %sub235.i = add nuw nsw i64 %div209674.i, %mul234.neg.i
  %mul236.i = shl i64 %sub235.i, 20
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %mul236.i) #9, !srcloc !19
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %mul236.i, i64 %38, i32 0) #9, !srcloc !20
  %asmresult10.i664.i = extractvalue { i64, i32 } %39, 0
  %storemerge.i = lshr i64 %asmresult10.i664.i, 26
  %conv458.i = trunc i64 %storemerge.i to i32
  %kint.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 11
  %40 = ptrtoint ptr %kint.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv458.i, ptr %kint.i, align 4
  %41 = ptrtoint ptr %pll2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %pll2, align 4
  %sdm_en.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %sdm_en.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %sdm_en.i, align 1
  %fdk_s.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %fdk_s.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %fdk_s.i, align 2
  %cp_s.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %cp_s.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cp_s.i, align 1
  %det_delay.i = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 15
  %45 = ptrtoint ptr %det_delay.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %det_delay.i, align 1
  %shl.i13 = shl nuw nsw i8 %.sink.i, 2
  %or.i = or i8 %shl.i13, 3
  %div.i14 = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %div.i14 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %div.i14, align 4
  %or9.i = or i8 %47, -120
  %or20.i = or i8 %.sink681.i, 14
  %shr.i = lshr i32 %conv458.i, 12
  %shr26.i = lshr i32 %conv458.i, 4
  %out_sel.i21 = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 13
  %48 = ptrtoint ptr %out_sel.i21 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %out_sel.i21, align 1
  %conv41.i = zext i8 %or.i to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3, i32 noundef %conv41.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef %conv41.i) #5
  %conv41.1.i = zext i8 %or9.i to i32
  %call.1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv41.1.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %conv41.1.i) #5
  %call.2.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 6, i32 noundef %div36.zext.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef %div36.zext.i) #5
  %conv41.3.i = zext i8 %or20.i to i32
  %call.3.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 8, i32 noundef %conv41.3.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef %conv41.3.i) #5
  %conv41.4.i = and i32 %shr.i, 255
  %call.4.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 9, i32 noundef %conv41.4.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef %conv41.4.i) #5
  %conv41.5.i = and i32 %shr26.i, 255
  %call.5.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef %conv41.5.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef %conv41.5.i) #5
  %conv41.6.i = zext i8 %49 to i32
  %call.6.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 11, i32 noundef %conv41.6.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 11, i32 noundef %conv41.6.i) #5
  %call.7.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 14, i32 noundef 16) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 14, i32 noundef 16) #5
  %call.8.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 15, i32 noundef 1) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 15, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dphy_timing_config(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %2 = getelementptr inbounds [2 x i8], ptr %val, i32 0, i32 1
  %freq = getelementptr inbounds %struct.dsi_context, ptr %ctx, i32 0, i32 2, i32 7
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %div = udiv i32 %4, 1000
  %div3 = udiv i32 100000, %div
  %shl = shl nuw nsw i32 %div3, 3
  %shl4 = shl nuw nsw i32 %div3, 2
  %shl5.neg289 = mul nsw i32 %div3, -2
  %sub = add nuw nsw i32 %shl, 19999
  %div8 = udiv i32 %sub, %shl
  %5 = trunc i32 %div8 to i8
  %conv = add i8 %5, -2
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %val, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %2, align 1
  call fastcc void @dphy_set_timing_reg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %val)
  %sub56 = add nuw nsw i32 %shl4, 6649
  %div57 = udiv i32 %sub56, %shl4
  %8 = trunc i32 %div57 to i8
  %conv59 = add i8 %8, -1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv59, ptr %val, align 1
  %add62 = add nuw nsw i32 %shl4, 4000
  %mul64 = mul nuw nsw i32 %div3, 6
  %add65 = add nuw nsw i32 %mul64, 8500
  %10 = tail call i32 @llvm.umin.i32(i32 %add65, i32 %add62)
  %sub79 = sub nsw i32 %add65, %add62
  %11 = tail call i32 @llvm.abs.i32(i32 %sub79, i1 true)
  %div88287288 = lshr exact i32 %11, 1
  %add89 = add nuw nsw i32 %div88287288, %10
  %shl90 = and i32 %add89, 65535
  %add114 = add nsw i32 %shl4, -1
  %sub115 = add nsw i32 %add114, %add89
  %div116 = udiv i32 %sub115, %shl4
  %12 = trunc i32 %div116 to i8
  %conv118 = add i8 %12, -1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv118, ptr %2, align 1
  call fastcc void @dphy_set_timing_reg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %val)
  %div127.neg = mul nsw i32 %div3, -42
  %add129 = add nsw i32 %div127.neg, 66649
  %sub130 = add nsw i32 %add129, %shl
  %div131 = udiv i32 %sub130, %shl
  %14 = trunc i32 %div131 to i8
  %conv133 = add i8 %14, -2
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv133, ptr %val, align 1
  %add136 = mul nuw nsw i32 %div3, 20
  %add141 = add nuw nsw i32 %add136, 28999
  %sub144 = add nsw i32 %add141, %div127.neg
  %add145 = add nsw i32 %sub144, %shl
  %sub146 = add nsw i32 %add145, %shl90
  %div147 = udiv i32 %sub146, %shl
  %16 = trunc i32 %div147 to i8
  %conv149 = add i8 %16, -2
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv149, ptr %2, align 1
  call fastcc void @dphy_set_timing_reg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %val)
  %add157 = add nsw i32 %shl5.neg289, 11999
  %sub158 = add nsw i32 %add157, %shl4
  %div159 = udiv i32 %sub158, %shl4
  %conv160 = trunc i32 %div159 to i8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv160, ptr %val, align 1
  %add164 = add nuw nsw i32 %shl4, 6000
  %19 = tail call i32 @llvm.umax.i32(i32 %shl, i32 %add164)
  %mul174 = mul nuw nsw i32 %19, 3
  %div175286 = lshr exact i32 %mul174, 1
  %add177 = add nsw i32 %add114, %shl5.neg289
  %sub178 = add nsw i32 %add177, %div175286
  %div179 = udiv i32 %sub178, %shl4
  %20 = trunc i32 %div179 to i8
  %conv181 = add i8 %20, -2
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv181, ptr %2, align 1
  call fastcc void @dphy_set_timing_reg(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %val)
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %val, align 1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %2, align 1
  call fastcc void @dphy_set_timing_reg(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %val)
  %add198 = mul nuw nsw i32 %div3, 104
  %add203 = add nuw nsw i32 %add198, 11999
  %sub204 = add nuw nsw i32 %add203, %shl
  %div205 = udiv i32 %sub204, %shl
  %conv207 = add nuw nsw i32 %div205, 254
  %conv154.i = and i32 %conv207, 255
  %call155.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 53, i32 noundef %conv154.i) #5
  %call158.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 148, i32 noundef %conv154.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dphy_set_timing_reg(ptr noundef %regmap, i32 noundef %type, ptr nocapture noundef readonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split.sink.split_crit_edge
    i32 2, label %sw.bb28
    i32 4, label %sw.bb59
    i32 5, label %sw.bb90
    i32 6, label %sw.bb121
    i32 7, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split

sw.bb90:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split

sw.bb121:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb121, %sw.bb90, %sw.bb59, %sw.bb28, %entry.sw.epilog.sink.split.sink.split_crit_edge
  %.sink288 = phi i32 [ 54, %sw.bb121 ], [ 52, %sw.bb90 ], [ 51, %sw.bb59 ], [ 50, %sw.bb28 ], [ 49, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink285 = phi i32 [ 70, %sw.bb121 ], [ 68, %sw.bb90 ], [ 67, %sw.bb59 ], [ 66, %sw.bb28 ], [ 65, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink282 = phi i32 [ 86, %sw.bb121 ], [ 84, %sw.bb90 ], [ 83, %sw.bb59 ], [ 82, %sw.bb28 ], [ 81, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink279 = phi i32 [ 102, %sw.bb121 ], [ 100, %sw.bb90 ], [ 99, %sw.bb59 ], [ 98, %sw.bb28 ], [ 97, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink276 = phi i32 [ 118, %sw.bb121 ], [ 116, %sw.bb90 ], [ 115, %sw.bb59 ], [ 114, %sw.bb28 ], [ 113, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink274 = phi i32 [ 149, %sw.bb121 ], [ 147, %sw.bb90 ], [ 146, %sw.bb59 ], [ 145, %sw.bb28 ], [ 144, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink271 = phi i32 [ 165, %sw.bb121 ], [ 163, %sw.bb90 ], [ 162, %sw.bb59 ], [ 161, %sw.bb28 ], [ 160, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink269 = phi i32 [ 181, %sw.bb121 ], [ 179, %sw.bb90 ], [ 178, %sw.bb59 ], [ 177, %sw.bb28 ], [ 176, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink266.ph = phi i32 [ 197, %sw.bb121 ], [ 195, %sw.bb90 ], [ 194, %sw.bb59 ], [ 193, %sw.bb28 ], [ 192, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 213, %sw.bb121 ], [ 211, %sw.bb90 ], [ 210, %sw.bb59 ], [ 209, %sw.bb28 ], [ 208, %entry.sw.epilog.sink.split.sink.split_crit_edge ]
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %conv123 = zext i8 %2 to i32
  %call124 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink288, i32 noundef %conv123) #5
  %arrayidx125 = getelementptr i8, ptr %val, i32 1
  %3 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx125, align 1
  %conv2 = zext i8 %4 to i32
  %call3 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink285, i32 noundef %conv2) #5
  %5 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx125, align 1
  %conv5 = zext i8 %6 to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink282, i32 noundef %conv5) #5
  %7 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx125, align 1
  %conv8 = zext i8 %8 to i32
  %call9 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink279, i32 noundef %conv8) #5
  %9 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx125, align 1
  %conv11 = zext i8 %10 to i32
  %call12 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink276, i32 noundef %conv11) #5
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv14 = zext i8 %12 to i32
  %call15 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink274, i32 noundef %conv14) #5
  %13 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx125, align 1
  %conv17 = zext i8 %14 to i32
  %call18 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink271, i32 noundef %conv17) #5
  %15 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx125, align 1
  %conv20 = zext i8 %16 to i32
  %call21 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink269, i32 noundef %conv20) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %entry.sw.epilog.sink.split_crit_edge
  %val.sink268 = phi ptr [ %val, %entry.sw.epilog.sink.split_crit_edge ], [ %arrayidx125, %sw.epilog.sink.split.sink.split ]
  %.sink266 = phi i32 [ 53, %entry.sw.epilog.sink.split_crit_edge ], [ %.sink266.ph, %sw.epilog.sink.split.sink.split ]
  %.sink = phi i32 [ 148, %entry.sw.epilog.sink.split_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split.sink.split ]
  %17 = ptrtoint ptr %val.sink268 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.sink268, align 1
  %conv154 = zext i8 %18 to i32
  %call155 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink266, i32 noundef %conv154) #5
  %19 = ptrtoint ptr %val.sink268 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.sink268, align 1
  %conv157 = zext i8 %20 to i32
  %call158 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef %.sink, i32 noundef %conv157) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sprd/megacores_pll.c", i32 119, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dphy_pll_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dphy_pll_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sprd/megacores_pll.c", i32 103, i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 473092, i64 473119}
!20 = !{i64 473787, i64 473814, i64 473847, i64 473868, i64 473895, i64 473921}

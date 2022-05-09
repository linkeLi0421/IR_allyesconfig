; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_modeset_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_modeset_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_helper_move_panel_connectors_to_head\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_helper_move_panel_connectors_to_head\09\09\09\09"
module asm "\09.long\09__crc_drm_helper_move_panel_connectors_to_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_move_panel_connectors_to_head:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_move_panel_connectors_to_head\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_move_panel_connectors_to_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_helper_mode_fill_fb_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_helper_mode_fill_fb_struct\09\09\09\09"
module asm "\09.long\09__crc_drm_helper_mode_fill_fb_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_mode_fill_fb_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_mode_fill_fb_struct\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_mode_fill_fb_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_crtc_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_crtc_init\09\09\09\09"
module asm "\09.long\09__crc_drm_crtc_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_config_helper_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_config_helper_suspend\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_config_helper_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_helper_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_helper_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_helper_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_config_helper_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_config_helper_resume\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_config_helper_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_helper_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_helper_resume\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_helper_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }

@__kstrtab_drm_helper_move_panel_connectors_to_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_move_panel_connectors_to_head = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_move_panel_connectors_to_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_move_panel_connectors_to_head to i32), ptr @__kstrtab_drm_helper_move_panel_connectors_to_head, ptr @__kstrtabns_drm_helper_move_panel_connectors_to_head }, section "___ksymtab+drm_helper_move_panel_connectors_to_head", align 4
@__kstrtab_drm_helper_mode_fill_fb_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_mode_fill_fb_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_mode_fill_fb_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_mode_fill_fb_struct to i32), ptr @__kstrtab_drm_helper_mode_fill_fb_struct, ptr @__kstrtabns_drm_helper_mode_fill_fb_struct }, section "___ksymtab+drm_helper_mode_fill_fb_struct", align 4
@__kstrtab_drm_crtc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_init to i32), ptr @__kstrtab_drm_crtc_init, ptr @__kstrtabns_drm_crtc_init }, section "___ksymtab+drm_crtc_init", align 4
@__kstrtab_drm_mode_config_helper_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_helper_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_helper_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_helper_suspend to i32), ptr @__kstrtab_drm_mode_config_helper_suspend, ptr @__kstrtabns_drm_mode_config_helper_suspend }, section "___ksymtab+drm_mode_config_helper_suspend", align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/drm_modeset_helper.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to resume (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_drm_mode_config_helper_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_helper_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_helper_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_helper_resume to i32), ptr @__kstrtab_drm_mode_config_helper_resume, ptr @__kstrtabns_drm_mode_config_helper_resume }, section "___ksymtab+drm_mode_config_helper_resume", align 4
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate primary plane\0A\00", [62 x i8] zeroinitializer }, align 32
@drm_primary_helper_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@safe_modeset_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713112, i32 875713089], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 16]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 238, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 243, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 117, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"safe_modeset_formats\00", align 1
@___asan_gen_.13 = private constant [40 x i8] c"../drivers/gpu/drm/drm_modeset_helper.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 105, i32 23 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_crtc_init, ptr @__ksymtab_drm_helper_mode_fill_fb_struct, ptr @__ksymtab_drm_helper_move_panel_connectors_to_head, ptr @__ksymtab_drm_mode_config_helper_resume, ptr @__ksymtab_drm_mode_config_helper_suspend, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @safe_modeset_formats], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_modeset_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_helper_move_panel_connectors_to_head(ptr noundef %dev) #0 align 64 {
entry:
  %panel_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %panel_list) #4
  %0 = getelementptr inbounds %struct.list_head, ptr %panel_list, i32 0, i32 1
  %1 = ptrtoint ptr %panel_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %panel_list, ptr %panel_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %panel_list, ptr %0, align 4
  %connector_list_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 9
  call void @_raw_spin_lock_irq(ptr noundef %connector_list_lock) #4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %3 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connector_list, align 4
  %cmp.not38 = icmp eq ptr %4, %connector_list
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in39 = phi ptr [ %.pn41, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn41 = load ptr, ptr %.pn.in39, align 8
  %connector_type = getelementptr i8, ptr %.pn.in39, i32 136
  %6 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connector_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %for.body.for.inc_crit_edge [
    i32 7, label %for.body.if.then_crit_edge
    i32 14, label %for.body.if.then_crit_edge42
    i32 16, label %for.body.if.then_crit_edge43
  ]

for.body.if.then_crit_edge43:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.if.then_crit_edge42:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.if.then_crit_edge42, %for.body.if.then_crit_edge43
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in39, ptr noundef %16, ptr noundef nonnull %panel_list) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in39, ptr %0, align 4
  %18 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %panel_list, ptr %.pn.in39, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in39, ptr %16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn41, %connector_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %panel_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %panel_list, align 4
  %cmp.i.not.i = icmp eq ptr %22, %panel_list
  br i1 %cmp.i.not.i, label %for.end.list_splice.exit_crit_edge, label %if.then.i

for.end.list_splice.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_splice.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connector_list, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %connector_list, ptr %prev3.i.i, align 4
  store ptr %22, ptr %connector_list, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %26, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %for.end.list_splice.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %connector_list_lock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %panel_list) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr nocapture noundef writeonly %fb, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %fb, align 8
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %1 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %format, align 8
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %width2 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %4 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %width2, align 8
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 8
  %height3 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 0
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 0
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx8, align 4
  %arrayidx.1 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx5.1, align 4
  %arrayidx6.1 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.1, align 4
  %arrayidx8.1 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx8.1, align 4
  %arrayidx.2 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx5.2, align 4
  %arrayidx6.2 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx6.2, align 4
  %arrayidx8.2 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx8.2, align 4
  %arrayidx.3 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx5.3, align 4
  %arrayidx6.3 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.3, align 4
  %arrayidx8.3 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx8.3, align 4
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %32 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %modifier, align 8
  %modifier10 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 8
  %34 = ptrtoint ptr %modifier10 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %modifier10, align 8
  %flags = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %flags11 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 11
  %37 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flags11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_init(ptr noundef %dev, ptr noundef %crtc, ptr noundef %funcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #7
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #4
  br label %create_primary_plane.exit

if.end.i:                                         ; preds = %entry
  %format_default.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %format_default.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %format_default.i, align 4
  %call1.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, ptr noundef nonnull @drm_primary_helper_funcs, ptr noundef nonnull @safe_modeset_formats, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.create_primary_plane.exit_crit_edge, label %if.then2.i

if.end.i.create_primary_plane.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %create_primary_plane.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %create_primary_plane.exit

create_primary_plane.exit:                        ; preds = %if.then2.i, %if.end.i.create_primary_plane.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ null, %if.then2.i ], [ %call7.i.i.i, %if.end.i.create_primary_plane.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef %crtc, ptr noundef %retval.0.i, ptr noundef null, ptr noundef %funcs, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_config_helper_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @drm_kms_helper_poll_disable(ptr noundef nonnull %dev) #4
  %fb_helper = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %fb_helper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb_helper, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %1, i1 noundef zeroext true) #4
  %call = tail call ptr @drm_atomic_helper_suspend(ptr noundef nonnull %dev) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %fb_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_helper, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %3, i1 noundef zeroext false) #4
  tail call void @drm_kms_helper_poll_enable(ptr noundef nonnull %dev) #4
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %suspend_state = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 102
  %5 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %suspend_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_set_suspend_unlocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_config_helper_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_state = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 102
  %0 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend_state, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !27

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call = tail call i32 @drm_atomic_helper_resume(ptr noundef nonnull %dev, ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %2 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %suspend_state, align 4
  %fb_helper = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 36
  %3 = ptrtoint ptr %fb_helper to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb_helper, align 4
  tail call void @drm_fb_helper_set_suspend_unlocked(ptr noundef %4, i1 noundef zeroext false) #4
  tail call void @drm_kms_helper_poll_enable(ptr noundef nonnull %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end31 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_drm_helper_move_panel_connectors_to_head, !1, !"__ksymtab_drm_helper_move_panel_connectors_to_head", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 68, i32 1}
!2 = !{ptr @__ksymtab_drm_helper_mode_fill_fb_struct, !3, !"__ksymtab_drm_helper_mode_fill_fb_struct", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 96, i32 1}
!4 = !{ptr @__ksymtab_drm_crtc_init, !5, !"__ksymtab_drm_crtc_init", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 178, i32 1}
!6 = !{ptr @__ksymtab_drm_mode_config_helper_suspend, !7, !"__ksymtab_drm_mode_config_helper_suspend", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 215, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 238, i32 6}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 243, i32 3}
!12 = !{ptr @__ksymtab_drm_mode_config_helper_resume, !13, !"__ksymtab_drm_mode_config_helper_resume", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 251, i32 1}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 117, i32 3}
!16 = !{ptr @safe_modeset_formats, !17, !"safe_modeset_formats", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_modeset_helper.c", i32 105, i32 23}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}

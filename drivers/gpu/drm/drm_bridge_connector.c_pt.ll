; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_bridge_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_bridge_connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+drm_bridge_connector_enable_hpd\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_bridge_connector_enable_hpd\09\09\09\09"
module asm "\09.long\09__crc_drm_bridge_connector_enable_hpd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_enable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_enable_hpd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_enable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_bridge_connector_disable_hpd\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_bridge_connector_disable_hpd\09\09\09\09"
module asm "\09.long\09__crc_drm_bridge_connector_disable_hpd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_disable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_disable_hpd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_disable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_bridge_connector_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_bridge_connector_init\09\09\09\09"
module asm "\09.long\09__crc_drm_bridge_connector_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_connector = type { %struct.drm_connector, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@__kstrtab_drm_bridge_connector_enable_hpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_enable_hpd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_enable_hpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_enable_hpd to i32), ptr @__kstrtab_drm_bridge_connector_enable_hpd, ptr @__kstrtabns_drm_bridge_connector_enable_hpd }, section "___ksymtab_gpl+drm_bridge_connector_enable_hpd", align 4
@__kstrtab_drm_bridge_connector_disable_hpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_disable_hpd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_disable_hpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_disable_hpd to i32), ptr @__kstrtab_drm_bridge_connector_disable_hpd, ptr @__kstrtabns_drm_bridge_connector_disable_hpd }, section "___ksymtab_gpl+drm_bridge_connector_disable_hpd", align 4
@drm_bridge_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @drm_bridge_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_bridge_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@drm_bridge_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @drm_bridge_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_drm_bridge_connector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_init to i32), ptr @__kstrtab_drm_bridge_connector_init, ptr @__kstrtabns_drm_bridge_connector_init }, section "___ksymtab_gpl+drm_bridge_connector_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 14, i64 16, i64 17]
@___asan_gen_.2 = private unnamed_addr constant [27 x i8] c"drm_bridge_connector_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 219, i32 41 }
@___asan_gen_.5 = private unnamed_addr constant [34 x i8] c"drm_bridge_connector_helper_funcs\00", align 1
@___asan_gen_.6 = private constant [42 x i8] c"../drivers/gpu/drm/drm_bridge_connector.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 290, i32 48 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_bridge_connector_disable_hpd, ptr @__ksymtab_drm_bridge_connector_enable_hpd, ptr @__ksymtab_drm_bridge_connector_init, ptr @drm_bridge_connector_funcs, ptr @drm_bridge_connector_helper_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_bridge_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_bridge_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_bridge_connector_enable_hpd(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_hpd = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %bridge_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_hpd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_bridge_hpd_enable(ptr noundef nonnull %1, ptr noundef nonnull @drm_bridge_connector_hpd_cb, ptr noundef %connector) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_bridge_connector_hpd_cb(ptr nocapture noundef %cb_data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_data, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #3
  %status2 = getelementptr inbounds %struct.drm_connector, ptr %cb_data, i32 0, i32 18
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 8
  store i32 %status, ptr %status2, align 8
  tail call void @mutex_unlock(ptr noundef %mode_config) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %status)
  %cmp = icmp eq i32 %3, %status
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder.i = getelementptr inbounds %struct.drm_bridge_connector, ptr %cb_data, i32 0, i32 1
  %4 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder.i, align 8
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %bridge_chain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn18.i = load ptr, ptr %bridge_chain.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn18.i, %bridge_chain.i
  br i1 %cmp.not21.i, label %if.end.drm_bridge_connector_hpd_notify.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.drm_bridge_connector_hpd_notify.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_bridge_connector_hpd_notify.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %if.end.for.body.i_crit_edge ]
  %funcs.i = getelementptr i8, ptr %.pn22.i, i32 24
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %hpd_notify.i = getelementptr inbounds %struct.drm_bridge_funcs, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %hpd_notify.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpd_notify.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %bridge.023.i = getelementptr i8, ptr %.pn22.i, i32 -132
  tail call void %10(ptr noundef %bridge.023.i, i32 noundef %status) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %12 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder.i, align 8
  %bridge_chain5.i = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 9
  %cmp.not.i = icmp eq ptr %.pn.i, %bridge_chain5.i
  br i1 %cmp.not.i, label %for.inc.i.drm_bridge_connector_hpd_notify.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.drm_bridge_connector_hpd_notify.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_bridge_connector_hpd_notify.exit

drm_bridge_connector_hpd_notify.exit:             ; preds = %for.inc.i.drm_bridge_connector_hpd_notify.exit_crit_edge, %if.end.drm_bridge_connector_hpd_notify.exit_crit_edge
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %drm_bridge_connector_hpd_notify.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_bridge_connector_disable_hpd(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_hpd = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %bridge_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_hpd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_bridge_hpd_disable(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_bridge_connector_init(ptr noundef %drm, ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder2 = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %encoder2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %encoder, ptr %encoder2, align 8
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %2 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %interlace_allowed, align 8
  %bridge_chain = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 9
  %3 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn92 = load ptr, ptr %bridge_chain, align 4
  %cmp.not94 = icmp eq ptr %.pn92, %bridge_chain
  br i1 %cmp.not94, label %if.end.if.then42_crit_edge, label %for.body.lr.ph

if.end.if.then42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then42

for.body.lr.ph:                                   ; preds = %if.end
  %bridge_edid = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 2
  %bridge_hpd = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 3
  %bridge_detect = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 4
  %bridge_modes = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.lr.ph
  %.pn97 = phi ptr [ %.pn92, %for.body.lr.ph ], [ %.pn, %if.end30.for.body_crit_edge ]
  %ddc.096 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %if.end30.for.body_crit_edge ]
  %connector_type.095 = phi i32 [ 0, %for.body.lr.ph ], [ %connector_type.1, %if.end30.for.body_crit_edge ]
  %bridge.098 = getelementptr i8, ptr %.pn97, i32 -132
  %interlace_allowed4 = getelementptr i8, ptr %.pn97, i32 40
  %4 = ptrtoint ptr %interlace_allowed4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interlace_allowed4, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then6, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %interlace_allowed, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %ops = getelementptr i8, ptr %.pn97, i32 32
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ops, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %bridge_edid to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bridge.098, ptr %bridge_edid, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ops, align 4
  %and13 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %bridge_hpd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bridge.098, ptr %bridge_hpd, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ops, align 4
  %and18 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %bridge_detect to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bridge.098, ptr %bridge_detect, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ops, align 4
  %and23 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %bridge_modes to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bridge.098, ptr %bridge_modes, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %encoder.i = getelementptr i8, ptr %.pn97, i32 -4
  %19 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %.pn97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn97, align 4
  %cmp.i.not.i = icmp eq ptr %22, %bridge_chain.i
  %add.ptr.i = getelementptr i8, ptr %22, i32 -132
  %tobool28.not91 = icmp eq ptr %add.ptr.i, null
  %tobool28.not = or i1 %cmp.i.not.i, %tobool28.not91
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %type = getelementptr i8, ptr %.pn97, i32 36
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %connector_type.1 = phi i32 [ %connector_type.095, %if.end26.if.end30_crit_edge ], [ %24, %if.then29 ]
  %ddc31 = getelementptr i8, ptr %.pn97, i32 44
  %25 = ptrtoint ptr %ddc31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddc31, align 4
  %tobool32.not = icmp eq ptr %26, null
  %spec.select = select i1 %tobool32.not, ptr %ddc.096, ptr %26
  %27 = ptrtoint ptr %.pn97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn97, align 4
  %cmp.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connector_type.1)
  %cmp41 = icmp eq i32 %connector_type.1, 0
  br i1 %cmp41, label %for.end.if.then42_crit_edge, label %if.end44

for.end.if.then42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then42

if.then42:                                        ; preds = %for.end.if.then42_crit_edge, %if.end.if.then42_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

if.end44:                                         ; preds = %for.end
  %call45 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %drm, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @drm_bridge_connector_funcs, i32 noundef %connector_type.1, ptr noundef %spec.select) #3
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %28 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @drm_bridge_connector_helper_funcs, ptr %helper_private.i, align 4
  %bridge_hpd46 = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %bridge_hpd46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bridge_hpd46, align 8
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %31 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %polled, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end44
  %bridge_detect49 = getelementptr inbounds %struct.drm_bridge_connector, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %bridge_detect49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bridge_detect49, align 4
  %tobool50.not = icmp eq ptr %33, null
  br i1 %tobool50.not, label %if.else.cleanup_crit_edge, label %if.then51

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %polled52 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %34 = ptrtoint ptr %polled52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %polled52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.else.cleanup_crit_edge, %if.then48, %if.then42, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then42 ], [ %call7.i.i, %if.else.cleanup_crit_edge ], [ %call7.i.i, %if.then51 ], [ %call7.i.i, %if.then48 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_bridge_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_detect = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 4
  %0 = ptrtoint ptr %bridge_detect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_detect, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %detect1 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %detect1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detect1, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1) #3
  %encoder.i = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 1
  %6 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder.i, align 8
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %bridge_chain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn18.i = load ptr, ptr %bridge_chain.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn18.i, %bridge_chain.i
  br i1 %cmp.not21.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %if.then.for.body.i_crit_edge ]
  %funcs.i = getelementptr i8, ptr %.pn22.i, i32 24
  %9 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs.i, align 4
  %hpd_notify.i = getelementptr inbounds %struct.drm_bridge_funcs, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %hpd_notify.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hpd_notify.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %bridge.023.i = getelementptr i8, ptr %.pn22.i, i32 -132
  tail call void %12(ptr noundef %bridge.023.i, i32 noundef %call) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %14 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder.i, align 8
  %bridge_chain5.i = getelementptr inbounds %struct.drm_encoder, ptr %15, i32 0, i32 9
  %cmp.not.i = icmp eq ptr %.pn.i, %bridge_chain5.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %16 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connector_type, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %sw.default [
    i32 17, label %if.else.if.end_crit_edge
    i32 7, label %if.else.if.end_crit_edge7
    i32 16, label %if.else.if.end_crit_edge8
    i32 14, label %if.else.if.end_crit_edge9
  ]

if.else.if.end_crit_edge9:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else.if.end_crit_edge8:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else.if.end_crit_edge7:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %sw.default, %if.else.if.end_crit_edge, %if.else.if.end_crit_edge7, %if.else.if.end_crit_edge8, %if.else.if.end_crit_edge9, %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ 3, %sw.default ], [ 1, %if.else.if.end_crit_edge ], [ 1, %if.else.if.end_crit_edge7 ], [ 1, %if.else.if.end_crit_edge8 ], [ 1, %if.else.if.end_crit_edge9 ], [ %call, %if.then.if.end_crit_edge ], [ %call, %for.inc.i.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_bridge_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_hpd = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %bridge_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_hpd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_bridge_hpd_disable(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_connector_unregister(ptr noundef %connector) #3
  tail call void @drm_connector_cleanup(ptr noundef %connector) #3
  tail call void @kfree(ptr noundef %connector) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_bridge_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_edid = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %bridge_edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_edid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bridge_detect.i.i = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 4
  %2 = ptrtoint ptr %bridge_detect.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_detect.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  %funcs.i.i = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i.i, align 4
  %detect1.i.i = getelementptr inbounds %struct.drm_bridge_funcs, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %detect1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %detect1.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef nonnull %3) #3
  %encoder.i.i.i = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 1
  %8 = ptrtoint ptr %encoder.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder.i.i.i, align 8
  %bridge_chain.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %bridge_chain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn18.i.i.i = load ptr, ptr %bridge_chain.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn18.i.i.i, %bridge_chain.i.i.i
  br i1 %cmp.not21.i.i.i, label %if.then.i.i.drm_bridge_connector_detect.exit.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.drm_bridge_connector_detect.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_bridge_connector_detect.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn18.i.i.i, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %funcs.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 24
  %11 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i.i.i, align 4
  %hpd_notify.i.i.i = getelementptr inbounds %struct.drm_bridge_funcs, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %hpd_notify.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hpd_notify.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %bridge.023.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -132
  tail call void %14(ptr noundef %bridge.023.i.i.i, i32 noundef %call.i.i) #3
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %15 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %16 = ptrtoint ptr %encoder.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder.i.i.i, align 8
  %bridge_chain5.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %17, i32 0, i32 9
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %bridge_chain5.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.drm_bridge_connector_detect.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i.i

for.inc.i.i.i.drm_bridge_connector_detect.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_bridge_connector_detect.exit.i

if.else.i.i:                                      ; preds = %if.then
  %connector_type.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %18 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %connector_type.i.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %19, label %if.else.i.i.no_edid.i_crit_edge [
    i32 17, label %if.else.i.i.if.end.i_crit_edge
    i32 7, label %if.else.i.i.if.end.i_crit_edge14
    i32 16, label %if.else.i.i.if.end.i_crit_edge15
    i32 14, label %if.else.i.i.if.end.i_crit_edge16
  ]

if.else.i.i.if.end.i_crit_edge16:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else.i.i.if.end.i_crit_edge15:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else.i.i.if.end.i_crit_edge14:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else.i.i.no_edid.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %no_edid.i

drm_bridge_connector_detect.exit.i:               ; preds = %for.inc.i.i.i.drm_bridge_connector_detect.exit.i_crit_edge, %if.then.i.i.drm_bridge_connector_detect.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %drm_bridge_connector_detect.exit.i.if.end.i_crit_edge, label %drm_bridge_connector_detect.exit.i.no_edid.i_crit_edge

drm_bridge_connector_detect.exit.i.no_edid.i_crit_edge: ; preds = %drm_bridge_connector_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %no_edid.i

drm_bridge_connector_detect.exit.i.if.end.i_crit_edge: ; preds = %drm_bridge_connector_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %drm_bridge_connector_detect.exit.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge14, %if.else.i.i.if.end.i_crit_edge15, %if.else.i.i.if.end.i_crit_edge16
  %funcs.i = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i, align 4
  %get_edid.i = getelementptr inbounds %struct.drm_bridge_funcs, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %get_edid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_edid.i, align 4
  %call1.i = tail call ptr %24(ptr noundef nonnull %1, ptr noundef %connector) #3
  %call2.i = tail call zeroext i1 @drm_edid_is_valid(ptr noundef %call1.i) #3
  br i1 %call2.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef %call1.i) #3
  br label %no_edid.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call1.i) #3
  %call6.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call1.i) #3
  tail call void @kfree(ptr noundef %call1.i) #3
  br label %cleanup

no_edid.i:                                        ; preds = %if.then3.i, %drm_bridge_connector_detect.exit.i.no_edid.i_crit_edge, %if.else.i.i.no_edid.i_crit_edge
  %call7.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge_modes = getelementptr inbounds %struct.drm_bridge_connector, ptr %connector, i32 0, i32 5
  %25 = ptrtoint ptr %bridge_modes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bridge_modes, align 8
  %tobool1.not = icmp eq ptr %26, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs, align 4
  %get_modes = getelementptr inbounds %struct.drm_bridge_funcs, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %get_modes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_modes, align 4
  %call3 = tail call i32 %30(ptr noundef nonnull %26, ptr noundef %connector) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %no_edid.i, %if.end4.i
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %no_edid.i ], [ %call6.i, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_drm_bridge_connector_enable_hpd, !1, !"__ksymtab_drm_bridge_connector_enable_hpd", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_bridge_connector.c", i32 148, i32 1}
!2 = !{ptr @__ksymtab_drm_bridge_connector_disable_hpd, !3, !"__ksymtab_drm_bridge_connector_disable_hpd", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_bridge_connector.c", i32 167, i32 1}
!4 = !{ptr @__ksymtab_drm_bridge_connector_init, !5, !"__ksymtab_drm_bridge_connector_init", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_bridge_connector.c", i32 380, i32 1}
!6 = !{ptr @drm_bridge_connector_funcs, !7, !"drm_bridge_connector_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_bridge_connector.c", i32 219, i32 41}
!8 = !{ptr @drm_bridge_connector_helper_funcs, !9, !"drm_bridge_connector_helper_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_bridge_connector.c", i32 290, i32 48}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}

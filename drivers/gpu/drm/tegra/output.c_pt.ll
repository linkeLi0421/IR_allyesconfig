; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/output.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cec_connector_info = type { i32, %union.anon.96 }
%union.anon.96 = type { [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,panel\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tegra/output.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,edid\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,ddc-i2c-bus\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,hpd-gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI hotplug detect\00", [44 x i8] zeroinitializer }, align 32
@tegra_output_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 151, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpiod_to_irq(): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_output_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_output_probe._entry_ptr = internal global ptr @tegra_output_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@tegra_output_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.1, i32 164, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_output_probe._entry_ptr.13 = internal global ptr @tegra_output_probe._entry.11, section ".printk_index", align 4
@tegra_output_find_possible_crtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 244, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"missing output definition for heads in DT\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_output_find_possible_crtcs\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_output_find_possible_crtcs._entry_ptr = internal global ptr @tegra_output_find_possible_crtcs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 108, i32 44 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 114, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 123, i32 50 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 125, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 138, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 140, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 151, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 161, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 163, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [34 x i8] c"../drivers/gpu/drm/tegra/output.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 244, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @tegra_output_find_possible_crtcs._entry, ptr @tegra_output_find_possible_crtcs._entry_ptr, ptr @tegra_output_probe._entry, ptr @tegra_output_probe._entry.11, ptr @tegra_output_probe._entry_ptr, ptr @tegra_output_probe._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_output_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_output_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_output_find_possible_crtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_connector_get_modes(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %connector, i32 -100
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %1, ptr noundef %connector) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ %call2, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %edid5 = getelementptr i8, ptr %connector, i32 -92
  %2 = ptrtoint ptr %edid5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid5, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 128, i32 noundef 3264) #4
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %ddc = getelementptr i8, ptr %connector, i32 -96
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 8
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %5) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then7
  %edid.0 = phi ptr [ %call9, %if.then7 ], [ %call13, %if.then11 ], [ null, %if.else.if.end15_crit_edge ]
  %cec = getelementptr i8, ptr %connector, i32 -88
  %6 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cec, align 8
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %7, ptr noundef %edid.0) #4
  %call16 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %edid.0) #4
  %tobool17.not = icmp eq ptr %edid.0, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %edid.0) #4
  tail call void @kfree(ptr noundef nonnull %edid.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call19, %if.then18 ], [ %err.0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr i8, ptr %connector, i32 -80
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then.if.then11_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9:                                          ; preds = %entry
  %panel = getelementptr i8, ptr %connector, i32 -100
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end9.if.then11_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.then.if.then11_crit_edge
  %cec = getelementptr i8, ptr %connector, i32 -88
  %4 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec, align 8
  tail call void @cec_notifier_set_phys_addr(ptr noundef %5, i16 noundef zeroext -1) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %status.021 = phi i32 [ 1, %if.then.if.end12_crit_edge ], [ 2, %if.then11 ], [ 1, %if.end9.if.end12_crit_edge ]
  ret i32 %status.021
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_output_connector_destroy(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cec = getelementptr i8, ptr %connector, i32 -88
  %0 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cec_notifier_conn_unregister(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_connector_unregister(ptr noundef %connector) #4
  tail call void @drm_connector_cleanup(ptr noundef %connector) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_probe(ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  %args.i150 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !40
  %1 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %output, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %of_node1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node1, align 8
  %7 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %output, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output, align 8
  %panel4 = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 3
  %bridge = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 2
  %call = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef -1, i32 noundef -1, ptr noundef %panel4, ptr noundef %bridge) #4
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end7_crit_edge
    i32 -19, label %if.end.if.end7_crit_edge162
  ]

if.end.if.end7_crit_edge162:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge162
  %11 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %output, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #4
  %13 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  br label %if.end45

of_parse_phandle.exit:                            ; preds = %if.end7
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %of_parse_phandle.exit.if.end45_crit_edge, label %if.then11

of_parse_phandle.exit.if.end45_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then11:                                        ; preds = %of_parse_phandle.exit
  %16 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel4, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %lor.rhs, label %if.then11.do.end_crit_edge

if.then11.do.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %if.then11
  %18 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bridge, align 8
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %lor.rhs.if.end30_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !41

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs.if.end30_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.then11.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 114, i32 noundef 9, ptr noundef null) #4
  br label %if.end30

if.end30:                                         ; preds = %do.end, %lor.rhs.if.end30_crit_edge
  %call37 = call ptr @of_drm_find_panel(ptr noundef nonnull %15) #4
  %20 = ptrtoint ptr %panel4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37, ptr %panel4, align 4
  call void @of_node_put(ptr noundef nonnull %15) #4
  %21 = ptrtoint ptr %panel4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %panel4, align 4
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end30.if.end45_crit_edge

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end30.if.end45_crit_edge, %of_parse_phandle.exit.if.end45_crit_edge, %of_parse_phandle.exit.thread
  %24 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %output, align 8
  %call47 = call ptr @of_get_property(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull %size) #4
  %edid = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 5
  %26 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call47, ptr %edid, align 4
  %27 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %output, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i150) #4
  %29 = call ptr @memset(ptr %args.i150, i32 255, i32 72)
  %call.i151 = call i32 @__of_parse_phandle_with_args(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i150) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %of_parse_phandle.exit155, label %of_parse_phandle.exit155.thread

of_parse_phandle.exit155.thread:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i150) #4
  br label %if.end58

of_parse_phandle.exit155:                         ; preds = %if.end45
  %30 = ptrtoint ptr %args.i150 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args.i150, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i150) #4
  %tobool50.not = icmp eq ptr %31, null
  br i1 %tobool50.not, label %of_parse_phandle.exit155.if.end58_crit_edge, label %if.then51

of_parse_phandle.exit155.if.end58_crit_edge:      ; preds = %of_parse_phandle.exit155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then51:                                        ; preds = %of_parse_phandle.exit155
  %call52 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %31) #4
  %ddc53 = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 4
  %32 = ptrtoint ptr %ddc53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call52, ptr %ddc53, align 8
  call void @of_node_put(ptr noundef nonnull %31) #4
  %33 = ptrtoint ptr %ddc53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddc53, align 8
  %tobool55.not = icmp eq ptr %34, null
  br i1 %tobool55.not, label %if.then51.cleanup_crit_edge, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %of_parse_phandle.exit155.if.end58_crit_edge, %of_parse_phandle.exit155.thread
  %dev59 = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 1
  %35 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev59, align 4
  %37 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %output, align 8
  %call61 = call ptr @devm_gpiod_get_from_of_node(ptr noundef %36, ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.5) #4
  %hpd_gpio = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 8
  %39 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call61, ptr %hpd_gpio, align 8
  %cmp.i156 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then64, label %if.end73

if.then64:                                        ; preds = %if.end58
  %40 = ptrtoint ptr %call61 to i32
  %cmp67.not = icmp eq ptr %call61, inttoptr (i32 -2 to ptr)
  br i1 %cmp67.not, label %if.end73.thread, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73.thread:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %hpd_gpio, align 8
  br label %cleanup

if.end73:                                         ; preds = %if.end58
  %tobool75.not = icmp eq ptr %call61, null
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.then76

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then76:                                        ; preds = %if.end73
  %call78 = call i32 @gpiod_to_irq(ptr noundef nonnull %call61) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.6, i32 noundef %call78) #7
  br label %cleanup

if.end85:                                         ; preds = %if.then76
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %44 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call78, ptr %hpd_irq, align 4
  %call87 = call i32 @request_threaded_irq(i32 noundef %call78, ptr noundef null, ptr noundef nonnull @hpd_irq, i32 noundef 8195, ptr noundef nonnull @.str.10, ptr noundef %output) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %if.end95

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev59, align 4
  %47 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hpd_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.12, i32 noundef %48, i32 noundef %call87) #7
  br label %cleanup

if.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %polled = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 10, i32 33
  %49 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %polled, align 4
  %50 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hpd_irq, align 4
  call void @disable_irq(i32 noundef %51) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end92, %do.end83, %if.end73.cleanup_crit_edge, %if.end73.thread, %if.then64.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.then41, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then41 ], [ %call78, %do.end83 ], [ %call87, %do.end92 ], [ %call, %if.end.cleanup_crit_edge ], [ -517, %if.then51.cleanup_crit_edge ], [ 0, %if.end95 ], [ 0, %if.end73.cleanup_crit_edge ], [ %40, %if.then64.cleanup_crit_edge ], [ 0, %if.end73.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpd_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.tegra_output, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_output_remove(ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 8
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %2 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpd_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %output) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ddc = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 4
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_put_adapter(ptr noundef nonnull %5) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_init(ptr nocapture noundef readnone %drm, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 8
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %2 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpd_irq, align 4
  tail call void @enable_irq(i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %connector_type1 = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 10, i32 10
  %4 = ptrtoint ptr %connector_type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_type1, align 8
  %.off = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %connector = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #4
  %6 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef %connector) #4
  %dev = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call = call ptr @cec_notifier_conn_register(ptr noundef %8, ptr noundef null, ptr noundef nonnull %conn_info) #4
  %cec = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 6
  %9 = ptrtoint ptr %cec to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %cec, align 8
  %tobool6.not = icmp eq ptr %call, null
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #4
  br i1 %tobool6.not, label %if.then3.cleanup10_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then3.cleanup10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %if.then3.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.end9 ], [ -12, %if.then3.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_output_exit(ptr nocapture noundef readonly %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 8
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %2 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpd_irq, align 4
  tail call void @disable_irq(i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_output_find_possible_crtcs(ptr nocapture noundef %output, ptr noundef readonly %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %crtc_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %crtc_list
  br i1 %cmp.not23, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %mask.024 = phi i32 [ %mask.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn25, i32 -8
  %tobool.not.i = icmp eq ptr %crtc.0, null
  %add.ptr.i = getelementptr i8, ptr %.pn25, i32 -256
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %call4 = tail call zeroext i1 @tegra_dc_has_output(ptr noundef %spec.select.i, ptr noundef %1) #4
  br i1 %call4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %index.i.i = getelementptr i8, ptr %.pn25, i32 148
  %3 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %4
  %or = or i32 %shl.i, %mask.024
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %mask.1 = phi i32 [ %or, %if.then ], [ %mask.024, %for.body.if.end_crit_edge ]
  %5 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1)
  %cmp11 = icmp eq i32 %mask.1, 0
  br i1 %cmp11, label %for.end.do.end_crit_edge, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end, %for.end.if.end13_crit_edge
  %mask.2 = phi i32 [ 3, %do.end ], [ %mask.1, %for.end.if.end13_crit_edge ]
  %possible_crtcs = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 9, i32 6
  %6 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mask.2, ptr %possible_crtcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_dc_has_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_suspend(ptr nocapture noundef readonly %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %0 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hpd_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @disable_irq(i32 noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_output_resume(ptr nocapture noundef readonly %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_irq = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 7
  %0 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hpd_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @enable_irq(i32 noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/output.c", i32 108, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/output.c", i32 114, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/output.c", i32 123, i32 50}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/output.c", i32 125, i32 42}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/output.c", i32 138, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/output.c", i32 140, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/output.c", i32 151, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tegra_output_probe._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @tegra_output_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/output.c", i32 161, i32 16}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tegra/output.c", i32 163, i32 4}
!23 = !{ptr @tegra_output_probe._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_output_probe._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tegra/output.c", i32 244, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra_output_find_possible_crtcs._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_output_find_possible_crtcs._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 2000, i32 1}

; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_rgb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rockchip_rgb_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rockchip_rgb_init\09\09\09\09"
module asm "\09.long\09__crc_rockchip_rgb_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_rgb_init\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rockchip_rgb_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_rockchip_rgb_fini\09\09\09\09"
module asm "\09.long\09__crc_rockchip_rgb_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_rgb_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_rgb_fini\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_rgb_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rockchip_rgb = type { ptr, ptr, ptr, %struct.drm_encoder, %struct.drm_connector, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
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
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to find panel or bridge %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to initialize encoder: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_rgb_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rgb_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* failed to initialize bridge connector: %pe\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to attach encoder: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_rockchip_rgb_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_rgb_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_rgb_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_rgb_init to i32), ptr @__kstrtab_rockchip_rgb_init, ptr @__kstrtabns_rockchip_rgb_init }, section "___ksymtab_gpl+rockchip_rgb_init", align 4
@__kstrtab_rockchip_rgb_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_rgb_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_rgb_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_rgb_fini to i32), ptr @__kstrtab_rockchip_rgb_fini, ptr @__kstrtabns_rockchip_rgb_fini }, section "___ksymtab_gpl+rockchip_rgb_fini", align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 99, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 123, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 132, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [34 x i8] c"rockchip_rgb_encoder_helper_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 70, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 156, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [43 x i8] c"../drivers/gpu/drm/rockchip/rockchip_rgb.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 165, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_rockchip_rgb_fini, ptr @__ksymtab_rockchip_rgb_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rockchip_rgb_encoder_helper_funcs, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rgb_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_rgb_init(ptr noundef %dev, ptr nocapture noundef readonly %crtc, ptr noundef %drm_dev) #0 align 64 {
entry:
  %endpoint_id = alloca i32, align 4
  %panel = alloca ptr, align 4
  %bridge = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint_id) #4
  %0 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %endpoint_id, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #4
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #4
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !26
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1136, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 8
  %drm_dev3 = getelementptr inbounds %struct.rockchip_rgb, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %drm_dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drm_dev, ptr %drm_dev3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_graph_get_port_by_id(ptr noundef %6, i32 noundef 0) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @of_get_next_child(ptr noundef nonnull %call4, ptr noundef null) #4
  %cmp.not135 = icmp eq ptr %call9, null
  br i1 %cmp.not135, label %for.end.thread142, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.end.thread142:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %call4) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %child_count.0139 = phi i32 [ %child_count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %ret.0138 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %endpoint.0136 = phi ptr [ %call23, %for.inc.for.body_crit_edge ], [ %call9, %if.end8.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %endpoint.0136, ptr noundef nonnull @.str, ptr noundef nonnull %endpoint_id, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %for.body.if.end13_crit_edge, label %if.then12

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %endpoint_id, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.body.if.end13_crit_edge
  %call14 = call i32 @rockchip_drm_endpoint_is_subdriver(ptr noundef nonnull %endpoint.0136) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  %inc = add i32 %child_count.0139, 1
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %10 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %endpoint_id, align 4
  %call19 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef 0, i32 noundef %11, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end.thread, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0138, %if.end13.for.inc_crit_edge ], [ %call19, %if.end17.for.inc_crit_edge ]
  %child_count.1 = phi i32 [ %child_count.0139, %if.end13.for.inc_crit_edge ], [ %inc, %if.end17.for.inc_crit_edge ]
  %call23 = call ptr @of_get_next_child(ptr noundef nonnull %call4, ptr noundef nonnull %endpoint.0136) #4
  %cmp.not = icmp eq ptr %call23, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @of_node_put(ptr noundef nonnull %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %child_count.1)
  %tobool24.not = icmp eq i32 %child_count.1, 0
  br i1 %tobool24.not, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.thread:                                   ; preds = %if.end17
  call void @of_node_put(ptr noundef nonnull %endpoint.0136) #4
  call void @of_node_put(ptr noundef nonnull %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool24.not127 = icmp eq i32 %inc, 0
  br i1 %tobool24.not127, label %for.end.thread.cleanup_crit_edge, label %for.end.thread.if.end33_crit_edge

for.end.thread.if.end33_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp27 = icmp slt i32 %ret.1, 0
  br i1 %cmp27, label %if.then28, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.1)
  %cmp29.not = icmp eq i32 %ret.1, -517
  br i1 %cmp29.not, label %if.then28.if.end31_crit_edge, label %if.then30

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %ret.1) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then28.if.end31_crit_edge
  %12 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

if.end33:                                         ; preds = %if.end26.if.end33_crit_edge, %for.end.thread.if.end33_crit_edge
  %encoder34 = getelementptr inbounds %struct.rockchip_rgb, ptr %call.i, i32 0, i32 3
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %14
  %possible_crtcs = getelementptr inbounds %struct.rockchip_rgb, ptr %call.i, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %call36 = call i32 @drm_simple_encoder_init(ptr noundef %drm_dev, ptr noundef %encoder34, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %call36) #4
  %18 = inttoptr i32 %call36 to ptr
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %helper_private.i = getelementptr inbounds %struct.rockchip_rgb, ptr %call.i, i32 0, i32 3, i32 11
  %19 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rockchip_rgb_encoder_helper_funcs, ptr %helper_private.i, align 4
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %if.end41.if.end49_crit_edge, label %if.then43

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then43:                                        ; preds = %if.end41
  %call44 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %21, i32 noundef 7) #4
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call44, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43.cleanup_crit_edge, label %if.then43.if.end49_crit_edge

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %23 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge, align 4
  %bridge50 = getelementptr inbounds %struct.rockchip_rgb, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %bridge50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %bridge50, align 8
  %call52 = call i32 @drm_bridge_attach(ptr noundef %encoder34, ptr noundef %24, ptr noundef null, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.err_free_encoder_crit_edge

if.end49.err_free_encoder_crit_edge:              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_encoder

if.end55:                                         ; preds = %if.end49
  %26 = ptrtoint ptr %drm_dev3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm_dev3, align 4
  %call58 = call ptr @drm_bridge_connector_init(ptr noundef %27, ptr noundef %encoder34) #4
  %cmp.i124 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %dev61 = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %28 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev61, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull %call58) #4
  %30 = ptrtoint ptr %call58 to i32
  br label %err_free_encoder

if.end63:                                         ; preds = %if.end55
  %call64 = call i32 @drm_connector_attach_encoder(ptr noundef %call58, ptr noundef %encoder34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %dev67 = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %31 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %call64) #4
  call void @drm_connector_cleanup(ptr noundef %call58) #4
  br label %err_free_encoder

err_free_encoder:                                 ; preds = %if.then66, %if.then60, %if.end49.err_free_encoder_crit_edge
  %ret.3 = phi i32 [ %call52, %if.end49.err_free_encoder_crit_edge ], [ %30, %if.then60 ], [ %call64, %if.then66 ]
  call void @drm_encoder_cleanup(ptr noundef %encoder34) #4
  %33 = inttoptr i32 %ret.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_encoder, %if.end63.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.then38, %if.end31, %for.end.thread.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread142, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.end31 ], [ %18, %if.then38 ], [ %33, %err_free_encoder ], [ null, %for.end.cleanup_crit_edge ], [ %call.i, %if.end63.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ null, %for.end.thread.cleanup_crit_edge ], [ %call44, %if.then43.cleanup_crit_edge ], [ null, %for.end.thread142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint_id) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_drm_endpoint_is_subdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_rgb_fini(ptr noundef %rgb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.rockchip_rgb, ptr %rgb, i32 0, i32 2
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  tail call void @drm_panel_bridge_remove(ptr noundef %1) #4
  %connector = getelementptr inbounds %struct.rockchip_rgb, ptr %rgb, i32 0, i32 4
  tail call void @drm_connector_cleanup(ptr noundef %connector) #4
  %encoder = getelementptr inbounds %struct.rockchip_rgb, ptr %rgb, i32 0, i32 3
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_rgb_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readonly %conn_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 7
  %2 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_formats, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4119, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 4119
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4105, i32 %7)
  %switch.selectcmp11 = icmp eq i32 %7, 4105
  %switch.select12 = select i1 %switch.selectcmp11, i32 1, i32 %switch.select
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.select12, %if.end ], [ 0, %entry.sw.epilog_crit_edge ]
  %output_mode5 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %8 = ptrtoint ptr %output_mode5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %output_mode5, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %9 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %output_type, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 99, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 123, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 132, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 156, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 165, i32 3}
!11 = !{ptr @__ksymtab_rockchip_rgb_init, !12, !"__ksymtab_rockchip_rgb_init", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 178, i32 1}
!13 = !{ptr @__ksymtab_rockchip_rgb_fini, !14, !"__ksymtab_rockchip_rgb_fini", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 186, i32 1}
!15 = !{ptr @rockchip_rgb_encoder_helper_funcs, !16, !"rockchip_rgb_encoder_helper_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/rockchip_rgb.c", i32 70, i32 33}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}

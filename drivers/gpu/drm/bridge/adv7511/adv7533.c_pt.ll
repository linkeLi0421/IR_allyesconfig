; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/adv7511/adv7533.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7533.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reg_sequence = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@adv7533_cec_fixed_registers = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 21, i32 208, i32 0 }, %struct.reg_sequence { i32 23, i32 208, i32 0 }, %struct.reg_sequence { i32 36, i32 32, i32 0 }, %struct.reg_sequence { i32 87, i32 17, i32 0 }, %struct.reg_sequence { i32 5, i32 200, i32 0 }], [36 x i8] zeroinitializer }, align 32
@adv7533_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to change host lanes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7533_mode_set\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/bridge/adv7511/adv7533.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adv7533_mode_set._entry_ptr = internal global ptr @adv7533_mode_set._entry, section ".printk_index", align 4
@adv7533_fixed_registers = internal constant { [6 x %struct.reg_sequence], [56 x i8] } { [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 22, i32 32, i32 0 }, %struct.reg_sequence { i32 154, i32 224, i32 0 }, %struct.reg_sequence { i32 186, i32 112, i32 0 }, %struct.reg_sequence { i32 222, i32 130, i32 0 }, %struct.reg_sequence { i32 228, i32 64, i32 0 }, %struct.reg_sequence { i32 229, i32 128, i32 0 }], [56 x i8] zeroinitializer }, align 32
@__const.adv7533_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@adv7533_attach_dsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find dsi host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7533_attach_dsi\00", [45 x i8] zeroinitializer }, align 32
@adv7533_attach_dsi._entry_ptr = internal global ptr @adv7533_attach_dsi._entry, section ".printk_index", align 4
@adv7533_attach_dsi._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@adv7533_attach_dsi._entry_ptr.9 = internal global ptr @adv7533_attach_dsi._entry.7, section ".printk_index", align 4
@adv7533_attach_dsi._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach dsi to host\0A\00", [34 x i8] zeroinitializer }, align 32
@adv7533_attach_dsi._entry_ptr.12 = internal global ptr @adv7533_attach_dsi._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,dsi-lanes\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adi,disable-timing-generator\00", [35 x i8] zeroinitializer }, align 32
@__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes = private unnamed_addr constant [3 x i8] c"\06\04\03", align 1
@___asan_gen_.15 = private unnamed_addr constant [28 x i8] c"adv7533_cec_fixed_registers\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 19, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 121, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"adv7533_fixed_registers\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 10, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 152, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 158, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 171, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 182, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [44 x i8] c"../drivers/gpu/drm/bridge/adv7511/adv7533.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 196, i32 7 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @adv7533_attach_dsi._entry, ptr @adv7533_attach_dsi._entry.10, ptr @adv7533_attach_dsi._entry.7, ptr @adv7533_attach_dsi._entry_ptr, ptr @adv7533_attach_dsi._entry_ptr.12, ptr @adv7533_attach_dsi._entry_ptr.9, ptr @adv7533_mode_set._entry, ptr @adv7533_mode_set._entry_ptr, ptr @adv7533_cec_fixed_registers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @adv7533_fixed_registers, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_cec_fixed_registers to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_fixed_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_attach_dsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_attach_dsi._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_attach_dsi._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv7533_dsi_power_on(ptr nocapture noundef readonly %adv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 27
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 8
  %use_timing_gen = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 29
  %2 = ptrtoint ptr %use_timing_gen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_timing_gen, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hsync_end.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_end.i, align 4
  %conv.i = zext i16 %5 to i32
  %hsync_start.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_start.i, align 2
  %conv2.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %hdisplay.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay.i, align 4
  %conv5.i = zext i16 %9 to i32
  %sub6.i = sub nsw i32 %conv2.i, %conv5.i
  %htotal.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %htotal.i, align 2
  %conv7.i = zext i16 %11 to i32
  %sub10.i = sub nsw i32 %conv7.i, %conv.i
  %vsync_end.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 8
  %12 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsync_end.i, align 2
  %conv11.i = zext i16 %13 to i32
  %vsync_start.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_start.i, align 4
  %conv12.i = zext i16 %15 to i32
  %sub13.i = sub nsw i32 %conv11.i, %conv12.i
  %vdisplay.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay.i, align 2
  %conv16.i = zext i16 %17 to i32
  %sub17.i = sub nsw i32 %conv12.i, %conv16.i
  %vtotal.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 8, i32 9
  %18 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal.i, align 4
  %conv18.i = zext i16 %19 to i32
  %sub21.i = sub nsw i32 %conv18.i, %conv11.i
  %regmap_cec.i = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 5
  %20 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_cec.i, align 4
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lanes.i, align 8
  %sub22.i = add i32 %23, -2
  %arrayidx.i = getelementptr [3 x i8], ptr @__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes, i32 0, i32 %sub22.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv23.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv23.i, 3
  %call.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 22, i32 noundef %shl.i) #4
  %26 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap_cec.i, align 4
  %28 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %htotal.i, align 2
  %30 = lshr i16 %29, 4
  %31 = zext i16 %30 to i32
  %call27.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 40, i32 noundef %31) #4
  %32 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_cec.i, align 4
  %34 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %htotal.i, align 2
  %conv30.i = zext i16 %35 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 4
  %and.i = and i32 %shl31.i, 240
  %call32.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 41, i32 noundef %and.i) #4
  %36 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_cec.i, align 4
  %shr34.i = lshr i32 %sub.i, 4
  %call35.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 42, i32 noundef %shr34.i) #4
  %38 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap_cec.i, align 4
  %shl37.i = shl nsw i32 %sub.i, 4
  %and38.i = and i32 %shl37.i, 240
  %call39.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 43, i32 noundef %and38.i) #4
  %40 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_cec.i, align 4
  %shr41.i = lshr i32 %sub6.i, 4
  %call42.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 44, i32 noundef %shr41.i) #4
  %42 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap_cec.i, align 4
  %shl44.i = shl nsw i32 %sub6.i, 4
  %and45.i = and i32 %shl44.i, 240
  %call46.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 45, i32 noundef %and45.i) #4
  %44 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap_cec.i, align 4
  %shr48.i = lshr i32 %sub10.i, 4
  %call49.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 46, i32 noundef %shr48.i) #4
  %46 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap_cec.i, align 4
  %shl51.i = shl nsw i32 %sub10.i, 4
  %and52.i = and i32 %shl51.i, 240
  %call53.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 47, i32 noundef %and52.i) #4
  %48 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap_cec.i, align 4
  %50 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vtotal.i, align 4
  %52 = lshr i16 %51, 4
  %53 = zext i16 %52 to i32
  %call58.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 48, i32 noundef %53) #4
  %54 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap_cec.i, align 4
  %56 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vtotal.i, align 4
  %conv61.i = zext i16 %57 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 4
  %and63.i = and i32 %shl62.i, 240
  %call64.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 49, i32 noundef %and63.i) #4
  %58 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap_cec.i, align 4
  %shr66.i = lshr i32 %sub13.i, 4
  %call67.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 50, i32 noundef %shr66.i) #4
  %60 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap_cec.i, align 4
  %shl69.i = shl nsw i32 %sub13.i, 4
  %and70.i = and i32 %shl69.i, 240
  %call71.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 51, i32 noundef %and70.i) #4
  %62 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap_cec.i, align 4
  %shr73.i = lshr i32 %sub17.i, 4
  %call74.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 52, i32 noundef %shr73.i) #4
  %64 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap_cec.i, align 4
  %shl76.i = shl nsw i32 %sub17.i, 4
  %and77.i = and i32 %shl76.i, 240
  %call78.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 53, i32 noundef %and77.i) #4
  %66 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap_cec.i, align 4
  %shr80.i = lshr i32 %sub21.i, 4
  %call81.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 54, i32 noundef %shr80.i) #4
  %68 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap_cec.i, align 4
  %shl83.i = shl nsw i32 %sub21.i, 4
  %and84.i = and i32 %shl83.i, 240
  %call85.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 55, i32 noundef %and84.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 5
  %70 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap_cec, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lanes, align 8
  %shl = shl i32 %73, 4
  %call = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 28, i32 noundef %shl) #4
  %74 = ptrtoint ptr %use_timing_gen to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %use_timing_gen, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool3.not = icmp eq i8 %75, 0
  %76 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap_cec, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 39, i32 noundef 203) #4
  %78 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap_cec, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 39, i32 noundef 139) #4
  %80 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap_cec, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 39, i32 noundef 203) #4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 39, i32 noundef 11) #4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  %82 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap_cec, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 3, i32 noundef 137) #4
  %84 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap_cec, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 85, i32 noundef 0) #4
  %86 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap_cec, align 4
  %call19 = tail call i32 @regmap_register_patch(ptr noundef %87, ptr noundef nonnull @adv7533_cec_fixed_registers, i32 noundef 5) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv7533_dsi_power_off(ptr nocapture noundef readonly %adv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 5
  %0 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_cec, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3, i32 noundef 11) #4
  %2 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_cec, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 39, i32 noundef 11) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv7533_mode_set(ptr nocapture noundef readonly %adv, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 27
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 8
  %num_dsi_lanes = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 28
  %2 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_dsi_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not = icmp eq i8 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %5)
  %cmp3 = icmp sgt i32 %5, 80000
  %. = select i1 %cmp3, i32 4, i32 3
  %lanes7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lanes7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %7)
  %cmp8.not = icmp eq i32 %., %7
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %call = tail call i32 @mipi_dsi_detach(ptr noundef %1) #4
  %8 = ptrtoint ptr %lanes7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %lanes7, align 8
  %call12 = tail call i32 @mipi_dsi_attach(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then10.cleanup_crit_edge, label %do.end

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7533_patch_registers(ptr nocapture noundef readonly %adv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_register_patch(ptr noundef %1, ptr noundef nonnull @adv7533_fixed_registers, i32 noundef 6) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7533_patch_cec_registers(ptr nocapture noundef readonly %adv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 5
  %0 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_cec, align 4
  %call = tail call i32 @regmap_register_patch(ptr noundef %1, ptr noundef nonnull @adv7533_cec_fixed_registers, i32 noundef 5) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7533_attach_dsi(ptr nocapture noundef %adv) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adv, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #4
  %2 = call ptr @memcpy(ptr %info, ptr @__const.adv7533_attach_dsi.info, i32 28)
  %host_node = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 26
  %3 = ptrtoint ptr %host_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_node, align 4
  %call = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %4) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef nonnull %info) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dsi10 = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 27
  %6 = ptrtoint ptr %dsi10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %dsi10, align 8
  %num_dsi_lanes = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 28
  %7 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_dsi_lanes, align 4
  %conv = zext i8 %8 to i32
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 4
  %9 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 6
  %11 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 533, ptr %mode_flags, align 8
  %call11 = call i32 @devm_mipi_dsi_attach(ptr noundef %dev1, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %5, %do.end7 ], [ %call11, %do.end16 ], [ -517, %do.end ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7533_parse_dt(ptr noundef %np, ptr nocapture noundef writeonly %adv) local_unnamed_addr #0 align 64 {
entry:
  %num_lanes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lanes) #4
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_lanes, align 4, !annotation !39
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_lanes, i32 noundef 1, i32 noundef 0) #4
  %1 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_lanes, align 4
  %3 = add i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %3)
  %4 = icmp ult i32 %3, -4
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %2 to i8
  %num_dsi_lanes = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 28
  %5 = ptrtoint ptr %num_dsi_lanes to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %num_dsi_lanes, align 4
  %call2 = call ptr @of_graph_get_remote_node(ptr noundef %np, i32 noundef 0, i32 noundef 0) #4
  %host_node = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 26
  %6 = ptrtoint ptr %host_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %host_node, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %call2) #4
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i, null
  %use_timing_gen = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 29
  %frombool = zext i1 %tobool.i.not to i8
  %7 = ptrtoint ptr %use_timing_gen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %use_timing_gen, align 1
  %rgb = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 22
  %8 = ptrtoint ptr %rgb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rgb, align 4
  %embedded_sync = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 19
  %9 = ptrtoint ptr %embedded_sync to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %embedded_sync, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 121, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @adv7533_mode_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @adv7533_mode_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 152, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @adv7533_attach_dsi._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @adv7533_attach_dsi._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 158, i32 3}
!15 = !{ptr @adv7533_attach_dsi._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @adv7533_attach_dsi._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 171, i32 3}
!19 = !{ptr @adv7533_attach_dsi._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @adv7533_attach_dsi._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 182, i32 27}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 196, i32 7}
!25 = !{ptr @adv7533_cec_fixed_registers, !26, !"adv7533_cec_fixed_registers", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 19, i32 34}
!27 = !{ptr @adv7533_fixed_registers, !28, !"adv7533_fixed_registers", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7533.c", i32 10, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"auto-init"}

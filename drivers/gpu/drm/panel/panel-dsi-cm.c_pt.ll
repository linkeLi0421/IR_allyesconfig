; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-dsi-cm.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-dsi-cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dsic_panel_data = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.panel_drv_data = type { ptr, %struct.drm_panel, %struct.drm_display_mode, %struct.mutex, ptr, ptr, i32, i32, ptr, ptr, [2 x %struct.regulator_bulk_data], i8, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_panel_dsi_cm__306_667_dsicm_driver_init6 = internal global ptr @dsicm_driver_init, section ".initcall6.init", align 4
@dsicm_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsicm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dsicm_probe, ptr @dsicm_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_dsicm_driver_exit = internal global ptr @dsicm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [59 x i8] c"panel_dsi_cm.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [63 x i8] c"panel_dsi_cm.description=Generic DSI Command Mode Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [53 x i8] c"panel_dsi_cm.file=drivers/gpu/drm/panel/panel-dsi-cm\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [25 x i8] c"panel_dsi_cm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-dsi-cm\00", [19 x i8] zeroinitializer }, align 32
@dsicm_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpo,taal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @taal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,himalaya\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @himalaya_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,droid4-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @droid4_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@taal_data = internal constant { %struct.dsic_panel_data, [32 x i8] } { %struct.dsic_panel_data { i32 864, i32 480, i32 60, i32 0, i32 0, i32 300000000, i32 10000000, i8 1 }, [32 x i8] zeroinitializer }, align 32
@himalaya_data = internal constant { %struct.dsic_panel_data, [32 x i8] } { %struct.dsic_panel_data { i32 480, i32 864, i32 60, i32 49, i32 88, i32 300000000, i32 10000000, i8 0 }, [32 x i8] zeroinitializer }, align 32
@droid4_data = internal constant { %struct.dsic_panel_data, [32 x i8] } { %struct.dsic_panel_data { i32 540, i32 960, i32 60, i32 50, i32 89, i32 300000000, i32 10000000, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dsicm_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel_dsi_cm\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsicm_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/panel/panel-dsi-cm.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"probe\0A\00", [25 x i8] zeroinitializer }, align 32
@dsicm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->lock\00", [19 x i8] zeroinitializer }, align 32
@dsicm_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @dsicm_prepare, ptr @dsicm_enable, ptr @dsicm_disable, ptr @dsicm_unprepare, ptr @dsicm_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsicm_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @dsicm_bl_update_status, ptr @dsicm_bl_get_intensity, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsicm_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dsicm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dsicm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create sysfs files\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsicm_probe._entry_ptr = internal global ptr @dsicm_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@dsicm_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reset gpio request failed: %d\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsicm_probe_of\00", [17 x i8] zeroinitializer }, align 32
@dsicm_probe_of._entry_ptr = internal global ptr @dsicm_probe_of._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpnl\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddi\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dsicm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 392, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsicm_prepare\00", [18 x i8] zeroinitializer }, align 32
@dsicm_prepare._entry_ptr = internal global ptr @dsicm_prepare._entry, section ".printk_index", align 4
@dsicm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 414, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsicm_enable\00", [19 x i8] zeroinitializer }, align 32
@dsicm_enable._entry_ptr = internal global ptr @dsicm_enable._entry, section ".printk_index", align 4
@dsicm_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 351, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"panel revision %02x.%02x.%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsicm_power_on\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dsicm_power_on._entry_ptr = internal global ptr @dsicm_power_on._entry, section ".printk_index", align 4
@dsicm_power_on._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error while enabling panel, issuing HW reset\0A\00", [50 x i8] zeroinitializer }, align 32
@dsicm_power_on._entry_ptr.23 = internal global ptr @dsicm_power_on._entry.21, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dsicm_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 378, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error disabling panel, issuing HW reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsicm_power_off\00", [16 x i8] zeroinitializer }, align 32
@dsicm_power_off._entry_ptr = internal global ptr @dsicm_power_off._entry, section ".printk_index", align 4
@dsicm_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 426, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsicm_unprepare\00", [16 x i8] zeroinitializer }, align 32
@dsicm_unprepare._entry_ptr = internal global ptr @dsicm_unprepare._entry, section ".printk_index", align 4
@dsicm_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 457, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add mode %ux%ux@%u kHz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsicm_get_modes\00", [16 x i8] zeroinitializer }, align 32
@dsicm_get_modes._entry_ptr = internal global ptr @dsicm_get_modes._entry, section ".printk_index", align 4
@dsicm_bl_update_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsicm_bl_update_status\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"update brightness to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dsicm_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_num_dsi_errors, ptr @dev_attr_hw_revision, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_num_dsi_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @num_dsi_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_dsi_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_revision\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%02x.%02x.%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@dsicm_remove.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsicm_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"dsicm_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 659, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 663, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"dsicm_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 650, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"taal_data\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 617, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"himalaya_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 628, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"droid4_data\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 639, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 529, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 546, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"dsicm_panel_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 469, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"dsicm_bl_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 229, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"dsicm_attr_group\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 283, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 570, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 484, i32 48 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 487, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 502, i32 30 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 503, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 392, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 414, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 350, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 359, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 377, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 426, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 455, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 207, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"dsicm_attrs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 277, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"dev_attr_num_dsi_errors\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"dev_attr_hw_revision\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 274, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 251, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 275, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 271, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [40 x i8] c"../drivers/gpu/drm/panel/panel-dsi-cm.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 603, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_dsicm_driver_exit, ptr @__initcall__kmod_panel_dsi_cm__306_667_dsicm_driver_init6, ptr @dsicm_driver_exit, ptr @dsicm_enable._entry, ptr @dsicm_enable._entry_ptr, ptr @dsicm_get_modes._entry, ptr @dsicm_get_modes._entry_ptr, ptr @dsicm_power_off._entry, ptr @dsicm_power_off._entry_ptr, ptr @dsicm_power_on._entry, ptr @dsicm_power_on._entry.21, ptr @dsicm_power_on._entry_ptr, ptr @dsicm_power_on._entry_ptr.23, ptr @dsicm_prepare._entry, ptr @dsicm_prepare._entry_ptr, ptr @dsicm_probe._entry, ptr @dsicm_probe._entry_ptr, ptr @dsicm_probe_of._entry, ptr @dsicm_probe_of._entry_ptr, ptr @dsicm_unprepare._entry, ptr @dsicm_unprepare._entry_ptr, ptr @dsicm_driver, ptr @.str, ptr @dsicm_of_match, ptr @taal_data, ptr @himalaya_data, ptr @droid4_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dsicm_probe.__key, ptr @.str.5, ptr @dsicm_panel_funcs, ptr @dsicm_bl_ops, ptr @dsicm_attr_group, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dsicm_attrs, ptr @dev_attr_num_dsi_errors, ptr @dev_attr_hw_revision, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taal_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @himalaya_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @droid4_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_power_on._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsicm_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_num_dsi_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @dsicm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsicm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @dsicm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsicm_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsicm_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsicm_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 284, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup52_crit_edge, label %if.end7

do.end.cleanup52_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end7:                                          ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dsi, ptr %call.i, align 4
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %panel_data = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %panel_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %panel_data, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end7.cleanup52_crit_edge, label %if.end13

if.end7.cleanup52_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end13:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 3) #8
  %reset_gpio.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  br label %cleanup52

if.end.i:                                         ; preds = %if.end13
  %mode1.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2
  %panel_data.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %panel_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %conv.i = trunc i32 %10 to i16
  %htotal.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %htotal.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %htotal.i, align 2
  %hsync_end.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %hsync_end.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %hsync_start.i, align 2
  %hdisplay.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %hdisplay.i, align 4
  %yres.i = getelementptr inbounds %struct.dsic_panel_data, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres.i, align 4
  %conv9.i = trunc i32 %16 to i16
  %vtotal.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9.i, ptr %vtotal.i, align 4
  %vsync_end.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9.i, ptr %vsync_end.i, align 2
  %vsync_start.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv9.i, ptr %vsync_start.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv9.i, ptr %vdisplay.i, align 2
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %yres.i, align 4
  %mul.i = mul i32 %22, %21
  %refresh.i = getelementptr inbounds %struct.dsic_panel_data, ptr %8, i32 0, i32 2
  %23 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %refresh.i, align 4
  %mul15.i = mul i32 %mul.i, %24
  %div.i = udiv i32 %mul15.i, 1000
  %25 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %mode1.i, align 4
  %width_mm.i = getelementptr inbounds %struct.dsic_panel_data, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %width_mm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width_mm.i, align 4
  %conv17.i = trunc i32 %27 to i16
  %width_mm18.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 26
  %28 = ptrtoint ptr %width_mm18.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv17.i, ptr %width_mm18.i, align 2
  %height_mm.i = getelementptr inbounds %struct.dsic_panel_data, ptr %8, i32 0, i32 4
  %29 = ptrtoint ptr %height_mm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height_mm.i, align 4
  %conv20.i = trunc i32 %30 to i16
  %height_mm21.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 27
  %31 = ptrtoint ptr %height_mm21.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv20.i, ptr %height_mm21.i, align 4
  %type.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 2, i32 28
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 72, ptr %type.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %mode1.i) #8
  %supplies.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 10
  %33 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.12, ptr %supplies.i, align 4
  %arrayidx23.i = getelementptr %struct.panel_drv_data, ptr %4, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.13, ptr %arrayidx23.i, align 4
  %call27.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i, label %if.end29.i, label %if.end.i.cleanup52_crit_edge

if.end.i.cleanup52_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end29.i:                                       ; preds = %if.end.i
  %call31.i = tail call ptr @devm_of_find_backlight(ptr noundef %dev1) #8
  %cmp.i79.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call31.i to i32
  br label %cleanup52

if.end35.i:                                       ; preds = %if.end29.i
  %tobool36.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %extbldev.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 5
  %36 = ptrtoint ptr %extbldev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call31.i, ptr %extbldev.i, align 4
  br label %do.body18

if.else.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_dsi_backlight.i = getelementptr inbounds %struct.panel_drv_data, ptr %4, i32 0, i32 11
  %37 = ptrtoint ptr %use_dsi_backlight.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %use_dsi_backlight.i, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.else.i, %if.then37.i
  %lock = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @dsicm_probe.__key) #8
  %reset_gpio.i97 = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %reset_gpio.i97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reset_gpio.i97, align 4
  tail call void @gpiod_set_value(ptr noundef %39, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #8
  %41 = ptrtoint ptr %reset_gpio.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reset_gpio.i97, align 4
  tail call void @gpiod_set_value(ptr noundef %42, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #8
  %44 = ptrtoint ptr %reset_gpio.i97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reset_gpio.i97, align 4
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %panel = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @dsicm_panel_funcs, i32 noundef 16) #8
  %use_dsi_backlight = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 11
  %46 = ptrtoint ptr %use_dsi_backlight to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %use_dsi_backlight, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool21.not = icmp eq i8 %47, 0
  br i1 %tobool21.not, label %do.body18.if.end30_crit_edge, label %if.then22

do.body18.if.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then22:                                        ; preds = %do.body18
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #8
  %48 = call ptr @memset(ptr %props, i32 0, i32 28)
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %49 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 255, ptr %max_brightness, align 4
  %type = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type, align 4
  %init_name.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i98 = icmp eq ptr %52, null
  br i1 %tobool.not.i98, label %if.end.i99, label %if.then22.dev_name.exit_crit_edge

if.then22.dev_name.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i99:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i99, %if.then22.dev_name.exit_crit_edge
  %retval.0.i100 = phi ptr [ %54, %if.end.i99 ], [ %52, %if.then22.dev_name.exit_crit_edge ]
  %call24 = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i100, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @dsicm_bl_ops, ptr noundef nonnull %props) #8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bldev29 = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %bldev29 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call24, ptr %bldev29, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #8
  br label %if.end30

cleanup:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %call24 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #8
  br label %err_bl

if.end30:                                         ; preds = %cleanup.thread, %do.body18.if.end30_crit_edge
  %call31 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @dsicm_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %err_bl

if.end37:                                         ; preds = %if.end30
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %57 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %58 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %59 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1536, ptr %mode_flags, align 8
  %60 = ptrtoint ptr %panel_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %panel_data, align 4
  %max_hs_rate = getelementptr inbounds %struct.dsic_panel_data, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %max_hs_rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_hs_rate, align 4
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 7
  %64 = ptrtoint ptr %hs_rate to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hs_rate, align 4
  %max_lp_rate = getelementptr inbounds %struct.dsic_panel_data, ptr %61, i32 0, i32 6
  %65 = ptrtoint ptr %max_lp_rate to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_lp_rate, align 4
  %lp_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 8
  %67 = ptrtoint ptr %lp_rate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %lp_rate, align 8
  call void @drm_panel_add(ptr noundef %panel) #8
  %call41 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %err_dsi_attach, label %if.end37.cleanup52_crit_edge

if.end37.cleanup52_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

err_dsi_attach:                                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_panel_remove(ptr noundef %panel) #8
  call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @dsicm_attr_group) #8
  br label %err_bl

err_bl:                                           ; preds = %err_dsi_attach, %do.end36, %cleanup
  %r.1 = phi i32 [ %56, %cleanup ], [ %call31, %do.end36 ], [ %call41, %err_dsi_attach ]
  %extbldev = getelementptr inbounds %struct.panel_drv_data, ptr %call.i, i32 0, i32 5
  %68 = ptrtoint ptr %extbldev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %extbldev, align 4
  %tobool47.not = icmp eq ptr %69, null
  br i1 %tobool47.not, label %err_bl.cleanup52_crit_edge, label %if.then48

err_bl.cleanup52_crit_edge:                       ; preds = %err_bl
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.then48:                                        ; preds = %err_bl
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.backlight_device, ptr %69, i32 0, i32 6
  call void @put_device(ptr noundef %dev50) #8
  br label %cleanup52

cleanup52:                                        ; preds = %if.then48, %err_bl.cleanup52_crit_edge, %if.end37.cleanup52_crit_edge, %if.then33.i, %if.end.i.cleanup52_crit_edge, %if.then.i, %if.end7.cleanup52_crit_edge, %do.end.cleanup52_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup52_crit_edge ], [ -19, %if.end7.cleanup52_crit_edge ], [ 0, %if.end37.cleanup52_crit_edge ], [ %r.1, %if.then48 ], [ %r.1, %err_bl.cleanup52_crit_edge ], [ %call27.i, %if.end.i.cleanup52_crit_edge ], [ %6, %if.then.i ], [ %35, %if.then33.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsicm_remove.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsicm_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsicm_remove.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.37) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #8
  %panel = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #8
  %dev5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void @sysfs_remove_group(ptr noundef %dev5, ptr noundef nonnull @dsicm_attr_group) #8
  %extbldev = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extbldev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extbldev, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev9) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr i8, ptr %panel, i32 252
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_enable(ptr noundef %panel) #2 align 64 {
entry:
  %param.addr.i80.i = alloca i8, align 1
  %param.addr.i.i = alloca i8, align 1
  %id1.i = alloca i8, align 1
  %id2.i = alloca i8, align 1
  %id3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %lock = getelementptr i8, ptr %panel, i32 136
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #8
  %0 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %id1.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i) #8
  %1 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id2.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i) #8
  %2 = ptrtoint ptr %id3.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id3.i, align 1, !annotation !123
  %reset_gpio.i.i = getelementptr i8, ptr %panel, i32 248
  %3 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #8
  %6 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #8
  %9 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %14, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  tail call fastcc void @hw_guard_wait(ptr noundef %add.ptr.i) #8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.dsicm_power_on.exit_crit_edge

entry.dsicm_power_on.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end.i:                                         ; preds = %entry
  %hw_guard_wait.i.i.i = getelementptr i8, ptr %panel, i32 240
  %17 = ptrtoint ptr %hw_guard_wait.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %hw_guard_wait.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %18, 12
  %hw_guard_end.i.i.i = getelementptr i8, ptr %panel, i32 236
  %19 = ptrtoint ptr %hw_guard_end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i.i.i, ptr %hw_guard_end.i.i.i, align 4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i = call i32 @mipi_dsi_dcs_read(ptr noundef %21, i8 noundef zeroext -38, ptr noundef nonnull %id1.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i77.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i77.i, label %if.end.i78.i, label %if.end.i.dsicm_power_on.exit_crit_edge

if.end.i.dsicm_power_on.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end.i78.i:                                     ; preds = %if.end.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %call.i16.i.i = call i32 @mipi_dsi_dcs_read(ptr noundef %23, i8 noundef zeroext -37, ptr noundef nonnull %id2.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i16.i.i, 0
  br i1 %tobool2.not.i.i, label %dsicm_get_id.exit.i, label %if.end.i78.i.dsicm_power_on.exit_crit_edge

if.end.i78.i.dsicm_power_on.exit_crit_edge:       ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

dsicm_get_id.exit.i:                              ; preds = %if.end.i78.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %call.i17.i.i = call i32 @mipi_dsi_dcs_read(ptr noundef %25, i8 noundef zeroext -36, ptr noundef nonnull %id3.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool2.not.i = icmp eq i32 %call.i17.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %dsicm_get_id.exit.i.dsicm_power_on.exit_crit_edge

dsicm_get_id.exit.i.dsicm_power_on.exit_crit_edge: ; preds = %dsicm_get_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end4.i:                                        ; preds = %dsicm_get_id.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.addr.i.i) #8
  %26 = ptrtoint ptr %param.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %param.addr.i.i, align 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %call.i79.i = call i32 @mipi_dsi_dcs_write(ptr noundef %28, i8 noundef zeroext 81, ptr noundef nonnull %param.addr.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool6.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.dsicm_power_on.exit_crit_edge

if.end4.i.dsicm_power_on.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.addr.i80.i) #8
  %29 = ptrtoint ptr %param.addr.i80.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 36, ptr %param.addr.i80.i, align 1
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %call.i81.i = call i32 @mipi_dsi_dcs_write(ptr noundef %31, i8 noundef zeroext 83, ptr noundef nonnull %param.addr.i80.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.addr.i80.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %tobool10.not.i = icmp eq i32 %call.i81.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.dsicm_power_on.exit_crit_edge

if.end8.i.dsicm_power_on.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end12.i:                                       ; preds = %if.end8.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %call14.i = call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %33, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.dsicm_power_on.exit_crit_edge

if.end12.i.dsicm_power_on.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end17.i:                                       ; preds = %if.end12.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %hdisplay.i.i = getelementptr i8, ptr %panel, i32 28
  %36 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay.i.i, align 4
  %sub.i.i = add i16 %37, -1
  %call.i82.i = call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %35, i16 noundef zeroext 0, i16 noundef zeroext %sub.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %cmp.i.i = icmp slt i32 %call.i82.i, 0
  br i1 %cmp.i.i, label %if.end17.i.dsicm_power_on.exit_crit_edge, label %dsicm_set_update_window.exit.i

if.end17.i.dsicm_power_on.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

dsicm_set_update_window.exit.i:                   ; preds = %if.end17.i
  %vdisplay.i.i = getelementptr i8, ptr %panel, i32 38
  %38 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay.i.i, align 2
  %sub6.i.i = add i16 %39, -1
  %call8.i.i = call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %35, i16 noundef zeroext 0, i16 noundef zeroext %sub6.i.i) #8
  %40 = call i32 @llvm.smin.i32(i32 %call8.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %tobool19.not.i = icmp sgt i32 %call8.i.i, -1
  br i1 %tobool19.not.i, label %if.end21.i, label %dsicm_set_update_window.exit.i.dsicm_power_on.exit_crit_edge

dsicm_set_update_window.exit.i.dsicm_power_on.exit_crit_edge: ; preds = %dsicm_set_update_window.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end21.i:                                       ; preds = %dsicm_set_update_window.exit.i
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %call23.i = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.dsicm_power_on.exit_crit_edge

if.end21.i.dsicm_power_on.exit_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.end26.i:                                       ; preds = %if.end21.i
  %panel_data.i = getelementptr i8, ptr %panel, i32 244
  %43 = ptrtoint ptr %panel_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %panel_data.i, align 4
  %te_support.i = getelementptr inbounds %struct.dsic_panel_data, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %te_support.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %te_support.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool27.not.i = icmp eq i8 %46, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.then28.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end26.i
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %call30.i = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then28.i.if.end34.i_crit_edge, label %if.then28.i.dsicm_power_on.exit_crit_edge

if.then28.i.dsicm_power_on.exit_crit_edge:        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit

if.then28.i.if.end34.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i.if.end34.i_crit_edge, %if.end26.i.if.end34.i_crit_edge
  call void @msleep(i32 noundef 100) #8
  %enabled.i = getelementptr i8, ptr %panel, i32 277
  %49 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %enabled.i, align 1
  %intro_printed.i = getelementptr i8, ptr %panel, i32 278
  %50 = ptrtoint ptr %intro_printed.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %intro_printed.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool35.not.i = icmp eq i8 %51, 0
  br i1 %tobool35.not.i, label %do.end.i, label %if.end34.i.dsicm_power_on.exit.thread_crit_edge

if.end34.i.dsicm_power_on.exit.thread_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_power_on.exit.thread

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id1.i, align 1
  %conv.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %id2.i, align 1
  %conv38.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id3.i, align 1
  %conv39.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i, i32 noundef %conv38.i, i32 noundef %conv39.i) #11
  %60 = ptrtoint ptr %intro_printed.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %intro_printed.i, align 2
  br label %dsicm_power_on.exit.thread

dsicm_power_on.exit.thread:                       ; preds = %do.end.i, %if.end34.i.dsicm_power_on.exit.thread_crit_edge
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %mode_flags43.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %mode_flags43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode_flags43.i, align 8
  %and.i = and i32 %64, -2049
  store i32 %and.i, ptr %mode_flags43.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #8
  br label %if.end

dsicm_power_on.exit:                              ; preds = %if.then28.i.dsicm_power_on.exit_crit_edge, %if.end21.i.dsicm_power_on.exit_crit_edge, %dsicm_set_update_window.exit.i.dsicm_power_on.exit_crit_edge, %if.end17.i.dsicm_power_on.exit_crit_edge, %if.end12.i.dsicm_power_on.exit_crit_edge, %if.end8.i.dsicm_power_on.exit_crit_edge, %if.end4.i.dsicm_power_on.exit_crit_edge, %dsicm_get_id.exit.i.dsicm_power_on.exit_crit_edge, %if.end.i78.i.dsicm_power_on.exit_crit_edge, %if.end.i.dsicm_power_on.exit_crit_edge, %entry.dsicm_power_on.exit_crit_edge
  %r.0.i = phi i32 [ %call.i17.i.i, %dsicm_get_id.exit.i.dsicm_power_on.exit_crit_edge ], [ %call.i79.i, %if.end4.i.dsicm_power_on.exit_crit_edge ], [ %call.i81.i, %if.end8.i.dsicm_power_on.exit_crit_edge ], [ %call14.i, %if.end12.i.dsicm_power_on.exit_crit_edge ], [ %40, %dsicm_set_update_window.exit.i.dsicm_power_on.exit_crit_edge ], [ %call23.i, %if.end21.i.dsicm_power_on.exit_crit_edge ], [ %call30.i, %if.then28.i.dsicm_power_on.exit_crit_edge ], [ %call.i.i, %entry.dsicm_power_on.exit_crit_edge ], [ %call.i16.i.i, %if.end.i78.i.dsicm_power_on.exit_crit_edge ], [ %call.i.i.i, %if.end.i.dsicm_power_on.exit_crit_edge ], [ %call.i82.i, %if.end17.i.dsicm_power_on.exit_crit_edge ]
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  %dev48.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %66, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.22) #11
  %67 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value(ptr noundef %68, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 2147480) #8
  %70 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value(ptr noundef %71, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 2147480) #8
  %73 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value(ptr noundef %74, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not, label %dsicm_power_on.exit.if.end_crit_edge, label %do.end

dsicm_power_on.exit.if.end_crit_edge:             ; preds = %dsicm_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %dsicm_power_on.exit.if.end_crit_edge, %dsicm_power_on.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #8
  %bldev.i = getelementptr i8, ptr %panel, i32 228
  %75 = ptrtoint ptr %bldev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bldev.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.if.end6.i_crit_edge

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end
  %extbldev.i = getelementptr i8, ptr %panel, i32 232
  %77 = ptrtoint ptr %extbldev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extbldev.i, align 4
  %tobool2.not.i12 = icmp eq ptr %78, null
  br i1 %tobool2.not.i12, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.if.end6.i_crit_edge
  %backlight.0.i = phi ptr [ %76, %if.end.if.end6.i_crit_edge ], [ %78, %if.else.i.if.end6.i_crit_edge ]
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 3
  %79 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 5
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -4, ptr %state.i, align 4
  %81 = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %81, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %backlight.0.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #8
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %backlight.0.i, i32 0, i32 3
  %83 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i13 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i13, label %if.end6.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i.i

if.end6.i.cleanup.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i14 = icmp eq ptr %86, null
  br i1 %tobool2.not.i.i14, label %land.lhs.true.i.i.cleanup.sink.split_crit_edge, label %if.then.i.i

land.lhs.true.i.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i15 = call i32 %86(ptr noundef nonnull %backlight.0.i) #8
  br label %cleanup.sink.split

do.end:                                           ; preds = %dsicm_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %88, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %r.0.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.then.i.i, %land.lhs.true.i.i.cleanup.sink.split_crit_edge, %if.end6.i.cleanup.sink.split_crit_edge
  %update_lock.i.i.sink = phi ptr [ %lock, %do.end ], [ %update_lock.i.i, %if.then.i.i ], [ %update_lock.i.i, %land.lhs.true.i.i.cleanup.sink.split_crit_edge ], [ %update_lock.i.i, %if.end6.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %r.0.i, %do.end ], [ 0, %if.then.i.i ], [ 0, %land.lhs.true.i.i.cleanup.sink.split_crit_edge ], [ 0, %if.end6.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i.i.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_disable(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %bldev.i = getelementptr i8, ptr %panel, i32 228
  %0 = ptrtoint ptr %bldev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bldev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.else.i:                                        ; preds = %entry
  %extbldev.i = getelementptr i8, ptr %panel, i32 232
  %2 = ptrtoint ptr %extbldev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extbldev.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.else.i.dsicm_bl_power.exit_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.else.i.dsicm_bl_power.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsicm_bl_power.exit

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %backlight.0.i = phi ptr [ %1, %entry.if.end6.i_crit_edge ], [ %3, %if.else.i.if.end6.i_crit_edge ]
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fb_blank.i, align 4
  %state17.i = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %state17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state17.i, align 4
  %or.i = or i32 %6, 3
  store i32 %or.i, ptr %state17.i, align 4
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %backlight.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %7, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %backlight.0.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #8
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %backlight.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end6.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %12(ptr noundef nonnull %backlight.0.i) #8
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end6.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #8
  br label %dsicm_bl_power.exit

dsicm_bl_power.exit:                              ; preds = %backlight_update_status.exit.i, %if.else.i.dsicm_bl_power.exit_crit_edge
  %lock = getelementptr i8, ptr %panel, i32 136
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled.i = getelementptr i8, ptr %panel, i32 277
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled.i, align 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i6, label %if.then.i, label %dsicm_bl_power.exit.do.end.i_crit_edge

dsicm_bl_power.exit.do.end.i_crit_edge:           ; preds = %dsicm_bl_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %dsicm_bl_power.exit
  tail call fastcc void @hw_guard_wait(ptr noundef %add.ptr.i) #8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i7 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %tobool.not.i.i8 = icmp eq i32 %call.i.i7, 0
  br i1 %tobool.not.i.i8, label %if.end.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_guard_wait.i.i.i = getelementptr i8, ptr %panel, i32 240
  %18 = ptrtoint ptr %hw_guard_wait.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %hw_guard_wait.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %19, 12
  %hw_guard_end.i.i.i = getelementptr i8, ptr %panel, i32 236
  %20 = ptrtoint ptr %hw_guard_end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i.i.i, ptr %hw_guard_end.i.i.i, align 4
  br label %dsicm_power_off.exit

do.end.i:                                         ; preds = %if.then.i.do.end.i_crit_edge, %dsicm_bl_power.exit.do.end.i_crit_edge
  %r.0.ph.i = phi i32 [ %call.i.i7, %if.then.i.do.end.i_crit_edge ], [ %call.i, %dsicm_bl_power.exit.do.end.i_crit_edge ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %22, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  %reset_gpio.i.i = getelementptr i8, ptr %panel, i32 248
  %23 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #8
  %26 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %27, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #8
  %29 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #8
  br label %dsicm_power_off.exit

dsicm_power_off.exit:                             ; preds = %do.end.i, %if.end.i
  %r.015.i = phi i32 [ %r.0.ph.i, %do.end.i ], [ 0, %if.end.i ]
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %r.015.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr i8, ptr %panel, i32 252
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_get_modes(ptr noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mode1 = getelementptr i8, ptr %panel, i32 24
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %mode1) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  %hdisplay = getelementptr i8, ptr %panel, i32 28
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %5 to i32
  %vdisplay = getelementptr i8, ptr %panel, i32 38
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %conv6 = zext i16 %7 to i32
  %8 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv6, i32 noundef %9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %panel_data = getelementptr i8, ptr %panel, i32 244
  %10 = ptrtoint ptr %panel_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel_data, align 4
  %width_mm = getelementptr inbounds %struct.dsic_panel_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %width_mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width_mm, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %14 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %display_info, align 8
  %15 = load ptr, ptr %panel_data, align 4
  %height_mm = getelementptr inbounds %struct.dsic_panel_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height_mm, align 4
  %height_mm11 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %height_mm11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height_mm11, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_guard_wait(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_guard_end = getelementptr inbounds %struct.panel_drv_data, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %hw_guard_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_guard_end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end63_crit_edge

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true:                                    ; preds = %entry
  %hw_guard_wait = getelementptr inbounds %struct.panel_drv_data, ptr %ddata, i32 0, i32 7
  %3 = ptrtoint ptr %hw_guard_wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_guard_wait, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp1.not = icmp ugt i32 %sub, %4
  br i1 %cmp1.not, label %land.lhs.true.if.end63_crit_edge, label %__here

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@hw_guard_wait, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 2, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !124
  %call62 = tail call i32 @schedule_timeout(i32 noundef %sub) #8
  br label %if.end63

if.end63:                                         ; preds = %__here, %land.lhs.true.if.end63_crit_edge, %entry.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsicm_bl_update_status(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %param.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.backlight_device, ptr %dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %level.0 = phi i32 [ %7, %if.then ], [ 0, %land.lhs.true.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsicm_bl_update_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsicm_bl_update_status, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !121

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsicm_bl_update_status.__UNIQUE_ID_ddebug303, ptr noundef %dev9, ptr noundef nonnull @.str.31, i32 noundef %level.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %lock = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %do.end.if.end14_crit_edge, label %if.then12

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %level.0 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.addr.i)
  %12 = ptrtoint ptr %param.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %param.addr.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @mipi_dsi_dcs_write(ptr noundef %14, i8 noundef zeroext 81, ptr noundef nonnull %param.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.addr.i)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  %r.0 = phi i32 [ %call.i, %if.then12 ], [ 0, %do.end.if.end14_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %r.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsicm_bl_get_intensity(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 8
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @num_dsi_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %errors = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %errors) #8
  %2 = ptrtoint ptr %errors to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %errors, align 1
  %lock = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 @mipi_dsi_dcs_read(ptr noundef %6, i8 noundef zeroext 5, ptr noundef nonnull %errors, i32 noundef 1) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %errors, align 1
  %conv = zext i8 %8 to i32
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call.i, %if.end.cleanup_crit_edge ], [ -19, %if.end.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %errors) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %id1 = alloca i8, align 1
  %id2 = alloca i8, align 1
  %id3 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1) #8
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id1, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2) #8
  %3 = ptrtoint ptr %id2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %id2, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3) #8
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %id3, align 1, !annotation !123
  %lock = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.panel_drv_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.then

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @mipi_dsi_dcs_read(ptr noundef %8, i8 noundef zeroext -38, ptr noundef nonnull %id1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end.thread_crit_edge

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i16.i = call i32 @mipi_dsi_dcs_read(ptr noundef %10, i8 noundef zeroext -37, ptr noundef nonnull %id2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool2.not.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.if.end.thread_crit_edge

if.end.i.if.end.thread_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.i.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %r.0.ph = phi i32 [ %call.i16.i, %if.end.i.if.end.thread_crit_edge ], [ %call.i.i, %if.then.if.end.thread_crit_edge ], [ -19, %entry.if.end.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i17.i = call i32 @mipi_dsi_dcs_read(ptr noundef %12, i8 noundef zeroext -36, ptr noundef nonnull %id3, i32 noundef 1) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool3.not = icmp eq i32 %call.i17.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id1, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %id2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id2, align 1
  %conv6 = zext i8 %16 to i32
  %17 = ptrtoint ptr %id3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id3, align 1
  %conv7 = zext i8 %18 to i32
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ %call.i17.i, %if.end.cleanup_crit_edge ], [ %r.0.ph, %if.end.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !95, !97, !99, !100, !102, !104, !105, !107, !109, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_panel_dsi_cm__306_667_dsicm_driver_init6, !1, !"__initcall__kmod_panel_dsi_cm__306_667_dsicm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 667, i32 1}
!2 = !{ptr @__exitcall_dsicm_driver_exit, !1, !"__exitcall_dsicm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 669, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 670, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 671, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 663, i32 11}
!12 = !{ptr @dsicm_driver, !13, !"dsicm_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 659, i32 31}
!14 = !{ptr @dsicm_of_match, !15, !"dsicm_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 650, i32 34}
!16 = !{ptr @taal_data, !17, !"taal_data", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 617, i32 37}
!18 = !{ptr @himalaya_data, !19, !"himalaya_data", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 628, i32 37}
!20 = !{ptr @droid4_data, !21, !"droid4_data", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 639, i32 37}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 529, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dsicm_probe.__UNIQUE_ID_ddebug304, !23, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!28 = !{ptr @dsicm_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 546, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 570, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dsicm_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @dsicm_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 484, i32 48}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 487, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dsicm_probe_of._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dsicm_probe_of._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 502, i32 30}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 503, i32 30}
!48 = !{ptr @dsicm_panel_funcs, !49, !"dsicm_panel_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 469, i32 37}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 392, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dsicm_prepare._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dsicm_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 414, i32 2}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dsicm_enable._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dsicm_enable._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 350, i32 3}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dsicm_power_on._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @dsicm_power_on._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 359, i32 2}
!68 = !{ptr @dsicm_power_on._entry.21, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dsicm_power_on._entry_ptr.23, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 112, i32 3}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 377, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dsicm_power_off._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dsicm_power_off._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 426, i32 3}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dsicm_unprepare._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dsicm_unprepare._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 455, i32 3}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dsicm_get_modes._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dsicm_get_modes._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @dsicm_bl_ops, !88, !"dsicm_bl_ops", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 229, i32 35}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 207, i32 2}
!91 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dsicm_bl_update_status.__UNIQUE_ID_ddebug303, !90, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!93 = !{ptr @dsicm_attr_group, !94, !"dsicm_attr_group", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 283, i32 37}
!95 = !{ptr @dsicm_attrs, !96, !"dsicm_attrs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 277, i32 26}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 274, i32 8}
!99 = !{ptr @dev_attr_num_dsi_errors, !98, !"dev_attr_num_dsi_errors", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 251, i32 25}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 275, i32 8}
!104 = !{ptr @dev_attr_hw_revision, !103, !"dev_attr_hw_revision", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 271, i32 25}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-dsi-cm.c", i32 603, i32 2}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dsicm_remove.__UNIQUE_ID_ddebug305, !108, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148303469, i64 2148303474, i64 2148303487, i64 2148303531, i64 2148303565, i64 2148303586}
!122 = !{i8 0, i8 2}
!123 = !{!"auto-init"}
!124 = !{i64 2156156860}

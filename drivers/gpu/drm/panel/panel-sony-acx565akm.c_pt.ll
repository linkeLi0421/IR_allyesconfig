; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sony-acx565akm.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sony-acx565akm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.acx565akm_panel = type { %struct.drm_panel, ptr, ptr, ptr, %struct.mutex, ptr, [3 x i8], i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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

@__initcall__kmod_panel_sony_acx565akm__309_697_acx565akm_driver_init6 = internal global ptr @acx565akm_driver_init, section ".initcall6.init", align 4
@acx565akm_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @acx565akm_ids, ptr @acx565akm_probe, ptr @acx565akm_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @acx565akm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_acx565akm_driver_exit = internal global ptr @acx565akm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [46 x i8] c"panel_sony_acx565akm.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [65 x i8] c"panel_sony_acx565akm.description=Sony ACX565AKM LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [69 x i8] c"panel_sony_acx565akm.file=drivers/gpu/drm/panel/panel-sony-acx565akm\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [33 x i8] c"panel_sony_acx565akm.license=GPL\00", section ".modinfo", align 1
@acx565akm_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"acx565akm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-sony-acx565akm\00", [43 x i8] zeroinitializer }, align 32
@acx565akm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,acx565akm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@acx565akm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&lcd->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@acx565akm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 634, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acx565akm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-sony-acx565akm.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acx565akm_probe._entry_ptr = internal global ptr @acx565akm_probe._entry, section ".printk_index", align 4
@acx565akm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 640, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panel detection failed\0A\00", [40 x i8] zeroinitializer }, align 32
@acx565akm_probe._entry_ptr.10 = internal global ptr @acx565akm_probe._entry.8, section ".printk_index", align 4
@acx565akm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr null, ptr @acx565akm_enable, ptr @acx565akm_disable, ptr null, ptr @acx565akm_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@acx565akm_detect.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel_sony_acx565akm\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acx565akm_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"LCD panel %s by bootloader (status 0x%04x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled \00", [22 x i8] zeroinitializer }, align 32
@acx565akm_detect.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.16, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MIPI display ID: %02x%02x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acx565akm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l4f00311\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lph8923\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ls041y3\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@acx565akm_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.5, i32 600, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown display ID\0A\00", [44 x i8] zeroinitializer }, align 32
@acx565akm_detect._entry_ptr = internal global ptr @acx565akm_detect._entry, section ".printk_index", align 4
@acx565akm_detect._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.5, i32 608, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s rev %02x panel detected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@acx565akm_detect._entry_ptr.26 = internal global ptr @acx565akm_detect._entry.23, section ".printk_index", align 4
@acx565akm_transfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acx565akm_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_sync %d\0A\00", [19 x i8] zeroinitializer }, align 32
@__const.acx565akm_backlight_init.props = private unnamed_addr constant %struct.backlight_properties { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@acx565akm_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @acx565akm_bl_update_status, ptr @acx565akm_bl_get_intensity, ptr null }, [16 x i8] zeroinitializer }, align 32
@acx565akm_cabc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @acx565akm_cabc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@acx565akm_backlight_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 372, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s failed to create sysfs files\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acx565akm_backlight_init\00", [39 x i8] zeroinitializer }, align 32
@acx565akm_backlight_init._entry_ptr = internal global ptr @acx565akm_backlight_init._entry, section ".printk_index", align 4
@acx565akm_cabc_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_cabc_mode, ptr @dev_attr_cabc_available_modes, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_cabc_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cabc_mode_show, ptr @cabc_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cabc_available_modes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cabc_available_modes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cabc_mode\00", [22 x i8] zeroinitializer }, align 32
@acx565akm_cabc_modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ui\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"still-image\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moving-image\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cabc_available_modes\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@acx565akm_power_on.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acx565akm_power_on\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel already enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@acx565akm_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24000, i16 800, i16 828, i16 832, i16 856, i16 0, i16 480, i16 483, i16 486, i16 490, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 77, i16 46, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 16, i64 41, i64 69, i64 131]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"acx565akm_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 687, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"acx565akm_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 680, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 692, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"acx565akm_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 673, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 630, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 632, i32 46 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 634, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 640, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"acx565akm_funcs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 544, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 571, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 576, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 582, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 588, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 592, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 596, i32 15 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 599, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 600, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 607, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 120, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"acx565akm_bl_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 344, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"acx565akm_cabc_attr_group\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 261, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 371, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"acx565akm_cabc_attrs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 255, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [19 x i8] c"dev_attr_cabc_mode\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [30 x i8] c"dev_attr_cabc_available_modes\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 252, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"acx565akm_cabc_modes\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 172, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 196, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 173, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 174, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 175, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 176, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 253, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 244, i32 29 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 244, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 244, i32 47 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 438, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"acx565akm_mode\00", align 1
@___asan_gen_.212 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-sony-acx565akm.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 507, i32 38 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_acx565akm_driver_exit, ptr @__initcall__kmod_panel_sony_acx565akm__309_697_acx565akm_driver_init6, ptr @acx565akm_backlight_init._entry, ptr @acx565akm_backlight_init._entry_ptr, ptr @acx565akm_detect._entry, ptr @acx565akm_detect._entry.23, ptr @acx565akm_detect._entry_ptr, ptr @acx565akm_detect._entry_ptr.26, ptr @acx565akm_driver_exit, ptr @acx565akm_probe._entry, ptr @acx565akm_probe._entry.8, ptr @acx565akm_probe._entry_ptr, ptr @acx565akm_probe._entry_ptr.10, ptr @acx565akm_driver, ptr @acx565akm_ids, ptr @.str, ptr @acx565akm_of_match, ptr @acx565akm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @acx565akm_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @acx565akm_bl_ops, ptr @acx565akm_cabc_attr_group, ptr @.str.29, ptr @.str.30, ptr @acx565akm_cabc_attrs, ptr @dev_attr_cabc_mode, ptr @dev_attr_cabc_available_modes, ptr @.str.31, ptr @acx565akm_cabc_modes, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @acx565akm_mode], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_detect._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_cabc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_backlight_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_cabc_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cabc_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cabc_available_modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_cabc_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx565akm_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @acx565akm_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acx565akm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @acx565akm_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_probe(ptr noundef %spi) #2 align 64 {
entry:
  %bv.i.i = alloca i8, align 1
  %cabc_ctrl.i.i = alloca i8, align 1
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 160, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %mode, align 8
  %spi1 = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi1, align 4
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @acx565akm_probe.__key) #9
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 7) #9
  %reset_gpio = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #12
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call fastcc i32 @acx565akm_detect(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %has_bc = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %has_bc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_bc, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #9
  %9 = call ptr @memcpy(ptr %props.i, ptr @__const.acx565akm_backlight_init.props, i32 28)
  %name.i = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %12 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi1, align 4
  %call.i53 = call ptr @backlight_device_register(ptr noundef %11, ptr noundef %13, ptr noundef nonnull %call.i, ptr noundef nonnull @acx565akm_bl_ops, ptr noundef nonnull %props.i) #9
  %backlight.i = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i53, ptr %backlight.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %acx565akm_backlight_init.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then22
  %has_cabc.i = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %has_cabc.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_cabc.i, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.i.acx565akm_backlight_init.exit.thread57_crit_edge, label %if.then6.i

if.end.i.acx565akm_backlight_init.exit.thread57_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_backlight_init.exit.thread57

if.then6.i:                                       ; preds = %if.end.i
  %dev8.i = getelementptr inbounds %struct.backlight_device, ptr %call.i53, i32 0, i32 6
  %call9.i = call i32 @sysfs_create_group(ptr noundef %dev8.i, ptr noundef nonnull @acx565akm_cabc_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i54 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i54, label %acx565akm_backlight_init.exit.thread, label %if.end14.i

acx565akm_backlight_init.exit.thread:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  %19 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backlight.i, align 4
  call void @backlight_device_unregister(ptr noundef %20) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cabc_ctrl.i.i) #9
  %21 = ptrtoint ptr %cabc_ctrl.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %cabc_ctrl.i.i, align 1, !annotation !124
  call fastcc void @acx565akm_transfer(ptr noundef nonnull %call.i, i32 noundef 86, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cabc_ctrl.i.i, i32 noundef 1) #9
  %22 = ptrtoint ptr %cabc_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cabc_ctrl.i.i, align 1
  %24 = and i8 %23, 3
  %and.i.i = zext i8 %24 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cabc_ctrl.i.i) #9
  %cabc_mode.i = getelementptr inbounds %struct.acx565akm_panel, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %cabc_mode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i.i, ptr %cabc_mode.i, align 4
  br label %acx565akm_backlight_init.exit.thread57

acx565akm_backlight_init.exit.thread57:           ; preds = %if.end14.i, %if.end.i.acx565akm_backlight_init.exit.thread57_crit_edge
  %26 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %backlight.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.backlight_properties, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %max_brightness.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bv.i.i) #9
  %29 = ptrtoint ptr %bv.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %bv.i.i, align 1, !annotation !124
  call fastcc void @acx565akm_transfer(ptr noundef nonnull %call.i, i32 noundef 82, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bv.i.i, i32 noundef 1) #9
  %30 = ptrtoint ptr %bv.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bv.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bv.i.i) #9
  %32 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %backlight.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i.i, ptr %33, align 8
  %35 = load ptr, ptr %backlight.i, align 4
  call fastcc void @acx565akm_bl_update_status_locked(ptr noundef %35) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #9
  br label %if.end27

acx565akm_backlight_init.exit:                    ; preds = %if.then22
  %36 = ptrtoint ptr %call.i53 to i32
  %37 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %backlight.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #9
  %cmp24 = icmp slt ptr %call.i53, null
  br i1 %cmp24, label %acx565akm_backlight_init.exit.cleanup_crit_edge, label %acx565akm_backlight_init.exit.if.end27_crit_edge

acx565akm_backlight_init.exit.if.end27_crit_edge: ; preds = %acx565akm_backlight_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

acx565akm_backlight_init.exit.cleanup_crit_edge:  ; preds = %acx565akm_backlight_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %acx565akm_backlight_init.exit.if.end27_crit_edge, %acx565akm_backlight_init.exit.thread57, %if.end20.if.end27_crit_edge
  %38 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi1, align 4
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %39, ptr noundef nonnull @acx565akm_funcs, i32 noundef 17) #9
  call void @drm_panel_add(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %acx565akm_backlight_init.exit.cleanup_crit_edge, %acx565akm_backlight_init.exit.thread, %do.end18, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end9 ], [ %call14, %do.end18 ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %36, %acx565akm_backlight_init.exit.cleanup_crit_edge ], [ %call9.i, %acx565akm_backlight_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #9
  %has_bc = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %has_bc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_bc, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %has_cabc.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %has_cabc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_cabc.i, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.acx565akm_backlight_cleanup.exit_crit_edge, label %if.then.i

if.then.acx565akm_backlight_cleanup.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_backlight_cleanup.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %backlight.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlight.i, align 4
  %dev.i = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev.i, ptr noundef nonnull @acx565akm_cabc_attr_group) #9
  br label %acx565akm_backlight_cleanup.exit

acx565akm_backlight_cleanup.exit:                 ; preds = %if.then.i, %if.then.acx565akm_backlight_cleanup.exit_crit_edge
  %backlight1.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %backlight1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backlight1.i, align 4
  tail call void @backlight_device_unregister(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %acx565akm_backlight_cleanup.exit, %entry.if.end_crit_edge
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #9
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acx565akm_detect(ptr noundef %lcd) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !124
  %reset_gpio = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 2
  %1 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %2, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  call fastcc void @acx565akm_transfer(ptr noundef %lcd, i32 noundef 9, ptr noundef null, i32 noundef 0, ptr noundef nonnull %value, i32 noundef 4) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = and i32 %4, 132096
  call void @__sanitizer_cov_trace_const_cmp4(i32 132096, i32 %5)
  %6 = icmp eq i32 %5, 132096
  %enabled = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 11
  %frombool = zext i1 %6 to i8
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %enabled, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_detect.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_detect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spi = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %8 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi, align 4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool8.not, ptr @.str.15, ptr @.str.14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_detect.__UNIQUE_ID_ddebug307, ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %display_id = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 6
  call fastcc void @acx565akm_transfer(ptr noundef %lcd, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %display_id, i32 noundef 3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_detect.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_detect, %if.then21)) #9
          to label %do.end33 [label %if.then21], !srcloc !125

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %spi22 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %12 = ptrtoint ptr %spi22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi22, align 4
  %14 = ptrtoint ptr %display_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %display_id, align 4
  %conv = zext i8 %15 to i32
  %arrayidx26 = getelementptr %struct.acx565akm_panel, ptr %lcd, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %arrayidx29 = getelementptr %struct.acx565akm_panel, ptr %lcd, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 2
  %conv30 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_detect.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv27, i32 noundef %conv30) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then21, %do.end
  %20 = ptrtoint ptr %display_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %display_id, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %sw.default [
    i8 16, label %sw.bb
    i8 41, label %sw.bb37
    i8 69, label %sw.bb40
    i8 -125, label %sw.bb43
  ]

sw.bb:                                            ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %model = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 7
  %23 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %model, align 4
  %name = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.17, ptr %name, align 4
  %has_bc = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 9
  %25 = ptrtoint ptr %has_bc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %has_bc, align 4
  %has_cabc = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 10
  %26 = ptrtoint ptr %has_cabc to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %has_cabc, align 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %model38 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 7
  %27 = ptrtoint ptr %model38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %model38, align 4
  %name39 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %28 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.18, ptr %name39, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %model41 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 7
  %29 = ptrtoint ptr %model41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %model41, align 4
  %name42 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %30 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.19, ptr %name42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %model44 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 7
  %31 = ptrtoint ptr %model44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %model44, align 4
  %name45 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %32 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.20, ptr %name45, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %33 = ptrtoint ptr %name46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.21, ptr %name46, align 4
  %spi50 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %34 = ptrtoint ptr %spi50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.22) #12
  br label %done

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb
  %arrayidx53 = getelementptr %struct.acx565akm_panel, ptr %lcd, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %37 to i32
  %revision = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 8
  %38 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv54, ptr %revision, align 4
  %spi58 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %39 = ptrtoint ptr %spi58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi58, align 4
  %name60 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 5
  %41 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name60, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.24, ptr noundef %42, i32 noundef %conv54) #12
  br label %done

done:                                             ; preds = %sw.epilog, %sw.default
  %ret.0 = phi i32 [ -19, %sw.default ], [ 0, %sw.epilog ]
  %43 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool63.not = icmp eq i8 %44, 0
  br i1 %tobool63.not, label %if.then64, label %done.if.end66_crit_edge

done.if.end66_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value(ptr noundef %46, i32 noundef 0) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %done.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acx565akm_transfer(ptr nocapture noundef readonly %lcd, i32 noundef %cmd, ptr noundef %wbuf, i32 noundef %wlen, ptr noundef %rbuf, i32 noundef %rlen) unnamed_addr #2 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  %m = alloca %struct.spi_message, align 4
  %xfer = alloca [5 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #9
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %xfer) #9
  %0 = getelementptr inbounds i8, ptr %m, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %4 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %6 = getelementptr inbounds i8, ptr %xfer, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 476)
  %and = and i32 %cmd, 255
  %8 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %cmd.addr, align 4
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd.addr, ptr %xfer, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rlen)
  %cmp = icmp sgt i32 %rlen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen)
  %cmp1 = icmp eq i32 %wlen, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %bits_per_word, align 1
  %shl = shl nuw nsw i32 %and, 1
  %13 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %cmd.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  br i1 %cmp1, label %spi_message_add_tail.exit.if.end7_crit_edge, label %if.then3

spi_message_add_tail.exit.if.end7_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %spi_message_add_tail.exit
  %incdec.ptr = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wbuf, ptr %incdec.ptr, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %19 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %wlen, ptr %len5, align 4
  %bits_per_word6 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 8
  %20 = ptrtoint ptr %bits_per_word6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %bits_per_word6, align 1
  %transfer_list.i42 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i42, ptr noundef %22, ptr noundef nonnull %m) #9
  br i1 %call.i.i.i44, label %if.end.i.i.i46, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i.i.i46:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i42, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i42, align 4
  %prev3.i.i.i45 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i45, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i42, ptr %22, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i.i46, %if.then3.if.end7_crit_edge, %spi_message_add_tail.exit.if.end7_crit_edge
  %x.0 = phi ptr [ %xfer, %spi_message_add_tail.exit.if.end7_crit_edge ], [ %incdec.ptr, %if.then3.if.end7_crit_edge ], [ %incdec.ptr, %if.end.i.i.i46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %tobool8.not = icmp eq i32 %rlen, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  %rx_buf = getelementptr %struct.spi_transfer, ptr %x.0, i32 1, i32 1
  %27 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rbuf, ptr %rx_buf, align 4
  %len11 = getelementptr %struct.spi_transfer, ptr %x.0, i32 1, i32 2
  %28 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rlen, ptr %len11, align 4
  %transfer_list.i48 = getelementptr %struct.spi_transfer, ptr %x.0, i32 1, i32 18
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i48, ptr noundef %30, ptr noundef nonnull %m) #9
  br i1 %call.i.i.i50, label %if.end.i.i.i52, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i.i.i52:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i48, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %m, ptr %transfer_list.i48, align 4
  %prev3.i.i.i51 = getelementptr %struct.spi_transfer, ptr %x.0, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i51, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i48, ptr %30, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i.i52, %if.then9.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %spi = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %36, ptr noundef nonnull %m) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %do.body, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_transfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_transfer, %if.then19)) #9
          to label %if.end22 [label %if.then19], !srcloc !125

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_transfer.__UNIQUE_ID_ddebug304, ptr noundef %38, ptr noundef nonnull @.str.28, i32 noundef %call) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %do.body, %if.end12.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %xfer) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acx565akm_bl_update_status_locked(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %ctrl.i = alloca i16, align 2
  %bv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %level.0 = phi i32 [ %7, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #9
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bv.i) #9
  %or.i = or i32 %level.0, 256
  %9 = ptrtoint ptr %bv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %bv.i, align 4
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 81, ptr noundef nonnull %bv.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 84, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ctrl.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %tobool.not.i = icmp eq i32 %level.0, 0
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctrl.i, align 2
  %12 = and i16 %11, -293
  %spec.select = select i1 %tobool.not.i, i16 256, i16 292
  %13 = or i16 %spec.select, %12
  store i16 %13, ptr %ctrl.i, align 2
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 83, ptr noundef nonnull %ctrl.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bv.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_bl_update_status(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.backlight_device, ptr %dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  tail call fastcc void @acx565akm_bl_update_status_locked(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_bl_get_intensity(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %bv.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.backlight_device, ptr %dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bv.i) #9
  %6 = ptrtoint ptr %bv.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %bv.i, align 1, !annotation !124
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 82, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bv.i, i32 noundef 1) #9
  %7 = ptrtoint ptr %bv.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bv.i, align 1
  %conv.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bv.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %intensity.0 = phi i32 [ %conv.i, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %intensity.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cabc_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_cabc = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_cabc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_cabc, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end:                                           ; preds = %entry
  %cabc_mode.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %cabc_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cabc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2 = icmp ult i32 %5, 4
  br i1 %cmp2, label %if.end.if.then3_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %mode.012 = phi i32 [ %5, %if.end.if.then3_crit_edge ], [ 0, %entry.if.then3_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @acx565akm_cabc_modes, i32 0, i32 %mode.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %mode_str.0 = phi ptr [ %7, %if.then3 ], [ @.str.21, %if.end.if.end4_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef %mode_str.0)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cabc_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cabc_ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2.not = icmp eq i32 %count, 0
  br i1 %cmp2.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4 = icmp eq i8 %3, 10
  %spec.select = select i1 %cmp4, i32 %sub, i32 %count
  %4 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %spec.select, label %if.end.if.end.1_crit_edge [
    i32 3, label %cleanup
    i32 0, label %if.end.cleanup26_crit_edge
  ]

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

cleanup:                                          ; preds = %if.end
  %call10 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.33, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup.if.end24_crit_edge, label %cleanup.if.end.1_crit_edge

cleanup.if.end.1_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.1:                                         ; preds = %cleanup.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %count.addr.16066 = phi i32 [ 3, %cleanup.if.end.1_crit_edge ], [ %spec.select, %if.end.if.end.1_crit_edge ]
  %sub.1 = add i32 %count.addr.16066, -1
  %arrayidx3.1 = getelementptr i8, ptr %buf, i32 %sub.1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp4.1 = icmp eq i8 %6, 10
  %spec.select.1 = select i1 %cmp4.1, i32 %sub.1, i32 %count.addr.16066
  %7 = zext i32 %spec.select.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %spec.select.1, label %if.end.1.if.end.2_crit_edge [
    i32 2, label %cleanup.1
    i32 0, label %if.end.1.cleanup26_crit_edge
  ]

if.end.1.cleanup26_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

cleanup.1:                                        ; preds = %if.end.1
  %call10.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.34, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp eq i32 %call10.1, 0
  br i1 %cmp11.1, label %cleanup.1.if.end19_crit_edge, label %cleanup.1.if.end.2_crit_edge

cleanup.1.if.end.2_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

cleanup.1.if.end19_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.2:                                         ; preds = %cleanup.1.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %count.addr.1.16975 = phi i32 [ 2, %cleanup.1.if.end.2_crit_edge ], [ %spec.select.1, %if.end.1.if.end.2_crit_edge ]
  %sub.2 = add i32 %count.addr.1.16975, -1
  %arrayidx3.2 = getelementptr i8, ptr %buf, i32 %sub.2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp4.2 = icmp eq i8 %9, 10
  %spec.select.2 = select i1 %cmp4.2, i32 %sub.2, i32 %count.addr.1.16975
  %10 = zext i32 %spec.select.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %spec.select.2, label %if.end.2.if.end.3_crit_edge [
    i32 11, label %cleanup.2
    i32 0, label %if.end.2.cleanup26_crit_edge
  ]

if.end.2.cleanup26_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

cleanup.2:                                        ; preds = %if.end.2
  %call10.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(12) @.str.35, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp11.2 = icmp eq i32 %call10.2, 0
  br i1 %cmp11.2, label %cleanup.2.if.end19_crit_edge, label %cleanup.2.if.end.3_crit_edge

cleanup.2.if.end.3_crit_edge:                     ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

cleanup.2.if.end19_crit_edge:                     ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.3:                                         ; preds = %cleanup.2.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  %count.addr.1.27884 = phi i32 [ 11, %cleanup.2.if.end.3_crit_edge ], [ %spec.select.2, %if.end.2.if.end.3_crit_edge ]
  %sub.3 = add i32 %count.addr.1.27884, -1
  %arrayidx3.3 = getelementptr i8, ptr %buf, i32 %sub.3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp4.3 = icmp eq i8 %12, 10
  %spec.select.3 = select i1 %cmp4.3, i32 %sub.3, i32 %count.addr.1.27884
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %spec.select.3)
  %phi.cmp = icmp eq i32 %spec.select.3, 12
  br i1 %phi.cmp, label %cleanup.3, label %if.end.3.cleanup26_crit_edge

if.end.3.cleanup26_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

cleanup.3:                                        ; preds = %if.end.3
  %call10.3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(13) @.str.36, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3)
  %cmp11.3 = icmp eq i32 %call10.3, 0
  br i1 %cmp11.3, label %cleanup.3.if.end19_crit_edge, label %cleanup.3.cleanup26_crit_edge

cleanup.3.cleanup26_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

cleanup.3.if.end19_crit_edge:                     ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %cleanup.3.if.end19_crit_edge, %cleanup.2.if.end19_crit_edge, %cleanup.1.if.end19_crit_edge
  %count.addr.1.lcssa = phi i32 [ 2, %cleanup.1.if.end19_crit_edge ], [ 11, %cleanup.2.if.end19_crit_edge ], [ 12, %cleanup.3.if.end19_crit_edge ]
  %i.053.lcssa = phi i32 [ 1, %cleanup.1.if.end19_crit_edge ], [ 2, %cleanup.2.if.end19_crit_edge ], [ 3, %cleanup.3.if.end19_crit_edge ]
  %has_cabc = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %has_cabc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_cabc, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.not = icmp eq i8 %14, 0
  br i1 %tobool.not.not, label %if.end19.cleanup26_crit_edge, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end19.cleanup26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.end24:                                         ; preds = %if.end19.if.end24_crit_edge, %cleanup.if.end24_crit_edge
  %i.053.lcssa93 = phi i32 [ %i.053.lcssa, %if.end19.if.end24_crit_edge ], [ 0, %cleanup.if.end24_crit_edge ]
  %count.addr.1.lcssa92 = phi i32 [ %count.addr.1.lcssa, %if.end19.if.end24_crit_edge ], [ 3, %cleanup.if.end24_crit_edge ]
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cabc_ctrl.i) #9
  %cabc_mode.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %cabc_mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.053.lcssa93, ptr %cabc_mode.i, align 4
  %enabled.i = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled.i, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end24.acx565akm_set_cabc_mode.exit_crit_edge, label %if.end.i

if.end24.acx565akm_set_cabc_mode.exit_crit_edge:  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_set_cabc_mode.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %cabc_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %cabc_ctrl.i, align 2
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 86, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cabc_ctrl.i, i32 noundef 1) #9
  %19 = ptrtoint ptr %cabc_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cabc_ctrl.i, align 2
  %21 = and i16 %20, -260
  %22 = trunc i32 %i.053.lcssa93 to i16
  %23 = or i16 %21, %22
  %conv5.i = or i16 %23, 256
  store i16 %conv5.i, ptr %cabc_ctrl.i, align 2
  call fastcc void @acx565akm_transfer(ptr noundef %1, i32 noundef 85, ptr noundef nonnull %cabc_ctrl.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  br label %acx565akm_set_cabc_mode.exit

acx565akm_set_cabc_mode.exit:                     ; preds = %if.end.i, %if.end24.acx565akm_set_cabc_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cabc_ctrl.i) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup26

cleanup26:                                        ; preds = %acx565akm_set_cabc_mode.exit, %if.end19.cleanup26_crit_edge, %cleanup.3.cleanup26_crit_edge, %if.end.3.cleanup26_crit_edge, %if.end.2.cleanup26_crit_edge, %if.end.1.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ %count.addr.1.lcssa92, %acx565akm_set_cabc_mode.exit ], [ -22, %if.end19.cleanup26_crit_edge ], [ -22, %cleanup.3.cleanup26_crit_edge ], [ -22, %if.end.3.cleanup26_crit_edge ], [ -22, %entry.cleanup26_crit_edge ], [ -22, %if.end.cleanup26_crit_edge ], [ -22, %if.end.1.cleanup26_crit_edge ], [ -22, %if.end.2.cleanup26_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cabc_available_modes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_cabc = getelementptr inbounds %struct.acx565akm_panel, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_cabc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_cabc, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.33)
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 %call4
  %call4.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34)
  %add.1 = add i32 %call4.1, %call4
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 %add.1
  %call4.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35)
  %add.2 = add i32 %call4.2, %add.1
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 %add.2
  %call4.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36)
  %add.3 = add i32 %call4.3, %add.2
  %inc5 = add i32 %add.3, 1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %add.3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx6, align 1
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.body.preheader
  %retval.0 = phi i32 [ %inc5, %for.body.preheader ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_enable(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %panel, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  tail call fastcc void @acx565akm_power_on(ptr noundef %panel)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_disable(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.acx565akm_panel, ptr %panel, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  tail call fastcc void @acx565akm_power_off(ptr noundef %panel)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx565akm_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @acx565akm_mode) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #9
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #9
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 77, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 46, ptr %height_mm, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 134, ptr %bus_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acx565akm_power_on(ptr nocapture noundef %lcd) unnamed_addr #2 align 64 {
entry:
  %cabc_ctrl.i = alloca i16, align 2
  %cmd.addr.i.i.i = alloca i32, align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca [5 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 50) #9
  %reset_gpio = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #9
  %enabled = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_power_on.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_power_on, %if.then4)) #9
          to label %return [label %if.then4], !srcloc !125

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %spi = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_power_on.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.42) #9
  br label %return

if.end5:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 120) #9
  tail call fastcc void @acx565akm_set_sleep_mode(ptr noundef %lcd, i32 noundef 0)
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled, align 2
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %xfer.i.i.i) #9
  %7 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %13 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 476)
  %15 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 41, ptr %cmd.addr.i.i.i, align 4
  %16 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmd.addr.i.i.i, ptr %xfer.i.i.i, align 4
  %bits_per_word.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %bits_per_word.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %bits_per_word.i.i.i, align 1
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end5.spi_message_add_tail.exit.i.i.i_crit_edge

if.end5.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end5.spi_message_add_tail.exit.i.i.i_crit_edge
  %spi.i.i.i = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %23 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %m.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i.i.i, label %do.body.i.i.i, label %spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge

spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_set_display_state.exit

do.body.i.i.i:                                    ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_transfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_power_on, %if.then19.i.i.i)) #9
          to label %acx565akm_set_display_state.exit [label %if.then19.i.i.i], !srcloc !125

if.then19.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_transfer.__UNIQUE_ID_ddebug304, ptr noundef %26, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #9
  br label %acx565akm_set_display_state.exit

acx565akm_set_display_state.exit:                 ; preds = %if.then19.i.i.i, %do.body.i.i.i, %spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %xfer.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i.i) #9
  %cabc_mode = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 12
  %27 = ptrtoint ptr %cabc_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cabc_mode, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cabc_ctrl.i) #9
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %acx565akm_set_display_state.exit.acx565akm_set_cabc_mode.exit_crit_edge, label %if.end.i

acx565akm_set_display_state.exit.acx565akm_set_cabc_mode.exit_crit_edge: ; preds = %acx565akm_set_display_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_set_cabc_mode.exit

if.end.i:                                         ; preds = %acx565akm_set_display_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %cabc_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %cabc_ctrl.i, align 2
  call fastcc void @acx565akm_transfer(ptr noundef %lcd, i32 noundef 86, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cabc_ctrl.i, i32 noundef 1) #9
  %32 = ptrtoint ptr %cabc_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cabc_ctrl.i, align 2
  %34 = and i16 %33, -260
  %35 = trunc i32 %28 to i16
  %36 = and i16 %35, 3
  %37 = or i16 %36, %34
  %conv5.i = or i16 %37, 256
  store i16 %conv5.i, ptr %cabc_ctrl.i, align 2
  call fastcc void @acx565akm_transfer(ptr noundef %lcd, i32 noundef 85, ptr noundef nonnull %cabc_ctrl.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  br label %acx565akm_set_cabc_mode.exit

acx565akm_set_cabc_mode.exit:                     ; preds = %if.end.i, %acx565akm_set_display_state.exit.acx565akm_set_cabc_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cabc_ctrl.i) #9
  %backlight = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 3
  %38 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %backlight, align 4
  call fastcc void @acx565akm_bl_update_status_locked(ptr noundef %39)
  br label %return

return:                                           ; preds = %acx565akm_set_cabc_mode.exit, %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acx565akm_set_sleep_mode(ptr nocapture noundef %lcd, i32 noundef %on) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i32, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [5 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_guard_end = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 13
  %0 = ptrtoint ptr %hw_guard_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_guard_end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end64_crit_edge

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true:                                    ; preds = %entry
  %hw_guard_wait = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 14
  %3 = ptrtoint ptr %hw_guard_wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_guard_wait, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp1.not = icmp ugt i32 %sub, %4
  br i1 %cmp1.not, label %land.lhs.true.if.end64_crit_edge, label %__here

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@acx565akm_set_sleep_mode, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 2, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  %call63 = tail call i32 @schedule_timeout(i32 noundef %sub) #9
  br label %if.end64

if.end64:                                         ; preds = %__here, %land.lhs.true.if.end64_crit_edge, %entry.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, i32 17, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #9
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %xfer.i.i) #9
  %12 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %18 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 476)
  %20 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %cmd.addr.i.i, align 4
  %21 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd.addr.i.i, ptr %xfer.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %bits_per_word.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end64.spi_message_add_tail.exit.i.i_crit_edge

if.end64.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end64.spi_message_add_tail.exit.i.i_crit_edge
  %spi.i.i = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %28 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %m.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i.i, label %do.body.i.i, label %spi_message_add_tail.exit.i.i.acx565akm_cmd.exit_crit_edge

spi_message_add_tail.exit.i.i.acx565akm_cmd.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_cmd.exit

do.body.i.i:                                      ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_transfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_set_sleep_mode, %if.then19.i.i)) #9
          to label %acx565akm_cmd.exit [label %if.then19.i.i], !srcloc !125

if.then19.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_transfer.__UNIQUE_ID_ddebug304, ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #9
  br label %acx565akm_cmd.exit

acx565akm_cmd.exit:                               ; preds = %if.then19.i.i, %do.body.i.i, %spi_message_add_tail.exit.i.i.acx565akm_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %xfer.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i) #9
  %hw_guard_wait66 = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 14
  %32 = ptrtoint ptr %hw_guard_wait66 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %hw_guard_wait66, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %33, 12
  %34 = ptrtoint ptr %hw_guard_end to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %hw_guard_end, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acx565akm_power_off(ptr nocapture noundef %lcd) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i32, align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca [5 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %xfer.i.i.i) #9
  %2 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 476)
  %10 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 40, ptr %cmd.addr.i.i.i, align 4
  %11 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd.addr.i.i.i, ptr %xfer.i.i.i, align 4
  %bits_per_word.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %bits_per_word.i.i.i, align 1
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %spi.i.i.i = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %m.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i.i.i, label %do.body.i.i.i, label %spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge

spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acx565akm_set_display_state.exit

do.body.i.i.i:                                    ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx565akm_transfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx565akm_power_off, %if.then19.i.i.i)) #9
          to label %acx565akm_set_display_state.exit [label %if.then19.i.i.i], !srcloc !125

if.then19.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx565akm_transfer.__UNIQUE_ID_ddebug304, ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #9
  br label %acx565akm_set_display_state.exit

acx565akm_set_display_state.exit:                 ; preds = %if.then19.i.i.i, %do.body.i.i.i, %spi_message_add_tail.exit.i.i.i.acx565akm_set_display_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %xfer.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i.i) #9
  call fastcc void @acx565akm_set_sleep_mode(ptr noundef %lcd, i32 noundef 1)
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enabled, align 2
  call void @msleep(i32 noundef 50) #9
  %reset_gpio = getelementptr inbounds %struct.acx565akm_panel, ptr %lcd, i32 0, i32 2
  %23 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value(ptr noundef %24, i32 noundef 0) #9
  call void @msleep(i32 noundef 100) #9
  br label %return

return:                                           ; preds = %acx565akm_set_display_state.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !106, !107, !109, !111}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_panel_sony_acx565akm__309_697_acx565akm_driver_init6, !1, !"__initcall__kmod_panel_sony_acx565akm__309_697_acx565akm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 697, i32 1}
!2 = !{ptr @__exitcall_acx565akm_driver_exit, !1, !"__exitcall_acx565akm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 699, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 700, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 701, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 692, i32 11}
!12 = !{ptr @acx565akm_driver, !13, !"acx565akm_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 687, i32 26}
!14 = !{ptr @acx565akm_ids, !15, !"acx565akm_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 680, i32 35}
!16 = !{ptr @acx565akm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 630, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 632, i32 46}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 634, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @acx565akm_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @acx565akm_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 640, i32 3}
!31 = !{ptr @acx565akm_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @acx565akm_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 571, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @acx565akm_detect.__UNIQUE_ID_ddebug307, !34, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!38 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 576, i32 2}
!42 = !{ptr @acx565akm_detect.__UNIQUE_ID_ddebug308, !41, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 582, i32 15}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 588, i32 15}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 592, i32 15}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 596, i32 15}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 599, i32 15}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 600, i32 3}
!55 = !{ptr @acx565akm_detect._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @acx565akm_detect._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 607, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @acx565akm_detect._entry.23, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @acx565akm_detect._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 120, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @acx565akm_transfer.__UNIQUE_ID_ddebug304, !63, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 371, i32 4}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @acx565akm_backlight_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @acx565akm_backlight_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @acx565akm_bl_ops, !72, !"acx565akm_bl_ops", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 344, i32 35}
!73 = !{ptr @acx565akm_cabc_attr_group, !74, !"acx565akm_cabc_attr_group", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 261, i32 37}
!75 = !{ptr @acx565akm_cabc_attrs, !76, !"acx565akm_cabc_attrs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 255, i32 26}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 252, i32 8}
!79 = !{ptr @dev_attr_cabc_mode, !78, !"dev_attr_cabc_mode", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 196, i32 22}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 173, i32 2}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 174, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 175, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 176, i32 2}
!90 = !{ptr @acx565akm_cabc_modes, !91, !"acx565akm_cabc_modes", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 172, i32 27}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 253, i32 8}
!94 = !{ptr @dev_attr_cabc_available_modes, !93, !"dev_attr_cabc_available_modes", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 244, i32 29}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 244, i32 41}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 244, i32 47}
!101 = !{ptr @acx565akm_funcs, !102, !"acx565akm_funcs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 544, i32 37}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 438, i32 3}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @acx565akm_power_on.__UNIQUE_ID_ddebug306, !104, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 412, i32 3}
!109 = !{ptr @acx565akm_mode, !110, !"acx565akm_mode", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 507, i32 38}
!111 = !{ptr @acx565akm_of_match, !112, !"acx565akm_of_match", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-sony-acx565akm.c", i32 673, i32 34}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i8 0, i8 2}
!124 = !{!"auto-init"}
!125 = !{i64 2148305318, i64 2148305323, i64 2148305336, i64 2148305380, i64 2148305414, i64 2148305435}
!126 = !{i64 2156197915}

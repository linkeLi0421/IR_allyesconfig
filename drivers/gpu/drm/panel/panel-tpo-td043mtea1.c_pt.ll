; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-tpo-td043mtea1.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.td043mtea1_panel = type { %struct.drm_panel, ptr, ptr, ptr, i32, [12 x i16], i8, i8, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_tpo_td043mtea1__304_504_td043mtea1_driver_init6 = internal global ptr @td043mtea1_driver_init, section ".initcall6.init", align 4
@td043mtea1_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @td043mtea1_ids, ptr @td043mtea1_probe, ptr @td043mtea1_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @td043mtea1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @td043mtea1_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_td043mtea1_driver_exit = internal global ptr @td043mtea1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [67 x i8] c"panel_tpo_td043mtea1.author=Gra\C5\BEvydas Ignotas <notasas@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [61 x i8] c"panel_tpo_td043mtea1.description=TPO TD043MTEA1 Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [69 x i8] c"panel_tpo_td043mtea1.file=drivers/gpu/drm/panel/panel-tpo-td043mtea1\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [33 x i8] c"panel_tpo_td043mtea1.license=GPL\00", section ".modinfo", align 1
@td043mtea1_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"td043mtea1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-tpo-td043mtea1\00", [43 x i8] zeroinitializer }, align 32
@td043mtea1_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpo,td043mtea1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@td043mtea1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @td043mtea1_suspend, ptr @td043mtea1_resume, ptr @td043mtea1_suspend, ptr @td043mtea1_resume, ptr @td043mtea1_suspend, ptr @td043mtea1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@td043mtea1_def_gamma = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 105, i16 315, i16 381, i16 431, i16 490, i16 537, i16 579, i16 686, i16 780, i16 837, i16 880, i16 1023], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get VCC regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@td043mtea1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 448, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to setup SPI: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"td043mtea1_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-tpo-td043mtea1.c\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@td043mtea1_probe._entry_ptr = internal global ptr @td043mtea1_probe._entry, section ".printk_index", align 4
@td043mtea1_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @td043mtea1_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@td043mtea1_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create sysfs files\0A\00", [34 x i8] zeroinitializer }, align 32
@td043mtea1_probe._entry_ptr.12 = internal global ptr @td043mtea1_probe._entry.10, section ".printk_index", align 4
@td043mtea1_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @td043mtea1_prepare, ptr null, ptr null, ptr @td043mtea1_unprepare, ptr @td043mtea1_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@td043mtea1_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_vmirror, ptr @dev_attr_mode, ptr @dev_attr_gamma, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_vmirror = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vmirror_show, ptr @vmirror_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gamma = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gamma_show, ptr @gamma_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vmirror\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@td043mtea1_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 94, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write to LCD reg (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"td043mtea1_write\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@td043mtea1_write._entry_ptr = internal global ptr @td043mtea1_write._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gamma\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%u %u %u %u %u %u %u %u %u %u %u %u\00", [60 x i8] zeroinitializer }, align 32
@td043mtea1_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 325, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: power on failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"td043mtea1_prepare\00", [45 x i8] zeroinitializer }, align 32
@td043mtea1_prepare._entry_ptr = internal global ptr @td043mtea1_prepare._entry, section ".printk_index", align 4
@td043mtea1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 36000, i16 800, i16 868, i16 869, i16 1083, i16 0, i16 480, i16 519, i16 520, i16 554, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 94, i16 56, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"td043mtea1_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 493, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"td043mtea1_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 486, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 498, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"td043mtea1_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 479, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"td043mtea1_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 416, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"td043mtea1_def_gamma\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 49, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 433, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 436, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 438, i32 46 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 441, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 448, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"td043mtea1_attr_group\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 292, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 454, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"td043mtea1_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 375, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"td043mtea1_attrs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 285, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"dev_attr_vmirror\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"dev_attr_gamma\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 281, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 189, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 93, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 282, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 283, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 248, i32 46 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 267, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 324, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"td043mtea1_mode\00", align 1
@___asan_gen_.136 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 332, i32 38 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_td043mtea1_driver_exit, ptr @__initcall__kmod_panel_tpo_td043mtea1__304_504_td043mtea1_driver_init6, ptr @td043mtea1_driver_exit, ptr @td043mtea1_prepare._entry, ptr @td043mtea1_prepare._entry_ptr, ptr @td043mtea1_probe._entry, ptr @td043mtea1_probe._entry.10, ptr @td043mtea1_probe._entry_ptr, ptr @td043mtea1_probe._entry_ptr.12, ptr @td043mtea1_write._entry, ptr @td043mtea1_write._entry_ptr, ptr @td043mtea1_driver, ptr @td043mtea1_ids, ptr @.str, ptr @td043mtea1_of_match, ptr @td043mtea1_pm_ops, ptr @td043mtea1_def_gamma, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @td043mtea1_attr_group, ptr @.str.11, ptr @td043mtea1_funcs, ptr @td043mtea1_attrs, ptr @dev_attr_vmirror, ptr @dev_attr_mode, ptr @dev_attr_gamma, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @td043mtea1_mode], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_def_gamma to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vmirror to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gamma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td043mtea1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @td043mtea1_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @td043mtea1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @td043mtea1_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 68, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.td043mtea1_panel, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi1, align 4
  %mode = getelementptr inbounds %struct.td043mtea1_panel, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mode, align 4
  %gamma = getelementptr inbounds %struct.td043mtea1_panel, ptr %call.i, i32 0, i32 5
  %3 = call ptr @memcpy(ptr %gamma, ptr @td043mtea1_def_gamma, i32 24)
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  %vcc_reg = getelementptr inbounds %struct.td043mtea1_panel, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %vcc_reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %5, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.td043mtea1_panel, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %reset_gpio, align 4
  %cmp.i70 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %7, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %bits_per_word, align 1
  %mode22 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode22, align 8
  %call23 = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef %call23) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call29 = tail call i32 @sysfs_create_group(ptr noundef %spi, ptr noundef nonnull @td043mtea1_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi1, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %11, ptr noundef nonnull @td043mtea1_funcs, i32 noundef 17) #7
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end34, %do.end, %if.then16, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then6 ], [ %call20, %if.then16 ], [ %call23, %do.end ], [ %call29, %do.end34 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #7
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #7
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #7
  tail call void @sysfs_remove_group(ptr noundef %spi, ptr noundef nonnull @td043mtea1_attr_group) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmirror_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vmirror = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vmirror to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vmirror, align 4, !range !85
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %4) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmirror_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !86
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %vmirror = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %5 = ptrtoint ptr %vmirror to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %vmirror, align 4
  %call3 = call fastcc i32 @td043mtea1_write_mirror(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %call3.count = select i1 %cmp4, i32 %call3, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @td043mtea1_write_mirror(ptr nocapture noundef readonly %lcd) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vmirror = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 6
  %0 = ptrtoint ptr %vmirror to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vmirror, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i8 23, i8 21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %conv2.i = zext i8 %spec.select to i16
  %or3.i = or i16 %conv2.i, 4352
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or3.i, ptr %data.i, align 2
  %11 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge

spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %call.i) #10
  br label %td043mtea1_write.exit

td043mtea1_write.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i16, align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !86
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %tobool.not = icmp ult i32 %4, 8
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mode = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mode, align 4
  %or = or i32 %4, 8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %13 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 92)
  %15 = trunc i32 %or to i16
  %conv2.i = and i16 %15, 255
  %or3.i = or i16 %conv2.i, 2304
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or3.i, ptr %data.i, align 2
  %17 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %18 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi.i, align 4
  %call.i6 = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.i = icmp slt i32 %call.i6, 0
  br i1 %cmp.i, label %do.end.i, label %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge

spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %call.i6) #10
  br label %td043mtea1_write.exit

td043mtea1_write.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %td043mtea1_write.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %td043mtea1_write.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamma_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call1
  %sub.1 = sub nsw i32 4096, %call1
  %arrayidx.1 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %5 to i32
  %call1.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.20, i32 noundef %conv.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %add.1 = add nuw i32 %call1.1, %call1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %arrayidx.2 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %7 to i32
  %call1.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.20, i32 noundef %conv.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %add.2 = add i32 %call1.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %arrayidx.3 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %9 to i32
  %call1.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.20, i32 noundef %conv.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %add.3 = add i32 %call1.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %arrayidx.4 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %11 to i32
  %call1.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.20, i32 noundef %conv.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %add.4 = add i32 %call1.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %arrayidx.5 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %13 to i32
  %call1.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.20, i32 noundef %conv.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  %add.5 = add i32 %call1.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %arrayidx.6 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %15 to i32
  %call1.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.20, i32 noundef %conv.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %cmp2.6 = icmp slt i32 %call1.6, 0
  br i1 %cmp2.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  %add.6 = add i32 %call1.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %arrayidx.7 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %17 to i32
  %call1.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.20, i32 noundef %conv.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %cmp2.7 = icmp slt i32 %call1.7, 0
  br i1 %cmp2.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  %add.7 = add i32 %call1.7, %add.6
  %add.ptr.8 = getelementptr i8, ptr %buf, i32 %add.7
  %sub.8 = sub i32 4096, %add.7
  %arrayidx.8 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %19 to i32
  %call1.8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.8, i32 noundef %sub.8, ptr noundef nonnull @.str.20, i32 noundef %conv.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %cmp2.8 = icmp slt i32 %call1.8, 0
  br i1 %cmp2.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  %add.8 = add i32 %call1.8, %add.7
  %add.ptr.9 = getelementptr i8, ptr %buf, i32 %add.8
  %sub.9 = sub i32 4096, %add.8
  %arrayidx.9 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %21 to i32
  %call1.9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.9, i32 noundef %sub.9, ptr noundef nonnull @.str.20, i32 noundef %conv.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %cmp2.9 = icmp slt i32 %call1.9, 0
  br i1 %cmp2.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  %add.9 = add i32 %call1.9, %add.8
  %add.ptr.10 = getelementptr i8, ptr %buf, i32 %add.9
  %sub.10 = sub i32 4096, %add.9
  %arrayidx.10 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %23 to i32
  %call1.10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.10, i32 noundef %sub.10, ptr noundef nonnull @.str.20, i32 noundef %conv.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.10)
  %cmp2.10 = icmp slt i32 %call1.10, 0
  br i1 %cmp2.10, label %if.end.9.cleanup_crit_edge, label %if.end.10

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.10:                                        ; preds = %if.end.9
  %add.10 = add i32 %call1.10, %add.9
  %add.ptr.11 = getelementptr i8, ptr %buf, i32 %add.10
  %sub.11 = sub i32 4096, %add.10
  %arrayidx.11 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %25 to i32
  %call1.11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.11, i32 noundef %sub.11, ptr noundef nonnull @.str.20, i32 noundef %conv.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.11)
  %cmp2.11 = icmp slt i32 %call1.11, 0
  br i1 %cmp2.11, label %if.end.10.cleanup_crit_edge, label %if.end.11

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.11:                                        ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #9
  %add.11 = add i32 %call1.11, %add.10
  %sub4 = add i32 %add.11, -1
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %sub4
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.end.10.cleanup_crit_edge, %if.end.9.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.11, %if.end.11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %if.end.cleanup_crit_edge ], [ %call1.2, %if.end.1.cleanup_crit_edge ], [ %call1.3, %if.end.2.cleanup_crit_edge ], [ %call1.4, %if.end.3.cleanup_crit_edge ], [ %call1.5, %if.end.4.cleanup_crit_edge ], [ %call1.6, %if.end.5.cleanup_crit_edge ], [ %call1.7, %if.end.6.cleanup_crit_edge ], [ %call1.8, %if.end.7.cleanup_crit_edge ], [ %call1.9, %if.end.8.cleanup_crit_edge ], [ %call1.10, %if.end.9.cleanup_crit_edge ], [ %call1.11, %if.end.10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamma_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %g = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %g) #7
  %2 = call ptr @memset(ptr %g, i32 255, i32 48)
  %arrayidx1 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 7
  %arrayidx8 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 10
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr %g, i32 0, i32 11
  %call12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef nonnull %g, ptr noundef %arrayidx1, ptr noundef %arrayidx2, ptr noundef %arrayidx3, ptr noundef %arrayidx4, ptr noundef %arrayidx5, ptr noundef %arrayidx6, ptr noundef %arrayidx7, ptr noundef %arrayidx8, ptr noundef %arrayidx9, ptr noundef %arrayidx10, ptr noundef %arrayidx11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 12
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %g, align 4
  %conv = trunc i32 %4 to i16
  %arrayidx15 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 0
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %arrayidx15, align 2
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %conv.1 = trunc i32 %7 to i16
  %arrayidx15.1 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.1, ptr %arrayidx15.1, align 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %conv.2 = trunc i32 %10 to i16
  %arrayidx15.2 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.2, ptr %arrayidx15.2, align 2
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %conv.3 = trunc i32 %13 to i16
  %arrayidx15.3 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.3, ptr %arrayidx15.3, align 2
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %conv.4 = trunc i32 %16 to i16
  %arrayidx15.4 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.4, ptr %arrayidx15.4, align 2
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  %conv.5 = trunc i32 %19 to i16
  %arrayidx15.5 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.5, ptr %arrayidx15.5, align 2
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6, align 4
  %conv.6 = trunc i32 %22 to i16
  %arrayidx15.6 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.6, ptr %arrayidx15.6, align 2
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7, align 4
  %conv.7 = trunc i32 %25 to i16
  %arrayidx15.7 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.7, ptr %arrayidx15.7, align 2
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8, align 4
  %conv.8 = trunc i32 %28 to i16
  %arrayidx15.8 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 8
  %29 = ptrtoint ptr %arrayidx15.8 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.8, ptr %arrayidx15.8, align 2
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9, align 4
  %conv.9 = trunc i32 %31 to i16
  %arrayidx15.9 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 9
  %32 = ptrtoint ptr %arrayidx15.9 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.9, ptr %arrayidx15.9, align 2
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx10, align 4
  %conv.10 = trunc i32 %34 to i16
  %arrayidx15.10 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 10
  %35 = ptrtoint ptr %arrayidx15.10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.10, ptr %arrayidx15.10, align 2
  %36 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11, align 4
  %conv.11 = trunc i32 %37 to i16
  %arrayidx15.11 = getelementptr %struct.td043mtea1_panel, ptr %1, i32 0, i32 5, i32 11
  %38 = ptrtoint ptr %arrayidx15.11 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.11, ptr %arrayidx15.11, align 2
  call fastcc void @td043mtea1_write_gamma(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.body.preheader ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %g) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @td043mtea1_write_gamma(ptr nocapture noundef readonly %lcd) unnamed_addr #2 align 64 {
entry:
  %msg.i123 = alloca %struct.spi_message, align 4
  %xfer.i124 = alloca %struct.spi_transfer, align 4
  %data.i125 = alloca i16, align 2
  %msg.i102 = alloca %struct.spi_message, align 4
  %xfer.i103 = alloca %struct.spi_transfer, align 4
  %data.i104 = alloca i16, align 2
  %msg.i81 = alloca %struct.spi_message, align 4
  %xfer.i82 = alloca %struct.spi_transfer, align 4
  %data.i83 = alloca i16, align 2
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gamma1 = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %gamma1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gamma1, align 2
  %2 = lshr i16 %1, 2
  %3 = trunc i16 %2 to i8
  %4 = and i8 %3, -64
  %arrayidx.1 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.1, align 2
  %7 = lshr i16 %6, 4
  %8 = trunc i16 %7 to i8
  %9 = and i8 %8, 48
  %conv3.1 = or i8 %4, %9
  %arrayidx.2 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.2, align 2
  %12 = lshr i16 %11, 6
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, 12
  %conv3.2 = or i8 %conv3.1, %14
  %arrayidx.3 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.3, align 2
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 3
  %conv3.3 = or i8 %conv3.2, %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %26 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %conv2.i = zext i8 %conv3.3 to i16
  %or3.i = or i16 %conv2.i, 17664
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or3.i, ptr %data.i, align 2
  %29 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %30 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 1
  %36 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge

spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.15, i32 noundef %call.i) #10
  br label %td043mtea1_write.exit

td043mtea1_write.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  %arrayidx9 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 4
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx9, align 2
  %42 = lshr i16 %41, 2
  %43 = trunc i16 %42 to i8
  %44 = and i8 %43, -64
  %arrayidx9.1 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 5
  %45 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx9.1, align 2
  %47 = lshr i16 %46, 4
  %48 = trunc i16 %47 to i8
  %49 = and i8 %48, 48
  %conv17.1 = or i8 %44, %49
  %arrayidx9.2 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 6
  %50 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx9.2, align 2
  %52 = lshr i16 %51, 6
  %53 = trunc i16 %52 to i8
  %54 = and i8 %53, 12
  %conv17.2 = or i8 %conv17.1, %54
  %arrayidx9.3 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 7
  %55 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx9.3, align 2
  %57 = lshr i16 %56, 8
  %58 = trunc i16 %57 to i8
  %59 = and i8 %58, 3
  %conv17.3 = or i8 %conv17.2, %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i81) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i82) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i83) #7
  %60 = getelementptr inbounds i8, ptr %msg.i81, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %msg.i81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg.i81, ptr %msg.i81, align 4
  %prev.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %msg.i81, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i81, ptr %prev.i.i.i.i84, align 4
  %resources.i.i.i85 = getelementptr inbounds %struct.spi_message, ptr %msg.i81, i32 0, i32 10
  %64 = ptrtoint ptr %resources.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i85, ptr %resources.i.i.i85, align 4
  %prev.i2.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i81, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev.i2.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i85, ptr %prev.i2.i.i.i86, align 4
  %66 = getelementptr inbounds i8, ptr %xfer.i82, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 92)
  %conv2.i87 = zext i8 %conv17.3 to i16
  %or3.i89 = or i16 %conv2.i87, 18688
  %68 = ptrtoint ptr %data.i83 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or3.i89, ptr %data.i83, align 2
  %69 = ptrtoint ptr %xfer.i82 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %data.i83, ptr %xfer.i82, align 4
  %bits_per_word.i90 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i82, i32 0, i32 8
  %70 = ptrtoint ptr %bits_per_word.i90 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 16, ptr %bits_per_word.i90, align 1
  %len.i91 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i82, i32 0, i32 2
  %71 = ptrtoint ptr %len.i91 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %len.i91, align 4
  %transfer_list.i.i92 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i82, i32 0, i32 18
  %call.i.i.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i92, ptr noundef nonnull %msg.i81, ptr noundef nonnull %msg.i81) #7
  br i1 %call.i.i.i.i93, label %if.end.i.i.i.i95, label %td043mtea1_write.exit.spi_message_add_tail.exit.i99_crit_edge

td043mtea1_write.exit.spi_message_add_tail.exit.i99_crit_edge: ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i99

if.end.i.i.i.i95:                                 ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %prev.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %transfer_list.i.i92, ptr %prev.i.i.i.i84, align 4
  %73 = ptrtoint ptr %transfer_list.i.i92 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i81, ptr %transfer_list.i.i92, align 4
  %prev3.i.i.i.i94 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i82, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i81, ptr %prev3.i.i.i.i94, align 4
  %75 = ptrtoint ptr %msg.i81 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %transfer_list.i.i92, ptr %msg.i81, align 4
  br label %spi_message_add_tail.exit.i99

spi_message_add_tail.exit.i99:                    ; preds = %if.end.i.i.i.i95, %td043mtea1_write.exit.spi_message_add_tail.exit.i99_crit_edge
  %76 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi.i, align 4
  %call.i97 = call i32 @spi_sync(ptr noundef %77, ptr noundef nonnull %msg.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %do.end.i100, label %spi_message_add_tail.exit.i99.td043mtea1_write.exit101_crit_edge

spi_message_add_tail.exit.i99.td043mtea1_write.exit101_crit_edge: ; preds = %spi_message_add_tail.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit101

do.end.i100:                                      ; preds = %spi_message_add_tail.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.15, i32 noundef %call.i97) #10
  br label %td043mtea1_write.exit101

td043mtea1_write.exit101:                         ; preds = %do.end.i100, %spi_message_add_tail.exit.i99.td043mtea1_write.exit101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i83) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i82) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i81) #7
  %arrayidx27 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 8
  %80 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx27, align 2
  %82 = lshr i16 %81, 2
  %83 = trunc i16 %82 to i8
  %84 = and i8 %83, -64
  %arrayidx27.1 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 9
  %85 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx27.1, align 2
  %87 = lshr i16 %86, 4
  %88 = trunc i16 %87 to i8
  %89 = and i8 %88, 48
  %conv35.1 = or i8 %84, %89
  %arrayidx27.2 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 10
  %90 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx27.2, align 2
  %92 = lshr i16 %91, 6
  %93 = trunc i16 %92 to i8
  %94 = and i8 %93, 12
  %conv35.2 = or i8 %conv35.1, %94
  %arrayidx27.3 = getelementptr %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 5, i32 11
  %95 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx27.3, align 2
  %97 = lshr i16 %96, 8
  %98 = trunc i16 %97 to i8
  %99 = and i8 %98, 3
  %conv35.3 = or i8 %conv35.2, %99
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i102) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i103) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i104) #7
  %100 = getelementptr inbounds i8, ptr %msg.i102, i32 8
  %101 = call ptr @memset(ptr %100, i32 0, i32 40)
  %102 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %msg.i102, ptr %msg.i102, align 4
  %prev.i.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %msg.i102, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i102, ptr %prev.i.i.i.i105, align 4
  %resources.i.i.i106 = getelementptr inbounds %struct.spi_message, ptr %msg.i102, i32 0, i32 10
  %104 = ptrtoint ptr %resources.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %resources.i.i.i106, ptr %resources.i.i.i106, align 4
  %prev.i2.i.i.i107 = getelementptr inbounds %struct.spi_message, ptr %msg.i102, i32 0, i32 10, i32 1
  %105 = ptrtoint ptr %prev.i2.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %resources.i.i.i106, ptr %prev.i2.i.i.i107, align 4
  %106 = getelementptr inbounds i8, ptr %xfer.i103, i32 4
  %107 = call ptr @memset(ptr %106, i32 0, i32 92)
  %conv2.i108 = zext i8 %conv35.3 to i16
  %or3.i110 = or i16 %conv2.i108, 19712
  %108 = ptrtoint ptr %data.i104 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %or3.i110, ptr %data.i104, align 2
  %109 = ptrtoint ptr %xfer.i103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %data.i104, ptr %xfer.i103, align 4
  %bits_per_word.i111 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i103, i32 0, i32 8
  %110 = ptrtoint ptr %bits_per_word.i111 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %bits_per_word.i111, align 1
  %len.i112 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i103, i32 0, i32 2
  %111 = ptrtoint ptr %len.i112 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %len.i112, align 4
  %transfer_list.i.i113 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i103, i32 0, i32 18
  %call.i.i.i.i114 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i113, ptr noundef nonnull %msg.i102, ptr noundef nonnull %msg.i102) #7
  br i1 %call.i.i.i.i114, label %if.end.i.i.i.i116, label %td043mtea1_write.exit101.spi_message_add_tail.exit.i120_crit_edge

td043mtea1_write.exit101.spi_message_add_tail.exit.i120_crit_edge: ; preds = %td043mtea1_write.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i120

if.end.i.i.i.i116:                                ; preds = %td043mtea1_write.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %prev.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %transfer_list.i.i113, ptr %prev.i.i.i.i105, align 4
  %113 = ptrtoint ptr %transfer_list.i.i113 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msg.i102, ptr %transfer_list.i.i113, align 4
  %prev3.i.i.i.i115 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i103, i32 0, i32 18, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %msg.i102, ptr %prev3.i.i.i.i115, align 4
  %115 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %transfer_list.i.i113, ptr %msg.i102, align 4
  br label %spi_message_add_tail.exit.i120

spi_message_add_tail.exit.i120:                   ; preds = %if.end.i.i.i.i116, %td043mtea1_write.exit101.spi_message_add_tail.exit.i120_crit_edge
  %116 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %spi.i, align 4
  %call.i118 = call i32 @spi_sync(ptr noundef %117, ptr noundef nonnull %msg.i102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %do.end.i121, label %spi_message_add_tail.exit.i120.td043mtea1_write.exit122_crit_edge

spi_message_add_tail.exit.i120.td043mtea1_write.exit122_crit_edge: ; preds = %spi_message_add_tail.exit.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit122

do.end.i121:                                      ; preds = %spi_message_add_tail.exit.i120
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.15, i32 noundef %call.i118) #10
  br label %td043mtea1_write.exit122

td043mtea1_write.exit122:                         ; preds = %do.end.i121, %spi_message_add_tail.exit.i120.td043mtea1_write.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i104) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i103) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i102) #7
  %120 = getelementptr inbounds i8, ptr %msg.i123, i32 8
  %prev.i.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %msg.i123, i32 0, i32 1
  %resources.i.i.i127 = getelementptr inbounds %struct.spi_message, ptr %msg.i123, i32 0, i32 10
  %prev.i2.i.i.i128 = getelementptr inbounds %struct.spi_message, ptr %msg.i123, i32 0, i32 10, i32 1
  %121 = getelementptr inbounds i8, ptr %xfer.i124, i32 4
  %bits_per_word.i132 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i124, i32 0, i32 8
  %len.i133 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i124, i32 0, i32 2
  %transfer_list.i.i134 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i124, i32 0, i32 18
  %prev3.i.i.i.i136 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i124, i32 0, i32 18, i32 1
  br label %for.body43

for.body43:                                       ; preds = %td043mtea1_write.exit143.for.body43_crit_edge, %td043mtea1_write.exit122
  %i.3150 = phi i32 [ 0, %td043mtea1_write.exit122 ], [ %inc52, %td043mtea1_write.exit143.for.body43_crit_edge ]
  %122 = trunc i32 %i.3150 to i8
  %conv45 = add nuw nsw i8 %122, 20
  %arrayidx46 = getelementptr i16, ptr %gamma1, i32 %i.3150
  %123 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx46, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i123) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i124) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i125) #7
  %125 = call ptr @memset(ptr %120, i32 0, i32 40)
  %126 = ptrtoint ptr %msg.i123 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %msg.i123, ptr %msg.i123, align 4
  %127 = ptrtoint ptr %prev.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %msg.i123, ptr %prev.i.i.i.i126, align 4
  %128 = ptrtoint ptr %resources.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %resources.i.i.i127, ptr %resources.i.i.i127, align 4
  %129 = ptrtoint ptr %prev.i2.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %resources.i.i.i127, ptr %prev.i2.i.i.i128, align 4
  %130 = call ptr @memset(ptr %121, i32 0, i32 92)
  %conv1.i = zext i8 %conv45 to i16
  %shl.i = shl nuw nsw i16 %conv1.i, 10
  %conv2.i129 = and i16 %124, 255
  %or.i130 = or i16 %conv2.i129, %shl.i
  %or3.i131 = or i16 %or.i130, 256
  %131 = ptrtoint ptr %data.i125 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %or3.i131, ptr %data.i125, align 2
  %132 = ptrtoint ptr %xfer.i124 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %data.i125, ptr %xfer.i124, align 4
  %133 = ptrtoint ptr %bits_per_word.i132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 16, ptr %bits_per_word.i132, align 1
  %134 = ptrtoint ptr %len.i133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %len.i133, align 4
  %call.i.i.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i134, ptr noundef nonnull %msg.i123, ptr noundef nonnull %msg.i123) #7
  br i1 %call.i.i.i.i135, label %if.end.i.i.i.i137, label %for.body43.spi_message_add_tail.exit.i141_crit_edge

for.body43.spi_message_add_tail.exit.i141_crit_edge: ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i141

if.end.i.i.i.i137:                                ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %prev.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %transfer_list.i.i134, ptr %prev.i.i.i.i126, align 4
  %136 = ptrtoint ptr %transfer_list.i.i134 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %msg.i123, ptr %transfer_list.i.i134, align 4
  %137 = ptrtoint ptr %prev3.i.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %msg.i123, ptr %prev3.i.i.i.i136, align 4
  %138 = ptrtoint ptr %msg.i123 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %transfer_list.i.i134, ptr %msg.i123, align 4
  br label %spi_message_add_tail.exit.i141

spi_message_add_tail.exit.i141:                   ; preds = %if.end.i.i.i.i137, %for.body43.spi_message_add_tail.exit.i141_crit_edge
  %139 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %spi.i, align 4
  %call.i139 = call i32 @spi_sync(ptr noundef %140, ptr noundef nonnull %msg.i123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp slt i32 %call.i139, 0
  br i1 %cmp.i140, label %do.end.i142, label %spi_message_add_tail.exit.i141.td043mtea1_write.exit143_crit_edge

spi_message_add_tail.exit.i141.td043mtea1_write.exit143_crit_edge: ; preds = %spi_message_add_tail.exit.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit143

do.end.i142:                                      ; preds = %spi_message_add_tail.exit.i141
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %142, ptr noundef nonnull @.str.15, i32 noundef %call.i139) #10
  br label %td043mtea1_write.exit143

td043mtea1_write.exit143:                         ; preds = %do.end.i142, %spi_message_add_tail.exit.i141.td043mtea1_write.exit143_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i125) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i124) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i123) #7
  %inc52 = add nuw nsw i32 %i.3150, 1
  %exitcond.not = icmp eq i32 %inc52, 12
  br i1 %exitcond.not, label %for.end53, label %td043mtea1_write.exit143.for.body43_crit_edge

td043mtea1_write.exit143.for.body43_crit_edge:    ; preds = %td043mtea1_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.end53:                                        ; preds = %td043mtea1_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_suspended = getelementptr inbounds %struct.td043mtea1_panel, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %spi_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spi_suspended, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @td043mtea1_power_on(ptr noundef %panel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %spi = getelementptr inbounds %struct.td043mtea1_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_suspended = getelementptr inbounds %struct.td043mtea1_panel, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %spi_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spi_suspended, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @td043mtea1_power_off(ptr noundef %panel)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @td043mtea1_mode) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #7
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #7
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 94, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 56, ptr %height_mm, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 74, ptr %bus_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @td043mtea1_power_on(ptr nocapture noundef %lcd) unnamed_addr #2 align 64 {
entry:
  %msg.i56 = alloca %struct.spi_message, align 4
  %xfer.i57 = alloca %struct.spi_transfer, align 4
  %data.i58 = alloca i16, align 2
  %msg.i38 = alloca %struct.spi_message, align 4
  %xfer.i39 = alloca %struct.spi_transfer, align 4
  %data.i40 = alloca i16, align 2
  %msg.i20 = alloca %struct.spi_message, align 4
  %xfer.i21 = alloca %struct.spi_transfer, align 4
  %data.i22 = alloca i16, align 2
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powered_on = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 7
  %0 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered_on, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vcc_reg = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 2
  %2 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc_reg, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 160) #7
  %reset_gpio = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %conv2.i = zext i8 %9 to i16
  %or3.i = or i16 %conv2.i, 2312
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or3.i, ptr %data.i, align 2
  %19 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %20 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end2.spi_message_add_tail.exit.i_crit_edge

if.end2.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end2.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 1
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge

spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.15, i32 noundef %call.i) #10
  br label %td043mtea1_write.exit

td043mtea1_write.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i20) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i21) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i22) #7
  %30 = getelementptr inbounds i8, ptr %msg.i20, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i20, ptr %msg.i20, align 4
  %prev.i.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %msg.i20, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i20, ptr %prev.i.i.i.i23, align 4
  %resources.i.i.i24 = getelementptr inbounds %struct.spi_message, ptr %msg.i20, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i24, ptr %resources.i.i.i24, align 4
  %prev.i2.i.i.i25 = getelementptr inbounds %struct.spi_message, ptr %msg.i20, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i24, ptr %prev.i2.i.i.i25, align 4
  %36 = getelementptr inbounds i8, ptr %xfer.i21, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %38 = ptrtoint ptr %data.i22 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3551, ptr %data.i22, align 2
  %39 = ptrtoint ptr %xfer.i21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data.i22, ptr %xfer.i21, align 4
  %bits_per_word.i26 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i21, i32 0, i32 8
  %40 = ptrtoint ptr %bits_per_word.i26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 16, ptr %bits_per_word.i26, align 1
  %len.i27 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i21, i32 0, i32 2
  %41 = ptrtoint ptr %len.i27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len.i27, align 4
  %transfer_list.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i21, i32 0, i32 18
  %call.i.i.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i28, ptr noundef nonnull %msg.i20, ptr noundef nonnull %msg.i20) #7
  br i1 %call.i.i.i.i29, label %if.end.i.i.i.i31, label %td043mtea1_write.exit.spi_message_add_tail.exit.i35_crit_edge

td043mtea1_write.exit.spi_message_add_tail.exit.i35_crit_edge: ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i35

if.end.i.i.i.i31:                                 ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %prev.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i28, ptr %prev.i.i.i.i23, align 4
  %43 = ptrtoint ptr %transfer_list.i.i28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i20, ptr %transfer_list.i.i28, align 4
  %prev3.i.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i21, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i20, ptr %prev3.i.i.i.i30, align 4
  %45 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i28, ptr %msg.i20, align 4
  br label %spi_message_add_tail.exit.i35

spi_message_add_tail.exit.i35:                    ; preds = %if.end.i.i.i.i31, %td043mtea1_write.exit.spi_message_add_tail.exit.i35_crit_edge
  %46 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spi.i, align 4
  %call.i33 = call i32 @spi_sync(ptr noundef %47, ptr noundef nonnull %msg.i20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %do.end.i36, label %spi_message_add_tail.exit.i35.td043mtea1_write.exit37_crit_edge

spi_message_add_tail.exit.i35.td043mtea1_write.exit37_crit_edge: ; preds = %spi_message_add_tail.exit.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit37

do.end.i36:                                       ; preds = %spi_message_add_tail.exit.i35
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.15, i32 noundef %call.i33) #10
  br label %td043mtea1_write.exit37

td043mtea1_write.exit37:                          ; preds = %do.end.i36, %spi_message_add_tail.exit.i35.td043mtea1_write.exit37_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i22) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i21) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i20) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i38) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i39) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i40) #7
  %50 = getelementptr inbounds i8, ptr %msg.i38, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 40)
  %52 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %msg.i38, ptr %msg.i38, align 4
  %prev.i.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %msg.i38, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i38, ptr %prev.i.i.i.i41, align 4
  %resources.i.i.i42 = getelementptr inbounds %struct.spi_message, ptr %msg.i38, i32 0, i32 10
  %54 = ptrtoint ptr %resources.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %resources.i.i.i42, ptr %resources.i.i.i42, align 4
  %prev.i2.i.i.i43 = getelementptr inbounds %struct.spi_message, ptr %msg.i38, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %prev.i2.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %resources.i.i.i42, ptr %prev.i2.i.i.i43, align 4
  %56 = getelementptr inbounds i8, ptr %xfer.i39, i32 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 92)
  %58 = ptrtoint ptr %data.i40 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -32272, ptr %data.i40, align 2
  %59 = ptrtoint ptr %xfer.i39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %data.i40, ptr %xfer.i39, align 4
  %bits_per_word.i44 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i39, i32 0, i32 8
  %60 = ptrtoint ptr %bits_per_word.i44 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %bits_per_word.i44, align 1
  %len.i45 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i39, i32 0, i32 2
  %61 = ptrtoint ptr %len.i45 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %len.i45, align 4
  %transfer_list.i.i46 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i39, i32 0, i32 18
  %call.i.i.i.i47 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i46, ptr noundef nonnull %msg.i38, ptr noundef nonnull %msg.i38) #7
  br i1 %call.i.i.i.i47, label %if.end.i.i.i.i49, label %td043mtea1_write.exit37.spi_message_add_tail.exit.i53_crit_edge

td043mtea1_write.exit37.spi_message_add_tail.exit.i53_crit_edge: ; preds = %td043mtea1_write.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i53

if.end.i.i.i.i49:                                 ; preds = %td043mtea1_write.exit37
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %prev.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %transfer_list.i.i46, ptr %prev.i.i.i.i41, align 4
  %63 = ptrtoint ptr %transfer_list.i.i46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i38, ptr %transfer_list.i.i46, align 4
  %prev3.i.i.i.i48 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i39, i32 0, i32 18, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i38, ptr %prev3.i.i.i.i48, align 4
  %65 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %transfer_list.i.i46, ptr %msg.i38, align 4
  br label %spi_message_add_tail.exit.i53

spi_message_add_tail.exit.i53:                    ; preds = %if.end.i.i.i.i49, %td043mtea1_write.exit37.spi_message_add_tail.exit.i53_crit_edge
  %66 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi.i, align 4
  %call.i51 = call i32 @spi_sync(ptr noundef %67, ptr noundef nonnull %msg.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %do.end.i54, label %spi_message_add_tail.exit.i53.td043mtea1_write.exit55_crit_edge

spi_message_add_tail.exit.i53.td043mtea1_write.exit55_crit_edge: ; preds = %spi_message_add_tail.exit.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit55

do.end.i54:                                       ; preds = %spi_message_add_tail.exit.i53
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.15, i32 noundef %call.i51) #10
  br label %td043mtea1_write.exit55

td043mtea1_write.exit55:                          ; preds = %do.end.i54, %spi_message_add_tail.exit.i53.td043mtea1_write.exit55_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i40) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i39) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i38) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i56) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i57) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i58) #7
  %70 = getelementptr inbounds i8, ptr %msg.i56, i32 8
  %71 = call ptr @memset(ptr %70, i32 0, i32 40)
  %72 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %msg.i56, ptr %msg.i56, align 4
  %prev.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %msg.i56, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i56, ptr %prev.i.i.i.i59, align 4
  %resources.i.i.i60 = getelementptr inbounds %struct.spi_message, ptr %msg.i56, i32 0, i32 10
  %74 = ptrtoint ptr %resources.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %resources.i.i.i60, ptr %resources.i.i.i60, align 4
  %prev.i2.i.i.i61 = getelementptr inbounds %struct.spi_message, ptr %msg.i56, i32 0, i32 10, i32 1
  %75 = ptrtoint ptr %prev.i2.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %resources.i.i.i60, ptr %prev.i2.i.i.i61, align 4
  %76 = getelementptr inbounds i8, ptr %xfer.i57, i32 4
  %77 = call ptr @memset(ptr %76, i32 0, i32 92)
  %78 = ptrtoint ptr %data.i58 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -31248, ptr %data.i58, align 2
  %79 = ptrtoint ptr %xfer.i57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %data.i58, ptr %xfer.i57, align 4
  %bits_per_word.i62 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i57, i32 0, i32 8
  %80 = ptrtoint ptr %bits_per_word.i62 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 16, ptr %bits_per_word.i62, align 1
  %len.i63 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i57, i32 0, i32 2
  %81 = ptrtoint ptr %len.i63 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %len.i63, align 4
  %transfer_list.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i57, i32 0, i32 18
  %call.i.i.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i64, ptr noundef nonnull %msg.i56, ptr noundef nonnull %msg.i56) #7
  br i1 %call.i.i.i.i65, label %if.end.i.i.i.i67, label %td043mtea1_write.exit55.spi_message_add_tail.exit.i71_crit_edge

td043mtea1_write.exit55.spi_message_add_tail.exit.i71_crit_edge: ; preds = %td043mtea1_write.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i71

if.end.i.i.i.i67:                                 ; preds = %td043mtea1_write.exit55
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %prev.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i64, ptr %prev.i.i.i.i59, align 4
  %83 = ptrtoint ptr %transfer_list.i.i64 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i56, ptr %transfer_list.i.i64, align 4
  %prev3.i.i.i.i66 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i57, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i56, ptr %prev3.i.i.i.i66, align 4
  %85 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i64, ptr %msg.i56, align 4
  br label %spi_message_add_tail.exit.i71

spi_message_add_tail.exit.i71:                    ; preds = %if.end.i.i.i.i67, %td043mtea1_write.exit55.spi_message_add_tail.exit.i71_crit_edge
  %86 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spi.i, align 4
  %call.i69 = call i32 @spi_sync(ptr noundef %87, ptr noundef nonnull %msg.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %do.end.i72, label %spi_message_add_tail.exit.i71.td043mtea1_write.exit73_crit_edge

spi_message_add_tail.exit.i71.td043mtea1_write.exit73_crit_edge: ; preds = %spi_message_add_tail.exit.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit73

do.end.i72:                                       ; preds = %spi_message_add_tail.exit.i71
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.15, i32 noundef %call.i69) #10
  br label %td043mtea1_write.exit73

td043mtea1_write.exit73:                          ; preds = %do.end.i72, %spi_message_add_tail.exit.i71.td043mtea1_write.exit73_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i58) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i57) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i56) #7
  %call7 = call fastcc i32 @td043mtea1_write_mirror(ptr noundef %lcd)
  call fastcc void @td043mtea1_write_gamma(ptr noundef %lcd)
  %90 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %powered_on, align 1
  br label %cleanup

cleanup:                                          ; preds = %td043mtea1_write.exit73, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %td043mtea1_write.exit73 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @td043mtea1_power_off(ptr nocapture noundef %lcd) unnamed_addr #2 align 64 {
entry:
  %msg.i9 = alloca %struct.spi_message, align 4
  %xfer.i10 = alloca %struct.spi_transfer, align 4
  %data.i11 = alloca i16, align 2
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powered_on = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 7
  %0 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered_on, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3544, ptr %data.i, align 2
  %11 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge

spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %call.i) #10
  br label %td043mtea1_write.exit

td043mtea1_write.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.td043mtea1_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  %reset_gpio = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 3
  %22 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value(ptr noundef %23, i32 noundef 1) #7
  call void @msleep(i32 noundef 50) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i9) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i10) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i11) #7
  %24 = getelementptr inbounds i8, ptr %msg.i9, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i9, ptr %msg.i9, align 4
  %prev.i.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %msg.i9, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i9, ptr %prev.i.i.i.i12, align 4
  %resources.i.i.i13 = getelementptr inbounds %struct.spi_message, ptr %msg.i9, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i13, ptr %resources.i.i.i13, align 4
  %prev.i2.i.i.i14 = getelementptr inbounds %struct.spi_message, ptr %msg.i9, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i13, ptr %prev.i2.i.i.i14, align 4
  %30 = getelementptr inbounds i8, ptr %xfer.i10, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %data.i11 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 3536, ptr %data.i11, align 2
  %33 = ptrtoint ptr %xfer.i10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.i11, ptr %xfer.i10, align 4
  %bits_per_word.i15 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i10, i32 0, i32 8
  %34 = ptrtoint ptr %bits_per_word.i15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %bits_per_word.i15, align 1
  %len.i16 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i10, i32 0, i32 2
  %35 = ptrtoint ptr %len.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %len.i16, align 4
  %transfer_list.i.i17 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i10, i32 0, i32 18
  %call.i.i.i.i18 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i17, ptr noundef nonnull %msg.i9, ptr noundef nonnull %msg.i9) #7
  br i1 %call.i.i.i.i18, label %if.end.i.i.i.i20, label %td043mtea1_write.exit.spi_message_add_tail.exit.i24_crit_edge

td043mtea1_write.exit.spi_message_add_tail.exit.i24_crit_edge: ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i24

if.end.i.i.i.i20:                                 ; preds = %td043mtea1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i17, ptr %prev.i.i.i.i12, align 4
  %37 = ptrtoint ptr %transfer_list.i.i17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i9, ptr %transfer_list.i.i17, align 4
  %prev3.i.i.i.i19 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i10, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i9, ptr %prev3.i.i.i.i19, align 4
  %39 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i17, ptr %msg.i9, align 4
  br label %spi_message_add_tail.exit.i24

spi_message_add_tail.exit.i24:                    ; preds = %if.end.i.i.i.i20, %td043mtea1_write.exit.spi_message_add_tail.exit.i24_crit_edge
  %40 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi.i, align 4
  %call.i22 = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp.i23, label %do.end.i25, label %spi_message_add_tail.exit.i24.td043mtea1_write.exit26_crit_edge

spi_message_add_tail.exit.i24.td043mtea1_write.exit26_crit_edge: ; preds = %spi_message_add_tail.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %td043mtea1_write.exit26

do.end.i25:                                       ; preds = %spi_message_add_tail.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.15, i32 noundef %call.i22) #10
  br label %td043mtea1_write.exit26

td043mtea1_write.exit26:                          ; preds = %do.end.i25, %spi_message_add_tail.exit.i24.td043mtea1_write.exit26_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i11) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i10) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i9) #7
  %vcc_reg = getelementptr inbounds %struct.td043mtea1_panel, ptr %lcd, i32 0, i32 2
  %44 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vcc_reg, align 4
  %call2 = call i32 @regulator_disable(ptr noundef %45) #7
  %46 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %powered_on, align 1
  br label %return

return:                                           ; preds = %td043mtea1_write.exit26, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powered_on = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_on, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @td043mtea1_power_off(ptr noundef %1)
  %4 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %powered_on, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spi_suspended = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %spi_suspended to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %spi_suspended, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td043mtea1_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi_suspended = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %spi_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %spi_suspended, align 2
  %powered_on = getelementptr inbounds %struct.td043mtea1_panel, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powered_on, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %powered_on, align 1
  %call2 = tail call fastcc i32 @td043mtea1_power_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_panel_tpo_td043mtea1__304_504_td043mtea1_driver_init6, !1, !"__initcall__kmod_panel_tpo_td043mtea1__304_504_td043mtea1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 504, i32 1}
!2 = !{ptr @__exitcall_td043mtea1_driver_exit, !1, !"__exitcall_td043mtea1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 506, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 507, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 508, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 498, i32 11}
!12 = !{ptr @td043mtea1_driver, !13, !"td043mtea1_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 493, i32 26}
!14 = !{ptr @td043mtea1_ids, !15, !"td043mtea1_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 486, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 433, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 436, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 438, i32 46}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 441, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 448, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @td043mtea1_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @td043mtea1_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 454, i32 3}
!34 = !{ptr @td043mtea1_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @td043mtea1_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @td043mtea1_def_gamma, !37, !"td043mtea1_def_gamma", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 49, i32 18}
!38 = !{ptr @td043mtea1_attr_group, !39, !"td043mtea1_attr_group", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 292, i32 37}
!40 = !{ptr @td043mtea1_attrs, !41, !"td043mtea1_attrs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 285, i32 26}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 281, i32 8}
!44 = !{ptr @dev_attr_vmirror, !43, !"dev_attr_vmirror", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 189, i32 25}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 93, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @td043mtea1_write._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @td043mtea1_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 282, i32 8}
!55 = !{ptr @dev_attr_mode, !54, !"dev_attr_mode", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 283, i32 8}
!58 = !{ptr @dev_attr_gamma, !57, !"dev_attr_gamma", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 248, i32 46}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 267, i32 20}
!63 = !{ptr @td043mtea1_funcs, !64, !"td043mtea1_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 375, i32 37}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 324, i32 3}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @td043mtea1_prepare._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @td043mtea1_prepare._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @td043mtea1_mode, !71, !"td043mtea1_mode", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 332, i32 38}
!72 = !{ptr @td043mtea1_of_match, !73, !"td043mtea1_of_match", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 479, i32 34}
!74 = !{ptr @td043mtea1_pm_ops, !75, !"td043mtea1_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-tpo-td043mtea1.c", i32 416, i32 8}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
!86 = !{!"auto-init"}

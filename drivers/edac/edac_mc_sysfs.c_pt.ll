; ModuleID = '/llk/IR_all_yes/drivers/edac/edac_mc_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_mc_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_ch_attribute = type { %struct.device_attribute, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }

@edac_mc_log_ue = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@edac_mc_log_ce = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@edac_mc_panic_on_ue = internal global { i32, [28 x i8] } zeroinitializer, align 32
@edac_mc_poll_msec = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_str_edac_mc_panic_on_ue = internal constant [30 x i8] c"edac_core.edac_mc_panic_on_ue\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_edac_mc_panic_on_ue = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_panic_on_ue, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_mc_panic_on_ue } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_panic_on_uetype237 = internal constant [43 x i8] c"edac_core.parmtype=edac_mc_panic_on_ue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_panic_on_ue238 = internal constant [74 x i8] c"edac_core.parm=edac_mc_panic_on_ue:Panic on uncorrected error: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_log_ue = internal constant [25 x i8] c"edac_core.edac_mc_log_ue\00", align 1
@__param_edac_mc_log_ue = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_log_ue, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_mc_log_ue } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_log_uetype239 = internal constant [38 x i8] c"edac_core.parmtype=edac_mc_log_ue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_log_ue240 = internal constant [77 x i8] c"edac_core.parm=edac_mc_log_ue:Log uncorrectable error to console: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_log_ce = internal constant [25 x i8] c"edac_core.edac_mc_log_ce\00", align 1
@__param_edac_mc_log_ce = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_log_ce, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_mc_log_ce } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_log_cetype241 = internal constant [38 x i8] c"edac_core.parmtype=edac_mc_log_ce:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_log_ce242 = internal constant [75 x i8] c"edac_core.parm=edac_mc_log_ce:Log correctable error to console: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_poll_msec = internal constant [28 x i8] c"edac_core.edac_mc_poll_msec\00", align 1
@__param_ops_edac_mc_poll_msec = internal constant %struct.kernel_param_ops { i32 0, ptr @edac_set_poll_msec, ptr @param_get_uint, ptr null }, align 4
@__param_edac_mc_poll_msec = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_poll_msec, ptr null, ptr @__param_ops_edac_mc_poll_msec, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_mc_poll_msec } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_poll_msec243 = internal constant [64 x i8] c"edac_core.parm=edac_mc_poll_msec:Polling period in milliseconds\00", section ".modinfo", align 1
@mci_attr_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @mci_attr_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mci_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mc%d\00", [27 x i8] zeroinitializer }, align 32
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@edac_create_sysfs_mci_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017EDAC DEBUG: %s: failure: create device %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"edac_create_sysfs_mci_device\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/edac/edac_mc_sysfs.c\00", [35 x i8] zeroinitializer }, align 32
@edac_create_sysfs_mci_device._entry_ptr = internal global ptr @edac_create_sysfs_mci_device._entry, section ".printk_index", align 4
@edac_create_sysfs_mci_device._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017EDAC DEBUG: %s: device %s created\0A\00", [59 x i8] zeroinitializer }, align 32
@edac_create_sysfs_mci_device._entry_ptr.6 = internal global ptr @edac_create_sysfs_mci_device._entry.4, section ".printk_index", align 4
@edac_remove_sysfs_mci_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"edac_remove_sysfs_mci_device\00", [35 x i8] zeroinitializer }, align 32
@edac_remove_sysfs_mci_device._entry_ptr = internal global ptr @edac_remove_sysfs_mci_device._entry, section ".printk_index", align 4
@edac_remove_sysfs_mci_device._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017EDAC DEBUG: %s: unregistering device %s\0A\00", [53 x i8] zeroinitializer }, align 32
@edac_remove_sysfs_mci_device._entry_ptr.11 = internal global ptr @edac_remove_sysfs_mci_device._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@edac_mc_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.13, ptr @.str.3, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edac_mc_sysfs_init\00", [45 x i8] zeroinitializer }, align 32
@edac_mc_sysfs_init._entry_ptr = internal global ptr @edac_mc_sysfs_init._entry, section ".printk_index", align 4
@edac_mc_sysfs_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.13, ptr @.str.3, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@edac_mc_sysfs_init._entry_ptr.15 = internal global ptr @edac_mc_sysfs_init._entry.14, section ".printk_index", align 4
@mci_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mci_attr_grp, ptr null], [24 x i8] zeroinitializer }, align 32
@mci_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @mci_attr_is_visible, ptr null, ptr @mci_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mci_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_reset_counters, ptr @dev_attr_mc_name, ptr @dev_attr_size_mb, ptr @dev_attr_seconds_since_reset, ptr @dev_attr_ue_noinfo_count, ptr @dev_attr_ce_noinfo_count, ptr @dev_attr_ue_count, ptr @dev_attr_ce_count, ptr @dev_attr_max_location, ptr @dev_attr_sdram_scrub_rate, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_sdram_scrub_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 0, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_sdram_scrub_rate_show, ptr @mci_sdram_scrub_rate_store }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdram_scrub_rate\00", [47 x i8] zeroinitializer }, align 32
@mci_sdram_scrub_rate_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017EDAC MC: Error reading scrub rate\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mci_sdram_scrub_rate_show\00", [38 x i8] zeroinitializer }, align 32
@mci_sdram_scrub_rate_show._entry_ptr = internal global ptr @mci_sdram_scrub_rate_show._entry, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@mci_sdram_scrub_rate_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014EDAC MC: Error setting scrub rate to: %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mci_sdram_scrub_rate_store\00", [37 x i8] zeroinitializer }, align 32
@mci_sdram_scrub_rate_store._entry_ptr = internal global ptr @mci_sdram_scrub_rate_store._entry, section ".printk_index", align 4
@dev_attr_reset_counters = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mci_reset_counters_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mc_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_ctl_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size_mb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_size_mb_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_seconds_since_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_seconds_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ue_noinfo_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_ue_noinfo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ce_noinfo_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_ce_noinfo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ue_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_ue_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ce_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_ce_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_location = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mci_max_location_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_counters\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mc_name\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"size_mb\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"seconds_since_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ue_noinfo_count\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ce_noinfo_count\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ue_count\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ce_count\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_location\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d \00", [25 x i8] zeroinitializer }, align 32
@edac_layer_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dimm_attr_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @dimm_attr_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rank%d\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dimm%d\00", [25 x i8] zeroinitializer }, align 32
@edac_create_dimm_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.38, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edac_create_dimm_object\00", [40 x i8] zeroinitializer }, align 32
@edac_create_dimm_object._entry_ptr = internal global ptr @edac_create_dimm_object._entry, section ".printk_index", align 4
@edac_create_dimm_object._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017EDAC DEBUG: %s: device %s created at location %s\0A\00", [44 x i8] zeroinitializer }, align 32
@edac_create_dimm_object._entry_ptr.41 = internal global ptr @edac_create_dimm_object._entry.39, section ".printk_index", align 4
@dimm_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dimm_attr_grp, ptr null], [24 x i8] zeroinitializer }, align 32
@dimm_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dimm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dimm_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_dimm_label, ptr @dev_attr_dimm_location, ptr @dev_attr_size, ptr @dev_attr_dimm_mem_type, ptr @dev_attr_dimm_dev_type, ptr @dev_attr_dimm_edac_mode, ptr @dev_attr_dimm_ce_count, ptr @dev_attr_dimm_ue_count, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_dimm_label = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_label_show, ptr @dimmdev_label_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_location = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_location_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_mem_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_mem_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_dev_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_dev_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_edac_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_edac_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_ce_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_ce_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dimm_ue_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dimmdev_ue_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dimm_label\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dimm_location\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dimm_mem_type\00", [18 x i8] zeroinitializer }, align 32
@edac_mem_types = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dimm_dev_type\00", [18 x i8] zeroinitializer }, align 32
@dev_types = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x1\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x2\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x4\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x8\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x16\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x32\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x64\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dimm_edac_mode\00", [17 x i8] zeroinitializer }, align 32
@edac_caps = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.47, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PARITY\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SECDED\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S2ECD2ED\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S4ECD4ED\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S8ECD8ED\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S16ECD16ED\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dimm_ce_count\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dimm_ue_count\00", [18 x i8] zeroinitializer }, align 32
@csrow_attr_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @csrow_attr_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@csrow_dev_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @csrow_dev_dimm_group, ptr @csrow_dev_ce_count_group, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csrow%d\00", [24 x i8] zeroinitializer }, align 32
@edac_create_csrow_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.68, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_create_csrow_object\00", [39 x i8] zeroinitializer }, align 32
@edac_create_csrow_object._entry_ptr = internal global ptr @edac_create_csrow_object._entry, section ".printk_index", align 4
@edac_create_csrow_object._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.68, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@edac_create_csrow_object._entry_ptr.70 = internal global ptr @edac_create_csrow_object._entry.69, section ".printk_index", align 4
@csrow_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @csrow_attr_grp, ptr null], [24 x i8] zeroinitializer }, align 32
@csrow_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @csrow_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@csrow_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_legacy_dev_type, ptr @dev_attr_legacy_mem_type, ptr @dev_attr_legacy_edac_mode, ptr @dev_attr_legacy_size_mb, ptr @dev_attr_legacy_ue_count, ptr @dev_attr_legacy_ce_count, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_dev_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_dev_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_mem_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_mem_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_edac_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_edac_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_size_mb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ue_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_ue_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ce_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @csrow_ce_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_type\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mem_type\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edac_mode\00", [22 x i8] zeroinitializer }, align 32
@csrow_dev_dimm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @csrow_dev_is_visible, ptr null, ptr @dynamic_csrow_dimm_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@csrow_dev_ce_count_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @csrow_dev_is_visible, ptr null, ptr @dynamic_csrow_ce_count_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dynamic_csrow_dimm_attr = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_legacy_ch0_dimm_label, ptr @dev_attr_legacy_ch1_dimm_label, ptr @dev_attr_legacy_ch2_dimm_label, ptr @dev_attr_legacy_ch3_dimm_label, ptr @dev_attr_legacy_ch4_dimm_label, ptr @dev_attr_legacy_ch5_dimm_label, ptr @dev_attr_legacy_ch6_dimm_label, ptr @dev_attr_legacy_ch7_dimm_label, ptr null], [60 x i8] zeroinitializer }, align 32
@csrow_dev_is_visible.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idx: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch0_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch1_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch2_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch3_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch4_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch5_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch6_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch7_dimm_label = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch0_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch1_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch2_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch3_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch4_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch5_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch6_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch7_dimm_label\00", [17 x i8] zeroinitializer }, align 32
@dynamic_csrow_ce_count_attr = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_legacy_ch0_ce_count, ptr @dev_attr_legacy_ch1_ce_count, ptr @dev_attr_legacy_ch2_ce_count, ptr @dev_attr_legacy_ch3_ce_count, ptr @dev_attr_legacy_ch4_ce_count, ptr @dev_attr_legacy_ch5_ce_count, ptr @dev_attr_legacy_ch6_ce_count, ptr @dev_attr_legacy_ch7_ce_count, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch0_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch1_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch2_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch3_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch4_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch5_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch6_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_legacy_ch7_ce_count = internal global { %struct.dev_ch_attribute, [32 x i8] } { %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_ce_count_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch0_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch1_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch2_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch3_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch4_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch5_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch6_ce_count\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch7_ce_count\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mc_attr_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017EDAC DEBUG: %s: device %s released\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mc_attr_release\00", [16 x i8] zeroinitializer }, align 32
@mc_attr_release._entry_ptr = internal global ptr @mc_attr_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"edac_mc_log_ue\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 26, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"edac_mc_log_ce\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 27, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"edac_mc_panic_on_ue\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 28, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"edac_mc_poll_msec\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 29, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"mci_attr_type\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 897, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"mci_pdev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 89, i32 23 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 919, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 925, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 930, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 970, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 982, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1014, i32 24 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1018, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1023, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"mci_attr_groups\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 892, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"mci_attr_grp\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 887, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"mci_attrs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 857, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"dev_attr_sdram_scrub_rate\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 854, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 733, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 737, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 713, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [24 x i8] c"dev_attr_reset_counters\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"dev_attr_mc_name\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"dev_attr_size_mb\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [29 x i8] c"dev_attr_seconds_since_reset\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"dev_attr_ue_noinfo_count\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [25 x i8] c"dev_attr_ce_noinfo_count\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"dev_attr_ue_count\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"dev_attr_ce_count\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"dev_attr_max_location\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 841, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 844, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 792, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 845, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 812, i32 23 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 846, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 783, i32 23 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 847, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 848, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 849, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 850, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 851, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 825, i32 25 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 835, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant [15 x i8] c"dimm_attr_type\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 604, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 629, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 631, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 637, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 646, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"dimm_attr_groups\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 599, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"dimm_attr_grp\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 595, i32 37 }
@___asan_gen_.292 = private unnamed_addr constant [11 x i8] c"dimm_attrs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 583, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"dev_attr_dimm_label\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [23 x i8] c"dev_attr_dimm_location\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [23 x i8] c"dev_attr_dimm_mem_type\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [23 x i8] c"dev_attr_dimm_dev_type\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"dev_attr_dimm_edac_mode\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [23 x i8] c"dev_attr_dimm_ce_count\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [23 x i8] c"dev_attr_dimm_ue_count\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 572, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 574, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 575, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 576, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 577, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [10 x i8] c"dev_types\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 94, i32 27 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 95, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 96, i32 13 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 97, i32 13 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 98, i32 13 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 99, i32 13 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 100, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 101, i32 14 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 102, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 578, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant [10 x i8] c"edac_caps\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 105, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 107, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 108, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 109, i32 18 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 110, i32 14 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 111, i32 18 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 112, i32 20 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 113, i32 20 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 114, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 115, i32 22 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 579, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 580, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant [16 x i8] c"csrow_attr_type\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 277, i32 33 }
@___asan_gen_.403 = private unnamed_addr constant [17 x i8] c"csrow_dev_groups\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 378, i32 38 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 414, i32 28 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 419, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 424, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"csrow_attr_groups\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 272, i32 38 }
@___asan_gen_.421 = private unnamed_addr constant [15 x i8] c"csrow_attr_grp\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 268, i32 37 }
@___asan_gen_.424 = private unnamed_addr constant [12 x i8] c"csrow_attrs\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 258, i32 26 }
@___asan_gen_.427 = private unnamed_addr constant [25 x i8] c"dev_attr_legacy_dev_type\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [25 x i8] c"dev_attr_legacy_mem_type\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [26 x i8] c"dev_attr_legacy_edac_mode\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [24 x i8] c"dev_attr_legacy_size_mb\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 250, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant [25 x i8] c"dev_attr_legacy_ue_count\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 254, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant [25 x i8] c"dev_attr_legacy_ce_count\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 255, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 251, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 252, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 253, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant [21 x i8] c"csrow_dev_dimm_group\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 368, i32 37 }
@___asan_gen_.457 = private unnamed_addr constant [25 x i8] c"csrow_dev_ce_count_group\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 373, i32 37 }
@___asan_gen_.460 = private unnamed_addr constant [24 x i8] c"dynamic_csrow_dimm_attr\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 303, i32 26 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 356, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch0_dimm_label\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch1_dimm_label\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch2_dimm_label\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch3_dimm_label\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch4_dimm_label\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch5_dimm_label\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch6_dimm_label\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [31 x i8] c"dev_attr_legacy_ch7_dimm_label\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 285, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 287, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 289, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 291, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 293, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 295, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 297, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 299, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [28 x i8] c"dynamic_csrow_ce_count_attr\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 334, i32 26 }
@___asan_gen_.517 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch0_ce_count\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch1_ce_count\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch2_ce_count\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch3_ce_count\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch4_ce_count\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch5_ce_count\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch6_ce_count\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [29 x i8] c"dev_attr_legacy_ch7_ce_count\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 316, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 318, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 320, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 322, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 324, i32 1 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 326, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 328, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 330, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [32 x i8] c"../drivers/edac/edac_mc_sysfs.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 997, i32 2 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_edac_mc_log_ce242, ptr @__UNIQUE_ID_edac_mc_log_cetype241, ptr @__UNIQUE_ID_edac_mc_log_ue240, ptr @__UNIQUE_ID_edac_mc_log_uetype239, ptr @__UNIQUE_ID_edac_mc_panic_on_ue238, ptr @__UNIQUE_ID_edac_mc_panic_on_uetype237, ptr @__UNIQUE_ID_edac_mc_poll_msec243, ptr @__param_edac_mc_log_ce, ptr @__param_edac_mc_log_ue, ptr @__param_edac_mc_panic_on_ue, ptr @__param_edac_mc_poll_msec, ptr @edac_create_csrow_object._entry, ptr @edac_create_csrow_object._entry.69, ptr @edac_create_csrow_object._entry_ptr, ptr @edac_create_csrow_object._entry_ptr.70, ptr @edac_create_dimm_object._entry, ptr @edac_create_dimm_object._entry.39, ptr @edac_create_dimm_object._entry_ptr, ptr @edac_create_dimm_object._entry_ptr.41, ptr @edac_create_sysfs_mci_device._entry, ptr @edac_create_sysfs_mci_device._entry.4, ptr @edac_create_sysfs_mci_device._entry_ptr, ptr @edac_create_sysfs_mci_device._entry_ptr.6, ptr @edac_mc_sysfs_init._entry, ptr @edac_mc_sysfs_init._entry.14, ptr @edac_mc_sysfs_init._entry_ptr, ptr @edac_mc_sysfs_init._entry_ptr.15, ptr @edac_remove_sysfs_mci_device._entry, ptr @edac_remove_sysfs_mci_device._entry.9, ptr @edac_remove_sysfs_mci_device._entry_ptr, ptr @edac_remove_sysfs_mci_device._entry_ptr.11, ptr @mc_attr_release._entry, ptr @mc_attr_release._entry_ptr, ptr @mci_sdram_scrub_rate_show._entry, ptr @mci_sdram_scrub_rate_show._entry_ptr, ptr @mci_sdram_scrub_rate_store._entry, ptr @mci_sdram_scrub_rate_store._entry_ptr, ptr @edac_mc_log_ue, ptr @edac_mc_log_ce, ptr @edac_mc_panic_on_ue, ptr @edac_mc_poll_msec, ptr @mci_attr_type, ptr @mci_pdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @mci_attr_groups, ptr @mci_attr_grp, ptr @mci_attrs, ptr @dev_attr_sdram_scrub_rate, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dev_attr_reset_counters, ptr @dev_attr_mc_name, ptr @dev_attr_size_mb, ptr @dev_attr_seconds_since_reset, ptr @dev_attr_ue_noinfo_count, ptr @dev_attr_ce_noinfo_count, ptr @dev_attr_ue_count, ptr @dev_attr_ce_count, ptr @dev_attr_max_location, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @dimm_attr_type, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @dimm_attr_groups, ptr @dimm_attr_grp, ptr @dimm_attrs, ptr @dev_attr_dimm_label, ptr @dev_attr_dimm_location, ptr @dev_attr_size, ptr @dev_attr_dimm_mem_type, ptr @dev_attr_dimm_dev_type, ptr @dev_attr_dimm_edac_mode, ptr @dev_attr_dimm_ce_count, ptr @dev_attr_dimm_ue_count, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @dev_types, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @edac_caps, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @csrow_attr_type, ptr @csrow_dev_groups, ptr @.str.67, ptr @.str.68, ptr @csrow_attr_groups, ptr @csrow_attr_grp, ptr @csrow_attrs, ptr @dev_attr_legacy_dev_type, ptr @dev_attr_legacy_mem_type, ptr @dev_attr_legacy_edac_mode, ptr @dev_attr_legacy_size_mb, ptr @dev_attr_legacy_ue_count, ptr @dev_attr_legacy_ce_count, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @csrow_dev_dimm_group, ptr @csrow_dev_ce_count_group, ptr @dynamic_csrow_dimm_attr, ptr @.str.74, ptr @dev_attr_legacy_ch0_dimm_label, ptr @dev_attr_legacy_ch1_dimm_label, ptr @dev_attr_legacy_ch2_dimm_label, ptr @dev_attr_legacy_ch3_dimm_label, ptr @dev_attr_legacy_ch4_dimm_label, ptr @dev_attr_legacy_ch5_dimm_label, ptr @dev_attr_legacy_ch6_dimm_label, ptr @dev_attr_legacy_ch7_dimm_label, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @dynamic_csrow_ce_count_attr, ptr @dev_attr_legacy_ch0_ce_count, ptr @dev_attr_legacy_ch1_ce_count, ptr @dev_attr_legacy_ch2_ce_count, ptr @dev_attr_legacy_ch3_ce_count, ptr @dev_attr_legacy_ch4_ce_count, ptr @dev_attr_legacy_ch5_ce_count, ptr @dev_attr_legacy_ch6_ce_count, ptr @dev_attr_legacy_ch7_ce_count, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_log_ue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_log_ce to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_panic_on_ue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_poll_msec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_attr_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_sysfs_mci_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_sysfs_mci_device._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_remove_sysfs_mci_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_remove_sysfs_mci_device._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_sysfs_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sdram_scrub_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_sdram_scrub_rate_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_sdram_scrub_rate_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset_counters to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mc_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size_mb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_seconds_since_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ue_noinfo_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ce_noinfo_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ue_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ce_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_location to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimm_attr_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_dimm_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_dimm_object._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimm_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimm_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimm_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_label to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_location to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_mem_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_dev_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_edac_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_ce_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dimm_ue_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_attr_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_dev_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_csrow_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_create_csrow_object._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_dev_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_mem_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_edac_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_size_mb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ue_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ce_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_dev_dimm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csrow_dev_ce_count_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_csrow_dimm_attr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch0_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch1_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch2_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch3_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch4_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch5_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch6_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch7_dimm_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_csrow_ce_count_attr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch0_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch1_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch2_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch3_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch4_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch5_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch6_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_legacy_ch7_ce_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_attr_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_log_ue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @edac_mc_log_ue, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_log_ce() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @edac_mc_log_ce, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_panic_on_ue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @edac_mc_panic_on_ue, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_poll_msec() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @edac_mc_poll_msec, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_create_sysfs_mci_device(ptr noundef %mci, ptr noundef %groups) local_unnamed_addr #1 align 64 {
entry:
  %location.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mci_attr_type, ptr %type, align 4
  %1 = load ptr, ptr @mci_pdev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 8
  %groups3 = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 34
  %3 = ptrtoint ptr %groups3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %groups, ptr %groups3, align 8
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %4 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mc_idx, align 4
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %mci, ptr noundef nonnull @.str, i32 noundef %5) #15
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mci, ptr %driver_data.i, align 4
  tail call void @pm_runtime_forbid(ptr noundef %mci) #15
  %call8 = tail call i32 @device_add(ptr noundef %mci) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %7 = load i32, ptr @edac_debug_level, align 4
  br i1 %cmp, label %do.body, label %do.body18

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp sgt i32 %7, 0
  br i1 %cmp9, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mci, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i) #18
  br label %cleanup

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp19 = icmp sgt i32 %7, -1
  br i1 %cmp19, label %do.end23, label %do.body18.do.end30_crit_edge

do.body18.do.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30

do.end23:                                         ; preds = %do.body18
  %init_name.i73 = getelementptr inbounds %struct.device, ptr %mci, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i73, align 8
  %tobool.not.i74 = icmp eq ptr %13, null
  br i1 %tobool.not.i74, label %if.end.i75, label %do.end23.dev_name.exit77_crit_edge

do.end23.dev_name.exit77_crit_edge:               ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit77

if.end.i75:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mci, align 4
  br label %dev_name.exit77

dev_name.exit77:                                  ; preds = %if.end.i75, %do.end23.dev_name.exit77_crit_edge
  %retval.0.i76 = phi ptr [ %15, %if.end.i75 ], [ %13, %do.end23.dev_name.exit77_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i76) #18
  br label %do.end30

do.end30:                                         ; preds = %dev_name.exit77, %do.body18.do.end30_crit_edge
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 21
  %16 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dimms, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not93 = icmp eq ptr %19, null
  br i1 %tobool.not93, label %do.end30.for.end_crit_edge, label %for.body.lr.ph

do.end30.for.end_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end30
  %csbased.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 19
  %tot_dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %dimm.094 = phi ptr [ %19, %for.body.lr.ph ], [ %49, %cond.end.for.body_crit_edge ]
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %dimm.094, i32 0, i32 9
  %20 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %if.end33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %mci1.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.094, i32 0, i32 3
  %22 = ptrtoint ptr %mci1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mci, ptr %mci1.i, align 4
  %type.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 4
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dimm_attr_type, ptr %type.i, align 4
  %release.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 35
  %24 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dimm_release, ptr %release.i, align 4
  call void @device_initialize(ptr noundef nonnull %dimm.094) #15
  %parent.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mci, ptr %parent.i, align 8
  %26 = ptrtoint ptr %csbased.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %csbased.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i78 = icmp eq i8 %27, 0
  %idx8.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.094, i32 0, i32 4
  %28 = ptrtoint ptr %idx8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx8.i, align 8
  %.str.37..str.36.i = select i1 %tobool.not.i78, ptr @.str.37, ptr @.str.36
  %call9.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %dimm.094, ptr noundef nonnull %.str.37..str.36.i, i32 noundef %29) #15
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dimm.094, ptr %driver_data.i.i, align 4
  call void @pm_runtime_forbid(ptr noundef %mci) #15
  %call13.i = call i32 @device_add(ptr noundef nonnull %dimm.094) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end25.i, label %do.body.i

do.body.i:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %31 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp sgt i32 %31, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.edac_create_dimm_object.exit_crit_edge

do.body.i.edac_create_dimm_object.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %edac_create_dimm_object.exit

do.end.i:                                         ; preds = %do.body.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %dimm.094 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dimm.094, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %do.end.i.dev_name.exit.i_crit_edge ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i) #18
  br label %edac_create_dimm_object.exit

if.end25.i:                                       ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %location.i) #15
  %36 = call ptr @memset(ptr %location.i, i32 255, i32 80)
  %call26.i = call i32 @edac_dimm_info_location(ptr noundef nonnull %dimm.094, ptr noundef nonnull %location.i, i32 noundef 80) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %37 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp28.i = icmp sgt i32 %37, -1
  br i1 %cmp28.i, label %do.end32.i, label %if.end25.i.edac_create_dimm_object.exit.thread_crit_edge

if.end25.i.edac_create_dimm_object.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %edac_create_dimm_object.exit.thread

do.end32.i:                                       ; preds = %if.end25.i
  %init_name.i60.i = getelementptr inbounds %struct.device, ptr %dimm.094, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i60.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i60.i, align 8
  %tobool.not.i61.i = icmp eq ptr %39, null
  br i1 %tobool.not.i61.i, label %if.end.i62.i, label %do.end32.i.dev_name.exit64.i_crit_edge

do.end32.i.dev_name.exit64.i_crit_edge:           ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit64.i

if.end.i62.i:                                     ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %dimm.094 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dimm.094, align 4
  br label %dev_name.exit64.i

dev_name.exit64.i:                                ; preds = %if.end.i62.i, %do.end32.i.dev_name.exit64.i_crit_edge
  %retval.0.i63.i = phi ptr [ %41, %if.end.i62.i ], [ %39, %do.end32.i.dev_name.exit64.i_crit_edge ]
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i63.i, ptr noundef nonnull %location.i) #18
  br label %edac_create_dimm_object.exit.thread

edac_create_dimm_object.exit.thread:              ; preds = %dev_name.exit64.i, %if.end25.i.edac_create_dimm_object.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %location.i) #15
  br label %for.inc

edac_create_dimm_object.exit:                     ; preds = %dev_name.exit.i, %do.body.i.edac_create_dimm_object.exit_crit_edge
  call void @put_device(ptr noundef nonnull %dimm.094) #15
  br label %fail

for.inc:                                          ; preds = %edac_create_dimm_object.exit.thread, %for.body.for.inc_crit_edge
  %idx = getelementptr inbounds %struct.dimm_info, ptr %dimm.094, i32 0, i32 4
  %42 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx, align 8
  %add = add i32 %43, 1
  %44 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tot_dimms, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %45)
  %cmp38 = icmp ult i32 %add, %45
  br i1 %cmp38, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %46 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dimms, align 4
  %arrayidx42 = getelementptr ptr, ptr %47, i32 %add
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx42, align 4
  %tobool.not = icmp eq ptr %49, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %do.end30.for.end_crit_edge
  %nr_csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %50 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_csrows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp44.not.i = icmp eq i32 %51, 0
  br i1 %cmp44.not.i, label %for.end.if.end46_crit_edge, label %for.body.lr.ph.i

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

for.body.lr.ph.i:                                 ; preds = %for.end
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csrows.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %53, i32 %i.045.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %nr_channels.i.i = getelementptr inbounds %struct.csrow_info, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp6.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp6.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %channels.i.i = getelementptr inbounds %struct.csrow_info, ptr %55, i32 0, i32 9
  %58 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %nr_pages.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %chan.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %59, i32 %chan.07.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  %dimm.i.i = getelementptr inbounds %struct.rank_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dimm.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dimm.i.i, align 4
  %nr_pages1.i.i = getelementptr inbounds %struct.dimm_info, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %nr_pages1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_pages1.i.i, align 4
  %add.i.i = add i32 %65, %nr_pages.08.i.i
  %inc.i.i = add nuw i32 %chan.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %57
  br i1 %exitcond.not.i.i, label %nr_pages_per_csrow.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

nr_pages_per_csrow.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i79 = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i79, label %nr_pages_per_csrow.exit.i.for.inc.i_crit_edge, label %if.end.i81

nr_pages_per_csrow.exit.i.for.inc.i_crit_edge:    ; preds = %nr_pages_per_csrow.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i81:                                       ; preds = %nr_pages_per_csrow.exit.i
  %type.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 4
  %66 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @csrow_attr_type, ptr %type.i.i, align 4
  %groups.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 34
  %67 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @csrow_dev_groups, ptr %groups.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 35
  %68 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @csrow_release, ptr %release.i.i, align 4
  call void @device_initialize(ptr noundef %55) #15
  %parent.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 1
  %69 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mci, ptr %parent.i.i, align 8
  %mci6.i.i = getelementptr inbounds %struct.csrow_info, ptr %55, i32 0, i32 7
  %70 = ptrtoint ptr %mci6.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mci, ptr %mci6.i.i, align 8
  %call.i.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %55, ptr noundef nonnull @.str.67, i32 noundef %i.045.i) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %55, ptr %driver_data.i.i.i, align 4
  %call10.i.i = call i32 @device_add(ptr noundef %55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i.i80 = icmp eq i32 %call10.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %72 = load i32, ptr @edac_debug_level, align 4
  br i1 %tobool.not.i.i80, label %do.body20.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i.i = icmp sgt i32 %72, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.edac_create_csrow_object.exit.i_crit_edge

do.body.i.i.edac_create_csrow_object.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %edac_create_csrow_object.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %73 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %55, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %76, %if.end.i.i.i ], [ %74, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i.i) #18
  br label %edac_create_csrow_object.exit.i

do.body20.i.i:                                    ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp21.i.i = icmp sgt i32 %72, -1
  br i1 %cmp21.i.i, label %do.end25.i.i, label %do.body20.i.i.for.inc.i_crit_edge

do.body20.i.i.for.inc.i_crit_edge:                ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

do.end25.i.i:                                     ; preds = %do.body20.i.i
  %init_name.i47.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %77 = ptrtoint ptr %init_name.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i47.i.i, align 8
  %tobool.not.i48.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i48.i.i, label %if.end.i49.i.i, label %do.end25.i.i.dev_name.exit51.i.i_crit_edge

do.end25.i.i.dev_name.exit51.i.i_crit_edge:       ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit51.i.i

if.end.i49.i.i:                                   ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %55, align 4
  br label %dev_name.exit51.i.i

dev_name.exit51.i.i:                              ; preds = %if.end.i49.i.i, %do.end25.i.i.dev_name.exit51.i.i_crit_edge
  %retval.0.i50.i.i = phi ptr [ %80, %if.end.i49.i.i ], [ %78, %do.end25.i.i.dev_name.exit51.i.i_crit_edge ]
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i50.i.i) #18
  br label %for.inc.i

edac_create_csrow_object.exit.i:                  ; preds = %dev_name.exit.i.i, %do.body.i.i.edac_create_csrow_object.exit.i_crit_edge
  call void @put_device(ptr noundef %55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp4.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp4.i, label %for.cond7.preheader.i, label %edac_create_csrow_object.exit.i.for.inc.i_crit_edge

edac_create_csrow_object.exit.i.for.inc.i_crit_edge: ; preds = %edac_create_csrow_object.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.cond7.preheader.i:                            ; preds = %edac_create_csrow_object.exit.i
  %i.147.i = add i32 %i.045.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.147.i)
  %cmp848.i = icmp sgt i32 %i.147.i, -1
  br i1 %cmp848.i, label %for.cond7.preheader.i.for.body9.i_crit_edge, label %for.cond7.preheader.i.fail_crit_edge

for.cond7.preheader.i.fail_crit_edge:             ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.cond7.preheader.i.for.body9.i_crit_edge:      ; preds = %for.cond7.preheader.i
  br label %for.body9.i

for.inc.i:                                        ; preds = %edac_create_csrow_object.exit.i.for.inc.i_crit_edge, %dev_name.exit51.i.i, %do.body20.i.i.for.inc.i_crit_edge, %nr_pages_per_csrow.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %81 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_csrows.i, align 4
  %cmp.i82 = icmp ult i32 %inc.i, %82
  br i1 %cmp.i82, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end46_crit_edge

for.inc.i.if.end46_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body9.i:                                      ; preds = %for.inc19.i.for.body9.i_crit_edge, %for.cond7.preheader.i.for.body9.i_crit_edge
  %i.149.i = phi i32 [ %i.1.i, %for.inc19.i.for.body9.i_crit_edge ], [ %i.147.i, %for.cond7.preheader.i.for.body9.i_crit_edge ]
  %83 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %csrows.i, align 8
  %arrayidx11.i = getelementptr ptr, ptr %84, i32 %i.149.i
  %85 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx11.i, align 4
  %state_in_sysfs.i.i = getelementptr inbounds %struct.kobject, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %state_in_sysfs.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %state_in_sysfs.i.i, align 4
  %88 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool13.not.i = icmp eq i8 %88, 0
  br i1 %tobool13.not.i, label %for.body9.i.for.inc19.i_crit_edge, label %if.then14.i

for.body9.i.for.inc19.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

if.then14.i:                                      ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @device_unregister(ptr noundef %86) #15
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.then14.i, %for.body9.i.for.inc19.i_crit_edge
  %i.1.i = add i32 %i.149.i, -1
  %cmp8.i = icmp sgt i32 %i.1.i, -1
  br i1 %cmp8.i, label %for.inc19.i.for.body9.i_crit_edge, label %for.inc19.i.fail_crit_edge

for.inc19.i.fail_crit_edge:                       ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.inc19.i.for.body9.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

if.end46:                                         ; preds = %for.inc.i.if.end46_crit_edge, %for.end.if.end46_crit_edge
  call void @edac_create_debugfs_nodes(ptr noundef %mci) #15
  br label %cleanup

fail:                                             ; preds = %for.inc19.i.fail_crit_edge, %for.cond7.preheader.i.fail_crit_edge, %edac_create_dimm_object.exit
  %err.0 = phi i32 [ %call13.i, %edac_create_dimm_object.exit ], [ %call10.i.i, %for.cond7.preheader.i.fail_crit_edge ], [ %call10.i.i, %for.inc19.i.fail_crit_edge ]
  call void @edac_remove_sysfs_mci_device(ptr noundef %mci)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end46, %dev_name.exit, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ 0, %if.end46 ], [ %call8, %dev_name.exit ], [ %call8, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_create_debugfs_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_remove_sysfs_mci_device(ptr noundef %mci) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %mci, i32 0, i32 8
  %0 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %2 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp sgt i32 %2, -1
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %debugfs = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 37
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %4) #15
  %nr_csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %5 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_csrows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not.i = icmp eq i32 %6, 0
  br i1 %cmp9.not.i, label %do.end6.edac_delete_csrow_objects.exit_crit_edge, label %for.body.lr.ph.i

do.end6.edac_delete_csrow_objects.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %edac_delete_csrow_objects.exit

for.body.lr.ph.i:                                 ; preds = %do.end6
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csrows.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %state_in_sysfs.i.i = getelementptr inbounds %struct.kobject, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %state_in_sysfs.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %state_in_sysfs.i.i, align 4
  %12 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @device_unregister(ptr noundef %10) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %13 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_csrows.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.edac_delete_csrow_objects.exit_crit_edge

for.inc.i.edac_delete_csrow_objects.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %edac_delete_csrow_objects.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

edac_delete_csrow_objects.exit:                   ; preds = %for.inc.i.edac_delete_csrow_objects.exit_crit_edge, %do.end6.edac_delete_csrow_objects.exit_crit_edge
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 21
  %15 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dimms, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool7.not50 = icmp eq ptr %18, null
  br i1 %tobool7.not50, label %edac_delete_csrow_objects.exit.for.end_crit_edge, label %for.body.lr.ph

edac_delete_csrow_objects.exit.for.end_crit_edge: ; preds = %edac_delete_csrow_objects.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %edac_delete_csrow_objects.exit
  %tot_dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %dimm.051 = phi ptr [ %18, %for.body.lr.ph ], [ %33, %cond.end.for.body_crit_edge ]
  %state_in_sysfs.i44 = getelementptr inbounds %struct.kobject, ptr %dimm.051, i32 0, i32 8
  %19 = ptrtoint ptr %state_in_sysfs.i44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i45 = load i8, ptr %state_in_sysfs.i44, align 4
  %20 = and i8 %bf.load.i45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %do.body13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body13:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %21 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14 = icmp sgt i32 %21, 0
  br i1 %cmp14, label %do.end18, label %do.body13.do.end25_crit_edge

do.body13.do.end25_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

do.end18:                                         ; preds = %do.body13
  %init_name.i = getelementptr inbounds %struct.device, ptr %dimm.051, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i49 = icmp eq ptr %23, null
  br i1 %tobool.not.i49, label %if.end.i, label %do.end18.dev_name.exit_crit_edge

do.end18.dev_name.exit_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %dimm.051 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dimm.051, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.end18.dev_name.exit_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #18
  br label %do.end25

do.end25:                                         ; preds = %dev_name.exit, %do.body13.do.end25_crit_edge
  tail call void @device_unregister(ptr noundef nonnull %dimm.051) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %for.body.for.inc_crit_edge
  %idx = getelementptr inbounds %struct.dimm_info, ptr %dimm.051, i32 0, i32 4
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 8
  %add = add i32 %27, 1
  %28 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tot_dimms, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp27 = icmp ult i32 %add, %29
  br i1 %cmp27, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %30 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dimms, align 4
  %arrayidx31 = getelementptr ptr, ptr %31, i32 %add
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx31, align 4
  %tobool7.not = icmp eq ptr %33, null
  br i1 %tobool7.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %edac_delete_csrow_objects.exit.for.end_crit_edge
  tail call void @device_del(ptr noundef %mci) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_mc_sysfs_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 928) #19
  store ptr %call7.i.i, ptr @mci_pdev, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @edac_get_sysfs_subsys() #15
  %1 = load ptr, ptr @mci_pdev, align 4
  %bus = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %bus, align 8
  %release = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mc_attr_release, ptr %release, align 4
  %init_name = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.12, ptr %init_name, align 8
  %call2 = tail call i32 @device_register(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %5 = load i32, ptr @edac_debug_level, align 4
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

do.end:                                           ; preds = %do.body
  %6 = load ptr, ptr @mci_pdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i) #18
  br label %do.end11

do.end11:                                         ; preds = %dev_name.exit, %do.body.do.end11_crit_edge
  %11 = load ptr, ptr @mci_pdev, align 4
  tail call void @put_device(ptr noundef %11) #15
  br label %cleanup

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp14 = icmp sgt i32 %5, -1
  br i1 %cmp14, label %do.end18, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  %12 = load ptr, ptr @mci_pdev, align 4
  %init_name.i26 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i26, align 8
  %tobool.not.i27 = icmp eq ptr %14, null
  br i1 %tobool.not.i27, label %if.end.i28, label %do.end18.dev_name.exit30_crit_edge

do.end18.dev_name.exit30_crit_edge:               ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit30

if.end.i28:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit30

dev_name.exit30:                                  ; preds = %if.end.i28, %do.end18.dev_name.exit30_crit_edge
  %retval.0.i29 = phi ptr [ %16, %if.end.i28 ], [ %14, %do.end18.dev_name.exit30_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i29) #18
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit30, %do.body13.cleanup_crit_edge, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end11 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit30 ], [ 0, %do.body13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_attr_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef %retval.0.i) #18
  br label %do.end3

do.end3:                                          ; preds = %dev_name.exit, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %dev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_mc_sysfs_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mci_pdev, align 4
  tail call void @device_unregister(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_set_poll_msec(ptr noundef %val, ptr nocapture noundef readonly %kp) #1 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #15
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !314
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtouint(ptr noundef nonnull %val, i32 noundef 0, ptr noundef nonnull %i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %2)
  %cmp = icmp ult i32 %2, 1000
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %3 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %5, align 4
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  call void @edac_mc_reset_delay_period(i32 noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_reset_delay_period(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mci_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %attr, @dev_attr_sdram_scrub_rate
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %get_sdram_scrub_rate = getelementptr inbounds %struct.mem_ctl_info, ptr %kobj, i32 0, i32 10
  %2 = ptrtoint ptr %get_sdram_scrub_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_sdram_scrub_rate, align 8
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, i16 0, i16 292
  %set_sdram_scrub_rate = getelementptr inbounds %struct.mem_ctl_info, ptr %kobj, i32 0, i32 9
  %4 = ptrtoint ptr %set_sdram_scrub_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_sdram_scrub_rate, align 4
  %tobool5.not = icmp eq ptr %5, null
  %6 = or i16 %spec.select, 128
  %mode.1 = select i1 %tobool5.not, i16 %spec.select, i16 %6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %1, %if.then ], [ %mode.1, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_sdram_scrub_rate_show(ptr noundef %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %get_sdram_scrub_rate = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %get_sdram_scrub_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_sdram_scrub_rate, align 8
  %call = tail call i32 %1(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.19, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_sdram_scrub_rate_store(ptr noundef %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data, i32 noundef %count) #1 align 64 {
entry:
  %bandwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #15
  %0 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bandwidth, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %data, i32 noundef 10, ptr noundef nonnull %bandwidth) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_sdram_scrub_rate = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %set_sdram_scrub_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_sdram_scrub_rate, align 4
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth, align 4
  %call1 = call i32 %2(ptr noundef %dev, i32 noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %6) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_reset_counters_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef readnone %data, i32 noundef returned %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_noinfo_count = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 28
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 15
  %0 = call ptr @memset(ptr %ce_noinfo_count, i32 0, i32 16)
  %1 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp43.not = icmp eq i32 %2, 0
  br i1 %cmp43.not, label %entry.for.end8_crit_edge, label %for.body.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end8

for.body.lr.ph:                                   ; preds = %entry
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %row.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csrows, align 8
  %arrayidx = getelementptr ptr, ptr %4, i32 %row.044
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %ue_count = getelementptr inbounds %struct.csrow_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ue_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ue_count, align 8
  %ce_count = getelementptr inbounds %struct.csrow_info, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ce_count, align 4
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp241.not = icmp eq i32 %10, 0
  br i1 %cmp241.not, label %for.body.for.end_crit_edge, label %for.body3.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.body
  %channels = getelementptr inbounds %struct.csrow_info, ptr %6, i32 0, i32 9
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %chan.042 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.body3.for.body3_crit_edge ]
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 8
  %arrayidx4 = getelementptr ptr, ptr %12, i32 %chan.042
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %ce_count5 = getelementptr inbounds %struct.rank_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ce_count5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ce_count5, align 4
  %inc = add nuw i32 %chan.042, 1
  %16 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_channels, align 4
  %cmp2 = icmp ult i32 %inc, %17
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end_crit_edge

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc7 = add nuw i32 %row.044, 1
  %18 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_csrows, align 4
  %cmp = icmp ult i32 %inc7, %19
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end8_crit_edge

for.end.for.end8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end8

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end8:                                         ; preds = %for.end.for.end8_crit_edge, %entry.for.end8_crit_edge
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 21
  %20 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dimms, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not45 = icmp eq ptr %23, null
  br i1 %tobool.not45, label %for.end8.for.end20_crit_edge, label %for.body11.lr.ph

for.end8.for.end20_crit_edge:                     ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end20

for.body11.lr.ph:                                 ; preds = %for.end8
  %tot_dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 20
  br label %for.body11

for.body11:                                       ; preds = %cond.end.for.body11_crit_edge, %for.body11.lr.ph
  %dimm.046 = phi ptr [ %23, %for.body11.lr.ph ], [ %33, %cond.end.for.body11_crit_edge ]
  %ue_count12 = getelementptr inbounds %struct.dimm_info, ptr %dimm.046, i32 0, i32 14
  %24 = ptrtoint ptr %ue_count12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ue_count12, align 8
  %ce_count13 = getelementptr inbounds %struct.dimm_info, ptr %dimm.046, i32 0, i32 13
  %25 = ptrtoint ptr %ce_count13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ce_count13, align 4
  %idx = getelementptr inbounds %struct.dimm_info, ptr %dimm.046, i32 0, i32 4
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 8
  %add = add i32 %27, 1
  %28 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tot_dimms, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp15 = icmp ult i32 %add, %29
  br i1 %cmp15, label %cond.end, label %for.body11.for.end20_crit_edge

for.body11.for.end20_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end20

cond.end:                                         ; preds = %for.body11
  %30 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dimms, align 4
  %arrayidx19 = getelementptr ptr, ptr %31, i32 %add
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx19, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %cond.end.for.end20_crit_edge, label %cond.end.for.body11_crit_edge

cond.end.for.body11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

cond.end.for.end20_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end20

for.end20:                                        ; preds = %cond.end.for.end20_crit_edge, %for.body11.for.end20_crit_edge, %for.end8.for.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 27
  %35 = ptrtoint ptr %start_time to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %start_time, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_ctl_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_name, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_size_mb_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end8_crit_edge, label %for.body.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end8

for.body.lr.ph:                                   ; preds = %entry
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csrows, align 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %csrow_idx.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.end.for.body_crit_edge ]
  %total_pages.020 = phi i32 [ 0, %for.body.lr.ph ], [ %total_pages.1.lcssa, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %csrow_idx.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp216.not = icmp eq i32 %7, 0
  br i1 %cmp216.not, label %for.body.for.end_crit_edge, label %for.body3.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.body
  %channels = getelementptr inbounds %struct.csrow_info, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels, align 8
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %j.018 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.body3.for.body3_crit_edge ]
  %total_pages.117 = phi i32 [ %total_pages.020, %for.body3.lr.ph ], [ %add, %for.body3.for.body3_crit_edge ]
  %arrayidx4 = getelementptr ptr, ptr %9, i32 %j.018
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %dimm5 = getelementptr inbounds %struct.rank_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dimm5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dimm5, align 4
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pages, align 4
  %add = add i32 %15, %total_pages.117
  %inc = add nuw i32 %j.018, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body3.for.end_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.body.for.end_crit_edge
  %total_pages.1.lcssa = phi i32 [ %total_pages.020, %for.body.for.end_crit_edge ], [ %add, %for.body3.for.end_crit_edge ]
  %inc7 = add nuw i32 %csrow_idx.021, 1
  %exitcond23.not = icmp eq i32 %inc7, %1
  br i1 %exitcond23.not, label %for.end.for.end8_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.for.end8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end8

for.end8:                                         ; preds = %for.end.for.end8_crit_edge, %entry.for.end8_crit_edge
  %total_pages.0.lcssa = phi i32 [ 0, %entry.for.end8_crit_edge ], [ %total_pages.1.lcssa, %for.end.for.end8_crit_edge ]
  %shr = ashr i32 %total_pages.0.lcssa, 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_seconds_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start_time, align 4
  %sub = sub i32 %0, %2
  %div = udiv i32 %sub, 100
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.28, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_ue_noinfo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ue_noinfo_count = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %ue_noinfo_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ue_noinfo_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_ce_noinfo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_noinfo_count = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ce_noinfo_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_noinfo_count, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_ue_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ue_mc = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %ue_mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ue_mc, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_ce_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_mc = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %ce_mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_mc, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mci_max_location_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %n_layers = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %layers = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %p.027 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr6, %if.end.for.body_crit_edge ]
  %len.026 = phi i32 [ 4096, %for.body.lr.ph ], [ %sub4, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layers, align 8
  %arrayidx = getelementptr %struct.edac_mc_layer, ptr %3, i32 %i.028
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %size = getelementptr %struct.edac_mc_layer, ptr %3, i32 %i.028, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub = add i32 %9, -1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.027, i32 noundef %len.026, ptr noundef nonnull @.str.34, ptr noundef %7, i32 noundef %sub) #15
  %sub4 = sub i32 %len.026, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub4)
  %cmp5 = icmp slt i32 %sub4, 1
  br i1 %cmp5, label %for.body.out_crit_edge, label %if.end

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %for.body
  %add.ptr6 = getelementptr i8, ptr %p.027, i32 %call
  %inc = add nuw i32 %i.028, 1
  %10 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_layers, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 4096, %entry.for.end_crit_edge ], [ %sub4, %if.end.for.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %data, %entry.for.end_crit_edge ], [ %add.ptr6, %if.end.for.end_crit_edge ]
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.lcssa, i32 noundef %len.0.lcssa, ptr noundef nonnull @.str.35) #15
  %add.ptr8 = getelementptr i8, ptr %p.0.lcssa, i32 %call7
  br label %out

out:                                              ; preds = %for.end, %for.body.out_crit_edge
  %p.1 = phi ptr [ %add.ptr8, %for.end ], [ %p.027, %for.body.out_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dimm_release(ptr nocapture noundef %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_dimm_info_location(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_label_show(ptr noundef %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %label = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %label, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 33, ptr noundef nonnull @.str.24, ptr noundef %label)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dimmdev_label_store(ptr noundef %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef readonly %data, i32 noundef %count) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.if.end10_crit_edge [
    i8 0, label %if.end.if.then8_crit_edge
    i8 10, label %if.end.if.then8_crit_edge32
  ]

if.end.if.then8_crit_edge32:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge32
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %copy_count.0 = phi i32 [ %sub, %if.then8 ], [ %count, %if.end.if.end10_crit_edge ]
  %3 = add i32 %copy_count.0, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %3)
  %4 = icmp ult i32 %3, -31
  br i1 %4, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %label = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %label, ptr noundef %data, i32 noundef %copy_count.0)
  %arrayidx19 = getelementptr %struct.dimm_info, ptr %dev, i32 0, i32 1, i32 %copy_count.0
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx19, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_location_show(ptr noundef %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @edac_dimm_info_location(ptr noundef %dev, ptr noundef %data, i32 noundef 4096) #15
  %add.ptr1 = getelementptr i8, ptr %data, i32 %call
  %sub = sub i32 4096, %call
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub, ptr noundef nonnull @.str.35) #15
  %add = add i32 %call2, %call
  ret i32 %add
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages, align 4
  %shr = lshr i32 %1, 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_mem_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mtype = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %mtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtype, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @edac_mem_types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_dev_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dtype = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %dtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtype, align 8
  %arrayidx = getelementptr [8 x ptr], ptr @dev_types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_edac_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %edac_mode = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %edac_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %edac_mode, align 8
  %arrayidx = getelementptr [10 x ptr], ptr @edac_caps, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_ce_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dimmdev_ue_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ue_count = getelementptr inbounds %struct.dimm_info, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %ue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ue_count, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @csrow_release(ptr nocapture noundef %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_dev_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dimm, align 4
  %dtype = getelementptr inbounds %struct.dimm_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtype, align 8
  %arrayidx1 = getelementptr [8 x ptr], ptr @dev_types, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_mem_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dimm, align 4
  %mtype = getelementptr inbounds %struct.dimm_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtype, align 4
  %arrayidx1 = getelementptr [0 x ptr], ptr @edac_mem_types, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_edac_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dimm, align 4
  %edac_mode = getelementptr inbounds %struct.dimm_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %edac_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %edac_mode, align 8
  %arrayidx1 = getelementptr [10 x ptr], ptr @edac_caps, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.24, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %nr_pages.08 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dimm, align 4
  %nr_pages1 = getelementptr inbounds %struct.dimm_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %nr_pages1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages1, align 4
  %add = add i32 %9, %nr_pages.08
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo = lshr i32 %add, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %nr_pages.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %nr_pages.0.lcssa)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_ue_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ue_count = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %ue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ue_count, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csrow_ce_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @csrow_dev_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %idx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp1 = icmp ugt i32 %idx, 7
  br i1 %cmp1, label %land.end, label %if.end38

land.end:                                         ; preds = %if.end
  %.b49 = load i1, ptr @csrow_dev_is_visible.__already_done, align 1
  br i1 %.b49, label %land.end.cleanup_crit_edge, label %if.then7, !prof !315

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @csrow_dev_is_visible.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.74, i32 noundef %idx) #15
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %channels = getelementptr inbounds %struct.csrow_info, ptr %kobj, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dimm, align 4
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool39.not = icmp eq i32 %9, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.end41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end38.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %if.end41 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_dimm_label_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dev_ch_attribute, ptr %mattr, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dimm = getelementptr inbounds %struct.rank_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dimm, align 4
  %label = getelementptr inbounds %struct.dimm_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %label, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 33, ptr noundef nonnull @.str.24, ptr noundef %label)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @channel_dimm_label_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mattr, ptr nocapture noundef readonly %data, i32 noundef %count) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dev_ch_attribute, ptr %mattr, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx4 = getelementptr i8, ptr %data, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %7, label %if.end.if.end14_crit_edge [
    i8 0, label %if.end.if.then12_crit_edge
    i8 10, label %if.end.if.then12_crit_edge39
  ]

if.end.if.then12_crit_edge39:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.if.then12_crit_edge39
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %copy_count.0 = phi i32 [ %sub, %if.then12 ], [ %count, %if.end.if.end14_crit_edge ]
  %9 = add i32 %copy_count.0, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %9)
  %10 = icmp ult i32 %9, -31
  br i1 %10, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %dimm = getelementptr inbounds %struct.rank_info, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dimm, align 4
  %label = getelementptr inbounds %struct.dimm_info, ptr %12, i32 0, i32 1
  %call = tail call ptr @strncpy(ptr noundef %label, ptr noundef %data, i32 noundef %copy_count.0)
  %13 = ptrtoint ptr %dimm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dimm, align 4
  %arrayidx24 = getelementptr %struct.dimm_info, ptr %14, i32 0, i32 1, i32 %copy_count.0
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx24, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_ce_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mattr, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dev_ch_attribute, ptr %mattr, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %channels = getelementptr inbounds %struct.csrow_info, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ce_count = getelementptr inbounds %struct.rank_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ce_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !66, !68, !70, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !89, !90, !92, !93, !95, !97, !98, !100, !102, !103, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !205, !206, !208, !210, !211, !212, !214, !215, !217, !219, !221, !223, !225, !226, !228, !229, !231, !232, !234, !236, !238, !240, !242, !244, !245, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__param_edac_mc_panic_on_ue, !1, !"__param_edac_mc_panic_on_ue", i1 false, i1 false}
!1 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_edac_mc_panic_on_uetype237, !1, !"__UNIQUE_ID_edac_mc_panic_on_uetype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_edac_mc_panic_on_ue238, !4, !"__UNIQUE_ID_edac_mc_panic_on_ue238", i1 false, i1 false}
!4 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 78, i32 1}
!5 = !{ptr @__param_edac_mc_log_ue, !6, !"__param_edac_mc_log_ue", i1 false, i1 false}
!6 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 79, i32 1}
!7 = !{ptr @__UNIQUE_ID_edac_mc_log_uetype239, !6, !"__UNIQUE_ID_edac_mc_log_uetype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_edac_mc_log_ue240, !9, !"__UNIQUE_ID_edac_mc_log_ue240", i1 false, i1 false}
!9 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 80, i32 1}
!10 = !{ptr @__param_edac_mc_log_ce, !11, !"__param_edac_mc_log_ce", i1 false, i1 false}
!11 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 82, i32 1}
!12 = !{ptr @__UNIQUE_ID_edac_mc_log_cetype241, !11, !"__UNIQUE_ID_edac_mc_log_cetype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_edac_mc_log_ce242, !14, !"__UNIQUE_ID_edac_mc_log_ce242", i1 false, i1 false}
!14 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 83, i32 1}
!15 = !{ptr @__param_edac_mc_poll_msec, !16, !"__param_edac_mc_poll_msec", i1 false, i1 false}
!16 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 85, i32 1}
!17 = !{ptr @__UNIQUE_ID_edac_mc_poll_msec243, !18, !"__UNIQUE_ID_edac_mc_poll_msec243", i1 false, i1 false}
!18 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 87, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 919, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 925, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @edac_create_sysfs_mci_device._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @edac_create_sysfs_mci_device._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 930, i32 2}
!29 = !{ptr @edac_create_sysfs_mci_device._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @edac_create_sysfs_mci_device._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 970, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @edac_remove_sysfs_mci_device._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @edac_remove_sysfs_mci_device._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 982, i32 3}
!38 = !{ptr @edac_remove_sysfs_mci_device._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @edac_remove_sysfs_mci_device._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 1014, i32 24}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 1018, i32 3}
!44 = !{ptr @edac_mc_sysfs_init._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @edac_mc_sysfs_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @edac_mc_sysfs_init._entry.14, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 1023, i32 2}
!48 = !{ptr @edac_mc_sysfs_init._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @edac_mc_panic_on_ue, !50, !"edac_mc_panic_on_ue", i1 false, i1 false}
!50 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 28, i32 12}
!51 = !{ptr @mci_pdev, !52, !"mci_pdev", i1 false, i1 false}
!52 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 89, i32 23}
!53 = !{ptr @edac_mc_log_ue, !54, !"edac_mc_log_ue", i1 false, i1 false}
!54 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 26, i32 12}
!55 = !{ptr @edac_mc_log_ce, !56, !"edac_mc_log_ce", i1 false, i1 false}
!56 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 27, i32 12}
!57 = !{ptr @edac_mc_poll_msec, !58, !"edac_mc_poll_msec", i1 false, i1 false}
!58 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 29, i32 21}
!59 = !{ptr @__param_str_edac_mc_panic_on_ue, !1, !"__param_str_edac_mc_panic_on_ue", i1 false, i1 false}
!60 = !{ptr @__param_str_edac_mc_log_ue, !6, !"__param_str_edac_mc_log_ue", i1 false, i1 false}
!61 = !{ptr @__param_str_edac_mc_log_ce, !11, !"__param_str_edac_mc_log_ce", i1 false, i1 false}
!62 = !{ptr @__param_str_edac_mc_poll_msec, !16, !"__param_str_edac_mc_poll_msec", i1 false, i1 false}
!63 = !{ptr @__param_ops_edac_mc_poll_msec, !16, !"__param_ops_edac_mc_poll_msec", i1 false, i1 false}
!64 = !{ptr @mci_attr_type, !65, !"mci_attr_type", i1 false, i1 false}
!65 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 897, i32 33}
!66 = !{ptr @mci_attr_groups, !67, !"mci_attr_groups", i1 false, i1 false}
!67 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 892, i32 38}
!68 = !{ptr @mci_attr_grp, !69, !"mci_attr_grp", i1 false, i1 false}
!69 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 887, i32 37}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 854, i32 8}
!72 = !{ptr @dev_attr_sdram_scrub_rate, !71, !"dev_attr_sdram_scrub_rate", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 733, i32 3}
!75 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mci_sdram_scrub_rate_show._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mci_sdram_scrub_rate_show._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 737, i32 23}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 713, i32 3}
!82 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mci_sdram_scrub_rate_store._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mci_sdram_scrub_rate_store._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mci_attrs, !86, !"mci_attrs", i1 false, i1 false}
!86 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 857, i32 26}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 841, i32 8}
!89 = !{ptr @dev_attr_reset_counters, !88, !"dev_attr_reset_counters", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 844, i32 8}
!92 = !{ptr @dev_attr_mc_name, !91, !"dev_attr_mc_name", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 792, i32 23}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 845, i32 8}
!97 = !{ptr @dev_attr_size_mb, !96, !"dev_attr_size_mb", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 812, i32 23}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 846, i32 8}
!102 = !{ptr @dev_attr_seconds_since_reset, !101, !"dev_attr_seconds_since_reset", i1 false, i1 false}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 783, i32 23}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 847, i32 8}
!107 = !{ptr @dev_attr_ue_noinfo_count, !106, !"dev_attr_ue_noinfo_count", i1 false, i1 false}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 848, i32 8}
!110 = !{ptr @dev_attr_ce_noinfo_count, !109, !"dev_attr_ce_noinfo_count", i1 false, i1 false}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 849, i32 8}
!113 = !{ptr @dev_attr_ue_count, !112, !"dev_attr_ue_count", i1 false, i1 false}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 850, i32 8}
!116 = !{ptr @dev_attr_ce_count, !115, !"dev_attr_ce_count", i1 false, i1 false}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 851, i32 8}
!119 = !{ptr @dev_attr_max_location, !118, !"dev_attr_max_location", i1 false, i1 false}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 825, i32 25}
!122 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 835, i32 25}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 629, i32 28}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 631, i32 28}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 637, i32 3}
!130 = !{ptr @edac_create_dimm_object._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @edac_create_dimm_object._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 646, i32 3}
!134 = !{ptr @edac_create_dimm_object._entry.39, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @edac_create_dimm_object._entry_ptr.41, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @dimm_attr_type, !137, !"dimm_attr_type", i1 false, i1 false}
!137 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 604, i32 33}
!138 = !{ptr @dimm_attr_groups, !139, !"dimm_attr_groups", i1 false, i1 false}
!139 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 599, i32 38}
!140 = !{ptr @dimm_attr_grp, !141, !"dimm_attr_grp", i1 false, i1 false}
!141 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 595, i32 37}
!142 = !{ptr @dimm_attrs, !143, !"dimm_attrs", i1 false, i1 false}
!143 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 583, i32 26}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 572, i32 8}
!146 = !{ptr @dev_attr_dimm_label, !145, !"dev_attr_dimm_label", i1 false, i1 false}
!147 = !{ptr @.str.43, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 574, i32 8}
!149 = !{ptr @dev_attr_dimm_location, !148, !"dev_attr_dimm_location", i1 false, i1 false}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 575, i32 8}
!152 = !{ptr @dev_attr_size, !151, !"dev_attr_size", i1 false, i1 false}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 576, i32 8}
!155 = !{ptr @dev_attr_dimm_mem_type, !154, !"dev_attr_dimm_mem_type", i1 false, i1 false}
!156 = !{ptr @.str.46, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 577, i32 8}
!158 = !{ptr @dev_attr_dimm_dev_type, !157, !"dev_attr_dimm_dev_type", i1 false, i1 false}
!159 = !{ptr @.str.47, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 95, i32 18}
!161 = !{ptr @.str.48, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 96, i32 13}
!163 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 97, i32 13}
!165 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 98, i32 13}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 99, i32 13}
!169 = !{ptr @.str.52, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 100, i32 14}
!171 = !{ptr @.str.53, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 101, i32 14}
!173 = !{ptr @.str.54, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 102, i32 14}
!175 = !{ptr @dev_types, !176, !"dev_types", i1 false, i1 false}
!176 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 94, i32 27}
!177 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 578, i32 8}
!179 = !{ptr @dev_attr_dimm_edac_mode, !178, !"dev_attr_dimm_edac_mode", i1 false, i1 false}
!180 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 107, i32 16}
!182 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 108, i32 20}
!184 = !{ptr @.str.58, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 109, i32 18}
!186 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 110, i32 14}
!188 = !{ptr @.str.60, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 111, i32 18}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 112, i32 20}
!192 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 113, i32 20}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 114, i32 20}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 115, i32 22}
!198 = !{ptr @edac_caps, !199, !"edac_caps", i1 false, i1 false}
!199 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 105, i32 27}
!200 = !{ptr @.str.65, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 579, i32 8}
!202 = !{ptr @dev_attr_dimm_ce_count, !201, !"dev_attr_dimm_ce_count", i1 false, i1 false}
!203 = !{ptr @.str.66, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 580, i32 8}
!205 = !{ptr @dev_attr_dimm_ue_count, !204, !"dev_attr_dimm_ue_count", i1 false, i1 false}
!206 = !{ptr @.str.67, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 414, i32 28}
!208 = !{ptr @.str.68, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 419, i32 3}
!210 = !{ptr @edac_create_csrow_object._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @edac_create_csrow_object._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @edac_create_csrow_object._entry.69, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 424, i32 2}
!214 = !{ptr @edac_create_csrow_object._entry_ptr.70, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @csrow_attr_type, !216, !"csrow_attr_type", i1 false, i1 false}
!216 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 277, i32 33}
!217 = !{ptr @csrow_attr_groups, !218, !"csrow_attr_groups", i1 false, i1 false}
!218 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 272, i32 38}
!219 = !{ptr @csrow_attr_grp, !220, !"csrow_attr_grp", i1 false, i1 false}
!220 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 268, i32 37}
!221 = !{ptr @csrow_attrs, !222, !"csrow_attrs", i1 false, i1 false}
!222 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 258, i32 26}
!223 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 251, i32 1}
!225 = !{ptr @dev_attr_legacy_dev_type, !224, !"dev_attr_legacy_dev_type", i1 false, i1 false}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 252, i32 1}
!228 = !{ptr @dev_attr_legacy_mem_type, !227, !"dev_attr_legacy_mem_type", i1 false, i1 false}
!229 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 253, i32 1}
!231 = !{ptr @dev_attr_legacy_edac_mode, !230, !"dev_attr_legacy_edac_mode", i1 false, i1 false}
!232 = !{ptr @dev_attr_legacy_size_mb, !233, !"dev_attr_legacy_size_mb", i1 false, i1 false}
!233 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 250, i32 1}
!234 = !{ptr @dev_attr_legacy_ue_count, !235, !"dev_attr_legacy_ue_count", i1 false, i1 false}
!235 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 254, i32 1}
!236 = !{ptr @dev_attr_legacy_ce_count, !237, !"dev_attr_legacy_ce_count", i1 false, i1 false}
!237 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 255, i32 1}
!238 = !{ptr @csrow_dev_groups, !239, !"csrow_dev_groups", i1 false, i1 false}
!239 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 378, i32 38}
!240 = !{ptr @csrow_dev_dimm_group, !241, !"csrow_dev_dimm_group", i1 false, i1 false}
!241 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 368, i32 37}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 356, i32 3}
!244 = !{ptr @.str.74, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @dynamic_csrow_dimm_attr, !246, !"dynamic_csrow_dimm_attr", i1 false, i1 false}
!246 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 303, i32 26}
!247 = !{ptr @.str.75, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 285, i32 1}
!249 = !{ptr @dev_attr_legacy_ch0_dimm_label, !248, !"dev_attr_legacy_ch0_dimm_label", i1 false, i1 false}
!250 = !{ptr @.str.76, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 287, i32 1}
!252 = !{ptr @dev_attr_legacy_ch1_dimm_label, !251, !"dev_attr_legacy_ch1_dimm_label", i1 false, i1 false}
!253 = !{ptr @.str.77, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 289, i32 1}
!255 = !{ptr @dev_attr_legacy_ch2_dimm_label, !254, !"dev_attr_legacy_ch2_dimm_label", i1 false, i1 false}
!256 = !{ptr @.str.78, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 291, i32 1}
!258 = !{ptr @dev_attr_legacy_ch3_dimm_label, !257, !"dev_attr_legacy_ch3_dimm_label", i1 false, i1 false}
!259 = !{ptr @.str.79, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 293, i32 1}
!261 = !{ptr @dev_attr_legacy_ch4_dimm_label, !260, !"dev_attr_legacy_ch4_dimm_label", i1 false, i1 false}
!262 = !{ptr @.str.80, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 295, i32 1}
!264 = !{ptr @dev_attr_legacy_ch5_dimm_label, !263, !"dev_attr_legacy_ch5_dimm_label", i1 false, i1 false}
!265 = !{ptr @.str.81, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 297, i32 1}
!267 = !{ptr @dev_attr_legacy_ch6_dimm_label, !266, !"dev_attr_legacy_ch6_dimm_label", i1 false, i1 false}
!268 = !{ptr @.str.82, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 299, i32 1}
!270 = !{ptr @dev_attr_legacy_ch7_dimm_label, !269, !"dev_attr_legacy_ch7_dimm_label", i1 false, i1 false}
!271 = !{ptr @csrow_dev_ce_count_group, !272, !"csrow_dev_ce_count_group", i1 false, i1 false}
!272 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 373, i32 37}
!273 = !{ptr @dynamic_csrow_ce_count_attr, !274, !"dynamic_csrow_ce_count_attr", i1 false, i1 false}
!274 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 334, i32 26}
!275 = !{ptr @.str.83, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 316, i32 1}
!277 = !{ptr @dev_attr_legacy_ch0_ce_count, !276, !"dev_attr_legacy_ch0_ce_count", i1 false, i1 false}
!278 = !{ptr @.str.84, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 318, i32 1}
!280 = !{ptr @dev_attr_legacy_ch1_ce_count, !279, !"dev_attr_legacy_ch1_ce_count", i1 false, i1 false}
!281 = !{ptr @.str.85, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 320, i32 1}
!283 = !{ptr @dev_attr_legacy_ch2_ce_count, !282, !"dev_attr_legacy_ch2_ce_count", i1 false, i1 false}
!284 = !{ptr @.str.86, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 322, i32 1}
!286 = !{ptr @dev_attr_legacy_ch3_ce_count, !285, !"dev_attr_legacy_ch3_ce_count", i1 false, i1 false}
!287 = !{ptr @.str.87, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 324, i32 1}
!289 = !{ptr @dev_attr_legacy_ch4_ce_count, !288, !"dev_attr_legacy_ch4_ce_count", i1 false, i1 false}
!290 = !{ptr @.str.88, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 326, i32 1}
!292 = !{ptr @dev_attr_legacy_ch5_ce_count, !291, !"dev_attr_legacy_ch5_ce_count", i1 false, i1 false}
!293 = !{ptr @.str.89, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 328, i32 1}
!295 = !{ptr @dev_attr_legacy_ch6_ce_count, !294, !"dev_attr_legacy_ch6_ce_count", i1 false, i1 false}
!296 = !{ptr @.str.90, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 330, i32 1}
!298 = !{ptr @dev_attr_legacy_ch7_ce_count, !297, !"dev_attr_legacy_ch7_ce_count", i1 false, i1 false}
!299 = !{ptr @.str.91, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/edac/edac_mc_sysfs.c", i32 997, i32 2}
!301 = !{ptr @.str.92, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @mc_attr_release._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @mc_attr_release._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{i8 0, i8 2}
!314 = !{!"auto-init"}
!315 = !{!"branch_weights", i32 2000, i32 1}

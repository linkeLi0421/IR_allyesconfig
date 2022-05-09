; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dsaf_device = type { ptr, %struct.hnae_ae_dev, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [1 x ptr], [1 x ptr], [6 x ptr], ptr, [18 x %struct.dsaf_hw_stats], %struct.dsaf_int_stat, %struct.spinlock }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.dsaf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64 }
%struct.dsaf_int_stat = type { [6 x %struct.dsaf_int_xge_src], [6 x %struct.dsaf_int_ppe_src], [6 x %struct.dsaf_int_rocee_src], [1 x %struct.dsaf_int_tbl_src] }
%struct.dsaf_int_xge_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_ppe_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_rocee_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_tbl_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@platform_bus_type = external dso_local global %struct.bus_type, align 4
@hns_cpld_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013sfp_led_opt mac_dev is null!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_cpld_set_led\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c\00", [45 x i8] zeroinitializer }, align 32
@hns_cpld_set_led._entry_ptr = internal global ptr @hns_cpld_set_led._entry, section ".printk_index", align 4
@hns_cpld_set_led._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mac_id=%d, cpld syscon is null !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_cpld_set_led._entry_ptr.7 = internal global ptr @hns_cpld_set_led._entry.3, section ".printk_index", align 4
@cpld_set_led_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid led state: %d!\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpld_set_led_id\00", [16 x i8] zeroinitializer }, align 32
@cpld_set_led_id._entry_ptr = internal global ptr @cpld_set_led_id._entry, section ".printk_index", align 4
@dsaf_read_sub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 50, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsaf_read_syscon error %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsaf_read_sub\00", [18 x i8] zeroinitializer }, align 32
@dsaf_read_sub._entry_ptr = internal global ptr @dsaf_read_sub._entry, section ".printk_index", align 4
@__const.hns_mac_config_sds_loopback.lane_id = private unnamed_addr constant [8 x i8] c"\00\01\02\03\02\03\00\01", align 1
@hns_mac_config_sds_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016please confirm sfp is present or not\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hns_mac_config_sds_loopback\00", [36 x i8] zeroinitializer }, align 32
@hns_mac_config_sds_loopback._entry_ptr = internal global ptr @hns_mac_config_sds_loopback._entry, section ".printk_index", align 4
@hns_mac_config_sds_loopback._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016no sfp in this eth\0A\00", [42 x i8] zeroinitializer }, align 32
@hns_mac_config_sds_loopback._entry_ptr.16 = internal global ptr @hns_mac_config_sds_loopback._entry.14, section ".printk_index", align 4
@hns_cpld_set_led_acpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cpld_led_set mac_cb is null!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hns_cpld_set_led_acpi\00", [42 x i8] zeroinitializer }, align 32
@hns_cpld_set_led_acpi._entry_ptr = internal global ptr @hns_cpld_set_led_acpi._entry, section ".printk_index", align 4
@hns_dsaf_acpi_ledctrl_by_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 79, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ledctrl fail, link:%d port:%d act:%d!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hns_dsaf_acpi_ledctrl_by_port\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hns_dsaf_acpi_ledctrl_by_port._entry_ptr = internal global ptr @hns_dsaf_acpi_ledctrl_by_port._entry, section ".printk_index", align 4
@cpld_led_reset_acpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cpld_led_reset mac_cb is null!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpld_led_reset_acpi\00", [44 x i8] zeroinitializer }, align 32
@cpld_led_reset_acpi._entry_ptr = internal global ptr @cpld_led_reset_acpi._entry, section ".printk_index", align 4
@cpld_set_led_id_acpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.24, ptr @.str.2, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpld_set_led_id_acpi\00", [43 x i8] zeroinitializer }, align 32
@cpld_set_led_id_acpi._entry_ptr = internal global ptr @cpld_set_led_id_acpi._entry, section ".printk_index", align 4
@hns_dsaf_acpi_locate_ledctrl_by_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ledctrl fail, locate:%d port:%d!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hns_dsaf_acpi_locate_ledctrl_by_port\00", [59 x i8] zeroinitializer }, align 32
@hns_dsaf_acpi_locate_ledctrl_by_port._entry_ptr = internal global ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry, section ".printk_index", align 4
@hns_dsaf_acpi_srst_by_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 271, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reset port_type%d port%d fail!\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hns_dsaf_acpi_srst_by_port\00", [37 x i8] zeroinitializer }, align 32
@hns_dsaf_acpi_srst_by_port._entry_ptr = internal global ptr @hns_dsaf_acpi_srst_by_port._entry, section ".printk_index", align 4
@hns_mac_config_sds_loopback_acpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 704, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set port%d serdes lp fail!\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hns_mac_config_sds_loopback_acpi\00", [63 x i8] zeroinitializer }, align 32
@hns_mac_config_sds_loopback_acpi._entry_ptr = internal global ptr @hns_mac_config_sds_loopback_acpi._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 120, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 124, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 217, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 49, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 644, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 647, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 157, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 78, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 178, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 241, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 105, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 270, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [54 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 703, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @cpld_led_reset_acpi._entry, ptr @cpld_led_reset_acpi._entry_ptr, ptr @cpld_set_led_id._entry, ptr @cpld_set_led_id._entry_ptr, ptr @cpld_set_led_id_acpi._entry, ptr @cpld_set_led_id_acpi._entry_ptr, ptr @dsaf_read_sub._entry, ptr @dsaf_read_sub._entry_ptr, ptr @hns_cpld_set_led._entry, ptr @hns_cpld_set_led._entry.3, ptr @hns_cpld_set_led._entry_ptr, ptr @hns_cpld_set_led._entry_ptr.7, ptr @hns_cpld_set_led_acpi._entry, ptr @hns_cpld_set_led_acpi._entry_ptr, ptr @hns_dsaf_acpi_ledctrl_by_port._entry, ptr @hns_dsaf_acpi_ledctrl_by_port._entry_ptr, ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry, ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry_ptr, ptr @hns_dsaf_acpi_srst_by_port._entry, ptr @hns_dsaf_acpi_srst_by_port._entry_ptr, ptr @hns_mac_config_sds_loopback._entry, ptr @hns_mac_config_sds_loopback._entry.14, ptr @hns_mac_config_sds_loopback._entry_ptr, ptr @hns_mac_config_sds_loopback._entry_ptr.16, ptr @hns_mac_config_sds_loopback_acpi._entry, ptr @hns_mac_config_sds_loopback_acpi._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_cpld_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_cpld_set_led._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_set_led_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsaf_read_sub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_config_sds_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_config_sds_loopback._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_cpld_set_led_acpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_acpi_ledctrl_by_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_led_reset_acpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_set_led_id_acpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_acpi_srst_by_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_config_sds_loopback_acpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hns_misc_op_get(ptr nocapture noundef readonly %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %dev_of_node.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

dev_of_node.exit:                                 ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then4

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then4:                                         ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hns_cpld_set_led, ptr %call.i, align 4
  %cpld_reset_led = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %cpld_reset_led to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cpld_led_reset, ptr %cpld_reset_led, align 4
  %cpld_set_led_id = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %cpld_set_led_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpld_set_led_id, ptr %cpld_set_led_id, align 4
  %dsaf_reset = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %dsaf_reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hns_dsaf_rst, ptr %dsaf_reset, align 4
  %xge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %xge_srst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hns_dsaf_xge_srst_by_port, ptr %xge_srst, align 4
  %ge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %ge_srst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hns_dsaf_ge_srst_by_port, ptr %ge_srst, align 4
  %ppe_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %ppe_srst to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hns_ppe_srst_by_port, ptr %ppe_srst, align 4
  %ppe_comm_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %ppe_comm_srst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hns_ppe_com_srst, ptr %ppe_comm_srst, align 4
  %hns_dsaf_srst_chns = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %hns_dsaf_srst_chns to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hns_dsaf_srst_chns, ptr %hns_dsaf_srst_chns, align 4
  %hns_dsaf_roce_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %hns_dsaf_roce_srst to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hns_dsaf_roce_srst, ptr %hns_dsaf_roce_srst, align 4
  %get_phy_if = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %get_phy_if to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hns_mac_get_phy_if, ptr %get_phy_if, align 4
  %get_sfp_prsnt = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %get_sfp_prsnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hns_mac_get_sfp_prsnt, ptr %get_sfp_prsnt, align 4
  %cfg_serdes_loopback = getelementptr inbounds %struct.dsaf_misc_op, ptr %call.i, i32 0, i32 12
  %18 = ptrtoint ptr %cfg_serdes_loopback to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hns_mac_config_sds_loopback, ptr %cfg_serdes_loopback, align 4
  br label %cleanup

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call.i, %if.then4 ], [ null, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_cpld_set_led(ptr noundef %mac_cb, i32 noundef %link_status, i16 noundef zeroext %speed, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_cb, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpld_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %0 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpld_ctrl, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_cb, align 8
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %conv) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cpld_led_value = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 15
  %6 = ptrtoint ptr %cpld_led_value to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpld_led_value, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_status)
  %tobool11.not = icmp eq i32 %link_status, 0
  br i1 %tobool11.not, label %if.else, label %do.body13

do.body13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10000, i16 %speed)
  %cmp = icmp eq i16 %speed, 10000
  %spec.select = zext i1 %cmp to i8
  %8 = and i8 %7, -24
  %link_status.tr = trunc i32 %link_status to i8
  %9 = shl i8 %link_status.tr, 2
  %and17 = and i8 %9, 4
  %data.tr = trunc i32 %data to i8
  %10 = shl i8 %data.tr, 4
  %and39 = and i8 %10, 16
  %or = or i8 %and17, %spec.select
  %or29 = or i8 %or, %and39
  %or41 = or i8 %or29, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %or41, i8 %7)
  %cmp48.not = icmp eq i8 %or41, %7
  br i1 %cmp48.not, label %do.body13.cleanup_crit_edge, label %if.then50

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %conv45 = zext i8 %or41 to i32
  %cpld_ctrl_reg = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %11 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpld_ctrl_reg, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef %12, i32 noundef %conv45) #5
  %13 = ptrtoint ptr %cpld_led_value to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or41, ptr %cpld_led_value, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = and i8 %7, 32
  %cpld_ctrl_reg60 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %15 = ptrtoint ptr %cpld_ctrl_reg60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpld_ctrl_reg60, align 4
  %conv61 = zext i8 %14 to i32
  %call.i90 = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef %16, i32 noundef %conv61) #5
  %17 = ptrtoint ptr %cpld_led_value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %cpld_led_value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then50, %do.body13.cleanup_crit_edge, %do.end5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpld_led_reset(ptr noundef %mac_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_cb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %cpld_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %0 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpld_ctrl, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %cpld_ctrl_reg = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %2 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld_ctrl_reg, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 0) #5
  %cpld_led_value = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 15
  %4 = ptrtoint ptr %cpld_led_value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cpld_led_value, align 1
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpld_set_led_id(ptr nocapture noundef %mac_cb, i32 noundef %status) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %cpld_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %1 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpld_ctrl, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %do.end29 [
    i32 1, label %sw.bb
    i32 0, label %do.body12
  ]

sw.bb:                                            ; preds = %if.end
  %cpld_ctrl_reg = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %4 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpld_ctrl_reg, align 4
  %call.i = call i32 @regmap_read(ptr noundef nonnull %2, i32 noundef %5, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %do.body, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %8 = or i32 %7, 32
  store i32 %8, ptr %val, align 4
  %9 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpld_ctrl, align 8
  %11 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpld_ctrl_reg, align 4
  %call.i44 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %8) #5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv10 = trunc i32 %14 to i8
  %cpld_led_value = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 15
  %15 = ptrtoint ptr %cpld_led_value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %cpld_led_value, align 1
  br label %cleanup

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cpld_led_value13 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 15
  %16 = ptrtoint ptr %cpld_led_value13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cpld_led_value13, align 1
  %18 = and i8 %17, -33
  store i8 %18, ptr %cpld_led_value13, align 1
  %cpld_ctrl_reg24 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %19 = ptrtoint ptr %cpld_ctrl_reg24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpld_ctrl_reg24, align 4
  %conv26 = zext i8 %18 to i32
  %call.i45 = tail call i32 @regmap_write(ptr noundef nonnull %2, i32 noundef %20, i32 noundef %conv26) #5
  br label %cleanup

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_cb, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %status) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body12, %do.body, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end29 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_dsaf_rst(ptr nocapture noundef readonly %dsaf_dev, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %dereset, i32 2564, i32 2560
  %.2 = select i1 %dereset, i32 2572, i32 2568
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %0 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef %., i32 noundef 1) #5
  br label %dsaf_write_sub.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %2 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !83
  br label %dsaf_write_sub.exit

dsaf_write_sub.exit:                              ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i4 = icmp eq ptr %5, null
  br i1 %tobool.not.i4, label %if.else.i9, label %if.then.i6

if.then.i6:                                       ; preds = %dsaf_write_sub.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i5 = tail call i32 @regmap_write(ptr noundef nonnull %5, i32 noundef %.2, i32 noundef 1) #5
  br label %dsaf_write_sub.exit10

if.else.i9:                                       ; preds = %dsaf_write_sub.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i7 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %6 = ptrtoint ptr %sc_base.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_base.i7, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i8 = getelementptr i8, ptr %7, i32 %.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 16777216) #5, !srcloc !83
  br label %dsaf_write_sub.exit10

dsaf_write_sub.exit10:                            ; preds = %if.else.i9, %if.then.i6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_dsaf_xge_srst_by_port(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %port, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp = icmp ugt i32 %port, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %port_rst_off = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %port_rst_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_rst_off, align 8
  %shl = shl i32 34087042, %3
  %or1 = or i32 %shl, 1
  %. = select i1 %dereset, i32 2580, i32 2576
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %4 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %5, i32 noundef %., i32 noundef %or1) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %6 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or1) #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_dsaf_ge_srst_by_port(ptr noundef readonly %dsaf_dev, i32 noundef %port, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cmp = icmp ugt i32 %port, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %0 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp1 = icmp eq i32 %1, 8
  br i1 %cmp1, label %if.else11, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp3 = icmp ugt i32 %port, 5
  br i1 %cmp3, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %shl = shl nuw nsw i32 1, %port
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %port_rst_off6 = getelementptr inbounds %struct.hns_mac_cb, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %port_rst_off6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_rst_off6, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %6 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %7)
  %cmp7 = icmp eq i32 %7, 3552816
  %cond = select i1 %cmp7, i32 17043521, i32 34087042
  %shl8 = shl i32 %cond, %5
  %sub_ctrl.i59 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %8 = ptrtoint ptr %sub_ctrl.i59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sub_ctrl.i59, align 8
  %tobool.not.i60 = icmp eq ptr %9, null
  br i1 %dereset, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  br i1 %tobool.not.i60, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %9, i32 noundef 2592, i32 noundef %shl) #5
  br label %dsaf_write_sub.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %10 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #5, !srcloc !83
  br label %dsaf_write_sub.exit

dsaf_write_sub.exit:                              ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %sub_ctrl.i59 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sub_ctrl.i59, align 8
  %tobool.not.i52 = icmp eq ptr %14, null
  br i1 %tobool.not.i52, label %if.else.i57, label %if.then.i54

if.then.i54:                                      ; preds = %dsaf_write_sub.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i53 = tail call i32 @regmap_write(ptr noundef nonnull %14, i32 noundef 2584, i32 noundef %shl8) #5
  br label %cleanup

if.else.i57:                                      ; preds = %dsaf_write_sub.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i55 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %15 = ptrtoint ptr %sc_base.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_base.i55, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl8) #5
  %add.ptr.i.i56 = getelementptr i8, ptr %16, i32 2584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 %17) #5, !srcloc !83
  br label %cleanup

if.else:                                          ; preds = %if.end5
  br i1 %tobool.not.i60, label %if.else.i65, label %if.then.i62

if.then.i62:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i61 = tail call i32 @regmap_write(ptr noundef nonnull %9, i32 noundef 2588, i32 noundef %shl8) #5
  br label %dsaf_write_sub.exit66

if.else.i65:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i63 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %18 = ptrtoint ptr %sc_base.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_base.i63, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl8) #5
  %add.ptr.i.i64 = getelementptr i8, ptr %19, i32 2588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 %20) #5, !srcloc !83
  br label %dsaf_write_sub.exit66

dsaf_write_sub.exit66:                            ; preds = %if.else.i65, %if.then.i62
  %21 = ptrtoint ptr %sub_ctrl.i59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sub_ctrl.i59, align 8
  %tobool.not.i68 = icmp eq ptr %22, null
  br i1 %tobool.not.i68, label %if.else.i73, label %if.then.i70

if.then.i70:                                      ; preds = %dsaf_write_sub.exit66
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i69 = tail call i32 @regmap_write(ptr noundef nonnull %22, i32 noundef 2596, i32 noundef %shl) #5
  br label %cleanup

if.else.i73:                                      ; preds = %dsaf_write_sub.exit66
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i71 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %23 = ptrtoint ptr %sc_base.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc_base.i71, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  %add.ptr.i.i72 = getelementptr i8, ptr %24, i32 2596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %25) #5, !srcloc !83
  br label %cleanup

if.else11:                                        ; preds = %if.end
  %dsaf_ver12 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %26 = ptrtoint ptr %dsaf_ver12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsaf_ver12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %27)
  %cmp13 = icmp eq i32 %27, 3552816
  %cond14 = select i1 %cmp13, i32 256, i32 64
  %reset_offset = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 10
  %28 = ptrtoint ptr %reset_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_offset, align 8
  %shl15 = shl i32 87360, %29
  %shl17 = shl i32 %cond14, %29
  %sub_ctrl.i91 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %30 = ptrtoint ptr %sub_ctrl.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sub_ctrl.i91, align 8
  %tobool.not.i92 = icmp eq ptr %31, null
  br i1 %dereset, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else11
  br i1 %tobool.not.i92, label %if.else.i81, label %if.then.i78

if.then.i78:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i77 = tail call i32 @regmap_write(ptr noundef nonnull %31, i32 noundef 2592, i32 noundef %shl15) #5
  br label %dsaf_write_sub.exit82

if.else.i81:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i79 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %32 = ptrtoint ptr %sc_base.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_base.i79, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl15) #5
  %add.ptr.i.i80 = getelementptr i8, ptr %33, i32 2592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 %34) #5, !srcloc !83
  br label %dsaf_write_sub.exit82

dsaf_write_sub.exit82:                            ; preds = %if.else.i81, %if.then.i78
  %35 = ptrtoint ptr %sub_ctrl.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sub_ctrl.i91, align 8
  %tobool.not.i84 = icmp eq ptr %36, null
  br i1 %tobool.not.i84, label %if.else.i89, label %if.then.i86

if.then.i86:                                      ; preds = %dsaf_write_sub.exit82
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i85 = tail call i32 @regmap_write(ptr noundef nonnull %36, i32 noundef 2632, i32 noundef %shl17) #5
  br label %cleanup

if.else.i89:                                      ; preds = %dsaf_write_sub.exit82
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i87 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %37 = ptrtoint ptr %sc_base.i87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_base.i87, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl17) #5
  %add.ptr.i.i88 = getelementptr i8, ptr %38, i32 2632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 %39) #5, !srcloc !83
  br label %cleanup

if.else20:                                        ; preds = %if.else11
  br i1 %tobool.not.i92, label %if.else.i97, label %if.then.i94

if.then.i94:                                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i93 = tail call i32 @regmap_write(ptr noundef nonnull %31, i32 noundef 2596, i32 noundef %shl15) #5
  br label %dsaf_write_sub.exit98

if.else.i97:                                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i95 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %40 = ptrtoint ptr %sc_base.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc_base.i95, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %shl15) #5
  %add.ptr.i.i96 = getelementptr i8, ptr %41, i32 2596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96, i32 %42) #5, !srcloc !83
  br label %dsaf_write_sub.exit98

dsaf_write_sub.exit98:                            ; preds = %if.else.i97, %if.then.i94
  %43 = ptrtoint ptr %sub_ctrl.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sub_ctrl.i91, align 8
  %tobool.not.i100 = icmp eq ptr %44, null
  br i1 %tobool.not.i100, label %if.else.i105, label %if.then.i102

if.then.i102:                                     ; preds = %dsaf_write_sub.exit98
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i101 = tail call i32 @regmap_write(ptr noundef nonnull %44, i32 noundef 2636, i32 noundef %shl17) #5
  br label %cleanup

if.else.i105:                                     ; preds = %dsaf_write_sub.exit98
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i103 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %45 = ptrtoint ptr %sc_base.i103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sc_base.i103, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %shl17) #5
  %add.ptr.i.i104 = getelementptr i8, ptr %46, i32 2636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 %47) #5, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.else.i105, %if.then.i102, %if.else.i89, %if.then.i86, %if.else.i73, %if.then.i70, %if.else.i57, %if.then.i54, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ppe_srst_by_port(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %port, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %port_rst_off = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %port_rst_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_rst_off, align 8
  %. = select i1 %dereset, i32 2636, i32 2632
  %shl = shl nuw i32 1, %3
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %4 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %5, i32 noundef %., i32 noundef %shl) #5
  br label %dsaf_write_sub.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %6 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !83
  br label %dsaf_write_sub.exit

dsaf_write_sub.exit:                              ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ppe_com_srst(ptr nocapture noundef readonly %dsaf_dev, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_of_node.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %4 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  br i1 %cmp, label %if.else5, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %dereset, i32 2700, i32 2696
  br label %if.end10

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reset_offset = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 10
  %6 = ptrtoint ptr %reset_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_offset, align 8
  %shl = shl i32 256, %7
  %.16 = select i1 %dereset, i32 2636, i32 2632
  br label %if.end10

if.end10:                                         ; preds = %if.else5, %if.then1
  %reg_val.0 = phi i32 [ 1, %if.then1 ], [ %shl, %if.else5 ]
  %reg_addr.0 = phi i32 [ %., %if.then1 ], [ %.16, %if.else5 ]
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %8 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i17 = icmp eq ptr %9, null
  br i1 %tobool.not.i17, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %9, i32 noundef %reg_addr.0, i32 noundef %reg_val.0) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %10 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #5
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %reg_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #5, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %dev_of_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_dsaf_srst_chns(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %msk, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %dereset, i32 2732, i32 2728
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %0 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef %., i32 noundef %msk) #5
  br label %dsaf_write_sub.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %2 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %msk) #5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #5, !srcloc !83
  br label %dsaf_write_sub.exit

dsaf_write_sub.exit:                              ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_dsaf_roce_srst(ptr nocapture noundef readonly %dsaf_dev, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub_ctrl.i4 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %0 = ptrtoint ptr %sub_ctrl.i4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub_ctrl.i4, align 8
  %tobool.not.i5 = icmp eq ptr %1, null
  br i1 %dereset, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i5, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 2640, i32 noundef 1) #5
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %2 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !83
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i5, label %if.else.i10, label %if.then.i7

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i6 = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 812, i32 noundef 1) #5
  br label %dsaf_write_sub.exit11

if.else.i10:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i8 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %4 = ptrtoint ptr %sc_base.i8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_base.i8, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i9 = getelementptr i8, ptr %5, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 16777216) #5, !srcloc !83
  br label %dsaf_write_sub.exit11

dsaf_write_sub.exit11:                            ; preds = %if.else.i10, %if.then.i7
  %6 = ptrtoint ptr %sub_ctrl.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sub_ctrl.i4, align 8
  %tobool.not.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i13, label %if.else.i18, label %if.then.i15

if.then.i15:                                      ; preds = %dsaf_write_sub.exit11
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i14 = tail call i32 @regmap_write(ptr noundef nonnull %7, i32 noundef 2644, i32 noundef 1) #5
  br label %dsaf_write_sub.exit19

if.else.i18:                                      ; preds = %dsaf_write_sub.exit11
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i16 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %8 = ptrtoint ptr %sc_base.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_base.i16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i17 = getelementptr i8, ptr %9, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 16777216) #5, !srcloc !83
  br label %dsaf_write_sub.exit19

dsaf_write_sub.exit19:                            ; preds = %if.else.i18, %if.then.i15
  tail call void @msleep(i32 noundef 20) #5
  %10 = ptrtoint ptr %sub_ctrl.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sub_ctrl.i4, align 8
  %tobool.not.i21 = icmp eq ptr %11, null
  br i1 %tobool.not.i21, label %if.else.i26, label %if.then.i23

if.then.i23:                                      ; preds = %dsaf_write_sub.exit19
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i22 = tail call i32 @regmap_write(ptr noundef nonnull %11, i32 noundef 808, i32 noundef 1) #5
  br label %if.end

if.else.i26:                                      ; preds = %dsaf_write_sub.exit19
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i24 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %12 = ptrtoint ptr %sc_base.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_base.i24, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i25 = getelementptr i8, ptr %13, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 16777216) #5, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.else.i26, %if.then.i23, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mac_get_phy_if(ptr nocapture noundef readonly %mac_cb) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %3)
  %cmp = icmp eq i32 %3, 3552816
  %mac_id1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %4 = ptrtoint ptr %mac_id1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id1, align 2
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_mode, align 8
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp3 = icmp eq i32 %7, 8
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp8 = icmp ult i8 %5, 4
  %. = select i1 %cmp8, i32 400, i32 384
  br label %if.end23

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp15 = icmp ne i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp18 = icmp ult i8 %5, 4
  %or.cond = select i1 %cmp15, i1 %cmp18, i1 false
  %spec.select = select i1 %or.cond, i32 404, i32 388
  br label %if.end23

if.end23:                                         ; preds = %if.else12, %land.lhs.true
  %reg.0 = phi i32 [ %., %land.lhs.true ], [ %spec.select, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #5
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ret.i, align 4
  %sub_ctrl.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %sub_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sub_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  %call.i.i = call i32 @regmap_read(ptr noundef nonnull %10, i32 noundef %reg.0, ptr noundef nonnull %ret.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.dsaf_read_sub.exit_crit_edge, label %do.end.i

if.then.i.dsaf_read_sub.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dsaf_read_sub.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #8
  br label %dsaf_read_sub.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %reg.0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !84
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ret.i, align 4
  br label %dsaf_read_sub.exit

dsaf_read_sub.exit:                               ; preds = %if.else.i, %do.end.i, %if.then.i.dsaf_read_sub.exit_crit_edge
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #5
  %conv25 = zext i32 %19 to i64
  %port_mode_off = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 12
  %20 = ptrtoint ptr %port_mode_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_mode_off, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %conv25
  %shr = lshr i64 %and, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %tobool28.not = icmp eq i64 %shr, 0
  %.44 = select i1 %tobool28.not, i32 4, i32 15
  br label %cleanup

cleanup:                                          ; preds = %dsaf_read_sub.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %.44, %dsaf_read_sub.exit ], [ 4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mac_get_sfp_prsnt(ptr nocapture noundef readonly %mac_cb, ptr nocapture noundef writeonly %sfp_prsnt) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %cpld_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %1 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpld_ctrl, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpld_ctrl_reg = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %3 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpld_ctrl_reg, align 4
  %add = add i32 %4, 2
  %call.i = call i32 @regmap_read(ptr noundef nonnull %2, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %7 = ptrtoint ptr %sfp_prsnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext, ptr %sfp_prsnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mac_config_sds_loopback(ptr nocapture noundef readonly %mac_cb, i1 noundef zeroext %en) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %origin = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_id, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [8 x i8], ptr @__const.hns_mac_config_sds_loopback.lane_id, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %mul1 = add nuw nsw i32 %mul, 33024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  %cpld_ctrl.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %5 = ptrtoint ptr %cpld_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpld_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %hns_mac_get_sfp_prsnt.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cpld_ctrl_reg.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %7 = ptrtoint ptr %cpld_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpld_ctrl_reg.i, align 4
  %add.i = add i32 %8, 2
  %call.i.i = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %hns_mac_get_sfp_prsnt.exit, label %hns_mac_get_sfp_prsnt.exit.thread94

hns_mac_get_sfp_prsnt.exit:                       ; preds = %if.end.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp ne i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %phy_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 30
  %11 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_dev, align 8
  %tobool.not = icmp eq ptr %12, null
  %or.cond = select i1 %tobool.not, i1 %tobool5.not.i, i1 false
  br i1 %or.cond, label %hns_mac_get_sfp_prsnt.exit.if.end14.sink.split_crit_edge, label %hns_mac_get_sfp_prsnt.exit.if.end14_crit_edge

hns_mac_get_sfp_prsnt.exit.if.end14_crit_edge:    ; preds = %hns_mac_get_sfp_prsnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

hns_mac_get_sfp_prsnt.exit.if.end14.sink.split_crit_edge: ; preds = %hns_mac_get_sfp_prsnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split

hns_mac_get_sfp_prsnt.exit.thread94:              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %phy_dev96 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 30
  %13 = ptrtoint ptr %phy_dev96 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_dev96, align 8
  %tobool.not97 = icmp eq ptr %14, null
  br i1 %tobool.not97, label %hns_mac_get_sfp_prsnt.exit.thread94.if.end14.sink.split_crit_edge, label %hns_mac_get_sfp_prsnt.exit.thread94.if.end14_crit_edge

hns_mac_get_sfp_prsnt.exit.thread94.if.end14_crit_edge: ; preds = %hns_mac_get_sfp_prsnt.exit.thread94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

hns_mac_get_sfp_prsnt.exit.thread94.if.end14.sink.split_crit_edge: ; preds = %hns_mac_get_sfp_prsnt.exit.thread94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split

hns_mac_get_sfp_prsnt.exit.thread:                ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %phy_dev87 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 30
  %15 = ptrtoint ptr %phy_dev87 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_dev87, align 8
  %tobool.not88 = icmp eq ptr %16, null
  br i1 %tobool.not88, label %hns_mac_get_sfp_prsnt.exit.thread.if.end14.sink.split_crit_edge, label %hns_mac_get_sfp_prsnt.exit.thread.if.end14_crit_edge

hns_mac_get_sfp_prsnt.exit.thread.if.end14_crit_edge: ; preds = %hns_mac_get_sfp_prsnt.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

hns_mac_get_sfp_prsnt.exit.thread.if.end14.sink.split_crit_edge: ; preds = %hns_mac_get_sfp_prsnt.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %hns_mac_get_sfp_prsnt.exit.thread.if.end14.sink.split_crit_edge, %hns_mac_get_sfp_prsnt.exit.thread94.if.end14.sink.split_crit_edge, %hns_mac_get_sfp_prsnt.exit.if.end14.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %hns_mac_get_sfp_prsnt.exit.thread94.if.end14.sink.split_crit_edge ], [ @.str.12, %hns_mac_get_sfp_prsnt.exit.thread.if.end14.sink.split_crit_edge ], [ @.str.15, %hns_mac_get_sfp_prsnt.exit.if.end14.sink.split_crit_edge ]
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %hns_mac_get_sfp_prsnt.exit.thread.if.end14_crit_edge, %hns_mac_get_sfp_prsnt.exit.thread94.if.end14_crit_edge, %hns_mac_get_sfp_prsnt.exit.if.end14_crit_edge
  %serdes_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 7
  %17 = ptrtoint ptr %serdes_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serdes_ctrl, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.else51, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %origin) #5
  %19 = ptrtoint ptr %origin to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %origin, align 4
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %20 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %23)
  %cmp = icmp eq i32 %23, 3552816
  br i1 %cmp, label %if.then16.if.end31_crit_edge, label %if.then18

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then18:                                        ; preds = %if.then16
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %21, i32 0, i32 12
  %24 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp20 = icmp eq i32 %25, 8
  br i1 %cmp20, label %if.then18.if.else28_crit_edge, label %land.lhs.true

if.then18.if.else28_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else28

land.lhs.true:                                    ; preds = %if.then18
  %26 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mac_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp24 = icmp ult i8 %27, 4
  br i1 %cmp24, label %land.lhs.true.if.end31.sink.split_crit_edge, label %land.lhs.true.if.else28_crit_edge

land.lhs.true.if.else28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else28

land.lhs.true.if.end31.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.sink.split

if.else28:                                        ; preds = %land.lhs.true.if.else28_crit_edge, %if.then18.if.else28_crit_edge
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else28, %land.lhs.true.if.end31.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.else28 ], [ 0, %land.lhs.true.if.end31.sink.split_crit_edge ]
  %call.i = call i32 @regmap_write(ptr noundef nonnull %18, i32 noundef 262152, i32 noundef %.sink) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then16.if.end31_crit_edge
  %28 = ptrtoint ptr %serdes_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serdes_ctrl, align 4
  %call.i83 = call i32 @regmap_read(ptr noundef %29, i32 noundef %mul1, ptr noundef nonnull %origin) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool35.not = icmp eq i32 %call.i83, 0
  br i1 %tobool35.not, label %do.body38, label %cleanup60.critedge

do.body38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %origin, align 4
  %32 = and i32 %31, -1025
  %33 = select i1 %en, i32 1024, i32 0
  %or = or i32 %32, %33
  store i32 %or, ptr %origin, align 4
  %34 = ptrtoint ptr %serdes_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serdes_ctrl, align 4
  %call.i84 = call i32 @regmap_write(ptr noundef %35, i32 noundef %mul1, i32 noundef %or) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %origin) #5
  br label %cleanup60

if.else51:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %serdes_vaddr = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 6
  %36 = ptrtoint ptr %serdes_vaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serdes_vaddr, align 8
  %38 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mac_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp54 = icmp ult i8 %39, 4
  %cond = select i1 %cmp54, i32 2621440, i32 2097152
  %add.ptr = getelementptr i8, ptr %37, i32 %cond
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %mul1
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %41 = and i32 %40, -262145
  %42 = call i32 @llvm.bswap.i32(i32 %41) #5
  %shl.i = select i1 %en, i32 1024, i32 0
  %or.i = or i32 %42, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  call void @arm_heavy_mb() #5
  %43 = call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #5, !srcloc !83
  br label %cleanup60

cleanup60.critedge:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %origin) #5
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup60.critedge, %if.else51, %do.body38
  %retval.1 = phi i32 [ %call.i83, %cleanup60.critedge ], [ 0, %do.body38 ], [ 0, %if.else51 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hns_dsaf_find_platform_device(ptr noundef %fwnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %fwnode, ptr noundef nonnull @device_match_fwnode) #5
  %tobool.not = icmp eq ptr %call.i, null
  %add.ptr = getelementptr i8, ptr %call.i, i32 -16
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_fwnode(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 120, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hns_cpld_set_led._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hns_cpld_set_led._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 124, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hns_cpld_set_led._entry.3, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @hns_cpld_set_led._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 217, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cpld_set_led_id._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cpld_set_led_id._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 49, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dsaf_read_sub._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @dsaf_read_sub._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 644, i32 4}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hns_mac_config_sds_loopback._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hns_mac_config_sds_loopback._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 647, i32 5}
!29 = !{ptr @hns_mac_config_sds_loopback._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hns_mac_config_sds_loopback._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 157, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hns_cpld_set_led_acpi._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @hns_cpld_set_led_acpi._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 78, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hns_dsaf_acpi_ledctrl_by_port._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @hns_dsaf_acpi_ledctrl_by_port._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"hns_dsaf_acpi_dsm_guid", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 29, i32 21}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 178, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cpld_led_reset_acpi._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cpld_led_reset_acpi._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 241, i32 3}
!51 = !{ptr @cpld_set_led_id_acpi._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cpld_set_led_id_acpi._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 105, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hns_dsaf_acpi_locate_ledctrl_by_port._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 270, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hns_dsaf_acpi_srst_by_port._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hns_dsaf_acpi_srst_by_port._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 567, i32 2}
!65 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !64, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_misc.c", i32 703, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hns_mac_config_sds_loopback_acpi._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hns_mac_config_sds_loopback_acpi._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2157254717}
!83 = !{i64 6582034}
!84 = !{i64 6582452}
!85 = !{i64 2157255518}

; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/ext_caps.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/ext_caps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hci_ext_caps = type { i8, i16, ptr }
%struct.i3c_hci = type { %struct.i3c_master_controller, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.83, %struct.i3c_bus, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.78, %struct.anon.79, %struct.rw_semaphore }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }

@i3c_hci_parse_ext_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ext_cap 0x%02x has size %d (too big)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i3c_hci_parse_ext_caps\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/i3c/master/mipi-i3c-hci/ext_caps.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i3c_hci_parse_ext_caps._entry_ptr = internal global ptr @i3c_hci_parse_ext_caps._entry, section ".printk_index", align 4
@ext_capabilities = internal constant { [13 x %struct.hci_ext_caps], [56 x i8] } { [13 x %struct.hci_ext_caps] [%struct.hci_ext_caps { i8 1, i16 4, ptr @hci_extcap_hardware_id }, %struct.hci_ext_caps { i8 2, i16 2, ptr @hci_extcap_master_config }, %struct.hci_ext_caps { i8 3, i16 2, ptr @hci_extcap_multi_bus }, %struct.hci_ext_caps { i8 4, i16 10, ptr @hci_extcap_xfer_modes }, %struct.hci_ext_caps { i8 5, i16 3, ptr @hci_extcap_auto_command }, %struct.hci_ext_caps { i8 8, i16 17, ptr @hci_extcap_xfer_rates }, %struct.hci_ext_caps { i8 12, i16 5, ptr @hci_extcap_debug }, %struct.hci_ext_caps { i8 13, i16 4, ptr @hci_extcap_scheduled_cmd }, %struct.hci_ext_caps { i8 14, i16 33, ptr @hci_extcap_non_curr_master }, %struct.hci_ext_caps { i8 15, i16 2, ptr @hci_extcap_ccc_resp_conf }, %struct.hci_ext_caps { i8 16, i16 3, ptr @hci_extcap_global_DAT }, %struct.hci_ext_caps { i8 -99, i16 2, ptr @hci_extcap_multilane }, %struct.hci_ext_caps { i8 -98, i16 2, ptr @hci_extcap_ncm_multilane }], [56 x i8] zeroinitializer }, align 32
@i3c_hci_parse_ext_caps._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 297, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown ext_cap 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@i3c_hci_parse_ext_caps._entry_ptr.8 = internal global ptr @i3c_hci_parse_ext_caps._entry.5, section ".printk_index", align 4
@i3c_hci_parse_ext_caps._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ext_cap 0x%02x has size %d (expecting >= %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@i3c_hci_parse_ext_caps._entry_ptr.11 = internal global ptr @i3c_hci_parse_ext_caps._entry.9, section ".printk_index", align 4
@hci_extcap_vendor_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 244, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unknown ext_cap 0x%02x for vendor 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hci_extcap_vendor_specific\00", [37 x i8] zeroinitializer }, align 32
@hci_extcap_vendor_specific._entry_ptr = internal global ptr @hci_extcap_vendor_specific._entry, section ".printk_index", align 4
@hci_extcap_vendor_specific._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hci_extcap_vendor_specific._entry_ptr.15 = internal global ptr @hci_extcap_vendor_specific._entry.14, section ".printk_index", align 4
@hci_extcap_vendor_NXP._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 204, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Build Date Info = %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_extcap_vendor_NXP\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hci_extcap_vendor_NXP._entry_ptr = internal global ptr @hci_extcap_vendor_NXP._entry, section ".printk_index", align 4
@hci_extcap_hardware_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 30, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vendor MIPI ID: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hci_extcap_hardware_id\00", [41 x i8] zeroinitializer }, align 32
@hci_extcap_hardware_id._entry_ptr = internal global ptr @hci_extcap_hardware_id._entry, section ".printk_index", align 4
@hci_extcap_hardware_id._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 31, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vendor version ID: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@hci_extcap_hardware_id._entry_ptr.23 = internal global ptr @hci_extcap_hardware_id._entry.21, section ".printk_index", align 4
@hci_extcap_hardware_id._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 32, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vendor product ID: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@hci_extcap_hardware_id._entry_ptr.26 = internal global ptr @hci_extcap_hardware_id._entry.24, section ".printk_index", align 4
@hci_extcap_master_config.functionality = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"master only\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target only\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"primary/secondary master\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_master_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 52, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"operation mode: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_extcap_master_config\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_master_config._entry_ptr = internal global ptr @hci_extcap_master_config._entry, section ".printk_index", align 4
@hci_extcap_master_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"only master mode is currently supported\0A\00", [55 x i8] zeroinitializer }, align 32
@hci_extcap_master_config._entry_ptr.35 = internal global ptr @hci_extcap_master_config._entry.33, section ".printk_index", align 4
@hci_extcap_multi_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 64, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d bus instances\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_extcap_multi_bus\00", [43 x i8] zeroinitializer }, align 32
@hci_extcap_multi_bus._entry_ptr = internal global ptr @hci_extcap_multi_bus._entry, section ".printk_index", align 4
@hci_extcap_xfer_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 75, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"transfer mode table has %d entries\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_extcap_xfer_modes\00", [42 x i8] zeroinitializer }, align 32
@hci_extcap_xfer_modes._entry_ptr = internal global ptr @hci_extcap_xfer_modes._entry, section ".printk_index", align 4
@hci_extcap_auto_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 124, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d/%d active auto-command entries\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci_extcap_auto_command\00", [40 x i8] zeroinitializer }, align 32
@hci_extcap_auto_command._entry_ptr = internal global ptr @hci_extcap_auto_command._entry, section ".printk_index", align 4
@hci_extcap_xfer_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 97, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"available data rates:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_extcap_xfer_rates\00", [42 x i8] zeroinitializer }, align 32
@hci_extcap_xfer_rates._entry_ptr = internal global ptr @hci_extcap_xfer_rates._entry, section ".printk_index", align 4
@hci_extcap_xfer_rates._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 109, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rate %d for %s = %d kHz\0A\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_xfer_rates._entry_ptr.46 = internal global ptr @hci_extcap_xfer_rates._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I3C\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2C\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown mode\00", [19 x i8] zeroinitializer }, align 32
@hci_extcap_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 132, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"debug registers present\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_extcap_debug\00", [47 x i8] zeroinitializer }, align 32
@hci_extcap_debug._entry_ptr = internal global ptr @hci_extcap_debug._entry, section ".printk_index", align 4
@hci_extcap_scheduled_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 139, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scheduled commands available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_extcap_scheduled_cmd\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_scheduled_cmd._entry_ptr = internal global ptr @hci_extcap_scheduled_cmd._entry, section ".printk_index", align 4
@hci_extcap_non_curr_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 146, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Non-Current Master support available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hci_extcap_non_curr_master\00", [37 x i8] zeroinitializer }, align 32
@hci_extcap_non_curr_master._entry_ptr = internal global ptr @hci_extcap_non_curr_master._entry, section ".printk_index", align 4
@hci_extcap_ccc_resp_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 153, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CCC Response Configuration available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_extcap_ccc_resp_conf\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_ccc_resp_conf._entry_ptr = internal global ptr @hci_extcap_ccc_resp_conf._entry, section ".printk_index", align 4
@hci_extcap_global_DAT._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 159, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Global DAT available\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_extcap_global_DAT\00", [42 x i8] zeroinitializer }, align 32
@hci_extcap_global_DAT._entry_ptr = internal global ptr @hci_extcap_global_DAT._entry, section ".printk_index", align 4
@hci_extcap_multilane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 165, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Master Multi-Lane support available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_extcap_multilane\00", [43 x i8] zeroinitializer }, align 32
@hci_extcap_multilane._entry_ptr = internal global ptr @hci_extcap_multilane._entry, section ".printk_index", align 4
@hci_extcap_ncm_multilane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 171, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NCM Multi-Lane support available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_extcap_ncm_multilane\00", [39 x i8] zeroinitializer }, align 32
@hci_extcap_ncm_multilane._entry_ptr = internal global ptr @hci_extcap_ncm_multilane._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 12, i64 13, i64 14, i64 15, i64 16, i64 157, i64 158]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 275, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ext_capabilities\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 185, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 296, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 299, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 242, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 248, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 204, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 30, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 31, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 32, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"functionality\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 49, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 50, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 50, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 50, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 51, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 52, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 55, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 64, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 74, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 123, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 97, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 104, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 132, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 139, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 146, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 153, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 159, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 165, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [46 x i8] c"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 171, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @hci_extcap_auto_command._entry, ptr @hci_extcap_auto_command._entry_ptr, ptr @hci_extcap_ccc_resp_conf._entry, ptr @hci_extcap_ccc_resp_conf._entry_ptr, ptr @hci_extcap_debug._entry, ptr @hci_extcap_debug._entry_ptr, ptr @hci_extcap_global_DAT._entry, ptr @hci_extcap_global_DAT._entry_ptr, ptr @hci_extcap_hardware_id._entry, ptr @hci_extcap_hardware_id._entry.21, ptr @hci_extcap_hardware_id._entry.24, ptr @hci_extcap_hardware_id._entry_ptr, ptr @hci_extcap_hardware_id._entry_ptr.23, ptr @hci_extcap_hardware_id._entry_ptr.26, ptr @hci_extcap_master_config._entry, ptr @hci_extcap_master_config._entry.33, ptr @hci_extcap_master_config._entry_ptr, ptr @hci_extcap_master_config._entry_ptr.35, ptr @hci_extcap_multi_bus._entry, ptr @hci_extcap_multi_bus._entry_ptr, ptr @hci_extcap_multilane._entry, ptr @hci_extcap_multilane._entry_ptr, ptr @hci_extcap_ncm_multilane._entry, ptr @hci_extcap_ncm_multilane._entry_ptr, ptr @hci_extcap_non_curr_master._entry, ptr @hci_extcap_non_curr_master._entry_ptr, ptr @hci_extcap_scheduled_cmd._entry, ptr @hci_extcap_scheduled_cmd._entry_ptr, ptr @hci_extcap_vendor_NXP._entry, ptr @hci_extcap_vendor_NXP._entry_ptr, ptr @hci_extcap_vendor_specific._entry, ptr @hci_extcap_vendor_specific._entry.14, ptr @hci_extcap_vendor_specific._entry_ptr, ptr @hci_extcap_vendor_specific._entry_ptr.15, ptr @hci_extcap_xfer_modes._entry, ptr @hci_extcap_xfer_modes._entry_ptr, ptr @hci_extcap_xfer_rates._entry, ptr @hci_extcap_xfer_rates._entry.44, ptr @hci_extcap_xfer_rates._entry_ptr, ptr @hci_extcap_xfer_rates._entry_ptr.46, ptr @i3c_hci_parse_ext_caps._entry, ptr @i3c_hci_parse_ext_caps._entry.5, ptr @i3c_hci_parse_ext_caps._entry.9, ptr @i3c_hci_parse_ext_caps._entry_ptr, ptr @i3c_hci_parse_ext_caps._entry_ptr.11, ptr @i3c_hci_parse_ext_caps._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ext_capabilities, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @hci_extcap_master_config.functionality, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_parse_ext_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_capabilities to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_parse_ext_caps._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_parse_ext_caps._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_vendor_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_vendor_specific._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_vendor_NXP._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_hardware_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_hardware_id._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_hardware_id._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_master_config.functionality to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_master_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_master_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_multi_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_xfer_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_auto_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_xfer_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_xfer_rates._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_scheduled_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_non_curr_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_ccc_resp_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_global_DAT._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_multilane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_extcap_ncm_multilane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i3c_hci_parse_ext_caps(ptr noundef %hci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %EXTCAPS_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 6
  %0 = ptrtoint ptr %EXTCAPS_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %EXTCAPS_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4096
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %vendor_mipi_id.i = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 23
  %vendor_data.i.i = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 26
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc80.land.rhs_crit_edge, %for.cond.preheader
  %curr_cap.0128 = phi ptr [ %1, %for.cond.preheader ], [ %add.ptr38, %for.inc80.land.rhs_crit_edge ]
  %cmp = icmp ult ptr %curr_cap.0128, %add.ptr
  br i1 %cmp, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %curr_cap.0128) #4, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  %and = and i32 %3, 255
  %and32 = lshr i32 %3, 8
  %shr33 = and i32 %and32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr33)
  %tobool35.not = icmp eq i32 %shr33, 0
  br i1 %tobool35.not, label %for.body.cleanup_crit_edge, label %if.end37

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %for.body
  %mul = shl nuw nsw i32 %shr33, 2
  %add.ptr38 = getelementptr i8, ptr %curr_cap.0128, i32 %mul
  %cmp39.not = icmp ult ptr %add.ptr38, %add.ptr
  br i1 %cmp39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str, i32 noundef %and, i32 noundef %shr33) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %4 = and i32 %3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %4)
  %5 = icmp eq i32 %4, 192
  br i1 %5, label %if.then47, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %if.end44
  %6 = trunc i32 %3 to i8
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end62 [
    i8 1, label %for.cond50.preheader.if.else_crit_edge
    i8 2, label %if.else.fold.split
    i8 3, label %if.else.fold.split137
    i8 4, label %if.else.fold.split138
    i8 5, label %if.else.fold.split139
    i8 8, label %if.else.fold.split140
    i8 12, label %if.else.fold.split141
    i8 13, label %if.else.fold.split142
    i8 14, label %if.else.fold.split143
    i8 15, label %if.else.fold.split144
    i8 16, label %if.else.fold.split145
    i8 -99, label %if.else.fold.split146
    i8 -98, label %if.else.fold.split147
  ]

for.cond50.preheader.if.else_crit_edge:           ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then47:                                        ; preds = %if.end44
  %8 = ptrtoint ptr %vendor_mipi_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vendor_mipi_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 283, i32 %9)
  %cmp1.i = icmp eq i32 %9, 283
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp3.i = icmp eq i32 %and, 192
  %or.cond.i = and i1 %cmp3.i, %cmp1.i
  br i1 %or.cond.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %hci, ptr noundef nonnull @.str.12, i32 noundef %and, i32 noundef %9) #7
  br label %for.inc80

if.end8.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr33)
  %cmp10.i = icmp ult i32 %shr33, 9
  br i1 %cmp10.i, label %do.end15.i, label %if.end20.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.10, i32 noundef 192, i32 noundef %shr33, i32 noundef 9) #7
  br label %cleanup

if.end20.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %vendor_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %curr_cap.0128, ptr %vendor_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %curr_cap.0128, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !138
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.16, i32 noundef %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -272716322) #4, !srcloc !142
  br label %for.inc80

do.end62:                                         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %hci, ptr noundef nonnull @.str.6, i32 noundef %and) #7
  br label %for.inc80

if.else.fold.split:                               ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split137:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split138:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split139:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split140:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split141:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split142:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split143:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split144:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split145:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split146:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split147:                            ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %if.else.fold.split147, %if.else.fold.split146, %if.else.fold.split145, %if.else.fold.split144, %if.else.fold.split143, %if.else.fold.split142, %if.else.fold.split141, %if.else.fold.split140, %if.else.fold.split139, %if.else.fold.split138, %if.else.fold.split137, %if.else.fold.split, %for.cond50.preheader.if.else_crit_edge
  %i.0127.lcssa = phi i32 [ 0, %for.cond50.preheader.if.else_crit_edge ], [ 1, %if.else.fold.split ], [ 2, %if.else.fold.split137 ], [ 3, %if.else.fold.split138 ], [ 4, %if.else.fold.split139 ], [ 5, %if.else.fold.split140 ], [ 6, %if.else.fold.split141 ], [ 7, %if.else.fold.split142 ], [ 8, %if.else.fold.split143 ], [ 9, %if.else.fold.split144 ], [ 10, %if.else.fold.split145 ], [ 11, %if.else.fold.split146 ], [ 12, %if.else.fold.split147 ]
  %min_length = getelementptr [13 x %struct.hci_ext_caps], ptr @ext_capabilities, i32 0, i32 %i.0127.lcssa, i32 1
  %13 = ptrtoint ptr %min_length to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min_length, align 2
  %conv65 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr33, i32 %conv65)
  %cmp66 = icmp ult i32 %shr33, %conv65
  br i1 %cmp66, label %do.end71, label %if.else76

do.end71:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv65.le = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.10, i32 noundef %and, i32 noundef %shr33, i32 noundef %conv65.le) #7
  br label %cleanup

if.else76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %parser = getelementptr [13 x %struct.hci_ext_caps], ptr @ext_capabilities, i32 0, i32 %i.0127.lcssa, i32 2
  %15 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parser, align 4
  %call77 = tail call i32 %16(ptr noundef %hci, ptr noundef %curr_cap.0128) #4
  br label %for.inc80

for.inc80:                                        ; preds = %if.else76, %do.end62, %if.end20.i, %do.end.i
  %err.1 = phi i32 [ %call77, %if.else76 ], [ 0, %do.end62 ], [ 0, %if.end20.i ], [ 0, %do.end.i ]
  %tobool1.not = icmp eq i32 %err.1, 0
  br i1 %tobool1.not, label %for.inc80.land.rhs_crit_edge, label %for.inc80.cleanup_crit_edge

for.inc80.cleanup_crit_edge:                      ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc80.land.rhs_crit_edge:                     ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

cleanup:                                          ; preds = %for.inc80.cleanup_crit_edge, %do.end71, %do.end15.i, %do.end43, %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end43 ], [ -22, %do.end71 ], [ -22, %do.end15.i ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ %err.1, %for.inc80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_hardware_id(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !138
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  %vendor_mipi_id = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 23
  %2 = ptrtoint ptr %vendor_mipi_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vendor_mipi_id, align 8
  %add.ptr4 = getelementptr i8, ptr %base, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !138
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %vendor_version_id = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 24
  %5 = ptrtoint ptr %vendor_version_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vendor_version_id, align 4
  %add.ptr10 = getelementptr i8, ptr %base, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !138
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  %vendor_product_id = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 25
  %8 = ptrtoint ptr %vendor_product_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vendor_product_id, align 8
  %9 = ptrtoint ptr %vendor_mipi_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor_mipi_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.19, i32 noundef %10) #7
  %11 = ptrtoint ptr %vendor_version_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vendor_version_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.22, i32 noundef %12) #7
  %13 = ptrtoint ptr %vendor_product_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor_product_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.25, i32 noundef %14) #7
  %15 = ptrtoint ptr %vendor_mipi_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vendor_mipi_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 283, i32 %16)
  %cond = icmp eq i32 %16, 283
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %quirks = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 14
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %quirks, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_master_config(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !138
  %1 = lshr i32 %0, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %and = and i32 %1, 3
  %arrayidx = getelementptr [4 x ptr], ptr @hci_extcap_master_config.functionality, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.31, ptr noundef %3) #7
  %4 = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end21, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull @.str.34) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end21 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_multi_bus(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !138
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  %and = and i32 %1, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.36, i32 noundef %and) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_xfer_modes(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #4, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  %1 = and i32 %0, 16776960
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr exact i32 %2, 8
  %sub = add nsw i32 %shr, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.38, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30.not = icmp eq i32 %sub, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %base.pn32 = phi ptr [ %base.addr.0, %for.body.for.body_crit_edge ], [ %base, %entry.for.body_crit_edge ]
  %index.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %base.addr.0 = getelementptr i8, ptr %base.pn32, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base.addr.0) #4, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %inc = add nuw i32 %index.031, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_auto_command(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !138
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  %and = and i32 %1, 15
  %add.ptr17 = getelementptr i8, ptr %base, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #4, !srcloc !138
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  %and37 = and i32 %3, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.40, i32 noundef %and37, i32 noundef %and) #7
  %AUTOCMD_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 7
  %4 = ptrtoint ptr %AUTOCMD_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %AUTOCMD_regs, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_xfer_rates(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #4, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  %1 = and i32 %0, 16776960
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr exact i32 %2, 8
  %sub = add nsw i32 %shr, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp95.not = icmp eq i32 %sub, 0
  br i1 %cmp95.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %base.pn97 = phi ptr [ %base.addr.0, %for.body.for.body_crit_edge ], [ %base, %entry.for.body_crit_edge ]
  %index.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %base.addr.0 = getelementptr i8, ptr %base.pn97, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base.addr.0) #4, !srcloc !138
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  %and40 = and i32 %4, 1048575
  %and58 = lshr i32 %4, 20
  %shr59 = and i32 %and58, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %4)
  %cmp83 = icmp ult i32 %4, 268435456
  %shr77.mask = and i32 %4, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr77.mask)
  %cmp84 = icmp eq i32 %shr77.mask, -2147483648
  %cond = select i1 %cmp84, ptr @.str.48, ptr @.str.49
  %cond85 = select i1 %cmp83, ptr @.str.47, ptr %cond
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.45, i32 noundef %shr59, ptr noundef nonnull %cond85, i32 noundef %and40) #7
  %inc = add nuw i32 %index.096, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_debug(ptr noundef %hci, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.50) #7
  %DEBUG_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 8
  %0 = ptrtoint ptr %DEBUG_regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %base, ptr %DEBUG_regs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_scheduled_cmd(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.52) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_non_curr_master(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.54) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_ccc_resp_conf(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.56) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_global_DAT(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.58) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_multilane(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.60) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_extcap_ncm_multilane(ptr noundef %hci, ptr nocapture noundef readnone %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %hci, ptr noundef nonnull @.str.62) #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 275, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @i3c_hci_parse_ext_caps._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @i3c_hci_parse_ext_caps._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 296, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @i3c_hci_parse_ext_caps._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @i3c_hci_parse_ext_caps._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 299, i32 4}
!15 = !{ptr @i3c_hci_parse_ext_caps._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @i3c_hci_parse_ext_caps._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 242, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hci_extcap_vendor_specific._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hci_extcap_vendor_specific._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hci_extcap_vendor_specific._entry.14, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 248, i32 3}
!24 = !{ptr @hci_extcap_vendor_specific._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"vendor_ext_caps", i1 false, i1 false}
!26 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 222, i32 49}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 204, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hci_extcap_vendor_NXP._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @hci_extcap_vendor_NXP._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ext_capabilities, !34, !"ext_capabilities", i1 false, i1 false}
!34 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 185, i32 34}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 30, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hci_extcap_hardware_id._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hci_extcap_hardware_id._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 31, i32 2}
!42 = !{ptr @hci_extcap_hardware_id._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hci_extcap_hardware_id._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 32, i32 2}
!46 = !{ptr @hci_extcap_hardware_id._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hci_extcap_hardware_id._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 50, i32 3}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 50, i32 16}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 50, i32 31}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 51, i32 3}
!56 = !{ptr @hci_extcap_master_config.functionality, !57, !"functionality", i1 false, i1 false}
!57 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 49, i32 28}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 52, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hci_extcap_master_config._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hci_extcap_master_config._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 55, i32 2}
!65 = !{ptr @hci_extcap_master_config._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hci_extcap_master_config._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 64, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hci_extcap_multi_bus._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @hci_extcap_multi_bus._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 74, i32 2}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hci_extcap_xfer_modes._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @hci_extcap_xfer_modes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 123, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hci_extcap_auto_command._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @hci_extcap_auto_command._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 97, i32 2}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hci_extcap_xfer_rates._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hci_extcap_xfer_rates._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 104, i32 3}
!89 = !{ptr @hci_extcap_xfer_rates._entry.44, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hci_extcap_xfer_rates._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 132, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @hci_extcap_debug._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @hci_extcap_debug._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 139, i32 2}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hci_extcap_scheduled_cmd._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @hci_extcap_scheduled_cmd._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 146, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hci_extcap_non_curr_master._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hci_extcap_non_curr_master._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 153, i32 2}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hci_extcap_ccc_resp_conf._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hci_extcap_ccc_resp_conf._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 159, i32 2}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hci_extcap_global_DAT._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @hci_extcap_global_DAT._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 165, i32 2}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hci_extcap_multilane._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @hci_extcap_multilane._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i3c/master/mipi-i3c-hci/ext_caps.c", i32 171, i32 2}
!126 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @hci_extcap_ncm_multilane._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @hci_extcap_ncm_multilane._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 6883431}
!139 = !{i64 2156024086}
!140 = !{i64 2156018819}
!141 = !{i64 2156019033}
!142 = !{i64 6883013}
!143 = !{i64 2155601018}
!144 = !{i64 2155601480}
!145 = !{i64 2155601942}
!146 = !{i64 2155609275}
!147 = !{i64 2155656873}
!148 = !{i64 2155698525}
!149 = !{i64 2155740567}
!150 = !{i64 2155917473}
!151 = !{i64 2155957627}
!152 = !{i64 2155742871}
!153 = !{i64 2155788841}
